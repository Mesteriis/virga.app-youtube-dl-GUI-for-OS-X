FasdUAS 1.101.10   ��   ��    k             l     ��  ��    N H# Folder for downloads inside your homedir (will be created if missing),     � 	 	 � #   F o l d e r   f o r   d o w n l o a d s   i n s i d e   y o u r   h o m e d i r   ( w i l l   b e   c r e a t e d   i f   m i s s i n g ) ,   
  
 l     ��  ��     # Note trailing slash!     �   , #   N o t e   t r a i l i n g   s l a s h !      l     ����  r         m        �    D o w n l o a d s / T D /  o      ���� "0 downloadsfolder downloadsFolder��  ��        l     ��������  ��  ��        l     ��  ��    ) ## path and arguments for youtube-dl     �   F #   p a t h   a n d   a r g u m e n t s   f o r   y o u t u b e - d l      l    ����  r       !   m     " " � # # � / u s r / l o c a l / b i n / y o u t u b e - d l   - - n o - p a r t   - - i g n o r e - e r r o r s   - - n o - o v e r w r i t e s   - o   ' % ( t i t l e ) s   -   % ( e x t r a c t o r ) s _ % ( i d ) s . % ( e x t ) s '   - - n o - m t i m e   ! o      ���� 0 ytcmd ytCmd��  ��     $ % $ l    &���� & r     ' ( ' b     ) * ) n     + , + 1    ��
�� 
psxp , l    -���� - I   �� .��
�� .earsffdralis        afdr . m    	��
�� afdrcusr��  ��  ��   * o    ���� "0 downloadsfolder downloadsFolder ( o      ���� 0 dnpwd dnPwd��  ��   %  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5   3 o      ���� 0 extractaudio extractAudio��  ��   0  6 7 6 l     ��������  ��  ��   7  8 9 8 l  ! :���� : Q   ! ; <�� ; k    = =  > ? > l   �� @ A��   @  # create downloads folder    A � B B 2 #   c r e a t e   d o w n l o a d s   f o l d e r ?  C D C I   &�� E��
�� .sysoexecTEXT���     TEXT E b    " F G F b      H I H b     J K J m     L L � M M 
 [   - d   K o    ���� 0 dnpwd dnPwd I m     N N � O O    ]   | |   m k d i r   G o     !���� 0 dnpwd dnPwd��   D  P Q P l  ' '��������  ��  ��   Q  R S R l  ' '�� T U��   T 6 0# grab URL of the frontmost Chrome's window/tab     U � V V ` #   g r a b   U R L   o f   t h e   f r o n t m o s t   C h r o m e ' s   w i n d o w / t a b   S  W X W O   ' > Y Z Y r   + = [ \ [ c   + 9 ] ^ ] n   + 5 _ ` _ 1   1 5��
�� 
URL  ` n   + 1 a b a 1   / 1��
�� 
acTa b 4  + /�� c
�� 
cwin c m   - .����  ^ m   5 8��
�� 
TEXT \ o      ���� 0 theurl theURL Z m   ' ( d d�                                                                                  rimZ  alis    h  Macintosh HD               Θ3H+     OGoogle Chrome.app                                               "9z�!�        ����  	                Applications    Η��      � ��       O  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   X  e f e l  ? ?��������  ��  ��   f  g h g l  ? ?�� i j��   i T N# replace Google Chrome block with the following in case you're using Safari      j � k k � #   r e p l a c e   G o o g l e   C h r o m e   b l o c k   w i t h   t h e   f o l l o w i n g   i n   c a s e   y o u ' r e   u s i n g   S a f a r i     h  l m l l  ? ?�� n o��   n   	tell application "Safari"    o � p p 4 	 t e l l   a p p l i c a t i o n   " S a f a r i " m  q r q l  ? ?�� s t��   s + %		set theURL to URL of front document    t � u u J 	 	 s e t   t h e U R L   t o   U R L   o f   f r o n t   d o c u m e n t r  v w v l  ? ?�� x y��   x  		end tell    y � z z  	 e n d   t e l l w  { | { l  ? ?��������  ��  ��   |  } ~ } I  ? L��  �
�� .sysonotfnull��� ��� TEXT  o   ? B���� 0 theurl theURL � �� ���
�� 
appr � m   E H � � � � �   A n a l y z i n g   U R L . . .��   ~  � � � l  M M��������  ��  ��   �  � � � Q   M � � � � � k   P g � �  � � � l  P P�� � ���   � - '# get video filename for further checks    � � � � N #   g e t   v i d e o   f i l e n a m e   f o r   f u r t h e r   c h e c k s �  � � � r   P e � � � I  P a�� ���
�� .sysoexecTEXT���     TEXT � b   P ] � � � b   P Y � � � b   P U � � � o   P Q���� 0 ytcmd ytCmd � m   Q T � � � � � "   - - g e t - f i l e n a m e   " � o   U X���� 0 theurl theURL � m   Y \ � � � � �  "��   � o      ���� 0 filename fileName �  ��� � l  f f��������  ��  ��  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   o � � ��� � � =  o r � � � o   o p���� 0 errornumber errorNumber � m   p q����  � I  u ��� � �
�� .sysonotfnull��� ��� TEXT � o   u x���� 0 theurl theURL � �� ���
�� 
appr � m   { ~ � � � � � H I�   N o t   s u p p o r t e d   U R L ,   c h e c k   b r o w s e r !��  ��   � I  � ��� ���
�� .sysonotfnull��� ��� TEXT � o   � ����� 0 errormessage errorMessage��   �  � � � l  � ���������  ��  ��   �  � � � O  � � � � � r   � � � � � I  � ��� ���
�� .coredoexnull���     **** � 4   � ��� �
�� 
ditm � l  � � ����� � c   � � � � � b   � � � � � n  � � � � � 4   � ��� �
�� 
psxf � o   � ����� 0 dnpwd dnPwd �  f   � � � o   � ����� 0 filename fileName � m   � ���
�� 
TEXT��  ��  ��   � o      ���� 0 
fileexists 
fileExists � m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               Θ3H+     -System Events.app                                               �j�Xp\        ����  	                CoreServices    Η��      �X�       -   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ��� � � o   � ����� 0 
fileexists 
fileExists � k   � � � �  � � � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � o   � ����� 0 filename fileName � �� ���
�� 
appr � m   � � � � � � � 2�<߶   E x t r a c t i n g   a u d i o   f r o m  ��   �  ��� � r   � � � � � m   � � � � � � � <   - - e x t r a c t - a u d i o   - - k e e p - v i d e o   � o      ���� 0 extractaudio extractAudio��  ��   � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � o   � ����� 0 filename fileName � �� ���
�� 
appr � m   � � � � � � � (+�   D o w n l o a d i n g   v i d e o��   �  � � � l  � ���������  ��  ��   �  � � � Q   � � ��� � O   � � � � k   � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  ��� ���
�� .coredoscnull��� ��� ctxt � b   � � � � b   � � � � b   �  � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  c l e a r   & &   c d   � o   � ����� 0 dnpwd dnPwd � m   � � � � � � �    & &   � o   � ��� 0 ytcmd ytCmd � o   � ��~�~ 0 extractaudio extractAudio � m   � � � � � � �  " � o   � ��}�} 0 theurl theURL � m   � �   � R "   & &   o s a s c r i p t   - e   ' d i s p l a y   n o t i f i c a t i o n   " � o   �|�| 0 filename fileName � m   �x "   w i t h   t i t l e   "'   F i n i s h e d   d o w n l o a d i n g . . . "   s u b t i t l e   " N O T E :   L a u n c h   a g a i n   t o   e x t r a c t   a u d i o " '   & &   e x i t   | |   o s a s c r i p t   - e   ' d i s p l a y   n o t i f i c a t i o n   "'L   D O W N L O A D   F A I L E D ,   s e e   T e r m i n a l "   w i t h   t i t l e   t h e U R L '  ��  ��   � m   � ��                                                                                      @ alis    l  Macintosh HD               Θ3H+     PTerminal.app                                                     (��Xg�        ����  	                	Utilities     Η��      �Xd       P   O  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��   � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  ��   � �x l �w�v�u�w  �v  �u  �x   < R      �t�s�r
�t .ascrerr ****      � ****�s  �r  ��  ��  ��   9 �q l     �p�o�n�p  �o  �n  �q       �m�m   �l
�l .aevtoappnull  �   � **** �k	�j�i
�h
�k .aevtoappnull  �   � ****	 k    !      $  /  8�g�g  �j  �i  
 �f�e�f 0 errormessage errorMessage�e 0 errornumber errorNumber . �d "�c�b�a�`�_ 4�^ L N�] d�\�[�Z�Y�X�W ��V � ��U�T � ��S�R�Q�P � � ��O � � � �N�M�L�d "0 downloadsfolder downloadsFolder�c 0 ytcmd ytCmd
�b afdrcusr
�a .earsffdralis        afdr
�` 
psxp�_ 0 dnpwd dnPwd�^ 0 extractaudio extractAudio
�] .sysoexecTEXT���     TEXT
�\ 
cwin
�[ 
acTa
�Z 
URL 
�Y 
TEXT�X 0 theurl theURL
�W 
appr
�V .sysonotfnull��� ��� TEXT�U 0 filename fileName�T 0 errormessage errorMessage �K�J�I
�K 
errn�J 0 errornumber errorNumber�I  
�S 
ditm
�R 
psxf
�Q .coredoexnull���     ****�P 0 
fileexists 
fileExists
�O .miscactvnull��� ��� null
�N .coredoscnull��� ��� ctxt�M  �L  �h"�E�O�E�O�j �,�%E�O�E�O��%�%�%j O� *�k/�,a ,a &E` UO_ a a l O �a %_ %a %j E` OPW "X  �k  _ a a l Y �j Oa  *a )a �/_ %a &/j E`  UO_   _ a a !l Oa "E�Y _ a a #l O 7a $ -*j %Oa &�%a '%�%�%a (%_ %a )%_ %a *%j +UW X , -hOPW X , -h ascr  ��ޭ