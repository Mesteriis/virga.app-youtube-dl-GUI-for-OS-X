## Folder for downloads inside your homedir (will be created if missing),
## Note trailing slash!
set downloadsFolder to "Downloads/youtube-dl/"

## arguments and path for youtube-dl
set ytCmd to "/usr/local/bin/youtube-dl"
set ytArgs to " --no-part --ignore-errors --no-overwrites -o '%(title)s - %(extractor)s_%(id)s.%(ext)s' --no-mtime "

#if youtube-dl not installed, use pre-packaged file
tell application "System Events" to set ytdlInstalled to exists disk item (my POSIX file ytCmd as string)
if not ytdlInstalled then
	set objectFolder to (path to me) as string
	set ytCmd to quoted form of (POSIX path of (objectFolder) & "/Contents/Mac OS/youtube-dl")
end if

set dnPwd to POSIX path of (path to home folder) & downloadsFolder
set extractAudio to ""

try
	## create downloads folder (if missing)
	do shell script "[ -d " & dnPwd & " ] || mkdir " & dnPwd
	
	## grab URL of the frontmost Chrome or Safari window/tab 
	tell application "System Events" to set frontApp to name of first process whose frontmost is true
	
	if (frontApp = "Safari") or (frontApp = "Webkit") then
		using terms from application "Safari"
			tell application frontApp to set theURL to URL of front document
		end using terms from
	else if (frontApp = "Google Chrome") or (frontApp = "Google Chrome Canary") or (frontApp = "Chromium") then
		using terms from application "Google Chrome"
			tell application frontApp to set theURL to URL of active tab of front window
		end using terms from
	else
		tell application "Google Chrome"
			set theURL to URL of active tab of front window as string
		end tell
	end if
	
	set validURL to false
	repeat while not validURL
		display notification theURL with title "Analyzing URL" subtitle "It may take a while, stay put..."
		
		try
			## get video filename for further checks
			set fileName to do shell script ytCmd & ytArgs & " --get-filename \"" & theURL & "\""
			set validURL to true
			
		on error errorMessage number errorNumber
			if errorNumber is 1 then
				display dialog "Downloading from above URL is either not supported or youtube-dl needs to be updated. 
			
Would you like to update now? Admin password will be required." with title theURL with icon stop buttons {"Update youtube-dl", "Quit"} default button 2
				set answer to button returned of result
				if answer is equal to "Quit" then
					return -128
				else if answer is equal to "Update youtube-dl" then
					try
						set updateResult to do shell script ytCmd & " -U" with administrator privileges
						display alert updateResult buttons {"Restart download"}
						
					on error errorMessage number errorNumber
						display dialog errorMessage with title "youtube-dl update FAILED" with icon stop buttons {"Quit"} default button 1
						set answer to button returned of result
						if answer is equal to "Quit" then
							return -128
						end if
					end try
				end if
			end if
		end try
	end repeat
	
	display dialog "Ready to download " & fileName & "
	
Please choose download mode:" with title "youtube-dl GUI" with icon note buttons {"MP3-audio only", "Video", "Video + extract audio"} default button 2
	set answer to button returned of result
	if answer is equal to "MP3-audio only" then
		set extractAudio to " --extract-audio --audio-format mp3 --audio-quality 0 "
		display notification fileName with title "🎶 Extracting audio from " subtitle "Check your downloads folder for progress"
	else if answer is equal to "Video + extract audio" then
		set extractAudio to " --extract-audio --keep-video "
		display notification fileName with title "⬇️ Downloading video + audio " subtitle "Check your downloads folder for progress"
	else
		display notification fileName with title "⬇️ Downloading video " subtitle "Check your downloads folder for progress"
	end if
	
	try
		do shell script "clear && cd " & dnPwd & " && " & ytCmd & ytArgs & extractAudio & "\"" & theURL & "\""
		display notification fileName with title "✅ Finished downloading" subtitle downloadsFolder sound name "Pop"
	on error errorMessage number errorNumber
		display notification errorNumber & ":" & errorMessage with title "❌ DOWNLOAD FAILED" subtitle theURL
	end try
	
end try
