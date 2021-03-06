FasdUAS 1.101.10   ��   ��    k             l      ��  ��   \V
code to find all elements on iTunes page, for use with "verifyPage()"

tell application "System Events"
	set elementCount to count of every UI element of UI element 1 of scroll area 3 of window 1 of application process "iTunes"
	set everyElement to every UI element of UI element 1 of scroll area 3 of window 1 of application process "iTunes"

	set everyProperty to {}
	repeat with loopCounter from 1 to (count of items in everyElement)
		try
			set everyProperty to everyProperty & 1
			set item loopCounter of everyProperty to (properties of item loopCounter of everyElement)
		end try
	end repeat

	set everyTitle to {}
	repeat with loopCounter from 1 to (count of items in everyProperty)
		set everyTitle to everyTitle & ""
		try
			set item loopCounter of everyTitle to (title of item loopCounter of everyProperty)
		end try
	end repeat

end tell

     � 	 	� 
 c o d e   t o   f i n d   a l l   e l e m e n t s   o n   i T u n e s   p a g e ,   f o r   u s e   w i t h   " v e r i f y P a g e ( ) " 
 
 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s " 
 	 s e t   e l e m e n t C o u n t   t o   c o u n t   o f   e v e r y   U I   e l e m e n t   o f   U I   e l e m e n t   1   o f   s c r o l l   a r e a   3   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " i T u n e s " 
 	 s e t   e v e r y E l e m e n t   t o   e v e r y   U I   e l e m e n t   o f   U I   e l e m e n t   1   o f   s c r o l l   a r e a   3   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " i T u n e s " 
 
 	 s e t   e v e r y P r o p e r t y   t o   { } 
 	 r e p e a t   w i t h   l o o p C o u n t e r   f r o m   1   t o   ( c o u n t   o f   i t e m s   i n   e v e r y E l e m e n t ) 
 	 	 t r y 
 	 	 	 s e t   e v e r y P r o p e r t y   t o   e v e r y P r o p e r t y   &   1 
 	 	 	 s e t   i t e m   l o o p C o u n t e r   o f   e v e r y P r o p e r t y   t o   ( p r o p e r t i e s   o f   i t e m   l o o p C o u n t e r   o f   e v e r y E l e m e n t ) 
 	 	 e n d   t r y 
 	 e n d   r e p e a t 
 
 	 s e t   e v e r y T i t l e   t o   { } 
 	 r e p e a t   w i t h   l o o p C o u n t e r   f r o m   1   t o   ( c o u n t   o f   i t e m s   i n   e v e r y P r o p e r t y ) 
 	 	 s e t   e v e r y T i t l e   t o   e v e r y T i t l e   &   " " 
 	 	 t r y 
 	 	 	 s e t   i t e m   l o o p C o u n t e r   o f   e v e r y T i t l e   t o   ( t i t l e   o f   i t e m   l o o p C o u n t e r   o f   e v e r y P r o p e r t y ) 
 	 	 e n d   t r y 
 	 e n d   r e p e a t 
 
 e n d   t e l l 
 
   
  
 l     ��������  ��  ��        l     ��  ��     TO DO:     �    T O   D O :      l     ��������  ��  ��        l     ��  ��      write itunes running check     �   4 w r i t e   i t u n e s   r u n n i n g   c h e c k      l     ��  ��    9 3write file output section for account status column     �   f w r i t e   f i l e   o u t p u t   s e c t i o n   f o r   a c c o u n t   s t a t u s   c o l u m n      l     ��   ��    @ :write check for account status of "completed" or "skipped"      � ! ! t w r i t e   c h e c k   f o r   a c c o u n t   s t a t u s   o f   " c o m p l e t e d "   o r   " s k i p p e d "   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   &  Global Vars    ' � ( (  G l o b a l   V a r s %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /  start localization    0 � 1 1 $ s t a r t   l o c a l i z a t i o n .  2 3 2 l     �� 4 5��   4 i cSet country code to adapt script, code according to http://en.wikipedia.org/wiki/ISO_3166-1_alpha-3    5 � 6 6 � S e t   c o u n t r y   c o d e   t o   a d a p t   s c r i p t ,   c o d e   a c c o r d i n g   t o   h t t p : / / e n . w i k i p e d i a . o r g / w i k i / I S O _ 3 1 6 6 - 1 _ a l p h a - 3 3  7 8 7 l     �� 9 :��   9 � � Set iTunesCountryCode to your country code and adjust specific parts of code between 'start localization' and 'end localization' to your needs.    : � ; ;    S e t   i T u n e s C o u n t r y C o d e   t o   y o u r   c o u n t r y   c o d e   a n d   a d j u s t   s p e c i f i c   p a r t s   o f   c o d e   b e t w e e n   ' s t a r t   l o c a l i z a t i o n '   a n d   ' e n d   l o c a l i z a t i o n '   t o   y o u r   n e e d s . 8  < = < j     �� >�� &0 itunescountrycode iTunesCountryCode > m      ? ? � @ @  U S A =  A B A l     �� C D��   C ( "property iTunesCountryCode : "POL"    D � E E D p r o p e r t y   i T u n e s C o u n t r y C o d e   :   " P O L " B  F G F l     �� H I��   H ( "property iTunesCountryCode : "CAN"    I � J J D p r o p e r t y   i T u n e s C o u n t r y C o d e   :   " C A N " G  K L K l     �� M N��   M  end localization    N � O O   e n d   l o c a l i z a t i o n L  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T m gUsed for storing a list of encountered errors. Written to by various handlers, read by checkForErrors()    U � V V � U s e d   f o r   s t o r i n g   a   l i s t   o f   e n c o u n t e r e d   e r r o r s .   W r i t t e n   t o   b y   v a r i o u s   h a n d l e r s ,   r e a d   b y   c h e c k F o r E r r o r s ( ) S  W X W p     Y Y ������ 0 	errorlist 	errorList��   X  Z [ Z l     \���� \ r      ] ^ ] J     ����   ^ o      ���� 0 	errorlist 	errorList��  ��   [  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c � �Used for controlling the running or abortion of the script. Handler will run as long as scriptAction is "Continue". Can also be set to "Abort" to end script, or "Skip User" to skip an individual user.    d � e e� U s e d   f o r   c o n t r o l l i n g   t h e   r u n n i n g   o r   a b o r t i o n   o f   t h e   s c r i p t .   H a n d l e r   w i l l   r u n   a s   l o n g   a s   s c r i p t A c t i o n   i s   " C o n t i n u e " .   C a n   a l s o   b e   s e t   t o   " A b o r t "   t o   e n d   s c r i p t ,   o r   " S k i p   U s e r "   t o   s k i p   a n   i n d i v i d u a l   u s e r . b  f g f p     h h ������ 0 scriptaction scriptAction��   g  i j i l    k���� k r     l m l m     n n � o o  C o n t i n u e m o      ���� 0 scriptaction scriptAction��  ��   j  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t G AStore the current user number (based off line number in CSV file)    u � v v � S t o r e   t h e   c u r r e n t   u s e r   n u m b e r   ( b a s e d   o f f   l i n e   n u m b e r   i n   C S V   f i l e ) s  w x w p     y y ������ 0 currentuser currentUser��   x  z { z l  	  |���� | r   	  } ~ } m   	 
����   ~ o      ���� &0 currentusernumber currentUserNumber��  ��   {   �  l     ��������  ��  ��   �  � � � l     �� � ���   � � �Used for completing every step in the process, except actually creating the Apple ID. Also Pauses the script at various locations so the user can verify everything is working properly.    � � � �p U s e d   f o r   c o m p l e t i n g   e v e r y   s t e p   i n   t h e   p r o c e s s ,   e x c e p t   a c t u a l l y   c r e a t i n g   t h e   A p p l e   I D .   A l s o   P a u s e s   t h e   s c r i p t   a t   v a r i o u s   l o c a t i o n s   s o   t h e   u s e r   c a n   v e r i f y   e v e r y t h i n g   i s   w o r k i n g   p r o p e r l y . �  � � � j    �� ��� 0 dryrun dryRun � m    ��
�� boovtrue �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � �Used to store the file location of the iBooks "App Page Shortcut". Updated dynamically on run to reference a child folder of the .app bundle (Yes, I know this isn't kosher)    � � � �X U s e d   t o   s t o r e   t h e   f i l e   l o c a t i o n   o f   t h e   i B o o k s   " A p p   P a g e   S h o r t c u t " .   U p d a t e d   d y n a m i c a l l y   o n   r u n   t o   r e f e r e n c e   a   c h i l d   f o l d e r   o f   t h e   . a p p   b u n d l e   ( Y e s ,   I   k n o w   t h i s   i s n ' t   k o s h e r ) �  � � � l     �� � ���   � 6 0 AF 2012-05-14 Open location instead of .inetloc    � � � � `   A F   2 0 1 2 - 0 5 - 1 4   O p e n   l o c a t i o n   i n s t e a d   o f   . i n e t l o c �  � � � j    �� ��� (0 ibookslinklocation ibooksLinkLocation � m     � � � � � l i t m s : / / i t u n e s . a p p l e . c o m / u s / a p p / i b o o k s / i d 3 6 4 7 0 9 1 9 3 ? m t = 8 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z tMaster delay timer for slowing the script down at specified sections. Usefull for tweaking the entire script's speed    � � � � � M a s t e r   d e l a y   t i m e r   f o r   s l o w i n g   t h e   s c r i p t   d o w n   a t   s p e c i f i e d   s e c t i o n s .   U s e f u l l   f o r   t w e a k i n g   t h e   e n t i r e   s c r i p t ' s   s p e e d �  � � � j   	 �� ��� 0 masterdelay masterDelay � m   	 
����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � n hMaximum time (in seconds) the script will wait for a page to load before giving up and throwing an error    � � � � � M a x i m u m   t i m e   ( i n   s e c o n d s )   t h e   s c r i p t   w i l l   w a i t   f o r   a   p a g e   t o   l o a d   b e f o r e   g i v i n g   u p   a n d   t h r o w i n g   a n   e r r o r �  � � � j    �� ��� 0 netdelay netDelay � m    ����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � �Used at locations in script that will be vulnerable to slow processing. Multiplied by master delay. Tweak for slow machines. May be added to Net Delay.    � � � �. U s e d   a t   l o c a t i o n s   i n   s c r i p t   t h a t   w i l l   b e   v u l n e r a b l e   t o   s l o w   p r o c e s s i n g .   M u l t i p l i e d   b y   m a s t e r   d e l a y .   T w e a k   f o r   s l o w   m a c h i n e s .   M a y   b e   a d d e d   t o   N e t   D e l a y . �  � � � j    �� ��� 0 processdelay processDelay � m    ����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � J DHow often should the script check that something has loaded/is ready    � � � � � H o w   o f t e n   s h o u l d   t h e   s c r i p t   c h e c k   t h a t   s o m e t h i n g   h a s   l o a d e d / i s   r e a d y �  � � � j    �� ���  0 checkfrequency checkFrequency � m     � � ?�       �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - 'Used to store supported iTunes versions    � � � � N U s e d   t o   s t o r e   s u p p o r t e d   i T u n e s   v e r s i o n s �  � � � j    �� ��� 20 supporteditunesversions supportedItunesVersions � J     � �  � � � m     � � � � �  1 2 . 1 . 2 �  � � � m     � � � � �  1 2 . 2 �  � � � m     � � � � �  1 2 . 2 . 1 �  ��� � m     � � � � �  1 2 . 2 . 2��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 3 -Used for checking if iTunes is loading a page    � � � � Z U s e d   f o r   c h e c k i n g   i f   i T u n e s   i s   l o a d i n g   a   p a g e �  � � � j    !�� ��� .0 itunesaccessingstring itunesAccessingString � m      � � � � � . A c c e s s i n g   i T u n e s   S t o r e & �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �1+
	Email
	Password
	Secret Question 1
	Secret Answer 1
	Secret Question 2
	Secret Answer 2
	Secret Question 3
	Secret Answer 3
	Month Of Birth
	Day Of Birth
	Year Of Birth
	First Name
	Last Name
	Address Street
	Address City
	Address State
	Address Zip
	Phone Area Code
	Phone Number
	Account Status
    � � � �V 
 	 E m a i l 
 	 P a s s w o r d 
 	 S e c r e t   Q u e s t i o n   1 
 	 S e c r e t   A n s w e r   1 
 	 S e c r e t   Q u e s t i o n   2 
 	 S e c r e t   A n s w e r   2 
 	 S e c r e t   Q u e s t i o n   3 
 	 S e c r e t   A n s w e r   3 
 	 M o n t h   O f   B i r t h 
 	 D a y   O f   B i r t h 
 	 Y e a r   O f   B i r t h 
 	 F i r s t   N a m e 
 	 L a s t   N a m e 
 	 A d d r e s s   S t r e e t 
 	 A d d r e s s   C i t y 
 	 A d d r e s s   S t a t e 
 	 A d d r e s s   Z i p 
 	 P h o n e   A r e a   C o d e 
 	 P h o n e   N u m b e r 
 	 A c c o u n t   S t a t u s 
 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � �Properties for storing possible headers to check the source CSV file for. Source file will be checked for each of the items to locate the correct columns    � � � �2 P r o p e r t i e s   f o r   s t o r i n g   p o s s i b l e   h e a d e r s   t o   c h e c k   t h e   s o u r c e   C S V   f i l e   f o r .   S o u r c e   f i l e   w i l l   b e   c h e c k e d   f o r   e a c h   o f   t h e   i t e m s   t o   l o c a t e   t h e   c o r r e c t   c o l u m n s �  � � � j   " +�� ��� 0 emailheaders emailHeaders � J   " * � �  � � � m   " % � � � � � 
 E m a i l �  ��� � m   % (   �  E m a i l   A d d r e s s��   �  j   , 5���� "0 passwordheaders passwordHeaders J   , 4  m   , / �		  P a s s w o r d 
��
 m   / 2 �  P a s s��    j   6 <���� 00 secretquestion1headers secretQuestion1Headers J   6 ; �� m   6 9 � " S e c r e t   Q u e s t i o n   1��    j   = C���� ,0 secretanswer1headers secretAnswer1Headers J   = B �� m   = @ �  S e c r e t   A n s w e r   1��    j   D J���� 00 secretquestion2headers secretQuestion2Headers J   D I �� m   D G   �!! " S e c r e t   Q u e s t i o n   2��   "#" j   K Q��$�� ,0 secretanswer2headers secretAnswer2Headers$ J   K P%% &��& m   K N'' �((  S e c r e t   A n s w e r   2��  # )*) j   R X��+�� 00 secretquestion3headers secretQuestion3Headers+ J   R W,, -��- m   R U.. �// " S e c r e t   Q u e s t i o n   3��  * 010 j   Y a��2�� ,0 secretanswer3headers secretAnswer3Headers2 J   Y ^33 4��4 m   Y \55 �66  S e c r e t   A n s w e r   3��  1 787 j   b p�9� *0 monthofbirthheaders monthOfBirthHeaders9 J   b m:: ;<; m   b e== �>> 
 M o n t h< ?@? m   e hAA �BB  B i r t h   M o n t h@ C�~C m   h kDD �EE  M o n t h   o f   B i r t h�~  8 FGF j   q �}H�} &0 dayofbirthheaders dayOfBirthHeadersH J   q |II JKJ m   q tLL �MM  D a yK NON m   t wPP �QQ  B i r t h   D a yO R�|R m   w zSS �TT  D a y   O f   B i r t h�|  G UVU j   � ��{W�{ (0 yearofbirthheaders yearOfBirthHeadersW J   � �XX YZY m   � �[[ �\\  Y e a rZ ]^] m   � �__ �``  B i r t h   Y e a r^ a�za m   � �bb �cc  Y e a r   O f   B i r t h�z  V ded j   � ��yf�y $0 firstnameheaders firstNameHeadersf J   � �gg hih m   � �jj �kk  F i r s t   N a m ei lml m   � �nn �oo 
 F i r s tm p�xp m   � �qq �rr 
 f n a m e�x  e sts j   � ��wu�w "0 lastnameheaders lastNameHeadersu J   � �vv wxw m   � �yy �zz  L a s t   N a m ex {|{ m   � �}} �~~  L a s t| �v m   � ��� ��� 
 l n a m e�v  t ��� j   � ��u��u ,0 addressstreetheaders addressStreetHeaders� J   � ��� ��� m   � ��� ���  S t r e e t� ��� m   � ��� ���  S t r e e t   A d d r e s s� ��t� m   � ��� ���  A d d r e s s   S t r e e t�t  � ��� j   � ��s��s (0 addresscityheaders addressCityHeaders� J   � ��� ��� m   � ��� ���  C i t y� ��r� m   � ��� ���  A d d r e s s   C i t y�r  � ��� j   � ��q��q *0 addressstateheaders addressStateHeaders� J   � ��� ��� m   � ��� ��� 
 S t a t e� ��p� m   � ��� ���  A d d r e s s   S t a t e�p  � ��� j   � ��o��o &0 addresszipheaders addressZipHeaders� J   � ��� ��� m   � ��� ���  Z i p   C o d e� ��� m   � ��� ���  Z i p� ��n� m   � ��� ���  A d d r e s s   Z i p�n  � ��� j   � ��m��m ,0 phoneareacodeheaders phoneAreaCodeHeaders� J   � ��� ��� m   � ��� ���  A r e a   C o d e� ��l� m   � ��� ���  P h o n e   A r e a   C o d e�l  � ��� j   � ��k��k (0 phonenumberheaders phoneNumberHeaders� J   � ��� ��� m   � ��� ���  P h o n e   N u m b e r� ��j� m   � ��� ��� 
 P h o n e�j  � ��� j   ��i��i (0 rescueemailheaders rescueEmailHeaders� J   ��� ��� m   � ��� ��� . R e s c u e   E m a i l   ( O p t i o n a l )� ��h� m   ��� ���  R e s c u e   E m a i l�h  � ��� l     ���� j  �g��g ,0 accountstatusheaders accountStatusHeaders� J  �� ��f� m  
�� ���  A c c o u n t   S t a t u s�f  � : 4Used to keep track of what acounts have been created   � ��� h U s e d   t o   k e e p   t r a c k   o f   w h a t   a c o u n t s   h a v e   b e e n   c r e a t e d� ��� l     �e�d�c�e  �d  �c  � ��� l     �b�a�`�b  �a  �`  � ��� l     �_���_  � 2 ,Supported descriptions of iTunes free button   � ��� X S u p p o r t e d   d e s c r i p t i o n s   o f   i T u n e s   f r e e   b u t t o n� ��� j  �^��^ B0 supportedfreebuttondescriptions supportedFreeButtonDescriptions� J  �� ��� m  �� ��� " $ 0 . 0 0   G e t ,   i B o o k s� ��]� m  �� ��� $ 0 , 0 0   �   G e t ,   i B o o k s�]  � ��� l     �\�[�Z�\  �[  �Z  � ��� l   ��Y�X� r    ��� m    �W
�W boovfals� o      �V�V "0 userdroppedfile userDroppedFile�Y  �X  � ��� l     �U�T�S�U  �T  �S  � � � l     �R�R   7 1Check to see if a file was dropped on this script    � b C h e c k   t o   s e e   i f   a   f i l e   w a s   d r o p p e d   o n   t h i s   s c r i p t   i   I     �Q�P
�Q .aevtodocnull  �    alis o      �O�O 0 droppedfile droppedFile�P   k     		 

 r      m     �N
�N boovtrue o      �M�M "0 userdroppedfile userDroppedFile �L I    �K�J�K 0 	mainmagic 	MainMagic  o    �I�I "0 userdroppedfile userDroppedFile �H o    �G�G 0 droppedfile droppedFile�H  �J  �L    l     �F�E�D�F  �E  �D    l     �C�C   � �Launch the script in interactive mode if no file was dropped (if file was dropped on script, this will never be run, because of the "on open" above)    �( L a u n c h   t h e   s c r i p t   i n   i n t e r a c t i v e   m o d e   i f   n o   f i l e   w a s   d r o p p e d   ( i f   f i l e   w a s   d r o p p e d   o n   s c r i p t ,   t h i s   w i l l   n e v e r   b e   r u n ,   b e c a u s e   o f   t h e   " o n   o p e n "   a b o v e )  l   �B�A r     m     �     o      �@�@ 0 droppedfile droppedFile�B  �A   !"! l   #�?�># I    �=$�<�= 0 	mainmagic 	MainMagic$ %&% o    �;�; "0 userdroppedfile userDroppedFile& '�:' o    �9�9 0 droppedfile droppedFile�:  �<  �?  �>  " ()( l     �8�7�6�8  �7  �6  ) *+* i   #,-, I      �5.�4�5 0 	mainmagic 	MainMagic. /0/ o      �3�3 "0 userdroppedfile userDroppedFile0 1�21 o      �1�1 0 droppedfile droppedFile�2  �4  - k    �22 343 l     �056�0  5 � �CHECK ITUNES SUPPORT-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------CHECK ITUNES SUPPORT--   6 �77� C H E C K   I T U N E S   S U P P O R T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C H E C K   I T U N E S   S U P P O R T - -4 898 l     �/�.�-�/  �.  �-  9 :;: r     <=< n     >?> 1    �,
�, 
vers? m     @@�                                                                                  hook  alis    N  Macintosh HD               ϓ��H+  �T
iTunes.app                                                     ˩����        ����  	                Applications    ϓ�;      ��/    �T  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  = o      �+�+ 0 itunesversion itunesVersion; ABA r    	CDC m    �*
�* boovfalsD o      �)�) 40 itunesversionissupported itunesVersionIsSupportedB EFE l  
 
�(�'�&�(  �'  �&  F GHG Y   
 9I�%JK�$I Z    4LM�#�"L =   (NON n    &PQP 4   # &�!R
�! 
cobjR o   $ %� �  20 versioncheckloopcounter versionCheckLoopCounterQ o    #�� 20 supporteditunesversions supportedItunesVersionsO o   & '�� 0 itunesversion itunesVersionM k   + 0SS TUT r   + .VWV m   + ,�
� boovtrueW o      �� 40 itunesversionissupported itunesVersionIsSupportedU X�X  S   / 0�  �#  �"  �% 20 versioncheckloopcounter versionCheckLoopCounterJ m    �� K l   Y��Y I   �Z�
� .corecnte****       ****Z n   [\[ 2   �
� 
cobj\ o    �� 20 supporteditunesversions supportedItunesVersions�  �  �  �$  H ]^] l  : :����  �  �  ^ _`_ Z   : hab��a =  : =cdc o   : ;�� 40 itunesversionissupported itunesVersionIsSupportedd m   ; <�
� boovfalsb r   @ defe c   @ `ghg n   @ \iji 1   Z \�
� 
bhitj l  @ Zk��
k I  @ Z�	lm
�	 .sysodlogaskr        TEXTl b   @ Onon b   @ Mpqp b   @ Krsr b   @ Itut b   @ Gvwv b   @ Exyx b   @ Cz{z m   @ A|| �}} * i T u n e s   i s   a t   v e r s i o n  { o   A B�� 0 itunesversion itunesVersiony o   C D�
� 
ret w o   E F�
� 
ret u m   G H~~ � � I t   i s   u n k n o w n   i f   t h i s   v e r s i o n   o f   i T u n e s   w i l l   w o r k   w i t h   t h i s   s c r i p t .s o   I J�
� 
ret q o   K L�
� 
ret o m   M N�� ��� h Y o u   m a y   a b o r t   n o w ,   o r   t r y   r u n n i n g   t h e   s c r i p t   a n y w a y .m ���
� 
btns� J   P T�� ��� m   P Q�� ��� 
 A b o r t� ��� m   Q R�� ���  C o n t i n u e�  � ��� 
� 
dflt� m   U V�� ��� 
 A b o r t�   �  �
  h m   \ _��
�� 
ctxtf o      ���� 0 scriptaction scriptAction�  �  ` ��� l  i i��������  ��  ��  � ��� Z   i�������� =  i p��� o   i l���� 0 scriptaction scriptAction� m   l o�� ���  C o n t i n u e� k   s��� ��� l  s s������  � � �LOAD USERS FILE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------LOAD USERS FILE--   � ���� L O A D   U S E R S   F I L E - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - L O A D   U S E R S   F I L E - -� ��� l  s s��������  ��  ��  � ��� l  s |���� r   s |��� I   s z������� 0 loadusersfile loadUsersFile� ��� o   t u���� "0 userdroppedfile userDroppedFile� ���� o   u v���� 0 droppedfile droppedFile��  ��  � o      ���� 0 	usersfile 	usersFile� I CLoad the users file. Returns a list of columns from the source file   � ��� � L o a d   t h e   u s e r s   f i l e .   R e t u r n s   a   l i s t   o f   c o l u m n s   f r o m   t h e   s o u r c e   f i l e� ��� l  } }��������  ��  ��  � ���� Z   }�������� =  } ���� o   } ����� 0 scriptaction scriptAction� m   � ��� ���  C o n t i n u e� k   ���� ��� l  � �������  � ; 5Split out header information from each of the columns   � ��� j S p l i t   o u t   h e a d e r   i n f o r m a t i o n   f r o m   e a c h   o f   t h e   c o l u m n s� ��� r   � ���� J   � �����  � o      ���� 0 headers  � ��� l  � ���������  ��  ��  � ��� Y   � ��������� k   � ��� ��� l  � ���������  ��  ��  � ��� l  � ����� r   � ���� b   � ���� o   � ����� 0 headers  � m   � ��� ���  � o      ���� 0 headers  � " Add an empty item to headers   � ��� 8 A d d   a n   e m p t y   i t e m   t o   h e a d e r s� ��� l  � ���������  ��  ��  � ��� l  � ����� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � n   � ���� 4   � ����
�� 
cobj� o   � ����� 40 headerremoverloopcounter headerRemoverLoopCounter� o   � ����� 0 	usersfile 	usersFile� n      ��� 4   � ����
�� 
cobj� o   � ����� 40 headerremoverloopcounter headerRemoverLoopCounter� o   � ����� 0 headers  � % Save the header from the column   � ��� > S a v e   t h e   h e a d e r   f r o m   t h e   c o l u m n� ��� l  � ���������  ��  ��  � ��� l  � ����� r   � ���� l  � ������� n   � ���� 7  � �����
�� 
cobj� m   � ����� � l  � ������� I  � ������
�� .corecnte****       ****� n  � ���� 2  � ���
�� 
cobj� n   � ���� 4   � ����
�� 
cobj� o   � ����� 40 headerremoverloopcounter headerRemoverLoopCounter� o   � ����� 0 	usersfile 	usersFile��  ��  ��  � n   � ���� 4   � ��� 
�� 
cobj  o   � ����� 40 headerremoverloopcounter headerRemoverLoopCounter� o   � ����� 0 	usersfile 	usersFile��  ��  � n       4   � ���
�� 
cobj o   � ����� 40 headerremoverloopcounter headerRemoverLoopCounter o   � ����� 0 	usersfile 	usersFile� ' !Remove the header from the column   � � B R e m o v e   t h e   h e a d e r   f r o m   t h e   c o l u m n� �� l  � ���������  ��  ��  ��  �� 40 headerremoverloopcounter headerRemoverLoopCounter� m   � ����� � l  � ����� I  � �����
�� .corecnte****       **** n  � �	 2  � ���
�� 
cobj	 o   � ����� 0 	usersfile 	usersFile��  ��  ��  ��  � 

 l  � ���������  ��  ��    l  � � r   � � l  � ����� I  � �����
�� .corecnte****       **** n  � � 2  � ���
�� 
cobj n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 	usersfile 	usersFile��  ��  ��   o      ���� 0 	usercount 	userCount   Counts the number of users    � 4 C o u n t s   t h e   n u m b e r   o f   u s e r s  l  � ���������  ��  ��    l  � ��� ��   o iseperated column contents (not really necessarry, but it makes everything else a whole lot more readable)     �!! � s e p e r a t e d   c o l u m n   c o n t e n t s   ( n o t   r e a l l y   n e c e s s a r r y ,   b u t   i t   m a k e s   e v e r y t h i n g   e l s e   a   w h o l e   l o t   m o r e   r e a d a b l e ) "#" r   � �$%$ n   � �&'& 4   � ���(
�� 
cobj( m   � ����� ' o   � ����� 0 	usersfile 	usersFile% o      ���� 80 appleidemailcolumncontents appleIdEmailColumnContents# )*) r   � �+,+ n   � �-.- 4   � ���/
�� 
cobj/ m   � ����� . o   � ����� 0 	usersfile 	usersFile, o      ���� >0 appleidpasswordcolumncontents appleIdPasswordColumnContents* 010 l  � ���������  ��  ��  1 232 r   � �454 n   � �676 4   � ���8
�� 
cobj8 m   � ����� 7 o   � ����� 0 	usersfile 	usersFile5 o      ���� L0 $appleidsecretquestion1columncontents $appleIdSecretQuestion1ColumnContents3 9:9 r   � �;<; n   � �=>= 4   � ���?
�� 
cobj? m   � ����� > o   � ����� 0 	usersfile 	usersFile< o      ���� H0 "appleidsecretanswer1columncontents "appleIdSecretAnswer1ColumnContents: @A@ r   �BCB n   �DED 4   ���F
�� 
cobjF m   ���� E o   � ����� 0 	usersfile 	usersFileC o      ���� L0 $appleidsecretquestion2columncontents $appleIdSecretQuestion2ColumnContentsA GHG r  IJI n  KLK 4  ��M
�� 
cobjM m  	���� L o  ���� 0 	usersfile 	usersFileJ o      ���� H0 "appleidsecretanswer2columncontents "appleIdSecretAnswer2ColumnContentsH NON r  PQP n  RSR 4  ��T
�� 
cobjT m  ���� S o  ���� 0 	usersfile 	usersFileQ o      ���� L0 $appleidsecretquestion3columncontents $appleIdSecretQuestion3ColumnContentsO UVU r  #WXW n  YZY 4  �[
� 
cobj[ m  �~�~ Z o  �}�} 0 	usersfile 	usersFileX o      �|�| H0 "appleidsecretanswer3columncontents "appleIdSecretAnswer3ColumnContentsV \]\ r  $.^_^ n  $*`a` 4  %*�{b
�{ 
cobjb m  &)�z�z 	a o  $%�y�y 0 	usersfile 	usersFile_ o      �x�x 80 monthofbirthcolumncontents monthOfBirthColumnContents] cdc r  /9efe n  /5ghg 4  05�wi
�w 
cobji m  14�v�v 
h o  /0�u�u 0 	usersfile 	usersFilef o      �t�t 40 dayofbirthcolumncontents dayOfBirthColumnContentsd jkj r  :Dlml n  :@non 4  ;@�sp
�s 
cobjp m  <?�r�r o o  :;�q�q 0 	usersfile 	usersFilem o      �p�p 60 yearofbirthcolumncontents yearOfBirthColumnContentsk qrq l EE�o�n�m�o  �n  �m  r sts r  EOuvu n  EKwxw 4  FK�ly
�l 
cobjy m  GJ�k�k x o  EF�j�j 0 	usersfile 	usersFilev o      �i�i :0 userfirstnamecolumncontents userFirstNameColumnContentst z{z r  PZ|}| n  PV~~ 4  QV�h�
�h 
cobj� m  RU�g�g  o  PQ�f�f 0 	usersfile 	usersFile} o      �e�e 80 userlastnamecolumncontents userLastNameColumnContents{ ��� r  [e��� n  [a��� 4  \a�d�
�d 
cobj� m  ]`�c�c � o  [\�b�b 0 	usersfile 	usersFile� o      �a�a :0 addressstreetcolumncontents addressStreetColumnContents� ��� r  fp��� n  fl��� 4  gl�`�
�` 
cobj� m  hk�_�_ � o  fg�^�^ 0 	usersfile 	usersFile� o      �]�] 60 addresscitycolumncontents addressCityColumnContents� ��� r  q{��� n  qw��� 4  rw�\�
�\ 
cobj� m  sv�[�[ � o  qr�Z�Z 0 	usersfile 	usersFile� o      �Y�Y 80 addressstatecolumncontents addressStateColumnContents� ��� r  |���� n  |���� 4  }��X�
�X 
cobj� m  ~��W�W � o  |}�V�V 0 	usersfile 	usersFile� o      �U�U 40 addresszipcolumncontents addressZipColumnContents� ��� r  ����� n  ����� 4  ���T�
�T 
cobj� m  ���S�S � o  ���R�R 0 	usersfile 	usersFile� o      �Q�Q :0 phoneareacodecolumncontents phoneAreaCodeColumnContents� ��� r  ����� n  ����� 4  ���P�
�P 
cobj� m  ���O�O � o  ���N�N 0 	usersfile 	usersFile� o      �M�M 60 phonenumbercolumncontents phoneNumberColumnContents� ��� r  ����� n  ����� 4  ���L�
�L 
cobj� m  ���K�K � o  ���J�J 0 	usersfile 	usersFile� o      �I�I :0 appleidrescuecolumncontents appleIdRescueColumnContents� ��� r  ����� n  ����� 4  ���H�
�H 
cobj� m  ���G�G � o  ���F�F 0 	usersfile 	usersFile� o      �E�E :0 accountstatuscolumncontents accountStatusColumnContents� ��� l ���D�C�B�D  �C  �B  � ��� l ���A�@�?�A  �@  �?  � ��� l ���>���>  � � �PREP-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------PREP--   � ���� P R E P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - P R E P - -� ��� l ���=�<�;�=  �<  �;  � ��� l ���:���:  � R LAsk user if they want to perform a dry run, and give them a chance to cancel   � ��� � A s k   u s e r   i f   t h e y   w a n t   t o   p e r f o r m   a   d r y   r u n ,   a n d   g i v e   t h e m   a   c h a n c e   t o   c a n c e l� ��� r  ����� c  ����� n  ����� 1  ���9
�9 
bhit� l ����8�7� I ���6��
�6 .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� m  ���� ��� l W o u l d   y o u   l i k e   t o   p r e f o r m   a   ' ' d r y   r u n ' '   o f   t h e   s c r i p t ?� o  ���5
�5 
ret � o  ���4
�4 
ret � m  ���� ��� � A   ' ' d r y   r u n ' '   w i l l   r u n   t h r o u g h   e v e r y   s t e p ,   E X C E P T   a c t u a l l y   c r e a t i n g   t h e   A p p l e   I D s .� �3��2
�3 
btns� J  ���� ��� m  ���� ��� : A c t u a l l y   C r e a t e   N e w   A p p l e   I D s� ��� m  ���� ���  D r y   R u n� ��1� m  ���� ���  C a n c e l�1  �2  �8  �7  � m  ���0
�0 
ctxt� o      �/�/ 0 scriptrunmode scriptRunMode� ��� Z �����.�-� = ����� o  ���,�, 0 scriptrunmode scriptRunMode� m  ���� ��� 8 A c t u a l l y   C e a t e   N e w   A p p l e   I D s� r  ����� m  ���+
�+ boovfals� o      �*�* 0 dryrun dryRun�.  �-  � ��� Z ����)�(� = ����� o  ���'�' 0 scriptrunmode scriptRunMode� m  ���� ���  D r y   R u n� r  � ��� m  ���&
�& boovtrue� o      �%�% 0 dryrun dryRun�)  �(  � � � Z �$�# =  o  �"�" 0 scriptrunmode scriptRunMode m   �  C a n c e l r   m  		 �

 
 A b o r t o      �!�! 0 scriptaction scriptAction�$  �#     l � ���   �  �    l ��   � �CREATE IDS-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------CREATE IDS--    �� C R E A T E   I D S - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C R E A T E   I D S - - � Z  ��� > " o  �� 0 scriptaction scriptAction m  ! � 
 A b o r t k  %�  r  %+ J  %'��   o      �� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRun  r  ,1 !  m  ,-��  ! o      �� &0 currentusernumber currentUserNumber "#" Y  2:$�%&�$ k  <5'' ()( l <<����  �  �  ) *+* l <<�,-�  , U OIncrement our current user, just so other handlers can know what user we are on   - �.. � I n c r e m e n t   o u r   c u r r e n t   u s e r ,   j u s t   s o   o t h e r   h a n d l e r s   c a n   k n o w   w h a t   u s e r   w e   a r e   o n+ /0/ r  <E121 [  <A343 o  <?�� &0 currentusernumber currentUserNumber4 m  ?@�� 2 o      �� &0 currentusernumber currentUserNumber0 565 l FF��
�	�  �
  �	  6 787 l FF�9:�  9 > 8Get a single user's information from the column contents   : �;; p G e t   a   s i n g l e   u s e r ' s   i n f o r m a t i o n   f r o m   t h e   c o l u m n   c o n t e n t s8 <=< r  FP>?> n  FL@A@ 4  GL�B
� 
cobjB o  HK�� 0 loopcounter loopCounterA o  FG�� 80 appleidemailcolumncontents appleIdEmailColumnContents? o      �� 0 appleidemail appleIdEmail= CDC r  Q[EFE n  QWGHG 4  RW�I
� 
cobjI o  SV�� 0 loopcounter loopCounterH o  QR�� >0 appleidpasswordcolumncontents appleIdPasswordColumnContentsF o      � �  "0 appleidpassword appleIdPasswordD JKJ l \\��������  ��  ��  K LML r  \fNON n  \bPQP 4  ]b��R
�� 
cobjR o  ^a���� 0 loopcounter loopCounterQ o  \]���� L0 $appleidsecretquestion1columncontents $appleIdSecretQuestion1ColumnContentsO o      ���� 00 appleidsecretquestion1 appleIdSecretQuestion1M STS r  gqUVU n  gmWXW 4  hm��Y
�� 
cobjY o  il���� 0 loopcounter loopCounterX o  gh���� H0 "appleidsecretanswer1columncontents "appleIdSecretAnswer1ColumnContentsV o      ���� ,0 appleidsecretanswer1 appleIdSecretAnswer1T Z[Z r  r|\]\ n  rx^_^ 4  sx��`
�� 
cobj` o  tw���� 0 loopcounter loopCounter_ o  rs���� L0 $appleidsecretquestion2columncontents $appleIdSecretQuestion2ColumnContents] o      ���� 00 appleidsecretquestion2 appleIdSecretQuestion2[ aba r  }�cdc n  }�efe 4  ~���g
�� 
cobjg o  ����� 0 loopcounter loopCounterf o  }~���� H0 "appleidsecretanswer2columncontents "appleIdSecretAnswer2ColumnContentsd o      ���� ,0 appleidsecretanswer2 appleIdSecretAnswer2b hih r  ��jkj n  ��lml 4  ����n
�� 
cobjn o  ������ 0 loopcounter loopCounterm o  ������ L0 $appleidsecretquestion3columncontents $appleIdSecretQuestion3ColumnContentsk o      ���� 00 appleidsecretquestion3 appleIdSecretQuestion3i opo r  ��qrq n  ��sts 4  ����u
�� 
cobju o  ������ 0 loopcounter loopCountert o  ������ H0 "appleidsecretanswer3columncontents "appleIdSecretAnswer3ColumnContentsr o      ���� ,0 appleidsecretanswer3 appleIdSecretAnswer3p vwv r  ��xyx n  ��z{z 4  ����|
�� 
cobj| o  ������ 0 loopcounter loopCounter{ o  ������ :0 appleidrescuecolumncontents appleIdRescueColumnContentsy o      ���� 0 rescueemail rescueEmailw }~} r  ��� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ 80 monthofbirthcolumncontents monthOfBirthColumnContents� o      ���� 0 monthofbirth monthOfBirth~ ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ 40 dayofbirthcolumncontents dayOfBirthColumnContents� o      ���� 0 
dayofbirth 
dayOfBirth� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ 60 yearofbirthcolumncontents yearOfBirthColumnContents� o      ���� 0 yearofbirth yearOfBirth� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ :0 userfirstnamecolumncontents userFirstNameColumnContents� o      ���� 0 userfirstname userFirstName� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ 80 userlastnamecolumncontents userLastNameColumnContents� o      ���� 0 userlastname userLastName� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 loopcounter loopCounter� o  ������ :0 addressstreetcolumncontents addressStreetColumnContents� o      ���� 0 addressstreet addressStreet� ��� r  ���� n  ���� 4  ����
�� 
cobj� o  ����� 0 loopcounter loopCounter� o  ������ 60 addresscitycolumncontents addressCityColumnContents� o      ���� 0 addresscity addressCity� ��� r  ��� n  ��� 4  ���
�� 
cobj� o  ���� 0 loopcounter loopCounter� o  ���� 80 addressstatecolumncontents addressStateColumnContents� o      ���� 0 addressstate addressState� ��� r  !��� n  ��� 4  ���
�� 
cobj� o  ���� 0 loopcounter loopCounter� o  ���� 40 addresszipcolumncontents addressZipColumnContents� o      ���� 0 
addresszip 
addressZip� ��� r  ".��� n  "*��� 4  %*���
�� 
cobj� o  &)���� 0 loopcounter loopCounter� o  "%���� :0 phoneareacodecolumncontents phoneAreaCodeColumnContents� o      ���� 0 phoneareacode phoneAreaCode� ��� r  /;��� n  /7��� 4  27���
�� 
cobj� o  36���� 0 loopcounter loopCounter� o  /2���� 60 phonenumbercolumncontents phoneNumberColumnContents� o      ���� 0 phonenumber phoneNumber� ��� r  <H��� n  <D��� 4  ?D���
�� 
cobj� o  @C���� 0 loopcounter loopCounter� o  <?���� :0 accountstatuscolumncontents accountStatusColumnContents� o      ���� 0 accountstatus accountStatus� ��� l II��������  ��  ��  � ��� I IR�����
�� .sysodelanull��� ��� nmbr� o  IN���� 0 masterdelay masterDelay��  � ��� l SS��������  ��  ��  � ��� l SX���� I  SX�������� ,0 signoutitunesaccount SignOutItunesAccount��  ��  � � �-------------------------------------------------------------------------------------------------------------------------------------------------------Signout Apple ID that is currently signed in (if any)   � ���� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - S i g n o u t   A p p l e   I D   t h a t   i s   c u r r e n t l y   s i g n e d   i n   ( i f   a n y )� ��� l YY��������  ��  ��  � ��� l YY������  �  delay 10   � ���  d e l a y   1 0� ��� l YY��������  ��  ��  � ��� l Y^���� I  Y^�������� 0 installibooks installIbooks��  ��  � �-------------------------------------------------------------------------------------------------------------------------------------------------------------------Go to the iBooks App page location to kick off Apple ID creation with no payment information   � ���� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - G o   t o   t h e   i B o o k s   A p p   p a g e   l o c a t i o n   t o   k i c k   o f f   A p p l e   I D   c r e a t i o n   w i t h   n o   p a y m e n t   i n f o r m a t i o n� ��� l __��������  ��  ��  � ��� l _d���� I _d�����
�� .sysodelanull��� ��� nmbr� m  _`���� ��  � M GFix so iTunes is properly tested for, instead of just manually delaying   � ��� � F i x   s o   i T u n e s   i s   p r o p e r l y   t e s t e d   f o r ,   i n s t e a d   o f   j u s t   m a n u a l l y   d e l a y i n g� ��� l ee��������  ��  ��  � ��� T  e��� k  j��� ��� l j�   r  j� I  j������� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd  m  kn �		  D o e s   N o t   M a t c h 

 o  ns���� .0 itunesaccessingstring itunesAccessingString  m  st����   m  tw � " t i m e s .   C h e c k   f o r :  m  wz���� x  m  z} �  i n t e r v a l s   o f  m  }� ?�       �� m  �� �  s e c o n d s��  ��   o      ���� 0 	lcdstatus 	lcdStatus [ U----------------------Wait for iTunes to open (if closed) and the iBooks page to load    � � - - - - - - - - - - - - - - - - - - - - - - W a i t   f o r   i T u n e s   t o   o p e n   ( i f   c l o s e d )   a n d   t h e   i B o o k s   p a g e   t o   l o a d�   Z ��!"����! = ��#$# o  ������ 0 	lcdstatus 	lcdStatus$ m  ��%% �&&  M a t c h e d"  S  ����  ��    '��' I ����(��
�� .sysodelanull��� ��� nmbr( o  ������ 0 masterdelay masterDelay��  ��  � )*) l ������~��  �  �~  * +,+ l ���}�|�{�}  �|  �{  , -.- l ��/01/ I  ���z�y�x�z  0 checkforerrors CheckForErrors�y  �x  0 � �----------------------------------------------------------------------------------------------------------------------------------------------------------------Checks for errors that may have been thrown by previous handler   1 �22� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k s   f o r   e r r o r s   t h a t   m a y   h a v e   b e e n   t h r o w n   b y   p r e v i o u s   h a n d l e r. 343 l ��5675 Z ��89�w�v8 = ��:;: o  ���u�u 0 scriptaction scriptAction; m  ��<< �== 
 A b o r t9  S  ���w  �v  6 � �---------------------------------------------------------------------------------------------------------------------------------If an error was detected and the user chose to abort, then end the script   7 �>>� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a n   e r r o r   w a s   d e t e c t e d   a n d   t h e   u s e r   c h o s e   t o   a b o r t ,   t h e n   e n d   t h e   s c r i p t4 ?@? l ���t�s�r�t  �s  �r  @ ABA l ��CDEC I  ���q�p�o�q :0 clickcreatenewappleidbutton ClickCreateNewAppleIDButton�p  �o  D � �---------------------------------------------------------------------------------------------------------------------------------------------------Click "Ceate New Apple ID" button on pop-up window   E �FF� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C l i c k   " C e a t e   N e w   A p p l e   I D "   b u t t o n   o n   p o p - u p   w i n d o wB GHG l ��IJKI I  ���n�m�l�n 00 clickcontinueonpageone ClickContinueOnPageOne�m  �l  J � �----------------------------------------------------------------------------------------------------------------------------------------------------Click "Continue" on the page with the title "Welcome to the iTunes Store"   K �LL� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C l i c k   " C o n t i n u e "   o n   t h e   p a g e   w i t h   t h e   t i t l e   " W e l c o m e   t o   t h e   i T u n e s   S t o r e "H MNM l ��OPQO I  ���k�j�i�k  0 checkforerrors CheckForErrors�j  �i  P � �----------------------------------------------------------------------------------------------------------------------------------------------------------------Checks for errors that may have been thrown by previous handler   Q �RR� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k s   f o r   e r r o r s   t h a t   m a y   h a v e   b e e n   t h r o w n   b y   p r e v i o u s   h a n d l e rN STS l ��UVWU Z ��XY�h�gX = ��Z[Z o  ���f�f 0 scriptaction scriptAction[ m  ��\\ �]] 
 A b o r tY  S  ���h  �g  V � �---------------------------------------------------------------------------------------------------------------------------------If an error was detected and the user chose to abort, then end the script   W �^^� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a n   e r r o r   w a s   d e t e c t e d   a n d   t h e   u s e r   c h o s e   t o   a b o r t ,   t h e n   e n d   t h e   s c r i p tT _`_ l ���e�d�c�e  �d  �c  ` aba l ��cdec I  ���b�a�`�b 0 agreetoterms AgreeToTerms�a  �`  d � �-----------------------------------------------------------------------------------------------------------------------------------------------------------------Check the "I have read and agreed" box and then the "Agree" button   e �ff� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k   t h e   " I   h a v e   r e a d   a n d   a g r e e d "   b o x   a n d   t h e n   t h e   " A g r e e "   b u t t o nb ghg l ��ijki I  ���_�^�]�_  0 checkforerrors CheckForErrors�^  �]  j � �----------------------------------------------------------------------------------------------------------------------------------------------------------------Checks for errors that may have been thrown by previous handler   k �ll� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k s   f o r   e r r o r s   t h a t   m a y   h a v e   b e e n   t h r o w n   b y   p r e v i o u s   h a n d l e rh mnm l � opqo Z � rs�\�[r = ��tut o  ���Z�Z 0 scriptaction scriptActionu m  ��vv �ww 
 A b o r ts  S  ���\  �[  p � �---------------------------------------------------------------------------------------------------------------------------------If an error was detected and the user chose to abort, then end the script   q �xx� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a n   e r r o r   w a s   d e t e c t e d   a n d   t h e   u s e r   c h o s e   t o   a b o r t ,   t h e n   e n d   t h e   s c r i p tn yzy l �Y�X�W�Y  �X  �W  z {|{ I �V}�U
�V .ascrcmnt****      � ****} J  	~~ � m  �� ���  C r e a t i n g  � ��T� o  �S�S 0 appleidemail appleIdEmail�T  �U  | ��� l �R�Q�P�R  �Q  �P  � ��� l 9���� I  9�O��N�O .0 provideappleiddetails ProvideAppleIdDetails� ��� o  �M�M 0 appleidemail appleIdEmail� ��� o  �L�L "0 appleidpassword appleIdPassword� ��� o  �K�K 00 appleidsecretquestion1 appleIdSecretQuestion1� ��� o  �J�J ,0 appleidsecretanswer1 appleIdSecretAnswer1� ��� o  �I�I 00 appleidsecretquestion2 appleIdSecretQuestion2� ��� o  !�H�H ,0 appleidsecretanswer2 appleIdSecretAnswer2� ��� o  !$�G�G 00 appleidsecretquestion3 appleIdSecretQuestion3� ��� o  $'�F�F ,0 appleidsecretanswer3 appleIdSecretAnswer3� ��� o  '*�E�E 0 rescueemail rescueEmail� ��� o  *-�D�D 0 monthofbirth monthOfBirth� ��� o  -0�C�C 0 
dayofbirth 
dayOfBirth� ��B� o  03�A�A 0 yearofbirth yearOfBirth�B  �N  � � �--------------Fills the first page of apple ID details. Birth Month is full text, like "January". Birth Day and Birth Year are numeric. Birth Year is 4 digit   � ���: - - - - - - - - - - - - - - F i l l s   t h e   f i r s t   p a g e   o f   a p p l e   I D   d e t a i l s .   B i r t h   M o n t h   i s   f u l l   t e x t ,   l i k e   " J a n u a r y " .   B i r t h   D a y   a n d   B i r t h   Y e a r   a r e   n u m e r i c .   B i r t h   Y e a r   i s   4   d i g i t� ��� l :?���� I  :?�@�?�>�@  0 checkforerrors CheckForErrors�?  �>  � � �----------------------------------------------------------------------------------------------------------------------------------------------------------------Checks for errors that may have been thrown by previous handler   � ���� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k s   f o r   e r r o r s   t h a t   m a y   h a v e   b e e n   t h r o w n   b y   p r e v i o u s   h a n d l e r� ��� l @O���� Z @O���=�<� = @G��� o  @C�;�; 0 scriptaction scriptAction� m  CF�� ��� 
 A b o r t�  S  JK�=  �<  � � �---------------------------------------------------------------------------------------------------------------------------------If an error was detected and the user chose to abort, then end the script   � ���� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a n   e r r o r   w a s   d e t e c t e d   a n d   t h e   u s e r   c h o s e   t o   a b o r t ,   t h e n   e n d   t h e   s c r i p t� ��� l PP�:�9�8�:  �9  �8  � ��� l Po���� I  Po�7��6�7 .0 providepaymentdetails ProvidePaymentDetails� ��� o  QT�5�5 0 userfirstname userFirstName� ��� o  TW�4�4 0 userlastname userLastName� ��� o  WZ�3�3 0 addressstreet addressStreet� ��� o  Z]�2�2 0 addresscity addressCity� ��� o  ]`�1�1 0 addressstate addressState� ��� o  `c�0�0 0 
addresszip 
addressZip� ��� o  cf�/�/ 0 phoneareacode phoneAreaCode� ��.� o  fi�-�- 0 phonenumber phoneNumber�.  �6  � ? 9-----------Fill payment details, without credit card info   � ��� r - - - - - - - - - - - F i l l   p a y m e n t   d e t a i l s ,   w i t h o u t   c r e d i t   c a r d   i n f o� ��� l pp�,�+�*�,  �+  �*  � ��� T  p��� k  u��� ��� l u����� r  u���� I  u��)��(�) 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd� ��� m  vy�� ���  D o e s   N o t   M a t c h� ��� o  y~�'�' .0 itunesaccessingstring itunesAccessingString� ��� m  ~�&�& � ��� m  ��� ��� " t i m e s .   C h e c k   f o r :� ��� m  ���%�% x� ��� m  ���� ���  i n t e r v a l s   o f� ��� m  ���� ?�      � ��$� m  ���� ���  s e c o n d s�$  �(  � o      �#�# 0 	lcdstatus 	lcdStatus� [ U----------------------Wait for iTunes to open (if closed) and the iBooks page to load   � ��� � - - - - - - - - - - - - - - - - - - - - - - W a i t   f o r   i T u n e s   t o   o p e n   ( i f   c l o s e d )   a n d   t h e   i B o o k s   p a g e   t o   l o a d� ��� Z �����"�!� = ����� o  ��� �  0 	lcdstatus 	lcdStatus� m  ���� ���  M a t c h e d�  S  ���"  �!  � ��� I �����
� .sysodelanull��� ��� nmbr� o  ���� 0 masterdelay masterDelay�  �  � � � l ������  �  �     l �� I  ������  0 checkforerrors CheckForErrors�  �   � �----------------------------------------------------------------------------------------------------------------------------------------------------------------Checks for errors that may have been thrown by previous handler    �� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - C h e c k s   f o r   e r r o r s   t h a t   m a y   h a v e   b e e n   t h r o w n   b y   p r e v i o u s   h a n d l e r  l ��	
	 Z ���� = �� o  ���� 0 scriptaction scriptAction m  �� � 
 A b o r t  S  ���  �  
 � �---------------------------------------------------------------------------------------------------------------------------------If an error was detected and the user chose to abort, then end the script    �� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a n   e r r o r   w a s   d e t e c t e d   a n d   t h e   u s e r   c h o s e   t o   a b o r t ,   t h e n   e n d   t h e   s c r i p t  l ������  �  �    Z  ���� = �� o  ���� 0 scriptaction scriptAction m  �� �  C o n t i n u e l �� k  ��   !"! r  ��#$# b  ��%&% o  ���� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRun& m  ��'' �((  $ o      �� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRun" )�
) l ��*+,* r  ��-.- m  ��// �00  C r e a t e d. n      121 4  ���	3
�	 
cobj3 o  ���� 0 loopcounter loopCounter2 o  ���� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRun+ v p--------------------------------------------------------------------------------------------Mark user as created   , �44 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - M a r k   u s e r   a s   c r e a t e d�
   � �--------------------------------------------------------------------------------------------------------------------------------------------If user was successfully created...    �55^ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   u s e r   w a s   s u c c e s s f u l l y   c r e a t e d . . .�  �   676 l ������  �  �  7 898 Z  �#:;��: = ��<=< o  ���� 0 scriptaction scriptAction= m  ��>> �??  S k i p   U s e r; l �@AB@ k  �CC DED r  �
FGF b  �HIH o  �� �  <0 accountstatussetbycurrentrun accountStatusSetByCurrentRunI m  JJ �KK  G o      ���� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRunE LML l NOPN r  QRQ m  SS �TT  S k i p p e dR n      UVU 4  ��W
�� 
cobjW o  ���� 0 loopcounter loopCounterV o  ���� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRunO x r--------------------------------------------------------------------------------------------Mark user as "Skipped"   P �XX � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - M a r k   u s e r   a s   " S k i p p e d "M Y��Y l Z[\Z r  ]^] m  __ �``  C o n t i n u e^ o      ���� 0 scriptaction scriptAction[ � �--------------------------------------------------------------------------------------------------------------------------------------------Set the Script back to "Continue" mode   \ �aad - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - S e t   t h e   S c r i p t   b a c k   t o   " C o n t i n u e "   m o d e��  A � �--------------------------------------------------------------------------------------------------------------------------------------------If a user was skipped...   B �bbH - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I f   a   u s e r   w a s   s k i p p e d . . .�  �  9 cdc l $$��������  ��  ��  d efe Z $3gh����g = $+iji o  $'���� 0 scriptaction scriptActionj m  '*kk �ll  S t o ph  S  ./��  ��  f m��m l 44��������  ��  ��  ��  � 0 loopcounter loopCounter% m  56���� & o  67���� 0 	usercount 	userCount�  # non l ;;��������  ��  ��  o pqp l ;;��rs��  r � �------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------Display dialog boxes that confirm the exit status of the script   s �tt� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - D i s p l a y   d i a l o g   b o x e s   t h a t   c o n f i r m   t h e   e x i t   s t a t u s   o f   t h e   s c r i p tq uvu l ;;��������  ��  ��  v wxw I ;@������
�� .miscactvnull��� ��� null��  ��  x yzy Z A\{|����{ = AH}~} o  AD���� 0 scriptaction scriptAction~ m  DG ��� 
 A b o r t| I KX����
�� .sysodlogaskr        TEXT� m  KN�� ��� $ S c r i p t   w a s   a b o r t e d� �����
�� 
btns� J  OT�� ���� m  OR�� ���  O K��  ��  ��  ��  z ��� Z ]x������� = ]d��� o  ]`���� 0 scriptaction scriptAction� m  `c�� ���  S t o p� I gt����
�� .sysodlogaskr        TEXT� m  gj�� ��� " D r y   r u n   c o m p l e t e d� �����
�� 
btns� J  kp�� ���� m  kn�� ���  O K��  ��  ��  ��  � ��� Z y�������� = y���� o  y|���� 0 scriptaction scriptAction� m  |�� ���  C o n t i n u e� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� : S c r i p t   C o m p l e t e d   S u c c e s s f u l l y� �����
�� 
btns� J  ���� ���� m  ���� ���  O K��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � ( "Fix for multiple positive outcomes   � ��� D F i x   f o r   m u l t i p l e   p o s i t i v e   o u t c o m e s� ���� Z  ��������� = ����� o  ������ 40 itunesversionissupported itunesVersionIsSupported� m  ����
�� boovfals� l ������ Z  ��������� = ����� o  ������ 0 scriptaction scriptAction� m  ���� ���  C o n t i n u e� l ������ Z  ��������� = ����� n  ����� 1  ����
�� 
bhit� l �������� I ������
�� .sysodlogaskr        TEXT� b  ����� b  ����� m  ���� ��� J W o u l d   y o u   l i k e   t o   a d d   i T u n e s   V e r s i o n  � o  ������ 0 itunesversion itunesVersion� m  ���� ��� T   t o   t h e   l i s t   o f   s u p p o r t e d   i T u n e s   v e r s i o n s ?� ����
�� 
btns� J  ���� ��� m  ���� ���  Y e s� ���� m  ���� ���  N o��  � �����
�� 
dflt� m  ���� ���  N o��  ��  ��  � m  ���� ���  Y e s� l ������ k  ���� ��� r  ����� b  ����� o  ������ 20 supporteditunesversions supportedItunesVersions� o  ������ 0 itunesversion itunesVersion� o      ���� 20 supporteditunesversions supportedItunesVersions� ���� I �������
�� .sysodlogaskr        TEXT� b  ����� b  ����� m  ���� ���  i T u n e s   v e r s i o n  � o  ������ 0 itunesversion itunesVersion� m  ���� ��� b   s u c c e s f u l l y   a d d e d   t o   l i s t   o f   s u p p o r t e d   v e r s i o n s .��  ��  � k e...then ask the user if they want to add the current version of iTunes to the supported versions list   � ��� � . . . t h e n   a s k   t h e   u s e r   i f   t h e y   w a n t   t o   a d d   t h e   c u r r e n t   v e r s i o n   o f   i T u n e s   t o   t h e   s u p p o r t e d   v e r s i o n s   l i s t��  ��  �  And it wasn't aborted...   � ��� 0 A n d   i t   w a s n ' t   a b o r t e d . . .��  ��  � G AIf the script was run against an unsupported version of iTunes...   � ��� � I f   t h e   s c r i p t   w a s   r u n   a g a i n s t   a n   u n s u p p o r t e d   v e r s i o n   o f   i T u n e s . . .��  ��  ��  �  �  �  ��  ��  ��  ��  ��  � ��� l ����� ��  � � �-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------End main function     �� - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - E n d   m a i n   f u n c t i o n� �� l ����������  ��  ��  ��  +  l     ��������  ��  ��    l      ����   � �_________________________________________________________________________________________________________________________________________    �		 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 

 l     ��������  ��  ��    l     ����   � �FUNCTIONS-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------FUNCTIONS--    �� F U N C T I O N S - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - F U N C T I O N S - -  l     ��������  ��  ��    i  $' I      ������ 0 loadusersfile loadUsersFile  o      ���� "0 userdroppedfile userDroppedFile �� o      ���� 0 
chosenfile 
chosenFile��  ��   k    �  Z    ���� =     !  o     ���� "0 userdroppedfile userDroppedFile! m    ��
�� boovfals r    	"#" m    $$ �%%  C h o o s e# o      ���� 0 
chosenfile 
chosenFile��  ��   &'& l   ()*( r    +,+ I    ��-���� 0 readcsvfile ReadCsvFile- .��. o    ���� 0 
chosenfile 
chosenFile��  ��  , o      ���� 0 readfile readFile) 1 +Open the CSV file and read its raw contents   * �// V O p e n   t h e   C S V   f i l e   a n d   r e a d   i t s   r a w   c o n t e n t s' 010 l   2342 r    565 I    ��7���� 0 parsecsvfile ParseCsvFile7 8��8 o    ���� 0 readfile readFile��  ��  6 o      ���� 0 readfile readFile3 + %Parse the values into a list of lists   4 �99 J P a r s e   t h e   v a l u e s   i n t o   a   l i s t   o f   l i s t s1 :;: l     ��������  ��  ��  ; <=< r     K>?> J     I@@ ABA m     !CC �DD 
 E m a i lB EFE m   ! "GG �HH  P a s s w o r dF IJI m   " #KK �LL " S e c r e t   Q u e s t i o n   1J MNM m   # $OO �PP  S e c r e t   A n s w e r   1N QRQ m   $ %SS �TT " S e c r e t   Q u e s t i o n   2R UVU m   % &WW �XX  S e c r e t   A n s w e r   2V YZY m   & '[[ �\\ " S e c r e t   Q u e s t i o n   3Z ]^] m   ' (__ �``  S e c r e t   A n s w e r   3^ aba m   ( )cc �dd  M o n t h   O f   B i r t hb efe m   ) *gg �hh  D a y   O f   B i r t hf iji m   * +kk �ll  Y e a r   O f   B i r t hj mnm m   + ,oo �pp  F i r s t   N a m en qrq m   , -ss �tt  L a s t   N a m er uvu m   - 0ww �xx  A d d r e s s   S t r e e tv yzy m   0 3{{ �||  A d d r e s s   C i t yz }~} m   3 6 ���  A d d r e s s   S t a t e~ ��� m   6 9�� ���  A d d r e s s   Z i p� ��� m   9 <�� ���  P h o n e   A r e a   C o d e� ��� m   < ?�� ���  P h o n e   N u m b e r� ��� m   ? B�� ��� . R e s c u e   E m a i l   ( O p t i o n a l )� ���� m   B E�� ���  A c c o u n t   S t a t u s��  ? o      ���� *0 listofcolumnstofind listOfColumnsToFind= ��� l  L L��������  ��  ��  � ��� l  L L������  � $ Locate the columns in the file   � ��� < L o c a t e   t h e   c o l u m n s   i n   t h e   f i l e� ��� r   L P��� J   L N����  � o      �� 0 findresults findResults� ��� Y   Q ���~���}� k   c ~�� ��� r   c j��� b   c h��� o   c d�|�| 0 findresults findResults� m   d g�� ���  � o      �{�{ 0 findresults findResults� ��z� l  k ~���� r   k ~��� I   k w�y��x�y 0 
findcolumn 
findColumn� ��� l  l r��w�v� n   l r��� 4   m r�u�
�u 
cobj� o   p q�t�t .0 columnfindloopcounter columnFindLoopCounter� o   l m�s�s *0 listofcolumnstofind listOfColumnsToFind�w  �v  � ��r� o   r s�q�q 0 readfile readFile�r  �x  � n      ��� 4   x }�p�
�p 
cobj� o   { |�o�o .0 columnfindloopcounter columnFindLoopCounter� o   w x�n�n 0 findresults findResults� � �FindColumn Returns a list of two items. The first item is either "Found" or "Not Found". The second item (if the item was "found") will be a numerical reference to the column that was found, based on its position in the source file   � ���� F i n d C o l u m n   R e t u r n s   a   l i s t   o f   t w o   i t e m s .   T h e   f i r s t   i t e m   i s   e i t h e r   " F o u n d "   o r   " N o t   F o u n d " .   T h e   s e c o n d   i t e m   ( i f   t h e   i t e m   w a s   " f o u n d " )   w i l l   b e   a   n u m e r i c a l   r e f e r e n c e   t o   t h e   c o l u m n   t h a t   w a s   f o u n d ,   b a s e d   o n   i t s   p o s i t i o n   i n   t h e   s o u r c e   f i l e�z  �~ .0 columnfindloopcounter columnFindLoopCounter� m   T U�m�m � l  U ^��l�k� I  U ^�j��i
�j .corecnte****       ****� n  U Z��� 2  V Z�h
�h 
cobj� o   U V�g�g *0 listofcolumnstofind listOfColumnsToFind�i  �l  �k  �}  � ��� l  � ��f�e�d�f  �e  �d  � ��� l  � ��c���c  � I CVerify that the columns were found, and resolve any missing columns   � ��� � V e r i f y   t h a t   t h e   c o l u m n s   w e r e   f o u n d ,   a n d   r e s o l v e   a n y   m i s s i n g   c o l u m n s� ��� Y   ����b���a� Z   �����`�� =  � ���� o   � ��_�_ 0 scriptaction scriptAction� m   � ��� ���  C o n t i n u e� Z   �����^�� =  � ���� n   � ���� 4   � ��]�
�] 
cobj� m   � ��\�\ � n   � ���� 4   � ��[�
�[ 
cobj� o   � ��Z�Z 20 columnverifyloopcounter columnVerifyLoopCounter� o   � ��Y�Y 0 findresults findResults� m   � ��� ��� 
 F o u n d� l  � ����� l  � ����� r   � ���� n   � ���� 4   � ��X�
�X 
cobj� m   � ��W�W � n   � ���� 4   � ��V�
�V 
cobj� o   � ��U�U 20 columnverifyloopcounter columnVerifyLoopCounter� o   � ��T�T 0 findresults findResults� n      ��� 4   � ��S�
�S 
cobj� o   � ��R�R 20 columnverifyloopcounter columnVerifyLoopCounter� o   � ��Q�Q 0 findresults findResults� T NRemove the verification information and set the item to just the column number   � ��� � R e m o v e   t h e   v e r i f i c a t i o n   i n f o r m a t i o n   a n d   s e t   t h e   i t e m   t o   j u s t   t h e   c o l u m n   n u m b e r� 7 1Check if the current item to be located was found   � ��� b C h e c k   i f   t h e   c u r r e n t   i t e m   t o   b e   l o c a t e d   w a s   f o u n d�^  � l  ������ k   ���� ��� l  � ��P���P  � - 'Ask the user what they would like to do   � ��� N A s k   t h e   u s e r   w h a t   t h e y   w o u l d   l i k e   t o   d o� � � r   � � c   � � n   � � 1   � ��O
�O 
bhit l  � ��N�M I  � ��L	
�L .sysodlogaskr        TEXT b   � �

 b   � � b   � � b   � � b   � � m   � � � H T h e   s c r i p t   w a s   u n a b l e   t o   l o c a t e   t h e   n   � � 4   � ��K
�K 
cobj o   � ��J�J 20 columnverifyloopcounter columnVerifyLoopCounter o   � ��I�I *0 listofcolumnstofind listOfColumnsToFind m   � � � z   c o l u m n .   T h e   s c r i p t   c a n n o t   c o n t i n u e   w i t h o u t   t h i s   i n f o r m a t i o n . o   � ��H
�H 
ret  o   � ��G
�G 
ret  m   � � � 4 W h a t   w o u l d   y o u   l i k e   t o   d o ?	 �F�E
�F 
btns J   � �   m   � �!! �""  A b o r t   S c r i p t  #�D# m   � �$$ �%% , M a n u a l l y   L o c a t e   C o l u m n�D  �E  �N  �M   m   � ��C
�C 
ctxt o      �B�B 20 missingcolumnresolution missingColumnResolution  &'& l  � ��A�@�?�A  �@  �?  ' ()( l  � ��>*+�>  *   If the user chose to abort   + �,, 4 I f   t h e   u s e r   c h o s e   t o   a b o r t) -.- Z  �/0�=�</ =  � 121 o   � ��;�; 20 missingcolumnresolution missingColumnResolution2 m   � �33 �44  A b o r t   S c r i p t0 r  
565 m  77 �88 
 A b o r t6 o      �:�: 0 scriptaction scriptAction�=  �<  . 9:9 l �9�8�7�9  �8  �7  : ;<; l �6=>�6  = 5 /If the user chose to manually locate the column   > �?? ^ I f   t h e   u s e r   c h o s e   t o   m a n u a l l y   l o c a t e   t h e   c o l u m n< @A@ Z  �BC�5�4B = DED o  �3�3 20 missingcolumnresolution missingColumnResolutionE m  FF �GG , M a n u a l l y   L o c a t e   C o l u m nC k  �HH IJI l �2KL�2  K s mCreate a list of the columns to choose from, complete with a number at the beginning of each item in the list   L �MM � C r e a t e   a   l i s t   o f   t h e   c o l u m n s   t o   c h o o s e   f r o m ,   c o m p l e t e   w i t h   a   n u m b e r   a t   t h e   b e g i n n i n g   o f   e a c h   i t e m   i n   t h e   l i s tJ NON r  PQP J  �1�1  Q o      �0�0 0 
columnlist 
columnListO RSR Y  LT�/UV�.T l .GWXYW l .GZ[\Z r  .G]^] b  .E_`_ o  ./�-�- 0 
columnlist 
columnList` l /Da�,�+a b  /Dbcb b  /8ded l /4f�*�)f c  /4ghg o  /0�(�( :0 createcolumnlistloopcounter createColumnListLoopCounterh m  03�'
�' 
ctxt�*  �)  e m  47ii �jj   c n  8Cklk 4  >C�&m
�& 
cobjm m  AB�%�% l n  8>non 4  9>�$p
�$ 
cobjp o  <=�#�# :0 createcolumnlistloopcounter createColumnListLoopCountero o  89�"�" 0 readfile readFile�,  �+  ^ o      �!�! 0 
columnlist 
columnList[ � �Dynamically add an incremented number and space to the beginning of each item in the list of choices, and then add the contents of the first row of the column chosen for this loop   \ �qqf D y n a m i c a l l y   a d d   a n   i n c r e m e n t e d   n u m b e r   a n d   s p a c e   t o   t h e   b e g i n n i n g   o f   e a c h   i t e m   i n   t h e   l i s t   o f   c h o i c e s ,   a n d   t h e n   a d d   t h e   c o n t e n t s   o f   t h e   f i r s t   r o w   o f   t h e   c o l u m n   c h o s e n   f o r   t h i s   l o o pX � |Each loop will create an entry in the list of choices corresponding to the first row of a column in the original source file   Y �rr � E a c h   l o o p   w i l l   c r e a t e   a n   e n t r y   i n   t h e   l i s t   o f   c h o i c e s   c o r r e s p o n d i n g   t o   t h e   f i r s t   r o w   o f   a   c o l u m n   i n   t h e   o r i g i n a l   s o u r c e   f i l e�/ :0 createcolumnlistloopcounter createColumnListLoopCounterU m   � �  V l  )s��s I  )�t�
� .corecnte****       ****t n  %uvu 2 !%�
� 
cobjv o   !�� 0 readfile readFile�  �  �  �.  S wxw l MM����  �  �  x yzy l MM�{|�  { 4 .Present the list of column choices to the user   | �}} \ P r e s e n t   t h e   l i s t   o f   c o l u m n   c h o i c e s   t o   t h e   u s e rz ~~ l Me���� r  Me��� I Mc���
� .gtqpchltns    @   @ ns  � o  MN�� 0 
columnlist 
columnList� ���
� 
prmp� b  Q_��� b  Q[��� m  QT�� ��� X W h i c h   o f   t h e   i t e m s   b e l o w   i s   a n   e x a m p l e   o f   ' '� n  TZ��� 4  UZ��
� 
cobj� o  XY�� 20 columnverifyloopcounter columnVerifyLoopCounter� o  TU�� *0 listofcolumnstofind listOfColumnsToFind� m  [^�� ���  ' '�  � o      �� 0 
listchoice 
listChoice� C =Ask user which of the choices matches what we are looking for   � ��� z A s k   u s e r   w h i c h   o f   t h e   c h o i c e s   m a t c h e s   w h a t   w e   a r e   l o o k i n g   f o r ��� Z  f������ = fi��� o  fg�� 0 
listchoice 
listChoice� m  gh�

�
 boovfals� l ls���� r  ls��� m  lo�� ��� 
 A b o r t� o      �	�	 0 scriptaction scriptAction� A ;If the user clicked cancel in the list selection dialog box   � ��� v I f   t h e   u s e r   c l i c k e d   c a n c e l   i n   t h e   l i s t   s e l e c t i o n   d i a l o g   b o x�  � l v����� r  v���� l v����� c  v���� l v|���� n  v|��� 4 w|��
� 
cwor� m  z{�� � o  vw�� 0 
listchoice 
listChoice�  �  � m  |�
� 
nmbr�  �  � n      ��� 4  ��� �
�  
cobj� o  ������ 20 columnverifyloopcounter columnVerifyLoopCounter� o  ������ 0 findresults findResults� � �Set the currently evaluating entry of findResults to the column NUMBER (determined by getting the first word of list choice, which corresponds to column numbers) the user selected   � ���f S e t   t h e   c u r r e n t l y   e v a l u a t i n g   e n t r y   o f   f i n d R e s u l t s   t o   t h e   c o l u m n   N U M B E R   ( d e t e r m i n e d   b y   g e t t i n g   t h e   f i r s t   w o r d   o f   l i s t   c h o i c e ,   w h i c h   c o r r e s p o n d s   t o   c o l u m n   n u m b e r s )   t h e   u s e r   s e l e c t e d�  �5  �4  A ���� l ����������  ��  ��  ��  �  If a column is missing   � ��� , I f   a   c o l u m n   i s   m i s s i n g�`  � l ������  S  ��� ! If an abort has been thrown   � ��� 6 I f   a n   a b o r t   h a s   b e e n   t h r o w n�b 20 columnverifyloopcounter columnVerifyLoopCounter� m   � ����� � l  � ������� I  � ������
�� .corecnte****       ****� n  � ���� 2  � ���
�� 
cobj� o   � ����� 0 findresults findResults��  ��  ��  �a  � ��� l ����������  ��  ��  � ��� l ��������  � 0 *Retrieve the contents of the found columns   � ��� T R e t r i e v e   t h e   c o n t e n t s   o f   t h e   f o u n d   c o l u m n s� ��� Z  ��������� = ����� o  ������ 0 scriptaction scriptAction� m  ���� ���  C o n t i n u e� k  ���� ��� r  ����� J  ������  � o      ���� 0 filecontents fileContents� ���� Y  ���������� k  ���� ��� r  ����� b  ����� o  ������ 0 filecontents fileContents� m  ���� ���  � o      ���� 0 filecontents fileContents� ���� r  ����� I  ��������� &0 getcolumncontents getColumnContents� ��� l �������� n  ����� 4  �����
�� 
cobj� o  ������ :0 contentretrievalloopcounter contentRetrievalLoopCounter� o  ������ 0 findresults findResults��  ��  � ���� o  ������ 0 readfile readFile��  ��  � n      ��� 4  �����
�� 
cobj� o  ������ :0 contentretrievalloopcounter contentRetrievalLoopCounter� o  ������ 0 filecontents fileContents��  �� :0 contentretrievalloopcounter contentRetrievalLoopCounter� m  ������ � l �������� I �������
�� .corecnte****       ****� n ����� 2 ����
�� 
cobj� o  ������ 0 findresults findResults��  ��  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ 0 scriptaction scriptAction� m  ���� ���  C o n t i n u e� L  ���� o  ������ 0 filecontents fileContents��  ��  � ���� l ����������  ��  ��  ��   ��� l     ��������  ��  ��  � ��� i  (+�	 � I      ��	���� 0 
findcolumn 
findColumn	 			 o      ���� 0 columntofind columnToFind	 	��	 o      ���� 0 filecontents fileContents��  ��  	  k    �		 			 l     ��������  ��  ��  	 				 l     ��	
	��  	
 = 7BEGIN FIND EMAIL																							BEGIN FIND EMAIL   	 �		 n B E G I N   F I N D   E M A I L 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   E M A I L		 			 Z     		����	 =    			 o     ���� 0 columntofind columnToFind	 m    		 �		 
 E m a i l	 L    		 I    ��	���� 0 
findinlist 
findInList	 			 o    ���� 0 emailheaders emailHeaders	 	��	 o    ���� 0 filecontents fileContents��  ��  ��  ��  	 			 l   ��������  ��  ��  	 			 l   ��		��  	 B <BEGIN FIND PASSWORD																						BEGIN FIND PASSWORD   	 �	 	  x B E G I N   F I N D   P A S S W O R D 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   P A S S W O R D	 	!	"	! Z    -	#	$����	# =   	%	&	% o    ���� 0 columntofind columnToFind	& m    	'	' �	(	(  P a s s w o r d	$ L    )	)	) I    (��	*���� 0 
findinlist 
findInList	* 	+	,	+ o    #���� "0 passwordheaders passwordHeaders	, 	-��	- o   # $���� 0 filecontents fileContents��  ��  ��  ��  	" 	.	/	. l  . .��������  ��  ��  	/ 	0	1	0 l  . .��	2	3��  	2 N HBEGIN FIND SECRET QUESTION																				BEGIN FIND SECRET QUESTION   	3 �	4	4 � B E G I N   F I N D   S E C R E T   Q U E S T I O N 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   Q U E S T I O N	1 	5	6	5 Z   . D	7	8����	7 =  . 1	9	:	9 o   . /���� 0 columntofind columnToFind	: m   / 0	;	; �	<	< " S e c r e t   Q u e s t i o n   1	8 L   4 @	=	= I   4 ?��	>���� 0 
findinlist 
findInList	> 	?	@	? o   5 :���� 00 secretquestion1headers secretQuestion1Headers	@ 	A��	A o   : ;���� 0 filecontents fileContents��  ��  ��  ��  	6 	B	C	B l  E E��������  ��  ��  	C 	D	E	D l  E E��	F	G��  	F K EBEGIN FIND SECRET ANSWER																					BEGIN FIND SECRET ANSWER   	G �	H	H � B E G I N   F I N D   S E C R E T   A N S W E R 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   A N S W E R	E 	I	J	I Z   E [	K	L����	K =  E H	M	N	M o   E F���� 0 columntofind columnToFind	N m   F G	O	O �	P	P  S e c r e t   A n s w e r   1	L L   K W	Q	Q I   K V��	R���� 0 
findinlist 
findInList	R 	S	T	S o   L Q���� ,0 secretanswer1headers secretAnswer1Headers	T 	U��	U o   Q R���� 0 filecontents fileContents��  ��  ��  ��  	J 	V	W	V l  \ \��������  ��  ��  	W 	X	Y	X l  \ \��	Z	[��  	Z R LBEGIN FIND SECRET QUESTION 2																				BEGIN FIND SECRET QUESTION 2   	[ �	\	\ � B E G I N   F I N D   S E C R E T   Q U E S T I O N   2 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   Q U E S T I O N   2	Y 	]	^	] Z   \ r	_	`����	_ =  \ _	a	b	a o   \ ]���� 0 columntofind columnToFind	b m   ] ^	c	c �	d	d " S e c r e t   Q u e s t i o n   2	` L   b n	e	e I   b m��	f���� 0 
findinlist 
findInList	f 	g	h	g o   c h���� 00 secretquestion2headers secretQuestion2Headers	h 	i��	i o   h i���� 0 filecontents fileContents��  ��  ��  ��  	^ 	j	k	j l  s s�������  ��  �  	k 	l	m	l l  s s�~	n	o�~  	n O IBEGIN FIND SECRET ANSWER 2																					BEGIN FIND SECRET ANSWER 2   	o �	p	p � B E G I N   F I N D   S E C R E T   A N S W E R   2 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   A N S W E R   2	m 	q	r	q Z   s �	s	t�}�|	s =  s v	u	v	u o   s t�{�{ 0 columntofind columnToFind	v m   t u	w	w �	x	x  S e c r e t   A n s w e r   2	t L   y �	y	y I   y ��z	z�y�z 0 
findinlist 
findInList	z 	{	|	{ o   z �x�x ,0 secretanswer2headers secretAnswer2Headers	| 	}�w	} o    ��v�v 0 filecontents fileContents�w  �y  �}  �|  	r 	~		~ l  � ��u�t�s�u  �t  �s  	 	�	�	� l  � ��r	�	��r  	� S MBEGIN FIND SECRET QUESTION  3																				BEGIN FIND SECRET QUESTION 3   	� �	�	� � B E G I N   F I N D   S E C R E T   Q U E S T I O N     3 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   Q U E S T I O N   3	� 	�	�	� Z   � �	�	��q�p	� =  � �	�	�	� o   � ��o�o 0 columntofind columnToFind	� m   � �	�	� �	�	� " S e c r e t   Q u e s t i o n   3	� L   � �	�	� I   � ��n	��m�n 0 
findinlist 
findInList	� 	�	�	� o   � ��l�l 00 secretquestion3headers secretQuestion3Headers	� 	��k	� o   � ��j�j 0 filecontents fileContents�k  �m  �q  �p  	� 	�	�	� l  � ��i�h�g�i  �h  �g  	� 	�	�	� l  � ��f	�	��f  	� O IBEGIN FIND SECRET ANSWER 3																					BEGIN FIND SECRET ANSWER 3   	� �	�	� � B E G I N   F I N D   S E C R E T   A N S W E R   3 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   S E C R E T   A N S W E R   3	� 	�	�	� Z   � �	�	��e�d	� =  � �	�	�	� o   � ��c�c 0 columntofind columnToFind	� m   � �	�	� �	�	�  S e c r e t   A n s w e r   3	� L   � �	�	� I   � ��b	��a�b 0 
findinlist 
findInList	� 	�	�	� o   � ��`�` ,0 secretanswer3headers secretAnswer3Headers	� 	��_	� o   � ��^�^ 0 filecontents fileContents�_  �a  �e  �d  	� 	�	�	� l  � ��]�\�[�]  �\  �[  	� 	�	�	� l  � ��Z	�	��Z  	� H BBEGIN FIND BIRTH MONTH 																					BEGIN FIND BIRTH MONTH   	� �	�	� � B E G I N   F I N D   B I R T H   M O N T H   	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   B I R T H   M O N T H	� 	�	�	� Z   � �	�	��Y�X	� =  � �	�	�	� o   � ��W�W 0 columntofind columnToFind	� m   � �	�	� �	�	�  M o n t h   O f   B i r t h	� L   � �	�	� I   � ��V	��U�V 0 
findinlist 
findInList	� 	�	�	� o   � ��T�T *0 monthofbirthheaders monthOfBirthHeaders	� 	��S	� o   � ��R�R 0 filecontents fileContents�S  �U  �Y  �X  	� 	�	�	� l  � ��Q�P�O�Q  �P  �O  	� 	�	�	� l  � ��N	�	��N  	� E ?BEGIN FIND BIRTH DAY 																						BEGIN FIND BIRTH DAY   	� �	�	� ~ B E G I N   F I N D   B I R T H   D A Y   	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   B I R T H   D A Y	� 	�	�	� Z   � �	�	��M�L	� =  � �	�	�	� o   � ��K�K 0 columntofind columnToFind	� m   � �	�	� �	�	�  D a y   O f   B i r t h	� L   � �	�	� I   � ��J	��I�J 0 
findinlist 
findInList	� 	�	�	� o   � ��H�H &0 dayofbirthheaders dayOfBirthHeaders	� 	��G	� o   � ��F�F 0 filecontents fileContents�G  �I  �M  �L  	� 	�	�	� l  � ��E�D�C�E  �D  �C  	� 	�	�	� l  � ��B	�	��B  	� G ABEGIN FIND BIRTH YEAR 																						BEGIN FIND BIRTH YEAR   	� �	�	� � B E G I N   F I N D   B I R T H   Y E A R   	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   B I R T H   Y E A R	� 	�	�	� Z   � �	�	��A�@	� =  � �	�	�	� o   � ��?�? 0 columntofind columnToFind	� m   � �	�	� �	�	�  Y e a r   O f   B i r t h	� L   � �	�	� I   � ��>	��=�> 0 
findinlist 
findInList	� 	�	�	� o   � ��<�< (0 yearofbirthheaders yearOfBirthHeaders	� 	��;	� o   � ��:�: 0 filecontents fileContents�;  �=  �A  �@  	� 	�	�	� l  � ��9�8�7�9  �8  �7  	� 	�	�	� l  � ��6	�	��6  	� D >BEGIN FIND LAST NAME																						BEGIN FIND LAST NAME   	� �	�	� | B E G I N   F I N D   L A S T   N A M E 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   L A S T   N A M E	� 	�	�	� Z   �	�	��5�4	� =  � 	�	�	� o   � ��3�3 0 columntofind columnToFind	� m   � �	�	� �	�	�  F i r s t   N a m e	� L  	�	� I  �2	��1�2 0 
findinlist 
findInList	� 	�	�	� o  	�0�0 $0 firstnameheaders firstNameHeaders	� 	��/	� o  	
�.�. 0 filecontents fileContents�/  �1  �5  �4  	� 	�	�	� l �-�,�+�-  �,  �+  	� 	�	�	� l �*	�	��*  	� D >BEGIN FIND LAST NAME																						BEGIN FIND LAST NAME   	� �	�	� | B E G I N   F I N D   L A S T   N A M E 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   L A S T   N A M E	� 	�	�	� Z  *	�
 �)�(	� = 


 o  �'�' 0 columntofind columnToFind
 m  

 �

  L a s t   N a m e
  L  &

 I  %�&
�%�& 0 
findinlist 
findInList
 


 o   �$�$ "0 lastnameheaders lastNameHeaders
 
	�#
	 o   !�"�" 0 filecontents fileContents�#  �%  �)  �(  	� 




 l ++�!� ��!  �   �  
 


 l ++�

�  
 L FBEGIN FIND ADDRESS STREET																				BEGIN FIND ADDRESS STREET   
 �

 � B E G I N   F I N D   A D D R E S S   S T R E E T 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   A D D R E S S   S T R E E T
 


 Z  +A

��
 = +.


 o  +,�� 0 columntofind columnToFind
 m  ,-

 �

  A d d r e s s   S t r e e t
 L  1=

 I  1<�
�� 0 
findinlist 
findInList
 


 o  27�� ,0 addressstreetheaders addressStreetHeaders
 
�
 o  78�� 0 filecontents fileContents�  �  �  �  
 


 l BB����  �  �  
 
 
!
  l BB�
"
#�  
" I CBEGIN FIND ADDRESS CITY																					BEGIN FIND ADDRESS CITY   
# �
$
$ � B E G I N   F I N D   A D D R E S S   C I T Y 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   A D D R E S S   C I T Y
! 
%
&
% Z  BX
'
(��
' = BE
)
*
) o  BC�� 0 columntofind columnToFind
* m  CD
+
+ �
,
,  A d d r e s s   C i t y
( L  HT
-
- I  HS�
.�� 0 
findinlist 
findInList
. 
/
0
/ o  IN�� (0 addresscityheaders addressCityHeaders
0 
1�
1 o  NO�
�
 0 filecontents fileContents�  �  �  �  
& 
2
3
2 l YY�	���	  �  �  
3 
4
5
4 l YY�
6
7�  
6 K EBEGIN FIND ADDRESS STATE																					BEGIN FIND ADDRESS STATE   
7 �
8
8 � B E G I N   F I N D   A D D R E S S   S T A T E 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   A D D R E S S   S T A T E
5 
9
:
9 Z  Yq
;
<��
; = Y^
=
>
= o  YZ�� 0 columntofind columnToFind
> m  Z]
?
? �
@
@  A d d r e s s   S t a t e
< L  am
A
A I  al�
B�� 0 
findinlist 
findInList
B 
C
D
C o  bg� �  *0 addressstateheaders addressStateHeaders
D 
E��
E o  gh���� 0 filecontents fileContents��  �  �  �  
: 
F
G
F l rr��������  ��  ��  
G 
H
I
H l rr��
J
K��  
J G ABEGIN FIND ADDRESS ZIP																					BEGIN FIND ADDRESS ZIP   
K �
L
L � B E G I N   F I N D   A D D R E S S   Z I P 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   A D D R E S S   Z I P
I 
M
N
M Z  r�
O
P����
O = rw
Q
R
Q o  rs���� 0 columntofind columnToFind
R m  sv
S
S �
T
T  A d d r e s s   Z i p
P L  z�
U
U I  z���
V���� 0 
findinlist 
findInList
V 
W
X
W o  {����� &0 addresszipheaders addressZipHeaders
X 
Y��
Y o  ������ 0 filecontents fileContents��  ��  ��  ��  
N 
Z
[
Z l ����������  ��  ��  
[ 
\
]
\ l ����
^
_��  
^ N HBEGIN FIND PHONE AREA CODE																				BEGIN FIND PHONE AREA CODE   
_ �
`
` � B E G I N   F I N D   P H O N E   A R E A   C O D E 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   P H O N E   A R E A   C O D E
] 
a
b
a Z  ��
c
d����
c = ��
e
f
e o  ������ 0 columntofind columnToFind
f m  ��
g
g �
h
h  P h o n e   A r e a   C o d e
d L  ��
i
i I  ����
j���� 0 
findinlist 
findInList
j 
k
l
k o  ������ ,0 phoneareacodeheaders phoneAreaCodeHeaders
l 
m��
m o  ������ 0 filecontents fileContents��  ��  ��  ��  
b 
n
o
n l ����������  ��  ��  
o 
p
q
p l ����
r
s��  
r I CBEGIN FIND PHONE NUMBER																					BEGIN FIND PHONE NUMBER   
s �
t
t � B E G I N   F I N D   P H O N E   N U M B E R 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   P H O N E   N U M B E R
q 
u
v
u Z  ��
w
x����
w = ��
y
z
y o  ������ 0 columntofind columnToFind
z m  ��
{
{ �
|
|  P h o n e   N u m b e r
x L  ��
}
} I  ����
~���� 0 
findinlist 
findInList
~ 

�
 o  ������ (0 phonenumberheaders phoneNumberHeaders
� 
���
� o  ������ 0 filecontents fileContents��  ��  ��  ��  
v 
�
�
� l ����������  ��  ��  
� 
�
�
� l ����
�
���  
� I CBEGIN FIND RESCUE EMAIL																					BEGIN FIND RESCUE EMAIL   
� �
�
� � B E G I N   F I N D   R E S C U E   E M A I L 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   R E S C U E   E M A I L
� 
�
�
� Z  ��
�
�����
� = ��
�
�
� o  ������ 0 columntofind columnToFind
� m  ��
�
� �
�
� . R e s c u e   E m a i l   ( O p t i o n a l )
� L  ��
�
� I  ����
����� 0 
findinlist 
findInList
� 
�
�
� o  ������ (0 rescueemailheaders rescueEmailHeaders
� 
���
� o  ������ 0 filecontents fileContents��  ��  ��  ��  
� 
�
�
� l ����������  ��  ��  
� 
�
�
� l ����
�
���  
� L FBEGIN FIND ACCOUNT STATUS																				BEGIN FIND ACCOUNT STATUS   
� �
�
� � B E G I N   F I N D   A C C O U N T   S T A T U S 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   F I N D   A C C O U N T   S T A T U S
� 
�
�
� Z  ��
�
�����
� = ��
�
�
� o  ������ 0 columntofind columnToFind
� m  ��
�
� �
�
�  A c c o u n t   S t a t u s
� L  ��
�
� I  ����
����� 0 
findinlist 
findInList
� 
�
�
� o  ������ ,0 accountstatusheaders accountStatusHeaders
� 
���
� o  ������ 0 filecontents fileContents��  ��  ��  ��  
� 
���
� l ����������  ��  ��  ��  � 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� - '---------------------------------------   
� �
�
� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� i  ,/
�
�
� I      ��
����� 0 
findinlist 
findInList
� 
�
�
� o      ���� 0 	matchlist 	matchList
� 
���
� o      ���� 0 listcontents listContents��  ��  
� Q     x
�
�
�
� k    f
�
� 
�
�
� r    
�
�
� m    
�
� �
�
�  N o t   F o u n d
� o      ���� 0 	findstate 	findState
� 
�
�
� r    

�
�
� m    ����  
� o      ���� 0 findlocation findLocation
� 
�
�
� Y    ^
���
�
���
� k    Y
�
� 
�
�
� Y    M
���
�
���
� Z   , H
�
�����
� =  , 8
�
�
� n   , 3
�
�
� 4   0 3��
�
�� 
cobj
� o   1 2���� .0 columnitemloopcounter columnItemLoopCounter
� l  , 0
�����
� n   , 0
�
�
� 4   - 0��
�
�� 
cobj
� m   . /���� 
� o   , -���� 0 listcontents listContents��  ��  
� n   3 7
�
�
� 4   4 7��
�
�� 
cobj
� o   5 6���� 20 testformatchloopcounter testForMatchLoopCounter
� o   3 4���� 0 	matchlist 	matchList
� k   ; D
�
� 
�
�
� r   ; >
�
�
� m   ; <
�
� �
�
� 
 F o u n d
� o      ���� 0 	findstate 	findState
� 
�
�
� r   ? B
�
�
� o   ? @���� .0 columnitemloopcounter columnItemLoopCounter
� o      ���� 0 findlocation findLocation
� 
���
�  S   C D��  ��  ��  �� 20 testformatchloopcounter testForMatchLoopCounter
� m   ! "���� 
� l  " '
�����
� I  " '��
���
�� .corecnte****       ****
� o   " #���� 0 	matchlist 	matchList��  ��  ��  ��  
� 
���
� Z  N Y
�
�����
� =  N Q
�
�
� o   N O���� 0 	findstate 	findState
� m   O P
�
� �
�
� 
 F o u n d
�  S   T U��  ��  ��  �� .0 columnitemloopcounter columnItemLoopCounter
� m    ���� 
� l   
�����
� I   ��
���
�� .corecnte****       ****
� n    
�
�
� 2   ��
�� 
cobj
� l   
�����
� n    
�
�
� 4    ��
�
�� 
cobj
� m    ���� 
� o    ���� 0 listcontents listContents��  ��  ��  ��  ��  ��  
�  ��  L   _ f c   _ e J   _ c  o   _ `���� 0 	findstate 	findState �� o   ` a���� 0 findlocation findLocation��   m   c d��
�� 
list��  
� R      ����~
�� .ascrerr ****      � ****�  �~  
� k   n x 	
	 I  n u�}
�} .sysodlogaskr        TEXT m   n o � � H m m   W e l l ,   I   w a s   l o o k i n g   f o r   s o m e t h i n g   i n   t h e   f i l e ,   a n d   s o m e t h i n g   w e n t   w r o n g . �|�{
�| 
btns m   p q �  B u m m e r�{  
 �z L   v x m   v w�y�y  �z  
�  l     �x�w�v�x  �w  �v    l     �u�u   - '---------------------------------------    � N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �t�s�r�t  �s  �r    l     �q �q   P JBEGIN GET COLUMN CONTENTS																								BEGIN GET COLUMN CONTENTS     �!! � B E G I N   G E T   C O L U M N   C O N T E N T S 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 B E G I N   G E T   C O L U M N   C O N T E N T S "#" i  03$%$ I      �p&�o�p &0 getcolumncontents getColumnContents& '(' o      �n�n 0 columntoget columnToGet( )�m) o      �l�l 0 filecontents fileContents�m  �o  % k     L** +,+ r     -.- J     �k�k  . o      �j�j  0 columncontents columnContents, /0/ Y    I1�i23�h1 k    D44 565 r    787 b    9:9 o    �g�g  0 columncontents columnContents: m    �f�f 8 o      �e�e  0 columncontents columnContents6 ;�d; Q    D<=>< r    *?@? n    %ABA 4   " %�cC
�c 
cobjC o   # $�b�b 0 columntoget columnToGetB n    "DED 4    "�aF
�a 
cobjF o     !�`�` 0 loopcounter loopCounterE o    �_�_ 0 filecontents fileContents@ n      GHG 4   & )�^I
�^ 
cobjI o   ' (�]�] 0 loopcounter loopCounterH o   % &�\�\  0 columncontents columnContents= R      �[J�Z
�[ .ascrerr ****      � ****J o      �Y�Y 0 theerror theError�Z  > k   2 DKK LML I  2 =�XNO
�X .sysodisAaleR        TEXTN b   2 5PQP m   2 3RR �SS z D a t a   r o w   p a r s i n g   e r r o r .   R e m o v e   e m p t y   o r   i n v a l i d   r o w   a t   l i n e :  Q o   3 4�W�W 0 loopcounter loopCounterO �VTU
�V 
btnsT l  6 7V�U�TV m   6 7WW �XX B S t o p   s c r i p t   a n d   e d i t   c s v   m a n u a l l y�U  �T  U �SY�R
�S 
dfltY m   8 9�Q�Q �R  M Z�PZ R   > D�O�N[
�O .ascrerr ****      � ****�N  [ �M\�L
�M 
errn\ m   @ A�K�K���L  �P  �d  �i 0 loopcounter loopCounter2 m    	�J�J 3 l  	 ]�I�H] I  	 �G^�F
�G .corecnte****       ****^ n   	 _`_ 2  
 �E
�E 
cobj` o   	 
�D�D 0 filecontents fileContents�F  �I  �H  �h  0 a�Ca L   J Lbb o   J K�B�B  0 columncontents columnContents�C  # cdc l     �A�@�?�A  �@  �?  d efe l     �>gh�>  g - '---------------------------------------   h �ii N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -f jkj l     �=�<�;�=  �<  �;  k lml i  47non I      �:p�9�: 0 readcsvfile ReadCsvFilep q�8q o      �7�7 0 
chosenfile 
chosenFile�8  �9  o k     �rr sts l     �6uv�6  u L FCheck to see if we are being passed a method instead of a file to open   v �ww � C h e c k   t o   s e e   i f   w e   a r e   b e i n g   p a s s e d   a   m e t h o d   i n s t e a d   o f   a   f i l e   t o   o p e nt xyx r     z{z m     || �}}  { o      �5�5 
0 method  y ~~ Q    ���4� Z    ���3�2� =   
��� o    �1�1 0 
chosenfile 
chosenFile� m    	�� ���  C h o o s e� r    ��� m    �� ���  C h o o s e� o      �0�0 
0 method  �3  �2  � R      �/�.�-
�/ .ascrerr ****      � ****�.  �-  �4   ��� l   �,�+�*�,  �+  �*  � ��)� Q    ����� k   ! ��� ��� Z   ! 2���(�'� =  ! $��� o   ! "�&�& 
0 method  � m   " #�� ���  C h o o s e� r   ' .��� I  ' ,�%�$�#
�% .sysostdfalis    ��� null�$  �#  � o      �"�" 0 
chosenfile 
chosenFile�(  �'  � ��� l  3 3�!� ��!  �   �  � ��� r   3 W��� c   3 U��� l  3 S���� n   3 S��� 7  : S���
� 
cha � m   > @�� � d   A R�� l  B Q���� [   B Q��� l  B O���� I  B O���
� .corecnte****       ****� n   B K��� 2   I K�
� 
cobj� l  B I���� n   B I��� 1   G I�
� 
nmxt� l  B G���� I  B G���
� .sysonfo4asfe        file� o   B C�� 0 
chosenfile 
chosenFile�  �  �  �  �  �  �  �  � m   O P�� �  �  � l  3 :��
�	� n   3 :��� 1   8 :�
� 
pnam� l  3 8���� I  3 8���
� .sysonfo4asfe        file� o   3 4�� 0 
chosenfile 
chosenFile�  �  �  �
  �	  �  �  � m   S T�
� 
TEXT� o      �� 0 
fileopened 
fileOpened� ��� r   X `��� I   X ^� ����  0 testcsvfile TestCsvFile� ���� o   Y Z���� 0 
chosenfile 
chosenFile��  ��  � o      ���� 0 
testresult 
testResult� ��� l  a a��������  ��  ��  � ��� Z   a �������� =  a d��� o   a b���� 0 
testresult 
testResult� m   b c��
�� savoyes � k   g �� ��� r   g n��� I  g l�����
�� .rdwropenshor       file� o   g h���� 0 
chosenfile 
chosenFile��  � o      ���� 0 openfile openFile� ��� r   o v��� I  o t�����
�� .rdwrread****        ****� o   o p���� 0 
chosenfile 
chosenFile��  � o      ���� 0 filecontents fileContents� ��� I  w |�����
�� .rdwrclosnull���     ****� o   w x���� 0 openfile openFile��  � ���� L   } �� o   } ~���� 0 filecontents fileContents��  ��  ��  � ���� l  � ���������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 openfile openFile��  � ��� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� R S o m e t h i n g   b j o r k e d   w h e n   o p p e n i n g   t h e   f i l e !� �����
�� 
btns� m   � ��� ���  W e l l   b u m m e r��  � ���� L   � ��� J   � �����  ��  �)  m ��� l     ��������  ��  ��  � ��� l     ������  � - '---------------------------------------   � ��� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� i  8;��� I      ������� 0 testcsvfile TestCsvFile� ���� o      ���� 0 
chosenfile 
chosenFile��  ��  � k     7�� ��� r     	��� n     ��� 1    ��
�� 
utid� l     ����  I    ����
�� .sysonfo4asfe        file o     ���� 0 
chosenfile 
chosenFile��  ��  ��  � o      ����  0 chosenfilekind chosenFileKind� �� Z   
 7�� =  
  o   
 ����  0 chosenfilekind chosenFileKind m     �		  C S V   D o c u m e n t L    

 m    ��
�� savoyes ��   Z    7�� =    o    ����  0 chosenfilekind chosenFileKind m     � D p u b l i c . c o m m a - s e p a r a t e d - v a l u e s - t e x t L     m    ��
�� savoyes ��   k     7  I    4��
�� .sysodlogaskr        TEXT b     . b     , m     ! �  S i l l y   l  ! +���� n   ! +  4   ( +��!
�� 
cwor! m   ) *����   l  ! ("����" n   ! (#$# 1   & (��
�� 
siln$ l  ! &%����% I  ! &������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��   m   , -&& �'' 4 ,   t h a t   f i l e   i s   n o t   a   . C S V ! ��(��
�� 
btns( m   / 0)) �**  O o p s ,   m y   b a d��   +��+ L   5 7,, m   5 6��
�� savono  ��  ��  � -.- l     ��������  ��  ��  . /0/ l     ��12��  1 - '---------------------------------------   2 �33 N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -0 454 l     ��������  ��  ��  5 676 i  <?898 I      ��:���� 0 parsecsvfile ParseCsvFile: ;��; o      ���� 0 filecontents fileContents��  ��  9 Q     _<=>< k    G?? @A@ l   BCDB r    EFE J    ����  F o      ���� (0 parsedfilecontents parsedFileContentsC 7 1Instantiate our list to hold parsed file contents   D �GG b I n s t a n t i a t e   o u r   l i s t   t o   h o l d   p a r s e d   f i l e   c o n t e n t sA HIH l   JKLJ r    MNM n   OPO 1   	 ��
�� 
txdlP 1    	��
�� 
ascrN o      ���� $0 delimitersoncall delimitersOnCallK H BCopy the delimiters that are in place when this handler was called   L �QQ � C o p y   t h e   d e l i m i t e r s   t h a t   a r e   i n   p l a c e   w h e n   t h i s   h a n d l e r   w a s   c a l l e dI RSR l   TUVT r    WXW m    YY �ZZ  ,X n     [\[ 1    ��
�� 
txdl\ 1    ��
�� 
ascrU  Set delimiter to commas   V �]] . S e t   d e l i m i t e r   t o   c o m m a sS ^_^ l   ��������  ��  ��  _ `a` l   ��bc��  b A ;Parse each line (paragraph) from the unparsed file contents   c �dd v P a r s e   e a c h   l i n e   ( p a r a g r a p h )   f r o m   t h e   u n p a r s e d   f i l e   c o n t e n t sa efe r    ghg l   i����i I   ��j��
�� .corecnte****       ****j n   klk 2   ��
�� 
cparl o    ���� 0 filecontents fileContents��  ��  ��  h o      ���� 0 	linecount 	lineCountf mnm Y    >o��pq��o l  ( 9rstr k   ( 9uu vwv l  ( -xyzx r   ( -{|{ b   ( +}~} o   ( )���� (0 parsedfilecontents parsedFileContents~ m   ) *���� | o      ���� (0 parsedfilecontents parsedFileContentsy 2 ,Add a new item to store the parsed paragraph   z � X A d d   a   n e w   i t e m   t o   s t o r e   t h e   p a r s e d   p a r a g r a p hw ���� l  . 9���� r   . 9��� l  . 4������ n   . 4��� 2   2 4��
�� 
citm� n   . 2��� 4   / 2���
�� 
cpar� o   0 1���� 0 loopcounter loopCounter� o   . /���� 0 filecontents fileContents��  ��  � n      ��� 4   5 8���
�� 
cobj� o   6 7���� 0 loopcounter loopCounter� o   4 5���� (0 parsedfilecontents parsedFileContents� _ YParse a line from the file into individual items and store them in the item created above   � ��� � P a r s e   a   l i n e   f r o m   t h e   f i l e   i n t o   i n d i v i d u a l   i t e m s   a n d   s t o r e   t h e m   i n   t h e   i t e m   c r e a t e d   a b o v e��  s 7 1Loop through each line in the file, one at a time   t ��� b L o o p   t h r o u g h   e a c h   l i n e   i n   t h e   f i l e ,   o n e   a t   a   t i m e�� 0 loopcounter loopCounterp m   ! "���� q o   " #���� 0 	linecount 	lineCount��  n ��� l  ? ?����~��  �  �~  � ��� l  ? D���� r   ? D��� o   ? @�}�} $0 delimitersoncall delimitersOnCall� n     ��� 1   A C�|
�| 
txdl� 1   @ A�{
�{ 
ascr� Z TSet Applescript's delimiters back to whatever they were when this handler was called   � ��� � S e t   A p p l e s c r i p t ' s   d e l i m i t e r s   b a c k   t o   w h a t e v e r   t h e y   w e r e   w h e n   t h i s   h a n d l e r   w a s   c a l l e d� ��z� l  E G���� L   E G�� o   E F�y�y (0 parsedfilecontents parsedFileContents� &  Return our fancy parsed contents   � ��� @ R e t u r n   o u r   f a n c y   p a r s e d   c o n t e n t s�z  = R      �x�w�v
�x .ascrerr ****      � ****�w  �v  > k   O _�� ��� I  O \�u��
�u .sysodlogaskr        TEXT� b   O V��� b   O T��� b   O R��� m   O P�� ��� P W o a h !   U m ,   t h a t ' s   n o t   s u p p o s e d   t o   h a p p e n .� o   P Q�t
�t 
ret � o   R S�s
�s 
ret � m   T U�� ��� l S o m e t h i n g   g o o f e d   u p   b a d   w h e n   I   t r i e d   t o   r e a d   t h e   f i l e !� �r��q
�r 
btns� m   W X�� ��� @ O k ,   I ' l l   t a k e   a   l o o k   a t   t h e   f i l e�q  � ��p� L   ] _�� o   ] ^�o�o 0 filecontents fileContents�p  7 ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  � - '---------------------------------------   � ��� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �j�i�h�j  �i  �h  � ��� i  @C��� I      �g��f�g 0 
verifypage 
verifyPage� ��� o      �e�e .0 expectedelementstring expectedElementString� ��� o      �d�d 20 expectedelementlocation expectedElementLocation� ��� o      �c�c ,0 expectedelementcount expectedElementCount� ��� o      �b�b *0 verificationtimeout verificationTimeout� ��a� o      �`�` 0 requiresgroup requiresGroup�a  �f  � O    ,��� k   +�� ��� l   �_�^�]�_  �^  �]  � ��� W    +��� I   &�\��[
�\ .sysodelanull��� ��� nmbr� l   "��Z�Y� ]    "��� o    �X�X 0 masterdelay masterDelay� o    !�W�W 0 processdelay processDelay�Z  �Y  �[  � =   ��� n    ��� 1    �V
�V 
desc� n    ��� 4    �U�
�U 
scra� m    �T�T � n    ��� 4    �S�
�S 
cwin� m    �R�R � 4    �Q�
�Q 
pcap� m   
 �� ���  i T u n e s� m    �� ���  A p p l e   l o g o� ��� l  , ,�P�O�N�P  �O  �N  � ��� n  , I��� I   - I�M��L�M 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd� ��� m   - .�� ���  D o e s   N o t   M a t c h� ��� o   . 3�K�K .0 itunesaccessingstring itunesAccessingString� ��� m   3 4�J�J � ��� m   4 5�� ��� " t i m e s .   C h e c k   f o r :� ��� l  5 >��I�H� ]   5 >   o   5 6�G�G *0 verificationtimeout verificationTimeout l  6 =�F�E ^   6 = m   6 7�D�D  o   7 <�C�C  0 checkfrequency checkFrequency�F  �E  �I  �H  �  m   > ? �  i n t e r v a l s   o f 	
	 o   ? D�B�B  0 checkfrequency checkFrequency
 �A m   D E �  s e c o n d s�A  �L  �  f   , -�  l   J J�@�@  & repeat
			set lcdStatus to my GetItunesStatusUntillLcd("Does Not Match", itunesAccessingString, 4, "times. Check for:", (verificationTimeout * (1 / checkFrequency)), "intervals of", checkFrequency, "seconds")
			if lcdStatus is "Matched" then exit repeat
			delay masterDelay
		end repeat    �@ r e p e a t 
 	 	 	 s e t   l c d S t a t u s   t o   m y   G e t I t u n e s S t a t u s U n t i l l L c d ( " D o e s   N o t   M a t c h " ,   i t u n e s A c c e s s i n g S t r i n g ,   4 ,   " t i m e s .   C h e c k   f o r : " ,   ( v e r i f i c a t i o n T i m e o u t   *   ( 1   /   c h e c k F r e q u e n c y ) ) ,   " i n t e r v a l s   o f " ,   c h e c k F r e q u e n c y ,   " s e c o n d s " ) 
 	 	 	 i f   l c d S t a t u s   i s   " M a t c h e d "   t h e n   e x i t   r e p e a t 
 	 	 	 d e l a y   m a s t e r D e l a y 
 	 	 e n d   r e p e a t  l  J J�?�>�=�?  �>  �=    r   J h I  J f�<�;
�< .corecnte****       **** n   J b 2   ^ b�:
�: 
uiel n   J ^ 4   Y ^�9
�9 
uiel m   \ ]�8�8  n   J Y  4   V Y�7!
�7 
scra! m   W X�6�6   n   J V"#" 4   Q V�5$
�5 
splg$ m   T U�4�4 # n   J Q%&% 4   N Q�3'
�3 
cwin' m   O P�2�2 & 4   J N�1(
�1 
pcap( m   L M)) �**  i T u n e s�;   o      �0�0 0 elementcount elementCount +,+ l  i i�/�.�-�/  �.  �-  , -�,- Y   i+.�+/0�*. l  s&1231 k   s&44 565 l  s s�)�(�'�)  �(  �'  6 787 Z  s �9:�&�%9 =  s v;<; o   s t�$�$ (0 timeoutloopcounter timeoutLoopCounter< o   t u�#�# *0 verificationtimeout verificationTimeout: L   y }== m   y |>> �??  u n v e r i f i e d�&  �%  8 @A@ l  � ��"�!� �"  �!  �   A BCB l  � �DEFD Z  � �GH��G =  � �IJI o   � ��� ,0 expectedelementcount expectedElementCountJ m   � ���  H r   � �KLK o   � ��� 0 elementcount elementCountL o      �� ,0 expectedelementcount expectedElementCount�  �  E 1 +Use 0 to disable element count verification   F �MM V U s e   0   t o   d i s a b l e   e l e m e n t   c o u n t   v e r i f i c a t i o nC NON l  � �����  �  �  O PQP l  � �RSTR Z  � �UV��U >  � �WXW o   � ��� ,0 expectedelementcount expectedElementCountX o   � ��� 0 elementcount elementCountV r   � �YZY o   � ��� 0 elementcount elementCountZ o      �� ,0 expectedelementcount expectedElementCount�  �  S " Check all countable elements   T �[[ 8 C h e c k   a l l   c o u n t a b l e   e l e m e n t sQ \]\ l  � �����  �  �  ] ^_^ Z   � `a��` =  � �bcb o   � ��� 0 elementcount elementCountc o   � ��
�
 ,0 expectedelementcount expectedElementCounta k   �dd efe r   � �ghg J   � ��	�	  h o      �� 0 
everytitle 
everyTitlef iji l  � �����  �  �  j klk Z   � �mn�om o   � ��� 0 requiresgroup requiresGroupn r   � �pqp n   � �rsr 4   � ��t
� 
uielt o   � ��� 20 expectedelementlocation expectedElementLocations n   � �uvu 4   � �� w
�  
sgrpw m   � ����� v n   � �xyx 4   � ���z
�� 
uielz m   � ����� y n   � �{|{ 4   � ���}
�� 
scra} m   � ����� | n   � �~~ 4   � ����
�� 
splg� m   � �����  n   � ���� 4   � ����
�� 
cwin� m   � ����� � 4   � ����
�� 
pcap� m   � ��� ���  i T u n e sq o      ���� 0 elementtotest elementToTest�  o r   � ���� n   � ���� 4   � ����
�� 
uiel� o   � ����� 20 expectedelementlocation expectedElementLocation� n   � ���� 4   � ����
�� 
uiel� m   � ����� � n   � ���� 4   � ����
�� 
scra� m   � ����� � n   � ���� 4   � ����
�� 
splg� m   � ����� � n   � ���� 4   � ����
�� 
cwin� m   � ����� � 4   � ����
�� 
pcap� m   � ��� ���  i T u n e s� o      ���� 0 elementtotest elementToTestl ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
�� 
pALL� o   � ����� 0 elementtotest elementToTest� o      ���� &0 elementproperties elementProperties� ��� l  � ���������  ��  ��  � ��� Q   ������ k   ��� ��� r   ���� n   � ��� 1   � ��
�� 
titl� o   � ����� &0 elementproperties elementProperties� o      ���� 0 elementstring elementString� ���� l ������  � { uset elementString to (text items 1 through (count of text items in expectedElementString) of elementString) as string   � ��� � s e t   e l e m e n t S t r i n g   t o   ( t e x t   i t e m s   1   t h r o u g h   ( c o u n t   o f   t e x t   i t e m s   i n   e x p e c t e d E l e m e n t S t r i n g )   o f   e l e m e n t S t r i n g )   a s   s t r i n g��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ��������  ��  ��  � ���� Z  ������� = ��� o  ���� 0 elementstring elementString� o  ���� .0 expectedelementstring expectedElementString� L  �� m  �� ���  v e r i f i e d��  ��  ��  �  �  _ ���� I !&�����
�� .sysodelanull��� ��� nmbr� m  !"���� ��  ��  2 q kLoop will be ended before reaching verificationTimeout if the expectedElementString is successfully located   3 ��� � L o o p   w i l l   b e   e n d e d   b e f o r e   r e a c h i n g   v e r i f i c a t i o n T i m e o u t   i f   t h e   e x p e c t e d E l e m e n t S t r i n g   i s   s u c c e s s f u l l y   l o c a t e d�+ (0 timeoutloopcounter timeoutLoopCounter/ m   l m���� 0 o   m n���� *0 verificationtimeout verificationTimeout�*  �,  � m     ���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � - '---------------------------------------   � ��� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� i  DG��� I      ��������  0 checkforerrors CheckForErrors��  ��  � l    ����� Z     �������� =    ��� o     ���� 0 scriptaction scriptAction� m    �� ���  C o n t i n u e� l   ����� l   ����� Z    �������� >   
��� o    ���� 0 	errorlist 	errorList� J    	����  � l   ����� k    ��� ��� l   ��������  ��  ��  � ��� r     ��� c    ��� n    ��� 1    ��
�� 
bhit� l   ������ I   ����
�� .sysodlogaskr        TEXT� m    �� ��� ` E r r o r s   w e r e   d e t e c t e d .   W h a t   w o u l d   y o u   l i k e   t o   d o ?� ����
�� 
btns� J    �� ��� m    �� ��� 
 A b o r t� ��� m    �� ���  S k i p   U s e r�  ��  m     �  R e v i e w��  � ����
�� 
dflt m     �  R e v i e w��  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 erroraction errorAction�  l  ! !��������  ��  ��   	 Z   ! 3
����
 =  ! $ o   ! "���� 0 erroraction errorAction m   " # � 
 A b o r t k   ' /  l  ' * r   ' * m   ' ( � 
 A b o r t o      ���� 0 scriptaction scriptAction ' !This sets the global abort action    � B T h i s   s e t s   t h e   g l o b a l   a b o r t   a c t i o n �� l  + / L   + / m   + .   �!! 
 A b o r t ; 5This breaks out of the remainder of the error checker    �"" j T h i s   b r e a k s   o u t   o f   t h e   r e m a i n d e r   o f   t h e   e r r o r   c h e c k e r��  ��  ��  	 #$# l  4 4��������  ��  ��  $ %&% Z   4 �'(����' =  4 9)*) o   4 5���� 0 erroraction errorAction* m   5 8++ �,,  R e v i e w( k   < �-- ./. Y   < �0��12��0 l  N �3453 Z   N �67��86 =  N S9:9 o   N O���� 0 erroraction errorAction: m   O R;; �<< 
 A b o r t7 k   V `== >?> l  V [@AB@ r   V [CDC m   V YEE �FF 
 A b o r tD o      ���� 0 scriptaction scriptActionA ' !This sets the global abort action   B �GG B T h i s   s e t s   t h e   g l o b a l   a b o r t   a c t i o n? H��H l  \ `IJKI L   \ `LL m   \ _MM �NN 
 A b o r tJ ; 5This breaks out of the remainder of the error checker   K �OO j T h i s   b r e a k s   o u t   o f   t h e   r e m a i n d e r   o f   t h e   e r r o r   c h e c k e r��  ��  8 k   c �PP QRQ r   c �STS c   c �UVU n   c �WXW 1   � ���
�� 
bhitX l  c �Y����Y I  c ���Z[
�� .sysodlogaskr        TEXTZ b   c �\]\ b   c �^_^ b   c �`a` b   c �bcb b   c �ded b   c ~fgf b   c zhih b   c vjkj b   c llml b   c hnon m   c fpp �qq  S h o w i n g   e r r o r  o o   f g���� 0 loopcounter loopCounterm m   h krr �ss    o f  k l  l ut����t I  l u��u��
�� .corecnte****       ****u n  l qvwv 2  m q��
�� 
cobjw o   l m���� 0 	errorlist 	errorList��  ��  ��  i m   v yxx �yy  :g o   z }��
�� 
ret e o   ~ ���
�� 
ret c n   � �z{z 4   � ���|
�� 
cobj| o   � ����� 0 loopcounter loopCounter{ o   � ����� 0 	errorlist 	errorLista o   � ���
�� 
ret _ o   � ���
�� 
ret ] m   � �}} �~~ 4 W h a t   w o u l d   y o u   l i k e   t o   d o ?[ ���
�� 
btns J   � ��� ��� m   � ��� ��� 
 A b o r t� ���� m   � ��� ���   M a n u a l l y   C o r r e c t��  � �����
�� 
dflt� m   � ��� ���   M a n u a l l y   C o r r e c t��  ��  ��  V m   � ���
�� 
TEXTT o      �� 0 erroraction errorActionR ��~� Z  � ����}�|� =  � ���� o   � ��{�{ 0 erroraction errorAction� m   � ��� ���   M a n u a l l y   C o r r e c t� r   � ���� c   � ���� n   � ���� 1   � ��z
�z 
bhit� l  � ���y�x� I  � ��w��
�w .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ��� b C l i c k   c o n t i n u e   w h e n   t h e   e r r o r   h a s   b e e n   c o r r e c t e d .� o   � ��v
�v 
ret � m   � ��� ��� � I f   y o u   c a n n o t   c o r r e c t   t h e   e r r o r ,   t h e n   y o u   m a y   s k i p   t h i s   u s e r   o r   a b o r t   t h e   e n t i r e   s c r i p t� �u��
�u 
btns� J   � ��� ��� m   � ��� ��� 
 A b o r t� ��� m   � ��� ���  S k i p   U s e r� ��t� m   � ��� ���  C o n t i n u e�t  � �s��r
�s 
dflt� m   � ��� ���  C o n t i n u e�r  �y  �x  � m   � ��q
�q 
TEXT� o      �p�p 0 erroraction errorAction�}  �|  �~  4 . (Cycle through all the errors in the list   5 ��� P C y c l e   t h r o u g h   a l l   t h e   e r r o r s   i n   t h e   l i s t�� 0 loopcounter loopCounter1 m   ? @�o�o 2 l  @ I��n�m� I  @ I�l��k
�l .corecnte****       ****� n  @ E��� 2  A E�j
�j 
cobj� o   @ A�i�i 0 	errorlist 	errorList�k  �n  �m  ��  / ��� l  � ����� r   � ���� J   � ��h�h  � o      �g�g 0 	errorlist 	errorList� A ;Clear errors if we've made it all the way through the loops   � ��� v C l e a r   e r r o r s   i f   w e ' v e   m a d e   i t   a l l   t h e   w a y   t h r o u g h   t h e   l o o p s� ��f� r   � ���� o   � ��e�e 0 erroraction errorAction� o      �d�d 0 scriptaction scriptAction�f  ��  ��  & ��c� l  � ��b�a�`�b  �a  �`  �c  � % If there are errors in the list   � ��� > I f   t h e r e   a r e   e r r o r s   i n   t h e   l i s t��  ��  �  for error check   � ���  f o r   e r r o r   c h e c k� G AThis is to make sure a previous abort hasn't already been thrown.   � ��� � T h i s   i s   t o   m a k e   s u r e   a   p r e v i o u s   a b o r t   h a s n ' t   a l r e a d y   b e e n   t h r o w n .��  ��  �  for abort check   � ���  f o r   a b o r t   c h e c k� ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � - '---------------------------------------   � ��� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �[�Z�Y�[  �Z  �Y  � ��� i  HK��� I      �X�W�V�X ,0 signoutitunesaccount SignOutItunesAccount�W  �V  � Z     ����U�T� =    ��� o     �S�S 0 scriptaction scriptAction� m    �� ���  C o n t i n u e� l   ����� k    ��� ��� O    ���� k   
 ��� ��� l  
 
�R���R  � k eTell iTunes to open iBooks. Still submits information to Apple but moves the script along much faster   � ��� � T e l l   i T u n e s   t o   o p e n   i B o o k s .   S t i l l   s u b m i t s   i n f o r m a t i o n   t o   A p p l e   b u t   m o v e s   t h e   s c r i p t   a l o n g   m u c h   f a s t e r� ��� O  
 ��� I   �Q��P
�Q .GURLGURLnull��� ��� ctxt� o    �O�O (0 ibookslinklocation ibooksLinkLocation�P  � m   
 ���                                                                                  hook  alis    N  Macintosh HD               ϓ��H+  �T
iTunes.app                                                     ˩����        ����  	                Applications    ϓ�;      ��/    �T  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� I   "�N��M
�N .sysodelanull��� ��� nmbr� o    �L�L 0 masterdelay masterDelay�M  � ��� l  # #�K�J�I�K  �J  �I  � ��� W   # J��� I  6 E�H��G
�H .sysodelanull��� ��� nmbr� l  6 A��F�E� ]   6 A��� o   6 ;�D�D 0 masterdelay masterDelay� o   ; @�C�C 0 processdelay processDelay�F  �E  �G  � =  ' 5��� n   ' 3   1   1 3�B
�B 
desc n   ' 1 4   . 1�A
�A 
scra m   / 0�@�@  n   ' . 4   + .�?
�? 
cwin m   , -�>�>  4   ' +�=
�= 
pcap m   ) *		 �

  i T u n e s� m   3 4 �  A p p l e   l o g o�  l  K K�<�;�:�<  �;  �:    l  K K�9�9   8 2 in iTunes 12.2.0, this is called the Account menu    � d   i n   i T u n e s   1 2 . 2 . 0 ,   t h i s   i s   c a l l e d   t h e   A c c o u n t   m e n u  Z   K ��8 I  K `�7�6
�7 .coredoexnull���     **** n   K \ 4   U \�5
�5 
menE m   X [ � 
 S t o r e n   K U  4   R U�4!
�4 
mbri! m   S T"" �## 
 S t o r e  n   K R$%$ 4   O R�3&
�3 
mbar& m   P Q�2�2 % 4   K O�1'
�1 
pcap' m   M N(( �))  i T u n e s�6   r   c z*+* n   c x,-, 4   q x�0.
�0 
menE. m   t w// �00 
 S t o r e- n   c q121 4   l q�/3
�/ 
mbri3 m   m p44 �55 
 S t o r e2 n   c l676 4   i l�.8
�. 
mbar8 m   j k�-�- 7 4   c i�,9
�, 
pcap9 m   e h:: �;;  i T u n e s+ o      �+�+ 0 	storemenu 	storeMenu <=< I  } ��*>�)
�* .coredoexnull���     ****> n   } �?@? 4   � ��(A
�( 
menEA m   � �BB �CC  A c c o u n t@ n   } �DED 4   � ��'F
�' 
mbriF m   � �GG �HH  A c c o u n tE n   } �IJI 4   � ��&K
�& 
mbarK m   � ��%�% J 4   } ��$L
�$ 
pcapL m    �MM �NN  i T u n e s�)  = O�#O r   � �PQP n   � �RSR 4   � ��"T
�" 
menET m   � �UU �VV  A c c o u n tS n   � �WXW 4   � ��!Y
�! 
mbriY m   � �ZZ �[[  A c c o u n tX n   � �\]\ 4   � �� ^
�  
mbar^ m   � ��� ] 4   � ��_
� 
pcap_ m   � �`` �aa  i T u n e sQ o      �� 0 	storemenu 	storeMenu�#  �8   b�b r   � �cdc n   � �efe 1   � ��
� 
titlf n   � �ghg 2   � ��
� 
menIh o   � ��� 0 	storemenu 	storeMenud o      ��  0 storemenuitems storeMenuItems�  � m    ii�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � jkj l  � �����  �  �  k l�l Y   � �m�no�m Z   � �pq��p =  � �rsr n   � �tut 4   � ��v
� 
cobjv o   � ��� 0 loopcounter loopCounteru o   � ���  0 storemenuitems storeMenuItemss m   � �ww �xx  S i g n   O u tq O   � �yzy I  � ��{�
� .prcsclicnull��� ��� uiel{ n   � �|}| 4   � ��
~
�
 
menI~ m   � � ���  S i g n   O u t} o   � ��	�	 0 	storemenu 	storeMenu�  z m   � ����                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  �  � 0 loopcounter loopCountern m   � ��� o l  � ����� I  � ����
� .corecnte****       ****� n  � ���� 2  � ��
� 
cobj� o   � ���  0 storemenuitems storeMenuItems�  �  �  �  �  � 6 0This is to make sure an abort hasn't been thrown   � ��� ` T h i s   i s   t o   m a k e   s u r e   a n   a b o r t   h a s n ' t   b e e n   t h r o w n�U  �T  � ��� l     �� ���  �   ��  � ��� l     ������  � - '---------------------------------------   � ��� N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� i  LO��� I      ������� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd� ��� o      ���� 0 	matchtype 	matchType� ��� o      ���� 0 stringtomatch stringToMatch� ��� o      ���� 0 matchduration matchDuration� ��� m      �� ��� " t i m e s .   C h e c k   f o r :� ��� o      ���� 0 checkduration checkDuration� ��� m      �� ���  i n t e r v a l s   o f� ��� o      ����  0 checkfrequency checkFrequency� ���� m      �� ���  s e c o n d s��  ��  � k     ��� ��� r     ��� m     ����  � o      ���� 0 loopcounter loopCounter� ��� r    ��� m    ����  � o      ���� 0 
matchedfor 
matchedFor� ��� r    ��� J    
����  � o      ���� 0 ituneslcdtext itunesLcdText� ��� l   ��������  ��  ��  � ��� T    ��� k    ��� ��� r    ��� [    ��� o    ���� 0 loopcounter loopCounter� m    ���� � o      ���� 0 loopcounter loopCounter� ��� l   ��������  ��  ��  � ��� Z    &������� @   ��� o    ���� 0 loopcounter loopCounter� l   ������ ]    ��� o    ���� 0 checkduration checkDuration� o    ����  0 checkfrequency checkFrequency��  ��  � L     "�� m     !�� ���  U n m a t c h e d��  ��  � ��� l  ' '��������  ��  ��  � ��� r   ' ,��� b   ' *��� o   ' (���� 0 ituneslcdtext itunesLcdText� m   ( )�� ���  � o      ���� 0 ituneslcdtext itunesLcdText� ��� O   - R��� Q   1 Q����� k   4 H�� ��� l  4 4������  � � |set item loopCounter of itunesLcdText to value of static text 1 of scroll area 1 of window 1 of application process "iTunes"   � ��� � s e t   i t e m   l o o p C o u n t e r   o f   i t u n e s L c d T e x t   t o   v a l u e   o f   s t a t i c   t e x t   1   o f   s c r o l l   a r e a   1   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " i T u n e s "� ���� r   4 H��� n   4 C��� 1   A C��
�� 
valL� n   4 A��� 4   > A���
�� 
sttx� m   ? @���� � n   4 >��� 4   ; >���
�� 
scra� m   < =���� � n   4 ;��� 4   8 ;���
�� 
cwin� m   9 :���� � 4   4 8���
�� 
pcap� m   6 7�� ���  i T u n e s� n      ��� 4   D G���
�� 
cobj� o   E F���� 0 loopcounter loopCounter� o   C D���� 0 ituneslcdtext itunesLcdText��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � m   - .���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  S S��������  ��  ��  � ��� Z   S q ����  =  S V o   S T���� 0 	matchtype 	matchType m   T U �  M a t c h e s Z   Y m�� =  Y _	
	 n   Y ] 4   Z ]��
�� 
cobj o   [ \���� 0 loopcounter loopCounter o   Y Z���� 0 ituneslcdtext itunesLcdText
 o   ] ^���� 0 stringtomatch stringToMatch r   b g [   b e o   b c���� 0 
matchedfor 
matchedFor m   c d����  o      ���� 0 
matchedfor 
matchedFor��   r   j m m   j k����   o      ���� 0 
matchedfor 
matchedFor��  ��  �  l  r r��������  ��  ��    Z   r ����� =  r u o   r s���� 0 	matchtype 	matchType m   s t �  D o e s   N o t   M a t c h Z   x ���  >  x ~!"! n   x |#$# 4   y |��%
�� 
cobj% o   z {���� 0 loopcounter loopCounter$ o   x y���� 0 ituneslcdtext itunesLcdText" o   | }���� 0 stringtomatch stringToMatch r   � �&'& [   � �()( o   � ����� 0 
matchedfor 
matchedFor) m   � ����� ' o      ���� 0 
matchedfor 
matchedFor��    r   � �*+* m   � �����  + o      ���� 0 
matchedfor 
matchedFor��  ��   ,-, l  � ���������  ��  ��  - ./. Z   � �01����0 @  � �232 o   � ����� 0 
matchedfor 
matchedFor3 o   � ����� 0 matchduration matchDuration1 L   � �44 m   � �55 �66  M a t c h e d��  ��  / 7��7 I  � ���8��
�� .sysodelanull��� ��� nmbr8 o   � �����  0 checkfrequency checkFrequency��  ��  � 9��9 l  � ���������  ��  ��  ��  � :;: l     ��������  ��  ��  ; <=< l     ��>?��  > - '---------------------------------------   ? �@@ N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -= ABA l     ��������  ��  ��  B CDC i  PSEFE I      �������� 0 installibooks installIbooks��  ��  F k    GG HIH I    ��J��
�� .sysodelanull��� ��� nmbrJ l    K����K ]     LML o     ���� 0 masterdelay masterDelayM o    
���� 0 processdelay processDelay��  ��  ��  I N��N Z   OP����O =   QRQ o    ���� 0 scriptaction scriptActionR m    SS �TT  C o n t i n u eP l  UVWU k   XX YZY l   ��������  ��  ��  Z [\[ l   ��]^��  ] 6 0 AF 2012-05-14 Open location instead of .inetloc   ^ �__ `   A F   2 0 1 2 - 0 5 - 1 4   O p e n   l o c a t i o n   i n s t e a d   o f   . i n e t l o c\ `a` O   $bcb I   #�d�~
� .GURLGURLnull��� ��� ctxtd o    �}�} (0 ibookslinklocation ibooksLinkLocation�~  c m    ee�                                                                                  hook  alis    N  Macintosh HD               ϓ��H+  �T
iTunes.app                                                     ˩����        ����  	                Applications    ϓ�;      ��/    �T  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  a fgf I  % 4�|h�{
�| .sysodelanull��� ��� nmbrh l  % 0i�z�yi ]   % 0jkj o   % *�x�x 0 masterdelay masterDelayk o   * /�w�w 0 processdelay processDelay�z  �y  �{  g lml l  5 Enopn r   5 Eqrq I   5 C�vs�u�v 0 
verifypage 
verifyPages tut m   6 7vv �ww  i B o o k su xyx m   7 8zz �{{  i B o o k sy |}| m   8 9�t�t *} ~~ o   9 >�s�s 0 netdelay netDelay ��r� m   > ?�q
�q boovtrue�r  �u  r o      �p�p $0 pageverification pageVerificationo � �Looking for "iBooks", in the second element, on a page with a count of 39 elements, with a timeout of 5, and it requires the use of "group 1" for checking   p ���4 L o o k i n g   f o r   " i B o o k s " ,   i n   t h e   s e c o n d   e l e m e n t ,   o n   a   p a g e   w i t h   a   c o u n t   o f   3 9   e l e m e n t s ,   w i t h   a   t i m e o u t   o f   5 ,   a n d   i t   r e q u i r e s   t h e   u s e   o f   " g r o u p   1 "   f o r   c h e c k i n gm ��� l  F F�o�n�m�o  �n  �m  � ��� Z   F	���l�� =  F I��� o   F G�k�k $0 pageverification pageVerification� m   G H�� ���  v e r i f i e d� l  L ����� k   L ��� ��� I  L [�j��i
�j .sysodelanull��� ��� nmbr� l  L W��h�g� ]   L W��� o   L Q�f�f 0 masterdelay masterDelay� o   Q V�e�e 0 processdelay processDelay�h  �g  �i  � ��� O   \ ���� Q   ` ����� k   c ��� ��� r   c ���� n   c ���� 4   ~ ��d�
�d 
butT� m   � ��c�c � n   c ~��� 4   y ~�b�
�b 
sgrp� m   | }�a�a � n   c y��� 4   t y�`�
�` 
uiel� m   w x�_�_ � n   c t��� 4   o t�^�
�^ 
scra� m   r s�]�] � n   c o��� 4   j o�\�
�\ 
splg� m   m n�[�[ � n   c j��� 4   g j�Z�
�Z 
cwin� m   h i�� ���  i T u n e s� 4   c g�Y�
�Y 
pcap� m   e f�� ���  i T u n e s� o      �X�X 0 
freebutton 
freeButton� ��� l  � ��W�V�U�W  �V  �U  � ��� l  � ��T���T  � ( " check if free button is supported   � ��� D   c h e c k   i f   f r e e   b u t t o n   i s   s u p p o r t e d� ��� r   � ���� n   � ���� 1   � ��S
�S 
desc� o   � ��R�R 0 
freebutton 
freeButton� o      �Q�Q .0 freebuttondescription freeButtonDescription� ��� r   � ���� m   � ��P
�P boovfals� o      �O�O D0  freebuttondescriptionissupported  freeButtonDescriptionIsSupported� ��� Y   � ���N���M� Z   � ����L�K� =  � ���� n   � ���� 4   � ��J�
�J 
cobj� o   � ��I�I 80 freebuttoncheckloopcounter freeButtonCheckLoopCounter� o   � ��H�H B0 supportedfreebuttondescriptions supportedFreeButtonDescriptions� o   � ��G�G .0 freebuttondescription freeButtonDescription� k   � ��� ��� r   � ���� m   � ��F
�F boovtrue� o      �E�E D0  freebuttondescriptionissupported  freeButtonDescriptionIsSupported� ��D�  S   � ��D  �L  �K  �N 80 freebuttoncheckloopcounter freeButtonCheckLoopCounter� m   � ��C�C � l  � ���B�A� I  � ��@��?
�@ .corecnte****       ****� n  � ���� 2  � ��>
�> 
cobj� o   � ��=�= B0 supportedfreebuttondescriptions supportedFreeButtonDescriptions�?  �B  �A  �M  � ��� l  � ��<�;�:�<  �;  �:  � ��� Z   � ����9�� =  � ���� o   � ��8�8 D0  freebuttondescriptionissupported  freeButtonDescriptionIsSupported� m   � ��7
�7 boovtrue� I  � ��6��5
�6 .prcsclicnull��� ��� uiel� o   � ��4�4 0 
freebutton 
freeButton�5  �9  � r   � ���� b   � ���� o   � ��3�3 0 	errorlist 	errorList� m   � ��� ��� t U n a b l e   t o   l o c a t e   s u p p o r t e d   f r e e   b u t t o n   b y   i t s   d e s c r i p t i o n .� o      �2�2 0 	errorlist 	errorList� ��1� l  � ��0�/�.�0  �/  �.  �1  � R      �-�,�+
�- .ascrerr ****      � ****�,  �+  � r   � ���� b   � ���� o   � ��*�* 0 	errorlist 	errorList� m   � ��� ��� n U n a b l e   t o   l o c a t e   i n s t a l l   a p p   b u t t o n   b y   i t s   d e s c r i p t i o n .� o      �)�) 0 	errorlist 	errorList� m   \ ]���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��(� r   � ���� m   � ��� ���  � o      �'�' $0 pageverification pageVerification�(  � 0 *Actually click the button to obtain iBooks   � ��� T A c t u a l l y   c l i c k   t h e   b u t t o n   t o   o b t a i n   i B o o k s�l  � l  �	� � r   �	 b   � o   ��&�& 0 	errorlist 	errorList m   � � U n a b l e   t o   v e r i f y   t h a t   i T u n e s   i s   o p e n   a t   t h e   i B o o k s   A p p   S t o r e   P a g e . o      �%�% 0 	errorlist 	errorList  ' !Throw error if page didn't verify    � B T h r o w   e r r o r   i f   p a g e   d i d n ' t   v e r i f y� 	�$	 l 

�#�"�!�#  �"  �!  �$  V 6 0This is to make sure an abort hasn't been thrown   W �

 ` T h i s   i s   t o   m a k e   s u r e   a n   a b o r t   h a s n ' t   b e e n   t h r o w n��  ��  ��  D  l     � ���   �  �    l     ��   - '---------------------------------------    � N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����  �  �    i  TW I      ���� :0 clickcreatenewappleidbutton ClickCreateNewAppleIDButton�  �   k     b  I    ��
� .sysodelanull��� ��� nmbr l    �� ]      o     �� 0 masterdelay masterDelay o    
�� 0 processdelay processDelay�  �  �   � Z    b !��  =   "#" o    �� 0 scriptaction scriptAction# m    $$ �%%  C o n t i n u e! l   ^&'(& k    ^)) *+* l   �,-�  , # Verification text for window:   - �.. : V e r i f i c a t i o n   t e x t   f o r   w i n d o w :+ /0/ l   �12�  1  yget value of static text 1 of window 1 of application process "iTunes" --should be equal to "Sign in to the iTunes Store"   2 �33 � g e t   v a l u e   o f   s t a t i c   t e x t   1   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " i T u n e s "   - - s h o u l d   b e   e q u a l   t o   " S i g n   i n   t o   t h e   i T u n e s   S t o r e "0 4�
4 O    ^565 Z    ]78�	97 =   (:;: n    &<=< 1   $ &�
� 
valL= n    $>?> 4   ! $�@
� 
sttx@ m   " #�� ? n    !ABA 4    !�C
� 
cwinC m     �� B 4    �D
� 
pcapD m    EE �FF  i T u n e s; m   & 'GG �HH 6 S i g n   i n   t o   t h e   i T u n e s   S t o r e8 Q   + OIJKI I  . <�L�
� .prcsclicnull��� ��� uielL n   . 8MNM 4   5 8� O
�  
butTO m   6 7PP �QQ & C r e a t e   N e w   A p p l e   I DN n   . 5RSR 4   2 5��T
�� 
cwinT m   3 4���� S 4   . 2��U
�� 
pcapU m   0 1VV �WW  i T u n e s�  J R      ������
�� .ascrerr ****      � ****��  ��  K r   D OXYX b   D KZ[Z o   D G���� 0 	errorlist 	errorList[ m   G J\\ �]] � U n a b l e   t o   l o c a t e   a n d   c l i c k   b u t t o n   ' ' C r e a t e   N e w   A p p l e   I D ' '   o n   I D   s i g n - i n   w i n d o wY o      ���� 0 	errorlist 	errorList�	  9 r   R ]^_^ b   R Y`a` o   R U���� 0 	errorlist 	errorLista m   U Xbb �cc � U n a b l e   t o   l o c a t e   s i g n - i n   w i n d o w   a n d   c l i c k   ' ' C r e a t e   N e w   A p p l e   I D ' '_ o      ���� 0 	errorlist 	errorList6 m    dd�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �
  ' 6 0This is to make sure an abort hasn't been thrown   ( �ee ` T h i s   i s   t o   m a k e   s u r e   a n   a b o r t   h a s n ' t   b e e n   t h r o w n�  �  �   fgf l     ��������  ��  ��  g hih l     ��jk��  j - '---------------------------------------   k �ll N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -i mnm l     ��������  ��  ��  n opo i  X[qrq I      �������� 00 clickcontinueonpageone ClickContinueOnPageOne��  ��  r k     �ss tut I    ��v��
�� .sysodelanull��� ��� nmbrv [     wxw l    y����y ]     z{z o     ���� 0 masterdelay masterDelay{ o    
���� 0 processdelay processDelay��  ��  x m    ���� ��  u |}| l   ��������  ��  ��  } ~~ l   ������  �  start localization   � ��� $ s t a r t   l o c a l i z a t i o n ��� r    ��� m    �� ��� 6 W e l c o m e   t o   t h e   i T u n e s   S t o r e� o      ���� 40 curexpectedelementstring curExpectedElementString� ��� r    ��� m    �� ��� 6 W e l c o m e   t o   t h e   i T u n e s   S t o r e� o      ���� 80 curexpectedelementlocation curExpectedElementLocation� ��� l   ��������  ��  ��  � ��� Z    /������� =   !��� o    ���� &0 itunescountrycode iTunesCountryCode� m     �� ���  P O L� k   $ +�� ��� r   $ '��� m   $ %�� ��� : W i t a m y   w   s k l e p i e   i T u n e s   S t o r e� o      ���� 40 curexpectedelementstring curExpectedElementString� ���� r   ( +��� m   ( )�� ��� : W i t a m y   w   s k l e p i e   i T u n e s   S t o r e� o      ���� 80 curexpectedelementlocation curExpectedElementLocation��  ��  ��  � ��� l  0 0������  �  end localization   � ���   e n d   l o c a l i z a t i o n� ��� l  0 0��������  ��  ��  � ��� l  0 @���� r   0 @��� I   0 >������� 0 
verifypage 
verifyPage� ��� o   1 2���� 40 curexpectedelementstring curExpectedElementString� ��� o   2 3���� 80 curexpectedelementlocation curExpectedElementLocation� ��� m   3 4���� � ��� o   4 9���� 0 netdelay netDelay� ���� m   9 :��
�� boovfals��  ��  � o      ���� $0 pageverification pageVerification� C =--------Verify we are at page 1 of the Apple ID creation page   � ��� z - - - - - - - - V e r i f y   w e   a r e   a t   p a g e   1   o f   t h e   A p p l e   I D   c r e a t i o n   p a g e� ��� l  A A��������  ��  ��  � ���� Z   A ������� =  A D��� o   A B���� $0 pageverification pageVerification� m   B C�� ���  v e r i f i e d� k   G ��� ��� l  G G��������  ��  ��  � ��� Q   G ����� O   J ���� k   N ��� ��� r   N k��� n   N i��� 4   b i���
�� 
butT� m   e h�� ���  C o n t i n u e� n   N b��� 4   ] b���
�� 
uiel� m   ` a���� � n   N ]��� 4   X ]���
�� 
scra� m   [ \���� � n   N X��� 4   U X���
�� 
splg� m   V W���� � n   N U��� 4   R U���
�� 
cwin� m   S T���� � 4   N R���
�� 
pcap� m   P Q�� ���  i T u n e s� o      ���� 0 
contbutton 
contButton� ���� Z   l ������� =  l u��� n   l q��� 1   m q��
�� 
titl� o   l m���� 0 
contbutton 
contButton� m   q t�� ���  C o n t i n u e� I  x }�����
�� .prcsclicnull��� ��� uiel� o   x y���� 0 
contbutton 
contButton��  ��  � r   � ���� b   � ���� o   � ����� 0 	errorlist 	errorList� m   � ��� ��� � U n a b l e   t o   l o c a t e   a n d   c l i c k   t h e   C o n t i n u e   b u t t o n   o n   p a g e   ' ' W e l c o m e   t o   i T u n e s   S t o r e ' ' .� o      ���� 0 	errorlist 	errorList��  � m   J K���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� b   � �� � o   � ����� 0 	errorlist 	errorList  m   � � � � U n a b l e   t o   l o c a t e   a n d   c l i c k   t h e   C o n t i n u e   b u t t o n   o n   p a g e   ' ' W e l c o m e   t o   i T u n e s   S t o r e ' ' .� o      ���� 0 	errorlist 	errorList�  l  � ���������  ��  ��   �� r   � � m   � � �		   o      ���� $0 pageverification pageVerification��  ��  � r   � �

 b   � � o   � ����� 0 	errorlist 	errorList m   � � � � U n a b l e   t o   v e r i f y   t h a t   i T u n e s   i s   o p e n   a t   t h e   f i r s t   p a g e   o f   t h e   A p p l e   I D   c r e a t i o n   p r o c e s s . o      ���� 0 	errorlist 	errorList��  p  l     ��������  ��  ��    l     ����   - '---------------------------------------    � N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ��������  ��  ��    i  \_ I      �������� 0 agreetoterms AgreeToTerms��  ��   k    =  I    �� ��
�� .sysodelanull��� ��� nmbr  l    !����! ]     "#" o     ���� 0 masterdelay masterDelay# o    
���� 0 processdelay processDelay��  ��  ��   $%$ l   ��������  ��  ��  % &'& l   ��()��  (  start localization   ) �** $ s t a r t   l o c a l i z a t i o n' +,+ r    -.- m    // �00 Z T e r m s   a n d   C o n d i t i o n s   a n d   A p p l e   P r i v a c y   P o l i c y. o      ���� 40 curexpectedelementstring curExpectedElementString, 121 r    343 m    55 �66 Z T e r m s   a n d   C o n d i t i o n s   a n d   A p p l e   P r i v a c y   P o l i c y4 o      ���� 80 curexpectedelementlocation curExpectedElementLocation2 787 l   ��������  ��  ��  8 9:9 Z    -;<����; =   =>= o    ���� &0 itunescountrycode iTunesCountryCode> m    ?? �@@  P O L< k   " )AA BCB r   " %DED m   " #FF �GG X W a r u n k i   o r a z   O c h r o n a   p r y w a t n o[ c i   f i r m y   A p p l eE o      ���� 40 curexpectedelementstring curExpectedElementStringC H��H r   & )IJI m   & 'KK �LL X W a r u n k i   o r a z   O c h r o n a   p r y w a t n o[ c i   f i r m y   A p p l eJ o      ���� 80 curexpectedelementlocation curExpectedElementLocation��  ��  ��  : MNM l  . .��OP��  O  end localization   P �QQ   e n d   l o c a l i z a t i o nN RSR l  . .��~�}�  �~  �}  S TUT l  . >VWXV r   . >YZY I   . <�|[�{�| 0 
verifypage 
verifyPage[ \]\ o   / 0�z�z 40 curexpectedelementstring curExpectedElementString] ^_^ o   0 1�y�y 80 curexpectedelementlocation curExpectedElementLocation_ `a` m   1 2�x�x a bcb o   2 7�w�w 0 netdelay netDelayc d�vd m   7 8�u
�u boovfals�v  �{  Z o      �t�t $0 pageverification pageVerificationW C =--------Verify we are at page 1 of the Apple ID creation page   X �ee z - - - - - - - - V e r i f y   w e   a r e   a t   p a g e   1   o f   t h e   A p p l e   I D   c r e a t i o n   p a g eU fgf l  ? ?�s�r�q�s  �r  �q  g hih Z   ?;jk�p�oj =  ? Blml o   ? @�n�n $0 pageverification pageVerificationm m   @ Ann �oo  v e r i f i e dk O   E7pqp k   I6rr sts l  I I�m�l�k�m  �l  �k  t uvu l  I I�jwx�j  w  	Check box   x �yy  C h e c k   b o xv z{z l  I I�i�h�g�i  �h  �g  { |}| l  I I�f~�f  ~  start localization    ��� $ s t a r t   l o c a l i z a t i o n} ��� r   I L��� m   I J�e�e � o      �d�d 0 curcheckbox curCheckBox� ��� r   M P��� m   M N�c�c � o      �b�b  0 curcheckboxnum curCheckBoxNum� ��� l  Q Q�a�`�_�a  �`  �_  � ��� Z   Q f���^�]� =  Q X��� o   Q V�\�\ &0 itunescountrycode iTunesCountryCode� m   V W�� ���  P O L� k   [ b�� ��� r   [ ^��� m   [ \�� ��� � A b y   m � c   u| y w a   t e j   u sB u g i ,   z a p o z n a j   s i   z   p r z e d s t a w i o n y m i   w a r u n k a m i   i   z a s a d a m i   o r a z   w y r az   n a   n i e   z g o d .� o      �[�[ 0 curcheckbox curCheckBox� ��Z� r   _ b��� m   _ `�Y�Y � o      �X�X  0 curcheckboxnum curCheckBoxNum�Z  �^  �]  � ��� l  g g�W���W  �  end localization   � ���   e n d   l o c a l i z a t i o n� ��� l  g g�V�U�T�V  �U  �T  � ��� Q   g ����� k   j ��� ��� r   j ���� n   j ���� 4   � ��S�
�S 
chbx� m   � ��R�R � n   j ���� 4   � ��Q�
�Q 
sgrp� m   � ��P�P � n   j ���� 4   � ��O�
�O 
sgrp� m   � ��N�N � n   j ���� 4   { ��M�
�M 
uiel� m   ~ �L�L � n   j {��� 4   v {�K�
�K 
scra� m   y z�J�J � n   j v��� 4   q v�I�
�I 
splg� m   t u�H�H � n   j q��� 4   n q�G�
�G 
cwin� m   o p�F�F � 4   j n�E�
�E 
pcap� m   l m�� ���  i T u n e s� o      �D�D 0 agreecheckbox agreeCheckbox� ��� r   � ���� n   � ���� 1   � ��C
�C 
titl� o   � ��B�B 0 agreecheckbox agreeCheckbox� o      �A�A (0 buttonverification buttonVerification� ��� l  � ��@�?�>�@  �?  �>  � ��=� I  � ��<��;
�< .prcsclicnull��� ��� uiel� o   � ��:�: 0 agreecheckbox agreeCheckbox�;  �=  � R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  � r   � ���� b   � ���� o   � ��6�6 0 	errorlist 	errorList� m   � ��� ��� � U n a b l e   t o   l o c a t e   a n d   c h e c k   b o x   # 2   ' ' I   h a v e   r e a d   a n d   a g r e e   t o   t h e s e   t e r m s   a n d   c o n d i t i o n s . ' '� o      �5�5 0 	errorlist 	errorList� ��� l  � ��4�3�2�4  �3  �2  � ��� l  � ��1���1  � y sdelay (masterDelay * processDelay) --We need to pause a second for System Events to realize we have checked the box   � ��� � d e l a y   ( m a s t e r D e l a y   *   p r o c e s s D e l a y )   - - W e   n e e d   t o   p a u s e   a   s e c o n d   f o r   S y s t e m   E v e n t s   t o   r e a l i z e   w e   h a v e   c h e c k e d   t h e   b o x� ��� I  � ��0��/
�0 .sysodelanull��� ��� nmbr� m   � ��.�. �/  � ��� n  � ���� I   � ��-�,�+�-  0 checkforerrors CheckForErrors�,  �+  �  f   � �� ��� l  � ��*�)�(�*  �)  �(  � ��� l  � ��'�&�%�'  �&  �%  � ��� Z   �4���$�� =  � ���� o   � ��#�# 0 scriptaction scriptAction� m   � ��� ���  C o n t i n u e� Q   �&���� k   ��� ��� r   � ���� n   � ���� 4   � ��"�
�" 
butT� m   � ��� ��� 
 A g r e e� n   � ���� 4   � ��! 
�! 
uiel  m   � �� �  � n   � � 4   � ��
� 
scra m   � ���  n   � � 4   � ��
� 
splg m   � ���  n   � � 4   � ��	
� 
cwin	 m   � ���  4   � ��

� 
pcap
 m   � � �  i T u n e s� o      �� 0 agreebutton agreeButton�  r   � � n   � � 1   � ��
� 
titl o   � ��� 0 agreebutton agreeButton o      �� (0 buttonverification buttonVerification � Z   �� =  � � o   � ��� (0 buttonverification buttonVerification m   � � � 
 A g r e e I  ��
� .prcsclicnull��� ��� uiel o   �� 0 agreebutton agreeButton�  �   r   b   o  �� 0 	errorlist 	errorList m     �!! X U n a b l e   t o   l o c a t e   a n d   c l i c k   b u t t o n   ' ' A g r e e ' ' . o      �� 0 	errorlist 	errorList�  � R      ���

� .ascrerr ****      � ****�  �
  � r  &"#" b  "$%$ o  �	�	 0 	errorlist 	errorList% m  !&& �'' X U n a b l e   t o   l o c a t e   a n d   c l i c k   b u t t o n   ' ' A g r e e ' ' .# o      �� 0 	errorlist 	errorList�$  � r  )4()( b  )0*+* o  ),�� 0 	errorlist 	errorList+ m  ,/,, �-- X U n a b l e   t o   l o c a t e   a n d   c l i c k   b u t t o n   ' ' A g r e e ' ' .) o      �� 0 	errorlist 	errorList� .�. l 55����  �  �  �  q m   E F//�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �p  �o  i 0�0 l <<� �����   ��  ��  �   121 l     ��������  ��  ��  2 343 l     ��56��  5 - '---------------------------------------   6 �77 N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -4 898 i  `c:;: I      �������� 0 theform theForm��  ��  ; O     <=< k    >> ?@? r    ABA n    CDC 4    ��E
�� 
uielE m    ���� D n    FGF 4    ��H
�� 
scraH m    ���� G n    IJI 4    ��K
�� 
cwinK m   	 
���� J 4    ��L
�� 
pcapL m    MM �NN  i T u n e sB o      ���� 0 theform theForm@ O��O L    PP o    ���� 0 theform theForm��  = m     QQ�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  9 RSR l     ��������  ��  ��  S TUT l     ��VW��  V - '---------------------------------------   W �XX N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -U YZY l     ��������  ��  ��  Z [\[ i  dg]^] I      ��_���� 0 fillinfield FillInField_ `a` o      ���� 0 	fieldname 	fieldNamea bcb o      ���� 0 thefield theFieldc d��d o      ���� 0 thevalue theValue��  ��  ^ O     :efe Q    9ghig k    (jj klk r    mnm m    ��
�� boovtruen n      opo 1   	 ��
�� 
focup o    	���� 0 thefield theFieldl qrq r    sts o    ���� 0 thevalue theValuet n      uvu 1    ��
�� 
valLv o    ���� 0 thefield theFieldr w��w Z    (xy����x >   z{z n    |}| 1    ��
�� 
valL} o    ���� 0 thefield theField{ o    ���� 0 thevalue theValuey r    $~~ b    "��� o    ���� 0 	errorlist 	errorList� l   !������ b    !��� b    ��� m    �� ���  U n a b l e   t o   f i l l  � o    ���� 0 	fieldname 	fieldName� m     �� ���  .��  ��   o      ���� 0 	errorlist 	errorList��  ��  ��  h R      ������
�� .ascrerr ****      � ****��  ��  i r   0 9��� b   0 7��� o   0 1���� 0 	errorlist 	errorList� l  1 6������ b   1 6��� b   1 4��� m   1 2�� ���  U n a b l e   t o   f i l l  � o   2 3���� 0 	fieldname 	fieldName� m   4 5�� ���  .  ��  ��  � o      ���� 0 	errorlist 	errorListf m     ���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  \ ��� l     ��������  ��  ��  � ��� i  hk��� I      ������� "0 fillinkeystroke FillInKeystroke� ��� o      ���� 0 	fieldname 	fieldName� ��� o      ���� 0 thefield theField� ���� o      ���� 0 thevalue theValue��  ��  � O     -��� k    ,�� ��� l   ���� r    ��� m    ��
�� boovtrue� n      ��� 1   	 ��
�� 
pisf� 4    	���
�� 
pcap� m    �� ���  i T u n e s� N HVerify that iTunes is the front window before performing keystroke event   � ��� � V e r i f y   t h a t   i T u n e s   i s   t h e   f r o n t   w i n d o w   b e f o r e   p e r f o r m i n g   k e y s t r o k e   e v e n t� ���� Q    ,���� k    �� ��� r    ��� m    ��
�� boovtrue� n      ��� 1    ��
�� 
focu� o    ���� 0 thefield theField� ���� I   �����
�� .prcskprsnull���     ctxt� o    ���� 0 thevalue theValue��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   # ,��� b   # *��� o   # $���� 0 	errorlist 	errorList� l  $ )������ b   $ )��� b   $ '��� m   $ %�� ���  U n a b l e   t o   f i l l  � o   % &���� 0 	fieldname 	fieldName� m   ' (�� ���  .  ��  ��  � o      ���� 0 	errorlist 	errorList��  � m     ���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� i  lo��� I      ������� 0 fillinpopup FillInPopup� ��� o      ���� 0 	fieldname 	fieldName� ��� o      ���� 0 thefield theField� ��� o      ���� 0 thevalue theValue� ���� o      ���� 0 maximum  ��  ��  � O     z��� k    y�� ��� l   ���� r    ��� m    ��
�� boovtrue� n      ��� 1   	 ��
�� 
pisf� 4    	���
�� 
pcap� m    �� ���  i T u n e s� N HVerify that iTunes is the front window before performing keystroke event   � ��� � V e r i f y   t h a t   i T u n e s   i s   t h e   f r o n t   w i n d o w   b e f o r e   p e r f o r m i n g   k e y s t r o k e   e v e n t� ���� Q    y���� k    d�� ��� l   ������  � U O iTunes doesn't allow direct access to popup menus. So we step through instead.   � ��� �   i T u n e s   d o e s n ' t   a l l o w   d i r e c t   a c c e s s   t o   p o p u p   m e n u s .   S o   w e   s t e p   t h r o u g h   i n s t e a d .� ��� Y    N�������� k    I�� ��� Z   ' ����  =    n     1    ��
�� 
valL o    ���� 0 thefield theField o    ���� 0 thevalue theValue  S   " #��  ��  �  l  ( (��������  ��  ��   	 r   ( -

 m   ( )��
�� boovtrue n       1   * ,��
�� 
focu o   ) *���� 0 thefield theField	  I  . 3����
�� .sysodelanull��� ��� nmbr m   . / ?���������    l  4 9 I  4 9����
�� .prcskprsnull���     ctxt m   4 5 �   ��     Space to open the menu    � .   S p a c e   t o   o p e n   t h e   m e n u  l  : C I  : C�� ��
�� .prcskprsnull���     ctxt  l  : ?!����! I  : ?��"��
�� .prcskcodnull���     ****" m   : ;���� }��  ��  ��  ��     down arrow    �##    d o w n   a r r o w $��$ l  D I%&'% I  D I��(��
�� .prcskprsnull���     ctxt( m   D E)) �**   ��  &   Space to close the menu   ' �++ 0   S p a c e   t o   c l o s e   t h e   m e n u��  �� 0 loopcounter loopCounter� m    ���� � o    �� 0 maximum  ��  � ,-, l  O O�~�}�|�~  �}  �|  - .�{. Z  O d/0�z�y/ >  O T121 n   O R343 1   P R�x
�x 
valL4 o   O P�w�w 0 thefield theField2 o   R S�v�v 0 thevalue theValue0 r   W `565 b   W ^787 o   W X�u�u 0 	errorlist 	errorList8 l  X ]9�t�s9 b   X ]:;: b   X [<=< m   X Y>> �??  U n a b l e   t o   f i l l  = o   Y Z�r�r 0 	fieldname 	fieldName; m   [ \@@ �AA  .  �t  �s  6 o      �q�q 0 	errorlist 	errorList�z  �y  �{  � R      �p�o�n
�p .ascrerr ****      � ****�o  �n  � r   l yBCB b   l wDED o   l m�m�m 0 	errorlist 	errorListE l  m vF�l�kF b   m vGHG b   m rIJI m   m pKK �LL  U n a b l e   t o   f i l l  J o   p q�j�j 0 	fieldname 	fieldNameH m   r uMM �NN  .  �l  �k  C o      �i�i 0 	errorlist 	errorList��  � m     OO�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � PQP l     �h�g�f�h  �g  �f  Q RSR i  psTUT I      �eV�d�e 0 	clickthis 	ClickThisV WXW o      �c�c 0 	fieldname 	fieldNameX Y�bY o      �a�a 0 thefield theField�b  �d  U O     Z[Z Q    \]^\ I   �`_�_
�` .prcsclicnull��� ��� uiel_ o    �^�^ 0 thefield theField�_  ] R      �]�\�[
�] .ascrerr ****      � ****�\  �[  ^ r    `a` b    bcb o    �Z�Z 0 	errorlist 	errorListc l   d�Y�Xd b    efe b    ghg m    ii �jj   U n a b l e   t o   c l i c k  h o    �W�W 0 	fieldname 	fieldNamef m    kk �ll  .  �Y  �X  a o      �V�V 0 	errorlist 	errorList[ m     mm�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  S non l     �U�T�S�U  �T  �S  o pqp l     �Rrs�R  r - '---------------------------------------   s �tt N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -q uvu l     �Q�P�O�Q  �P  �O  v wxw i  twyzy I      �N{�M�N .0 provideappleiddetails ProvideAppleIdDetails{ |}| o      �L�L 0 appleidemail appleIdEmail} ~~ o      �K�K "0 appleidpassword appleIdPassword ��� o      �J�J 00 appleidsecretquestion1 appleIdSecretQuestion1� ��� o      �I�I ,0 appleidsecretanswer1 appleIdSecretAnswer1� ��� o      �H�H 00 appleidsecretquestion2 appleIdSecretQuestion2� ��� o      �G�G ,0 appleidsecretanswer2 appleIdSecretAnswer2� ��� o      �F�F 00 appleidsecretquestion3 appleIdSecretQuestion3� ��� o      �E�E ,0 appleidsecretanswer3 appleIdSecretAnswer3� ��� o      �D�D 0 rescueemail rescueEmail� ��� o      �C�C  0 userbirthmonth userBirthMonth� ��� o      �B�B 0 userbirthday userBirthDay� ��A� o      �@�@ 0 userbirthyear userBirthYear�A  �M  z Z    /���?�>� =    ��� o     �=�= 0 scriptaction scriptAction� m    �� ���  C o n t i n u e� l  +���� k   +�� ��� r    ��� I    �<��;�< 0 
verifypage 
verifyPage� ��� m    �� ��� 0 P r o v i d e   A p p l e   I D   D e t a i l s� ��� m    	�� ��� 0 P r o v i d e   A p p l e   I D   D e t a i l s� ��� m   	 
�:�:  � ��� l  
 ��9�8� ]   
 ��� o   
 �7�7 0 netdelay netDelay� o    �6�6 0 processdelay processDelay�9  �8  � ��5� m    �4
�4 boovfals�5  �;  � o      �3�3 $0 pageverification pageVerification� ��2� Z   +���1�� =    ��� o    �0�0 $0 pageverification pageVerification� m    �� ���  V e r i f i e d� O   #��� k   '�� ��� r   ' @��� n   ' :��� 4   7 :�/�
�/ 
sgrp� m   8 9�.�. � n   ' 7��� 4   4 7�-�
�- 
uiel� m   5 6�,�, � n   ' 4��� 4   1 4�+�
�+ 
scra� m   2 3�*�* � n   ' 1��� 4   . 1�)�
�) 
splg� m   / 0�(�( � n   ' .��� 4   + .�'�
�' 
cwin� m   , -�&�& � 4   ' +�%�
�% 
pcap� m   ) *�� ���  i T u n e s� o      �$�$ 0 theform theForm� ��� l  A A�#���#  �  	---------   � ���  - - - - - - - - -� ��� O  A Z��� I   E Y�"��!�" 0 fillinfield FillInField� ��� m   F G�� ��� 
 E m a i l� ��� n   G T��� 4   O T� �
�  
txtf� m   R S�� � n   G O��� 4   L O��
� 
sgrp� m   M N�� � o   G L�� 0 theform theForm� ��� o   T U�� 0 appleidemail appleIdEmail�  �!  �  f   A B� ��� l  [ [����  �  	---------   � ���  - - - - - - - - -� ��� O  [ y��� I   _ x���� "0 fillinkeystroke FillInKeystroke� ��� m   ` c�� ���  P a s s w o r d� ��� n   c s��� 4   n s��
� 
txtf� m   q r�� � n   c n��� 4   k n��
� 
sgrp� m   l m�� � n   c k   4   h k�
� 
sgrp m   i j��  o   c h�� 0 theform theForm� � o   s t�� "0 appleidpassword appleIdPassword�  �  �  f   [ \�  l  z z��    	---------    �  - - - - - - - - - 	
	 O  z � I   ~ ���� "0 fillinkeystroke FillInKeystroke  m    � � ( R e t y p e   y o u r   p a s s w o r d  n   � � 4   � ��

�
 
txtf m   � ��	�	  n   � � 4   � ��
� 
sgrp m   � ���  n   � � 4   � ��
� 
sgrp m   � ���  o   � ��� 0 theform theForm � o   � ��� "0 appleidpassword appleIdPassword�  �    f   z {
  l  � �� !�     	---------   ! �""  - - - - - - - - - #$# O  � �%&% I   � �� '���  0 fillinpopup FillInPopup' ()( m   � �** �++ . F i r s t   S e c u r i t y   Q u e s t i o n) ,-, n   � �./. 4   � ���0
�� 
popB0 m   � ����� / n   � �121 4   � ���3
�� 
sgrp3 m   � ����� 2 n   � �454 4   � ���6
�� 
sgrp6 m   � ����� 5 o   � ����� 0 theform theForm- 787 o   � ����� 00 appleidsecretquestion1 appleIdSecretQuestion18 9��9 m   � ����� ��  ��  &  f   � �$ :;: O  � �<=< I   � ���>���� 0 fillinfield FillInField> ?@? m   � �AA �BB  F i r s t   A n s w e r@ CDC n   � �EFE 4   � ���G
�� 
txtfG m   � ����� F n   � �HIH 4   � ���J
�� 
sgrpJ m   � ����� I n   � �KLK 4   � ���M
�� 
sgrpM m   � ����� L o   � ����� 0 theform theFormD N��N o   � ����� ,0 appleidsecretanswer1 appleIdSecretAnswer1��  ��  =  f   � �; OPO l  � ���QR��  Q  	---------   R �SS  - - - - - - - - -P TUT O  �VWV I   ���X���� 0 fillinpopup FillInPopupX YZY m   � �[[ �\\ 0 S e c o n d   S e c u r i t y   Q u e s t i o nZ ]^] n   � �_`_ 4   � ���a
�� 
popBa m   � ����� ` n   � �bcb 4   � ���d
�� 
sgrpd m   � ����� c n   � �efe 4   � ���g
�� 
sgrpg m   � ����� f o   � ����� 0 theform theForm^ hih o   � ����� 00 appleidsecretquestion2 appleIdSecretQuestion2i j��j m   � ���� ��  ��  W  f   � �U klk O (mnm I  '��o���� 0 fillinfield FillInFieldo pqp m  rr �ss  S e c o n d   A n s w e rq tut n  "vwv 4  "��x
�� 
txtfx m   !���� w n  yzy 4  ��{
�� 
sgrp{ m  ���� z n  |}| 4  ��~
�� 
sgrp~ m  ���� } o  ���� 0 theform theFormu �� o  "#���� ,0 appleidsecretanswer2 appleIdSecretAnswer2��  ��  n  f  	l ��� l ))������  �  	---------   � ���  - - - - - - - - -� ��� O )N��� I  -M������� 0 fillinpopup FillInPopup� ��� m  .1�� ��� . T h i r d   S e c u r i t y   Q u e s t i o n� ��� n  1C��� 4  >C���
�� 
popB� m  AB���� � n  1>��� 4  ;>���
�� 
sgrp� m  <=���� � n  1;��� 4  6;���
�� 
sgrp� m  7:���� � o  16���� 0 theform theForm� ��� o  CD���� 00 appleidsecretquestion3 appleIdSecretQuestion3� ���� m  DG���� ��  ��  �  f  )*� ��� O Oo��� I  Sn������� 0 fillinfield FillInField� ��� m  TW�� ���  T h i r d   A n s w e r� ��� n  Wi��� 4  di���
�� 
txtf� m  gh���� � n  Wd��� 4  ad���
�� 
sgrp� m  bc���� � n  Wa��� 4  \a���
�� 
sgrp� m  ]`���� � o  W\���� 0 theform theForm� ���� o  ij���� ,0 appleidsecretanswer3 appleIdSecretAnswer3��  ��  �  f  OP� ��� l pp������  �  	---------   � ���  - - - - - - - - -� ��� O p���� I  t�������� 0 fillinfield FillInField� ��� m  ux�� ��� * O p t i o n a l   R e s c u e   E m a i l� ��� n  x���� 4  �����
�� 
txtf� m  ������ � n  x���� 4  }����
�� 
sgrp� m  ~����� � o  x}���� 0 theform theForm� ���� o  ������ 0 rescueemail rescueEmail��  ��  �  f  pq� ��� l ��������  �  	---------   � ���  - - - - - - - - -� ��� l ��������  �  start localization   � ��� $ s t a r t   l o c a l i z a t i o n� ��� r  ����� m  ������ � o      ���� 0 curmonthpos curMonthPos� ��� r  ����� m  ������ � o      ���� 0 	curdaypos 	curDayPos� ��� Z  ��������� = ����� o  ������ &0 itunescountrycode iTunesCountryCode� m  ���� ���  P O L� k  ���� ��� r  ����� m  ������ � o      ���� 0 curmonthpos curMonthPos� ���� r  ����� m  ������ � o      ���� 0 	curdaypos 	curDayPos��  ��  ��  � ��� Z  ��������� = ����� o  ������ &0 itunescountrycode iTunesCountryCode� m  ���� ���  C A N� k  ���� ��� r  ����� m  ������ � o      ���� 0 curmonthpos curMonthPos� ���� r  ����� m  ������ � o      ���� 0 	curdaypos 	curDayPos��  ��  ��  � ��� l ��������  �  end localization   � ���   e n d   l o c a l i z a t i o n� � � l ����������  ��  ��     O �� I  �������� 0 fillinpopup FillInPopup  m  �� �		 
 M o n t h 

 n  �� 4  ����
�� 
popB m  ������  n  �� 4  ����
�� 
sgrp o  ������ 0 curmonthpos curMonthPos n  �� 4  ���
� 
sgrp m  ����  o  ���� 0 theform theForm  o  ����  0 userbirthmonth userBirthMonth � m  ���� �  ��    f  ��  O � I  ���� 0 fillinpopup FillInPopup  m  �� �    D a y !"! n  �#$# 4  �%
� 
popB% m  �� $ n  �&'& 4  ��(
� 
sgrp( o  � �� 0 	curdaypos 	curDayPos' n  ��)*) 4  ���+
� 
sgrp+ m  ���� * o  ���� 0 theform theForm" ,-, o  �� 0 userbirthday userBirthDay- .�. m  
�~�~ �  �    f  �� /0/ O 2121 I  1�}3�|�} 0 fillinfield FillInField3 454 m  66 �77  Y e a r5 898 n  ,:;: 4  ',�{<
�{ 
txtf< m  *+�z�z ; n  '=>= 4  $'�y?
�y 
sgrp? m  %&�x�x > n  $@A@ 4  $�wB
�w 
sgrpB m   #�v�v A o  �u�u 0 theform theForm9 C�tC o  ,-�s�s 0 userbirthyear userBirthYear�t  �|  2  f  0 DED l 33�rFG�r  F  	---------   G �HH  - - - - - - - - -E IJI r  3DKLK n  3BMNM 4  =B�qO
�q 
chbxO m  @A�p�p N n  3=PQP 4  8=�oR
�o 
sgrpR m  9<�n�n Q o  38�m�m 0 theform theFormL o      �l�l "0 releasecheckbox releaseCheckboxJ STS r  EXUVU n  ETWXW 4  OT�kY
�k 
chbxY m  RS�j�j X n  EOZ[Z 4  JO�i\
�i 
sgrp\ m  KN�h�h [ o  EJ�g�g 0 theform theFormV o      �f�f 0 newscheckbox newsCheckboxT ]^] Z  Yu_`�e�d_ = Y`aba n  Y^cdc 1  Z^�c
�c 
valLd o  YZ�b�b "0 releasecheckbox releaseCheckboxb m  ^_�a�a ` O cqefe I  gp�`g�_�` 0 	clickthis 	ClickThisg hih m  hkjj �kk � R e c o m m e n d a t i o n s   a n d   i n f o r m a t i o n   a b o u t   n e w   r e l e a s e s   f o r   m u s i c ,   a p p s ,   m o v i e s ,   T V ,   b o o k s ,   a n d   p o d c a s t s .i l�^l o  kl�]�] "0 releasecheckbox releaseCheckbox�^  �_  f  f  cd�e  �d  ^ mnm Z  v�op�\�[o = vqrq n  v}sts 1  y}�Z
�Z 
valLt o  vy�Y�Y 0 newscheckbox newsCheckboxr m  }~�X�X p O ��uvu I  ���Ww�V�W 0 	clickthis 	ClickThisw xyx m  ��zz �{{ � A n n o u n c e m e n t s   a n d   r e c o m m e n d a t i o n s   a b o u t   A p p l e   p r o d u c t s ,   s e r v i c e s ,   a n d   u p d a t e s .y |�U| o  ���T�T 0 newscheckbox newsCheckbox�U  �V  v  f  ���\  �[  n }~} l ���S��S    	---------   � ���  - - - - - - - - -~ ��� l ���R�Q�P�R  �Q  �P  � ��� l ������ n ����� I  ���O�N�M�O  0 checkforerrors CheckForErrors�N  �M  �  f  ��� 9 3Check for errors before continuing to the next page   � ��� f C h e c k   f o r   e r r o r s   b e f o r e   c o n t i n u i n g   t o   t h e   n e x t   p a g e� ��� l ���L�K�J�L  �K  �J  � ��� Z  �����I�H� = ����� o  ���G�G 0 dryrun dryRun� m  ���F
�F boovtrue� k  ���� ��� r  ����� c  ����� n  ����� 1  ���E
�E 
bhit� l ����D�C� I ���B��
�B .sysodlogaskr        TEXT� m  ���� ��� @ D i d   e v e r y t h i n g   f i l l   i n   p r o p e r l y ?� �A��@
�A 
btns� J  ���� ��� m  ���� ���  Y e s� ��?� m  ���� ���  N o�?  �@  �D  �C  � m  ���>
�> 
ctxt� o      �=�= 0 dryrunsucess dryRunSucess� ��<� Z  �����;�:� = ����� o  ���9�9 0 dryrunsucess dryRunSucess� m  ���� ���  N o� r  ����� c  ����� n  ����� 1  ���8
�8 
bhit� l ����7�6� I ���5��
�5 .sysodlogaskr        TEXT� m  ���� ��� 4 W h a t   w o u l d   y o u   l i k e   t o   d o ?� �4��3
�4 
btns� J  ���� ��� m  ���� ��� 
 A b o r t� ��2� m  ���� ���  C o n t i n u e�2  �3  �7  �6  � m  ���1
�1 
ctxt� o      �0�0 0 scriptaction scriptAction�;  �:  �<  �I  �H  � ��� l ���/�.�-�/  �.  �-  � ��,� Z  ����+�*� = ����� o  ���)�) 0 scriptaction scriptAction� m  ���� ���  C o n t i n u e� I ��(��'
�( .prcsclicnull��� ��� uiel� n  ���� 4  �&�
�& 
butT� m  �%�% � n  ���� 4  �$�
�$ 
uiel� m  �#�# � n  ���� 4  	�"�
�" 
scra� m  
�!�! � n  �	��� 4  	� �
�  
splg� m  �� � n  ���� 4  ��
� 
cwin� m  �� � 4  ���
� 
pcap� m  ��� ���  i T u n e s�'  �+  �*  �,  � m   # $���                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �1  � l  +���� r   +��� b   '��� o   #�� 0 	errorlist 	errorList� m  #&�� ��� � U n a b l e   t o   v e r i f y   t h a t   t h e   ' ' P r o v i d e   A p p l e   I D   D e t a i l s ' '   p a g e   i s   o p e n   a n d   f i l l   i t s   c o n t e n t s .� o      �� 0 	errorlist 	errorList�  (If page didn't verify)   � ��� . ( I f   p a g e   d i d n ' t   v e r i f y )�2  � 6 0This is to make sure an abort hasn't been thrown   � ��� ` T h i s   i s   t o   m a k e   s u r e   a n   a b o r t   h a s n ' t   b e e n   t h r o w n�?  �>  x ��� l     ����  �  �  � ��� i  x{��� I      ���� .0 providepaymentdetails ProvidePaymentDetails� ��� o      �� 0 userfirstname userFirstName� ��� o      �� 0 userlastname userLastName� ��� o      �� 0 addressstreet addressStreet� ��� o      �� 0 addresscity addressCity� ��� o      �� 0 addressstate addressState� ��� o      �� 0 
addresszip 
addressZip�    o      �� 0 phoneareacode phoneAreaCode � o      �� 0 phonenumber phoneNumber�  �  � l   � Z    ��
�	 =    	 o     �� 0 scriptaction scriptAction	 m    

 �  C o n t i n u e l  � k   �  r     I    ��� 0 
verifypage 
verifyPage  m     � 0 P r o v i d e   a   P a y m e n t   M e t h o d  m    	 � 0 P r o v i d e   a   P a y m e n t   M e t h o d  m   	 
��     l  
 !��! ]   
 "#" o   
 �� 0 netdelay netDelay# o    �� 0 processdelay processDelay�  �    $� $ m    ��
�� boovfals�   �   o      ���� $0 pageverification pageVerification %&% l   ��������  ��  ��  & '(' Z    ;)*����) =    +,+ o    ���� $0 pageverification pageVerification, m    -- �..  V e r i f i e d* O   # 7/0/ I  ' 6��1��
�� .prcsclicnull��� ��� uiel1 n   ' 2232 4   / 2��4
�� 
radB4 m   0 155 �66  N o n e3 n   ' /787 4   , /��9
�� 
rgrp9 m   - .���� 8 o   ' ,���� 0 theform theForm��  0 m   # $::�                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ( ;<; l  < <��������  ��  ��  < =>= l  < <��?@��  ? > 8Wait for the page to change after selecting payment type   @ �AA p W a i t   f o r   t h e   p a g e   t o   c h a n g e   a f t e r   s e l e c t i n g   p a y m e n t   t y p e> BCB l  < CDEFD r   < CGHG m   < =II ?�      H o      ����  0 checkfrequency checkFrequencyE e _How often (in seconds) the iTunes LCD will be checked to see if iTunes is busy loading the page   F �JJ � H o w   o f t e n   ( i n   s e c o n d s )   t h e   i T u n e s   L C D   w i l l   b e   c h e c k e d   t o   s e e   i f   i T u n e s   i s   b u s y   l o a d i n g   t h e   p a g eC KLK l  D D��������  ��  ��  L MNM T   D �OO k   I �PP QRQ r   I rSTS I   I p��U���� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcdU VWV m   J KXX �YY  D o e s   N o t   M a t c hW Z[Z o   K P���� .0 itunesaccessingstring itunesAccessingString[ \]\ m   P Q���� ] ^_^ m   Q R`` �aa " t i m e s .   C h e c k   f o r :_ bcb l  R _d����d ]   R _efe o   R W���� 0 netdelay netDelayf l  W ^g����g ^   W ^hih m   W X���� i o   X ]����  0 checkfrequency checkFrequency��  ��  ��  ��  c jkj m   _ bll �mm  i n t e r v a l s   o fk non o   b g����  0 checkfrequency checkFrequencyo p��p m   g jqq �rr  s e c o n d s��  ��  T o      ���� 0 	lcdstatus 	lcdStatusR sts Z  s �uv����u =  s xwxw o   s t���� 0 	lcdstatus 	lcdStatusx m   t wyy �zz  M a t c h e dv  S   { |��  ��  t {��{ I  � ���|��
�� .sysodelanull��� ��� nmbr| o   � ����� 0 masterdelay masterDelay��  ��  N }~} l  � ���������  ��  ��  ~ �� l  ������ O   ����� k   ���� ��� Q   � ����� k   � ��� ��� l  � ����� r   � ���� m   � ���
�� boovtrue� n      ��� 1   � ���
�� 
pisf� 4   � ����
�� 
pcap� m   � ��� ���  i T u n e s� N HVerify that iTunes is the front window before performing keystroke event   � ��� � V e r i f y   t h a t   i T u n e s   i s   t h e   f r o n t   w i n d o w   b e f o r e   p e r f o r m i n g   k e y s t r o k e   e v e n t� ��� r   � ���� m   � ���
�� boovtrue� n      ��� 1   � ���
�� 
focu� n   � ���� 4   � ����
�� 
popB� m   � ����� � n   � ���� 4   � ����
�� 
sgrp� m   � ����� � n   � ���� 4   � ����
�� 
sgrp� m   � ����� � o   � ����� 0 theform theForm� ���� I  � ������
�� .prcskprsnull���     ctxt� m   � ��� ���  M r��  ��  � R      �����
�� .ascrerr ****      � ****��  �  � r   � ���� b   � ���� o   � ��� 0 	errorlist 	errorList� m   � ��� ��� > U n a b l e   t o   s e t   ' ' T i t l e '   t o   ' M r . '� o      �� 0 	errorlist 	errorList� ��� l  � �����  �  	---------   � ���  - - - - - - - - -� ��� Q   ����� r   � ���� o   � ��� 0 userfirstname userFirstName� n      ��� 1   � ��
� 
valL� n   � ���� 4   � ���
� 
txtf� m   � ��� � n   � ���� 4   � ���
� 
sgrp� m   � ��� � n   � ���� 4   � ���
� 
sgrp� m   � ��� � o   � ��� 0 theform theForm� R      ���
� .ascrerr ****      � ****�  �  � r  ��� b  ��� b  ��� o  �� 0 	errorlist 	errorList� m  �� ��� L U n a b l e   t o   s e t   ' ' F i r s t   N a m e ' '   f i e l d   t o  � o  �� 0 userfirstname userFirstName� o      �� 0 	errorlist 	errorList� ��� l ����  �  	---------   � ���  - - - - - - - - -� ��� Q  G���� r  2��� o  �� 0 userlastname userLastName� n      ��� 1  -1�
� 
valL� n  -��� 4  (-��
� 
txtf� m  +,�� � n  (��� 4  #(��
� 
sgrp� m  &'�� � n  #��� 4  #��
� 
sgrp� m  "�� � o  �� 0 theform theForm� R      ���
� .ascrerr ****      � ****�  �  � r  :G��� b  :C��� b  :A��� o  :=�� 0 	errorlist 	errorList� m  =@�� ��� J U n a b l e   t o   s e t   ' ' L a s t   N a m e ' '   f i e l d   t o  � o  AB�� 0 userlastname userLastName� o      �� 0 	errorlist 	errorList� ��� l HH����  �  	---------   � ���  - - - - - - - - -� ��� Q  H|���� r  Kg��� o  KL�� 0 addressstreet addressStreet� n      ��� 1  bf�
� 
valL� n  Lb��� 4  ]b� 
� 
txtf  m  `a�� � n  L] 4  X]�
� 
sgrp m  [\��  n  LX 4  QX�
� 
sgrp m  TW�� 	 o  LQ�� 0 theform theForm� R      ���
� .ascrerr ****      � ****�  �  � r  o| b  ox	
	 b  ov o  or�� 0 	errorlist 	errorList m  ru � T U n a b l e   t o   s e t   ' ' S t r e e t   A d d r e s s ' '   f i e l d   t o  
 o  vw�� 0 addressstreet addressStreet o      �� 0 	errorlist 	errorList�  l }}��    	---------    �  - - - - - - - - -  l }}��    start localization    � $ s t a r t   l o c a l i z a t i o n  r  }� m  }~��  o      �� $0 curcityfieldname curCityFieldName  r  ��  m  ����   o      �� "0 curcityfieldpos curCityFieldPos !"! Z  ��#$��# = ��%&% o  ���� &0 itunescountrycode iTunesCountryCode& m  ��'' �((  P O L$ k  ��)) *+* r  ��,-, m  ��.. �//  T o w n- o      �� $0 curcityfieldname curCityFieldName+ 0�0 r  ��121 m  ���� 2 o      �� "0 curcityfieldpos curCityFieldPos�  �  �  " 343 l ���56�  5  end localization   6 �77   e n d   l o c a l i z a t i o n4 898 Q  ��:;<: r  ��=>= o  ���~�~ 0 addresscity addressCity> n      ?@? 1  ���}
�} 
valL@ n  ��ABA 4  ���|C
�| 
txtfC o  ���{�{ $0 curcityfieldname curCityFieldNameB n  ��DED 4  ���zF
�z 
sgrpF o  ���y�y "0 curcityfieldpos curCityFieldPosE n  ��GHG 4  ���xI
�x 
sgrpI m  ���w�w 
H o  ���v�v 0 theform theForm; R      �u�t�s
�u .ascrerr ****      � ****�t  �s  < r  ��JKJ b  ��LML b  ��NON o  ���r�r 0 	errorlist 	errorListO m  ��PP �QQ @ U n a b l e   t o   s e t   ' ' C i t y ' '   f i e l d   t o  M o  ���q�q 0 addresscity addressCityK o      �p�p 0 	errorlist 	errorList9 RSR l ���oTU�o  T  	---------   U �VV  - - - - - - - - -S WXW l ���nYZ�n  Y  start localization   Z �[[ $ s t a r t   l o c a l i z a t i o nX \]\ r  ��^_^ m  ���m
�m boovtrue_ o      �l�l  0 enableprovince enableProvince] `a` Z  ��bc�k�jb = ��ded o  ���i�i &0 itunescountrycode iTunesCountryCodee m  ��ff �gg  P O Lc r  ��hih m  ���h
�h boovfalsi o      �g�g  0 enableprovince enableProvince�k  �j  a jkj l ���flm�f  l  end localization   m �nn   e n d   l o c a l i z a t i o nk opo l ���e�d�c�e  �d  �c  p qrq Z  �?st�b�as = ��uvu o  ���`�`  0 enableprovince enableProvincev m  ���_
�_ boovtruet Q  �;wxyw k  �&zz {|{ l �}~} r  ���� m  ���^
�^ boovtrue� n      ��� 1  ��]
�] 
pisf� 4  ���\�
�\ 
pcap� m  ���� ���  i T u n e s~ O IVerify that iTunes is the front window before performking keystroke event    ��� � V e r i f y   t h a t   i T u n e s   i s   t h e   f r o n t   w i n d o w   b e f o r e   p e r f o r m k i n g   k e y s t r o k e   e v e n t| ��� r   ��� m  �[
�[ boovtrue� n      ��� 1  �Z
�Z 
focu� n  ��� 4  �Y�
�Y 
popB� m  �X�X � n  ��� 4  �W�
�W 
sgrp� m  �V�V � n  ��� 4  
�U�
�U 
sgrp� m  �T�T 
� o  
�S�S 0 theform theForm� ��R� I !&�Q��P
�Q .prcskprsnull���     ctxt� o  !"�O�O 0 addressstate addressState�P  �R  x R      �N�M�L
�N .ascrerr ****      � ****�M  �L  y r  .;��� b  .7��� b  .5��� o  .1�K�K 0 	errorlist 	errorList� m  14�� ��� J U n a b l e   t o   s e t   ' ' S t a t e ' '   d r o p - d o w n   t o  � o  56�J�J 0 addressstate addressState� o      �I�I 0 	errorlist 	errorList�b  �a  r ��� l @@�H���H  �  	---------   � ���  - - - - - - - - -� ��� l @@�G���G  �  start localization   � ��� $ s t a r t   l o c a l i z a t i o n� ��� r  @C��� m  @A�F�F � o      �E�E 00 curpostalcodefieldname curPostalCodeFieldName� ��� r  DG��� m  DE�D�D � o      �C�C .0 curpostalcodefieldpos curPostalCodeFieldPos� ��� Z  Ha���B�A� = HQ��� o  HM�@�@ &0 itunescountrycode iTunesCountryCode� m  MP�� ���  P O L� k  T]�� ��� r  TY��� m  TW�� ���  P o s t c o d e� o      �?�? 00 curpostalcodefieldname curPostalCodeFieldName� ��>� r  Z]��� m  Z[�=�= � o      �<�< .0 curpostalcodefieldpos curPostalCodeFieldPos�>  �B  �A  � ��� l bb�;���;  �  end localization   � ���   e n d   l o c a l i z a t i o n� ��� l bb�:�9�8�:  �9  �8  � ��� Q  b����� r  e���� o  ef�7�7 0 
addresszip 
addressZip� n      ��� 1  |��6
�6 
valL� n  f|��� 4  w|�5�
�5 
txtf� o  z{�4�4 00 curpostalcodefieldname curPostalCodeFieldName� n  fw��� 4  rw�3�
�3 
sgrp� o  uv�2�2 .0 curpostalcodefieldpos curPostalCodeFieldPos� n  fr��� 4  kr�1�
�1 
sgrp� m  nq�0�0 
� o  fk�/�/ 0 theform theForm� R      �.�-�,
�. .ascrerr ****      � ****�-  �,  � r  ����� b  ����� b  ����� o  ���+�+ 0 	errorlist 	errorList� m  ���� ��� N U n a b l e   t o   s e t   ' ' P o s t a l   C o d e ' '   f i e l d   t o  � o  ���*�* 0 
addresszip 
addressZip� o      �)�) 0 	errorlist 	errorList� ��� l ���(���(  �  	---------   � ���  - - - - - - - - -� ��� Q  ������ r  ����� o  ���'�' 0 phoneareacode phoneAreaCode� n      ��� 1  ���&
�& 
valL� n  ����� 4  ���%�
�% 
txtf� m  ���$�$ � n  ����� 4  ���#�
�# 
sgrp� m  ���"�" � n  ����� 4  ���!�
�! 
sgrp� m  ��� �  � o  ���� 0 theform theForm� R      ���
� .ascrerr ****      � ****�  �  � r  ����� b  ��� � b  �� o  ���� 0 	errorlist 	errorList m  �� � J U n a b l e   t o   s e t   ' ' A r e a   C o d e ' '   f i e l d   t o    o  ���� 0 phoneareacode phoneAreaCode� o      �� 0 	errorlist 	errorList�  l ����    	---------    �		  - - - - - - - - - 

 Q  �  r  �� o  ���� 0 phonenumber phoneNumber n       1  ���
� 
valL n  �� 4  ���
� 
txtf m  ����  n  �� 4  ���
� 
sgrp m  ����  n  �� 4  ���
� 
sgrp m  ����  o  ���� 0 theform theForm R      ���
� .ascrerr ****      � ****�  �   r  �  b  �� b  �� !  o  ���� 0 	errorlist 	errorList! m  ��"" �## P U n a b l e   t o   s e t   ' ' P h o n e   N u m b e r ' '   f i e l d   t o   o  ���
�
 0 phonenumber phoneNumber o      �	�	 0 	errorlist 	errorList $%$ l �&'�  &  	---------   ' �((  - - - - - - - - -% )*) l ����  �  �  * +,+ n -.- I  ����  0 checkforerrors CheckForErrors�  �  .  f  , /0/ l �� ���  �   ��  0 121 Z  Z34����3 = 565 o  ���� 0 dryrun dryRun6 m  ��
�� boovtrue4 l V7897 k  V:: ;<; r  -=>= c  +?@? n  'ABA 1  #'��
�� 
bhitB l #C����C I #��DE
�� .sysodlogaskr        TEXTD m  FF �GG @ D i d   e v e r y t h i n g   f i l l   i n   p r o p e r l y ?E ��H��
�� 
btnsH J  II JKJ m  LL �MM  Y e sK N��N m  OO �PP  N o��  ��  ��  ��  @ m  '*��
�� 
ctxt> o      ���� 0 dryrunsucess dryRunSucess< Q��Q Z  .VRS����R = .3TUT o  ./���� 0 dryrunsucess dryRunSucessU m  /2VV �WW  N oS r  6RXYX c  6PZ[Z n  6L\]\ 1  HL��
�� 
bhit] l 6H^����^ I 6H��_`
�� .sysodlogaskr        TEXT_ m  69aa �bb 4 W h a t   w o u l d   y o u   l i k e   t o   d o ?` ��c��
�� 
btnsc J  <Ddd efe m  <?gg �hh 
 A b o r tf i��i m  ?Bjj �kk  C o n t i n u e��  ��  ��  ��  [ m  LO��
�� 
ctxtY o      ���� 0 scriptaction scriptAction��  ��  ��  8 7 1Pause to make sure all the fields filled properly   9 �ll b P a u s e   t o   m a k e   s u r e   a l l   t h e   f i e l d s   f i l l e d   p r o p e r l y��  ��  2 mnm l [[��������  ��  ��  n opo l [�qrsq Z  [�tu��vt = [bwxw o  [`���� 0 dryrun dryRunx m  `a��
�� boovfalsu l e�yz{y l e�|}~| Z  e������ = ej��� o  ef���� 0 scriptaction scriptAction� m  fi�� ���  C o n t i n u e� l m����� Q  m����� I p������
�� .prcsclicnull��� ��� uiel� n  p|��� 4  u|���
�� 
butT� m  x{�� ��� $ C e a t e   N e w   A p p l e   I D� o  pu���� 0 theform theForm��  � R      ������
�� .ascrerr ****      � ****��  ��  � r  ����� b  ����� o  ������ 0 	errorlist 	errorList� m  ���� ��� \ U n a b l e   t o   c l i c k   ' ' C e a t e   N e w   A p p l e   I D ' '   b u t t o n .� o      ���� 0 	errorlist 	errorList� , &Continue as long as no errors occurred   � ��� L C o n t i n u e   a s   l o n g   a s   n o   e r r o r s   o c c u r r e d��  ��  } + %End "Continue if no errors" statement   ~ ��� J E n d   " C o n t i n u e   i f   n o   e r r o r s "   s t a t e m e n tz S MClick the "Create New Apple ID" button as long as we aren't in "Dry Run" mode   { ��� � C l i c k   t h e   " C r e a t e   N e w   A p p l e   I D "   b u t t o n   a s   l o n g   a s   w e   a r e n ' t   i n   " D r y   R u n "   m o d e��  v l ������ k  ���� ��� r  ����� c  ����� n  ����� 1  ����
�� 
bhit� l �������� I ������
�� .sysodlogaskr        TEXT� m  ���� ���l C o m p l e t e d .   W o u l d   y o u   l i k e   t o   s t o p   t h e   s c r i p t   n o w ,   c o n t i n u e   ' ' d r y   r u n n i n g ' '   w i t h   t h e   n e x t   u s e r   i n   t h e   C S V   ( i f   a p p l i c a b l e ) ,   o r   r u n   t h e   s c r i p t   ' ' f o r   r e a l ' '   s t a r t i n g   w i t h   t h e   f i r s t   u s e r ?� �����
�� 
btns� J  ���� ��� m  ���� ���  S t o p   S c r i p t� ��� m  ���� ���   C o n t i n u e   D r y   R u n� ���� m  ���� ���   R u n   ' ' F o r   R e a l ' '��  ��  ��  ��  � m  ����
�� 
ctxt� o      ���� 0 dryrunchoice dryRunChoice� ��� Z ��������� = ����� o  ������ 0 dryrunchoice dryRunChoice� m  ���� ���  S t o p   S c r i p t� r  ����� m  ���� ���  S t o p� o      ���� 0 scriptaction scriptAction��  ��  � ���� Z  ��������� = ����� o  ������ 0 dryrunchoice dryRunChoice� m  ���� ���   R u n   ' ' F o r   R e a l ' '� k  ���� ��� r  ����� m  ������  � o      ���� &0 currentusernumber currentUserNumber� ��� r  ����� m  ���
� boovfals� o      �� 0 dryrun dryRun�  ��  ��  ��  � ' !If we are doing a dry run then...   � ��� B I f   w e   a r e   d o i n g   a   d r y   r u n   t h e n . . .r   End "dry Run" if statement   s ��� 4 E n d   " d r y   R u n "   i f   s t a t e m e n tp ��� l ������  �  �  �  � m   � ����                                                                                  sevs  alis    �  Macintosh HD               ϓ��H+  �5System Events.app                                              �`����        ����  	                CoreServices    ϓ�;      ����    �5�4�3  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  End "System Events" tell   � ��� 0 E n d   " S y s t e m   E v e n t s "   t e l l��   6 0This is to make sure an abort hasn't been thrown    ��� ` T h i s   i s   t o   m a k e   s u r e   a n   a b o r t   h a s n ' t   b e e n   t h r o w n�
  �	    End main error check IF    ��� . E n d   m a i n   e r r o r   c h e c k   I F�       r�� ?� ����I� ������������������������������������� 	
�������������������������������������������������������  � p�~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ������������������~ &0 itunescountrycode iTunesCountryCode�} 0 dryrun dryRun�| (0 ibookslinklocation ibooksLinkLocation�{ 0 masterdelay masterDelay�z 0 netdelay netDelay�y 0 processdelay processDelay�x  0 checkfrequency checkFrequency�w 20 supporteditunesversions supportedItunesVersions�v .0 itunesaccessingstring itunesAccessingString�u 0 emailheaders emailHeaders�t "0 passwordheaders passwordHeaders�s 00 secretquestion1headers secretQuestion1Headers�r ,0 secretanswer1headers secretAnswer1Headers�q 00 secretquestion2headers secretQuestion2Headers�p ,0 secretanswer2headers secretAnswer2Headers�o 00 secretquestion3headers secretQuestion3Headers�n ,0 secretanswer3headers secretAnswer3Headers�m *0 monthofbirthheaders monthOfBirthHeaders�l &0 dayofbirthheaders dayOfBirthHeaders�k (0 yearofbirthheaders yearOfBirthHeaders�j $0 firstnameheaders firstNameHeaders�i "0 lastnameheaders lastNameHeaders�h ,0 addressstreetheaders addressStreetHeaders�g (0 addresscityheaders addressCityHeaders�f *0 addressstateheaders addressStateHeaders�e &0 addresszipheaders addressZipHeaders�d ,0 phoneareacodeheaders phoneAreaCodeHeaders�c (0 phonenumberheaders phoneNumberHeaders�b (0 rescueemailheaders rescueEmailHeaders�a ,0 accountstatusheaders accountStatusHeaders�` B0 supportedfreebuttondescriptions supportedFreeButtonDescriptions
�_ .aevtodocnull  �    alis�^ 0 	mainmagic 	MainMagic�] 0 loadusersfile loadUsersFile�\ 0 
findcolumn 
findColumn�[ 0 
findinlist 
findInList�Z &0 getcolumncontents getColumnContents�Y 0 readcsvfile ReadCsvFile�X 0 testcsvfile TestCsvFile�W 0 parsecsvfile ParseCsvFile�V 0 
verifypage 
verifyPage�U  0 checkforerrors CheckForErrors�T ,0 signoutitunesaccount SignOutItunesAccount�S 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd�R 0 installibooks installIbooks�Q :0 clickcreatenewappleidbutton ClickCreateNewAppleIDButton�P 00 clickcontinueonpageone ClickContinueOnPageOne�O 0 agreetoterms AgreeToTerms�N 0 theform theForm�M 0 fillinfield FillInField�L "0 fillinkeystroke FillInKeystroke�K 0 fillinpopup FillInPopup�J 0 	clickthis 	ClickThis�I .0 provideappleiddetails ProvideAppleIdDetails�H .0 providepaymentdetails ProvidePaymentDetails
�G .aevtoappnull  �   � ****�F 0 	errorlist 	errorList�E 0 scriptaction scriptAction�D &0 currentusernumber currentUserNumber�C "0 userdroppedfile userDroppedFile�B 0 droppedfile droppedFile�A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  �6  �5  �4  �3  �2  �1  �0  �/  �.  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
� boovtrue� � � � ��    � � � �� ��    � � ��   � ��   � �
�
   � �	�	    � ��   '� ��   .� ��   5� ��   =AD� ��   LPS� ��   [_b� ��   jnq� ��   y}�� � �    ���� ����   ��� ����   ��� ����   ���� ����   ��� ����   ��� �� ��    ��� ��!�� !  �� ��"�� "  ��� ������#$��
�� .aevtodocnull  �    alis�� 0 droppedfile droppedFile��  # ������ 0 droppedfile droppedFile�� "0 userdroppedfile userDroppedFile$ ���� 0 	mainmagic 	MainMagic�� eE�O*��l+  � ��-����%&���� 0 	mainmagic 	MainMagic�� ��'�� '  ������ "0 userdroppedfile userDroppedFile�� 0 droppedfile droppedFile��  % 8���������������������������������������������������������������������������������������������������� "0 userdroppedfile userDroppedFile�� 0 droppedfile droppedFile�� 0 itunesversion itunesVersion�� 40 itunesversionissupported itunesVersionIsSupported�� 20 versioncheckloopcounter versionCheckLoopCounter�� 0 	usersfile 	usersFile�� 0 headers  �� 40 headerremoverloopcounter headerRemoverLoopCounter�� 0 	usercount 	userCount�� 80 appleidemailcolumncontents appleIdEmailColumnContents�� >0 appleidpasswordcolumncontents appleIdPasswordColumnContents�� L0 $appleidsecretquestion1columncontents $appleIdSecretQuestion1ColumnContents�� H0 "appleidsecretanswer1columncontents "appleIdSecretAnswer1ColumnContents�� L0 $appleidsecretquestion2columncontents $appleIdSecretQuestion2ColumnContents�� H0 "appleidsecretanswer2columncontents "appleIdSecretAnswer2ColumnContents�� L0 $appleidsecretquestion3columncontents $appleIdSecretQuestion3ColumnContents�� H0 "appleidsecretanswer3columncontents "appleIdSecretAnswer3ColumnContents�� 80 monthofbirthcolumncontents monthOfBirthColumnContents�� 40 dayofbirthcolumncontents dayOfBirthColumnContents�� 60 yearofbirthcolumncontents yearOfBirthColumnContents�� :0 userfirstnamecolumncontents userFirstNameColumnContents�� 80 userlastnamecolumncontents userLastNameColumnContents�� :0 addressstreetcolumncontents addressStreetColumnContents�� 60 addresscitycolumncontents addressCityColumnContents�� 80 addressstatecolumncontents addressStateColumnContents�� 40 addresszipcolumncontents addressZipColumnContents�� :0 phoneareacodecolumncontents phoneAreaCodeColumnContents�� 60 phonenumbercolumncontents phoneNumberColumnContents�� :0 appleidrescuecolumncontents appleIdRescueColumnContents�� :0 accountstatuscolumncontents accountStatusColumnContents�� 0 scriptrunmode scriptRunMode�� <0 accountstatussetbycurrentrun accountStatusSetByCurrentRun�� &0 currentusernumber currentUserNumber�� 0 loopcounter loopCounter�� 0 appleidemail appleIdEmail�� "0 appleidpassword appleIdPassword�� 00 appleidsecretquestion1 appleIdSecretQuestion1�� ,0 appleidsecretanswer1 appleIdSecretAnswer1�� 00 appleidsecretquestion2 appleIdSecretQuestion2�� ,0 appleidsecretanswer2 appleIdSecretAnswer2�� 00 appleidsecretquestion3 appleIdSecretQuestion3�� ,0 appleidsecretanswer3 appleIdSecretAnswer3� 0 rescueemail rescueEmail� 0 monthofbirth monthOfBirth� 0 
dayofbirth 
dayOfBirth� 0 yearofbirth yearOfBirth� 0 userfirstname userFirstName� 0 userlastname userLastName� 0 addressstreet addressStreet� 0 addresscity addressCity� 0 addressstate addressState� 0 
addresszip 
addressZip� 0 phoneareacode phoneAreaCode� 0 phonenumber phoneNumber� 0 accountstatus accountStatus� 0 	lcdstatus 	lcdStatus& i@���|�~���������������������������������������	�����%�<��\�v����������'/>JS_k������������������
� 
vers
� 
cobj
� .corecnte****       ****
� 
ret 
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit
� 
ctxt� 0 scriptaction scriptAction� 0 loadusersfile loadUsersFile� � � � � 	� 
� � � � � � � � � � � 
� .sysodelanull��� ��� nmbr� ,0 signoutitunesaccount SignOutItunesAccount� 0 installibooks installIbooks� x� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd�  0 checkforerrors CheckForErrors� :0 clickcreatenewappleidbutton ClickCreateNewAppleIDButton� 00 clickcontinueonpageone ClickContinueOnPageOne� 0 agreetoterms AgreeToTerms
� .ascrcmnt****      � ****� .0 provideappleiddetails ProvideAppleIdDetails� .0 providepaymentdetails ProvidePaymentDetails
� .miscactvnull��� ��� null�����,E�OfE�O .kb  �-j kh b  �/�  
eE�OY h[OY��O�f  )�%�%�%�%�%�%�%���lv��� �,a &E` Y hO_ a  �*��l+ E�O_ a  qjvE�O Gk��-j kh �a %E�O��/�k/��/FO��/[�\[Zl\Z��/�-j 2��/FOP[OY��O��k/�-j E�O��k/E�O��l/E�O��m/E�O���/E�O��a /E�O��a /E�O��a /E�O��a /E^ O��a /E^ O��a /E^ O��a /E^ O��a /E^ O��a /E^ O��a /E^ O��a  /E^ O��a !/E^ O��a "/E^ O��a #/E^ O��a $/E^ O��a %/E^ O��a &/E^ Oa '�%�%a (%�a )a *a +mvl �,a &E^ O] a ,  fEc  Y hO] a -  eEc  Y hO] a .  a /E` Y hO_ a 0�jvE^ OjE^  Ok�kh !]  kE^  O��] !/E^ "O��] !/E^ #O��] !/E^ $O��] !/E^ %O��] !/E^ &O��] !/E^ 'O��] !/E^ (O] �] !/E^ )O] �] !/E^ *O] �] !/E^ +O] �] !/E^ ,O] �] !/E^ -O] �] !/E^ .O] �] !/E^ /O] �] !/E^ 0O] �] !/E^ 1O] �] !/E^ 2O] �] !/E^ 3O] �] !/E^ 4O] �] !/E^ 5O] �] !/E^ 6Ob  j 1O*j+ 2O*j+ 3Okj 1O FhZ*a 4b  �a 5a 6a 7a 8a 9a + :E^ 7O] 7a ;  Y hOb  j 1[OY��O*j+ <O_ a =  Y hO*j+ >O*j+ ?O*j+ <O_ a @  Y hO*j+ AO*j+ <O_ a B  Y hOa C] "lvj DO*] "] #] $] %] &] '] (] )] *] +] ,] -a + EO*j+ <O_ a F  Y hO*] .] /] 0] 1] 2] 3] 4] 5a + GO FhZ*a Hb  �a Ia 6a Ja 8a Ka + :E^ 7O] 7a L  Y hOb  j 1[OY��O*j+ <O_ a M  Y hO_ a N  ] a O%E^ Oa P] �] !/FY hO_ a Q  %] a R%E^ Oa S] �] !/FOa TE` Y hO_ a U  Y hOP[OY�O*j VO_ a W  a X�a Ykvl Y hO_ a Z  a [�a \kvl Y hO_ a ]  a ^�a _kvl Y hO�f  U_ a `  Ga a�%a b%�a ca dlv�a e� �,a f   b  �%Ec  Oa g�%a h%j Y hY hY hY hY hY hOP� ���()�� 0 loadusersfile loadUsersFile� �*� *  ��� "0 userdroppedfile userDroppedFile� 0 
chosenfile 
chosenFile�  ( ���~�}�|�{�z�y�x�w�v�u�t� "0 userdroppedfile userDroppedFile� 0 
chosenfile 
chosenFile�~ 0 readfile readFile�} *0 listofcolumnstofind listOfColumnsToFind�| 0 findresults findResults�{ .0 columnfindloopcounter columnFindLoopCounter�z 20 columnverifyloopcounter columnVerifyLoopCounter�y 20 missingcolumnresolution missingColumnResolution�x 0 
columnlist 
columnList�w :0 createcolumnlistloopcounter createColumnListLoopCounter�v 0 
listchoice 
listChoice�u 0 filecontents fileContents�t :0 contentretrievalloopcounter contentRetrievalLoopCounter) 9$�s�rCGKOSW[_cgkosw{������q�p�o��n�m���l�k!$�j�i�h37Fi�g���f��e�d���c��s 0 readcsvfile ReadCsvFile�r 0 parsecsvfile ParseCsvFile�q 
�p 
cobj
�o .corecnte****       ****�n 0 
findcolumn 
findColumn�m 0 scriptaction scriptAction
�l 
ret 
�k 
btns
�j .sysodlogaskr        TEXT
�i 
bhit
�h 
ctxt
�g 
prmp
�f .gtqpchltns    @   @ ns  
�e 
cwor
�d 
nmbr�c &0 getcolumncontents getColumnContents��f  �E�Y hO*�k+ E�O*�k+ E�O�������������a a a a a a a a a vE�OjvE�O 1k�a -j kh �a %E�O*�a �/�l+ �a �/F[OY��Ok�a -j kh _ a   �a �/a k/a   �a �/a l/�a �/FY �a  �a �/%a !%_ "%_ "%a #%a $a %a &lvl 'a (,a )&E�O�a *  a +E` Y hO�a ,  ujvE�O /k�a -j kh 	��a )&a -%�a �/a k/%%E�[OY��O�a .a /�a �/%a 0%l 1E�O�f  a 2E` Y �a 3k/a 4&�a �/FY hOPY [OY��O_ a 5  <jvE�O 1k�a -j kh �a 6%E�O*�a �/�l+ 7�a �/F[OY��Y hO_ a 8  �Y hOP� �b	 �a�`+,�_�b 0 
findcolumn 
findColumn�a �^-�^ -  �]�\�] 0 columntofind columnToFind�\ 0 filecontents fileContents�`  + �[�Z�[ 0 columntofind columnToFind�Z 0 filecontents fileContents, 	�Y	'	;	O	c	w	�	�	�	�	�	�


+
?
S
g
{
�
��Y 0 
findinlist 
findInList�_��  *b  	�l+ Y hO��  *b  
�l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO��  *b  �l+ Y hO�a   *b  �l+ Y hO�a   *b  �l+ Y hO�a   *b  �l+ Y hO�a   *b  �l+ Y hO�a   *b  �l+ Y hO�a   *b  �l+ Y hOP� �X
��W�V./�U�X 0 
findinlist 
findInList�W �T0�T 0  �S�R�S 0 	matchlist 	matchList�R 0 listcontents listContents�V  . �Q�P�O�N�M�L�Q 0 	matchlist 	matchList�P 0 listcontents listContents�O 0 	findstate 	findState�N 0 findlocation findLocation�M .0 columnitemloopcounter columnItemLoopCounter�L 20 testformatchloopcounter testForMatchLoopCounter/ 
��K�J
�
��I�H�G�F�E
�K 
cobj
�J .corecnte****       ****
�I 
list�H  �G  
�F 
btns
�E .sysodlogaskr        TEXT�U y h�E�OjE�O Rk��k/�-j kh  .k�j kh ��k/�/��/  �E�O�E�OY h[OY��O��  Y h[OY��O��lv�&W X  ���l Oj� �D%�C�B12�A�D &0 getcolumncontents getColumnContents�C �@3�@ 3  �?�>�? 0 columntoget columnToGet�> 0 filecontents fileContents�B  1 �=�<�;�:�9�= 0 columntoget columnToGet�< 0 filecontents fileContents�;  0 columncontents columnContents�: 0 loopcounter loopCounter�9 0 theerror theError2 �8�7�6�5R�4W�3�2�1�0�/
�8 
cobj
�7 .corecnte****       ****�6 0 theerror theError�5  
�4 
btns
�3 
dflt�2 
�1 .sysodisAaleR        TEXT
�0 
errn�/���A MjvE�O Ck��-j kh �k%E�O ��/�/��/FW X  �%���k� 	O)��lh[OY��O�� �.o�-�,45�+�. 0 readcsvfile ReadCsvFile�- �*6�* 6  �)�) 0 
chosenfile 
chosenFile�,  4 �(�'�&�%�$�#�( 0 
chosenfile 
chosenFile�' 
0 method  �& 0 
fileopened 
fileOpened�% 0 
testresult 
testResult�$ 0 openfile openFile�# 0 filecontents fileContents5 |���"�!�� �����������������"  �!  
�  .sysostdfalis    ��� null
� .sysonfo4asfe        file
� 
pnam
� 
cha 
� 
nmxt
� 
cobj
� .corecnte****       ****
� 
TEXT� 0 testcsvfile TestCsvFile
� savoyes 
� .rdwropenshor       file
� .rdwrread****        ****
� .rdwrclosnull���     ****
� 
btns
� .sysodlogaskr        TEXT�+ ��E�O ��  �E�Y hW X  hO i��  *j E�Y hO�j �,[�\[Zk\Z�j �,�-j l'2�&E�O*�k+ E�O��  �j E�O�j E�O�j O�Y hOPW X  �j Oa a a l Ojv� ����78�� 0 testcsvfile TestCsvFile� �9� 9  �� 0 
chosenfile 
chosenFile�  7 ��
� 0 
chosenfile 
chosenFile�
  0 chosenfilekind chosenFileKind8 �	�����&�)��
�	 .sysonfo4asfe        file
� 
utid
� savoyes 
� .sysosigtsirr   ��� null
� 
siln
� 
cwor
� 
btns
� .sysodlogaskr        TEXT
� savono  � 8�j  �,E�O��  �Y $��  �Y �*j �,�k/%�%��l O�� � 9����:;���  0 parsecsvfile ParseCsvFile�� ��<�� <  ���� 0 filecontents fileContents��  : ������������ 0 filecontents fileContents�� (0 parsedfilecontents parsedFileContents�� $0 delimitersoncall delimitersOnCall�� 0 	linecount 	lineCount�� 0 loopcounter loopCounter; ����Y���������������������
�� 
ascr
�� 
txdl
�� 
cpar
�� .corecnte****       ****
�� 
citm
�� 
cobj��  ��  
�� 
ret 
�� 
btns
�� .sysodlogaskr        TEXT�� ` IjvE�O��,E�O���,FO��-j E�O k�kh �k%E�O��/�-��/F[OY��O���,FO�W X  ��%�%�%��l O�� �������=>���� 0 
verifypage 
verifyPage�� ��?�� ?  ������������ .0 expectedelementstring expectedElementString�� 20 expectedelementlocation expectedElementLocation�� ,0 expectedelementcount expectedElementCount�� *0 verificationtimeout verificationTimeout�� 0 requiresgroup requiresGroup��  = ������������������������ .0 expectedelementstring expectedElementString�� 20 expectedelementlocation expectedElementLocation�� ,0 expectedelementcount expectedElementCount�� *0 verificationtimeout verificationTimeout�� 0 requiresgroup requiresGroup�� 0 elementcount elementCount�� (0 timeoutloopcounter timeoutLoopCounter�� 0 
everytitle 
everyTitle�� 0 elementtotest elementToTest�� &0 elementproperties elementProperties�� 0 elementstring elementString> ���������������������)������>�������������
�� 
pcap
�� 
cwin
�� 
scra
�� 
desc
�� .sysodelanull��� ��� nmbr�� �� �� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd
�� 
splg
�� 
uiel
�� .corecnte****       ****
�� 
sgrp
�� 
pALL
�� 
titl��  ��  ��-�) &h*��/�k/�k/�,� b  b   j [OY��O)�b  ��kb  ! �b  ��+ O*��/�k/a k/�k/a k/a -j E�O �k�kh ��  	a Y hO�j  �E�Y hO�� �E�Y hO��  }jvE�O� '*�a /�k/a k/�k/a k/a l/a �/E�Y *�a /�k/a k/�k/a k/a �/E�O�a ,E�O �a ,E�OPW X  hO��  	a Y hY hOkj [OY�GU� �������@A����  0 checkforerrors CheckForErrors��  ��  @ ������ 0 erroraction errorAction�� 0 loopcounter loopCounterA &������������ +��;EMprx�}����������� 0 scriptaction scriptAction� 0 	errorlist 	errorList
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit
� 
TEXT
� 
cobj
� .corecnte****       ****
� 
ret �� ���  ��jv ������mv��� �,�&E�O��  �E�Oa Y hO�a   � �k�a -j kh �a   a E�Oa Y }a �%a %�a -j %a %_ %_ %�a �/%_ %_ %a %�a a lv�a � �,�&E�O�a   *a  _ %a !%�a "a #a $mv�a %� �,�&E�Y h[OY�jOjvE�O�E�Y hOPY hY h� ����BC�� ,0 signoutitunesaccount SignOutItunesAccount�  �  B ���� 0 	storemenu 	storeMenu�  0 storemenuitems storeMenuItems� 0 loopcounter loopCounterC #��i����	���(��"��:4/MGB`ZU����w�� 0 scriptaction scriptAction
� .GURLGURLnull��� ��� ctxt
� .sysodelanull��� ��� nmbr
� 
pcap
� 
cwin
� 
scra
� 
desc
� 
mbar
� 
mbri
� 
menE
� .coredoexnull���     ****
� 
menI
� 
titl
� 
cobj
� .corecnte****       ****
� .prcsclicnull��� ��� uiel� ��  �� �� b  j UOb  j O &h*��/�k/�k/�,� b  b   j [OY��O*��/�k/��/a a /j  *�a /�k/�a /a a /E�Y 9*�a /�k/�a /a a /j  *�a /�k/�a /a a /E�Y hO�a -a ,E�UO 8k�a -j kh �a �/a    � �a a !/j "UY h[OY��Y h� ����DE�� 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd� �F� F  ��������� 0 	matchtype 	matchType� 0 stringtomatch stringToMatch� 0 matchduration matchDuration� 0 checkduration checkDuration�  0 checkfrequency checkFrequency�  D ������������� 0 	matchtype 	matchType� 0 stringtomatch stringToMatch� 0 matchduration matchDuration� 0 checkduration checkDuration��  0 checkfrequency checkFrequency�� 0 loopcounter loopCounter�� 0 
matchedfor 
matchedFor�� 0 ituneslcdtext itunesLcdTextE ��������������������5��
�� 
pcap
�� 
cwin
�� 
scra
�� 
sttx
�� 
valL
�� 
cobj��  ��  
�� .sysodelanull��� ��� nmbr� �jE�OjE�OjvE�O �hZ�kE�O���  �Y hO��%E�O� " *��/�k/�k/�k/�,��/FW X 
 hUO��  ��/�  
�kE�Y jE�Y hO��  ��/� 
�kE�Y jE�Y hO�� �Y hO�j [OY�kOP� ��F����GH��� 0 installibooks installIbooks��  ��  G �~�}�|�{�z�~ $0 pageverification pageVerification�} 0 
freebutton 
freeButton�| .0 freebuttondescription freeButtonDescription�{ D0  freebuttondescriptionissupported  freeButtonDescriptionIsSupported�z 80 freebuttoncheckloopcounter freeButtonCheckLoopCounterH  �y�xSe�wvz�v�u�t���s��r��q�p�o�n�m�l�k�j�i�h��g�f��
�y .sysodelanull��� ��� nmbr�x 0 scriptaction scriptAction
�w .GURLGURLnull��� ��� ctxt�v *�u �t 0 
verifypage 
verifyPage
�s 
pcap
�r 
cwin
�q 
splg
�p 
scra
�o 
uiel
�n 
sgrp
�m 
butT
�l 
desc
�k 
cobj
�j .corecnte****       ****
�i .prcsclicnull��� ��� uiel�h 0 	errorlist 	errorList�g  �f  �b  b   j  O��  �� b  j UOb  b   j  O*���b  e�+ 	E�O��  �b  b   j  O� � �*��/��/a k/a k/a k/a m/a k/E�O�a ,E�OfE�O 2kb  a -j kh b  a �/�  
eE�OY h[OY��O�e  
�j Y _ a %E` OPW X  _ a %E` UOa E�Y _ a %E` OPY h  �e�d�cIJ�b�e :0 clickcreatenewappleidbutton ClickCreateNewAppleIDButton�d  �c  I  J �a�`$d�_E�^�]�\�[GV�ZP�Y�X�W�V\b
�a .sysodelanull��� ��� nmbr�` 0 scriptaction scriptAction
�_ 
pcap
�^ 
cwin
�] 
sttx�\ 
�[ 
valL
�Z 
butT
�Y .prcsclicnull��� ��� uiel�X  �W  �V 0 	errorlist 	errorList�b cb  b   j  O��  M� E*��/�k/��/�,�  ) *��/�k/��/j W X  _ a %E` Y _ a %E` UY h �Ur�T�SKL�R�U 00 clickcontinueonpageone ClickContinueOnPageOne�T  �S  K �Q�P�O�N�Q 40 curexpectedelementstring curExpectedElementString�P 80 curexpectedelementlocation curExpectedElementLocation�O $0 pageverification pageVerification�N 0 
contbutton 
contButtonL �M�L������K�J�I���H��G�F�E�D�C��B��A�@��?�>�M 
�L .sysodelanull��� ��� nmbr�K �J �I 0 
verifypage 
verifyPage
�H 
pcap
�G 
cwin
�F 
splg
�E 
scra
�D 
uiel
�C 
butT
�B 
titl
�A .prcsclicnull��� ��� uiel�@ 0 	errorlist 	errorList�?  �>  �R �b  b   �j O�E�O�E�Ob   �  �E�O�E�Y hO*���b  f�+ 	E�O��  c G� ?*��/�k/�k/a k/a k/a a /E�O�a ,a   
�j Y _ a %E` UW X  _ a %E` Oa E�Y _ a %E`  �=�<�;MN�:�= 0 agreetoterms AgreeToTerms�<  �;  M �9�8�7�6�5�4�3�2�9 40 curexpectedelementstring curExpectedElementString�8 80 curexpectedelementlocation curExpectedElementLocation�7 $0 pageverification pageVerification�6 0 curcheckbox curCheckBox�5  0 curcheckboxnum curCheckBoxNum�4 0 agreecheckbox agreeCheckbox�3 (0 buttonverification buttonVerification�2 0 agreebutton agreeButtonN &�1/5?FK�0�/�.n/���-��,�+�*�)�(�'�&�%�$�#�"�!�� ���� &,
�1 .sysodelanull��� ��� nmbr�0 �/ �. 0 
verifypage 
verifyPage
�- 
pcap
�, 
cwin
�+ 
splg
�* 
scra
�) 
uiel
�( 
sgrp�' 
�& 
chbx
�% 
titl
�$ .prcsclicnull��� ��� uiel�#  �"  �! 0 	errorlist 	errorList�   0 checkforerrors CheckForErrors� 0 scriptaction scriptAction
� 
butT�:>b  b   j  O�E�O�E�Ob   �  �E�O�E�Y hO*���b  f�+ E�O��  �� �kE�O�E�Ob   �  �E�O�E�Y hO <*��/�k/a k/a k/a k/a l/a a /a k/E�O�a ,E�O�j W X  _ a %E` Okj  O)j+ O_ a   ` J*�a /�k/a k/a k/a k/a  a !/E�O�a ,E�O�a "  
�j Y _ a #%E` W X  _ a $%E` Y _ a %%E` OPUY hOP OO P��P Q��Q R��R S��S T�UT ��V
� 
pcapV �WW  i T u n e s
� 
cwinU �XX  i T u n e s
� 
splg� 
� 
scra� 
� 
uiel� 
� 
sgrp�  �^��YZ�� 0 fillinfield FillInField� �[� [  ���� 0 	fieldname 	fieldName� 0 thefield theField� 0 thevalue theValue�  Y ��
�	� 0 	fieldname 	fieldName�
 0 thefield theField�	 0 thevalue theValueZ 
����������
� 
focu
� 
valL� 0 	errorlist 	errorList�  �  � ;� 7 &e��,FO���,FO��,� ��%�%%E�Y hW X  ��%�%%E�U ����\]� � "0 fillinkeystroke FillInKeystroke� ��^�� ^  �������� 0 	fieldname 	fieldName�� 0 thefield theField�� 0 thevalue theValue�  \ �������� 0 	fieldname 	fieldName�� 0 thefield theField�� 0 thevalue theValue] ������������������
�� 
pcap
�� 
pisf
�� 
focu
�� .prcskprsnull���     ctxt��  ��  �� 0 	errorlist 	errorList�  .� *e*��/�,FO e��,FO�j W X  ��%�%%E�U �������_`���� 0 fillinpopup FillInPopup�� ��a�� a  ���������� 0 	fieldname 	fieldName�� 0 thefield theField�� 0 thevalue theValue�� 0 maximum  ��  _ ������������ 0 	fieldname 	fieldName�� 0 thefield theField�� 0 thevalue theValue�� 0 maximum  �� 0 loopcounter loopCounter` O�����������������)��>@����KM
�� 
pcap
�� 
pisf
�� 
valL
�� 
focu
�� .sysodelanull��� ��� nmbr
�� .prcskprsnull���     ctxt�� }
�� .prcskcodnull���     ****�� 0 	errorlist 	errorList��  ��  �� {� we*��/�,FO Y =k�kh ��,�  Y hOe��,FO�j O�j 	O�j j 	O�j 	[OY��O��,� ��%�%%E�Y hW X  �a �%a %%E�U ��U����bc���� 0 	clickthis 	ClickThis�� ��d�� d  ������ 0 	fieldname 	fieldName�� 0 thefield theField��  b ������ 0 	fieldname 	fieldName�� 0 thefield theFieldc m��������ik
�� .prcsclicnull��� ��� uiel��  ��  �� 0 	errorlist 	errorList�� �  
�j W X  ��%�%%E�U ��z����ef���� .0 provideappleiddetails ProvideAppleIdDetails�� ��g�� g  ��������������������� 0 appleidemail appleIdEmail�� "0 appleidpassword appleIdPassword�� 00 appleidsecretquestion1 appleIdSecretQuestion1�� ,0 appleidsecretanswer1 appleIdSecretAnswer1�� 00 appleidsecretquestion2 appleIdSecretQuestion2�� ,0 appleidsecretanswer2 appleIdSecretAnswer2�� 00 appleidsecretquestion3 appleIdSecretQuestion3� ,0 appleidsecretanswer3 appleIdSecretAnswer3� 0 rescueemail rescueEmail�  0 userbirthmonth userBirthMonth� 0 userbirthday userBirthDay� 0 userbirthyear userBirthYear��  e ������������������� 0 appleidemail appleIdEmail� "0 appleidpassword appleIdPassword� 00 appleidsecretquestion1 appleIdSecretQuestion1� ,0 appleidsecretanswer1 appleIdSecretAnswer1� 00 appleidsecretquestion2 appleIdSecretQuestion2� ,0 appleidsecretanswer2 appleIdSecretAnswer2� 00 appleidsecretquestion3 appleIdSecretQuestion3� ,0 appleidsecretanswer3 appleIdSecretAnswer3� 0 rescueemail rescueEmail�  0 userbirthmonth userBirthMonth� 0 userbirthday userBirthDay� 0 userbirthyear userBirthYear� $0 pageverification pageVerification� 0 curmonthpos curMonthPos� 0 	curdaypos 	curDayPos� "0 releasecheckbox releaseCheckbox� 0 newscheckbox newsCheckbox� 0 dryrunsucess dryRunSucessf D���������������������*���A[�r����������6����j�z������������������� 0 scriptaction scriptAction� � 0 
verifypage 
verifyPage
� 
pcap
� 
cwin
� 
splg
� 
scra
� 
uiel
� 
sgrp
� 
txtf� 0 fillinfield FillInField� "0 fillinkeystroke FillInKeystroke� � 
� 
popB� 0 fillinpopup FillInPopup� � � � � � � 
� 
chbx� 
� 
valL� 0 	clickthis 	ClickThis�  0 checkforerrors CheckForErrors
� 
btns
� .sysodlogaskr        TEXT
� 
bhit
� 
ctxt
� 
butT
� .prcsclicnull��� ��� uiel� 0 	errorlist 	errorList��0�� **��jb  b   f�+ E�O�� ���*��/�k/�k/�k/�k/�l/Ec  0O) *�b  0�l/a k/�m+ UO) *a b  0�m/�l/a k/�m+ UO) *a b  0�m/�a /a k/�m+ UO) "*a b  0�a /�k/a k/�a a + UO) *a b  0�a /�l/a k/�m+ UO) "*a b  0�a /�k/a k/�a a + UO) *a b  0�a /�l/a k/�m+ UO) "*a b  0�a /�k/a k/�a a + UO) *a  b  0�a /�l/a k/�m+ UO) *a !b  0�a "/a k/�m+ UOkE�OlE�Ob   a #  lE�OkE�Y hOb   a $  lE�OkE�Y hO) "*a %b  0�a &/�/a k/�a 'a + UO) "*a (b  0�a &/�/a k/�a )a + UO) *a *b  0�a &/�m/a k/�m+ UOb  0�a +/a ,k/E�Ob  0�a -/a ,k/E^ O�a .,k  ) *a /�l+ 0UY hO] a .,k  ) *a 1] l+ 0UY hO)j+ 2Ob  e  Na 3a 4a 5a 6lvl 7a 8,a 9&E^ O] a :  !a ;a 4a <a =lvl 7a 8,a 9&E�Y hY hO�a >   *�a ?/�k/�k/�k/�k/a @m/j AY hUY _ Ba C%E` BY h	 ����hi�� .0 providepaymentdetails ProvidePaymentDetails� �j� j  ���~�}�|�{�z�y� 0 userfirstname userFirstName� 0 userlastname userLastName�~ 0 addressstreet addressStreet�} 0 addresscity addressCity�| 0 addressstate addressState�{ 0 
addresszip 
addressZip�z 0 phoneareacode phoneAreaCode�y 0 phonenumber phoneNumber�  h �x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�x 0 userfirstname userFirstName�w 0 userlastname userLastName�v 0 addressstreet addressStreet�u 0 addresscity addressCity�t 0 addressstate addressState�s 0 
addresszip 
addressZip�r 0 phoneareacode phoneAreaCode�q 0 phonenumber phoneNumber�p $0 pageverification pageVerification�o 0 	lcdstatus 	lcdStatus�n $0 curcityfieldname curCityFieldName�m "0 curcityfieldpos curCityFieldPos�l  0 enableprovince enableProvince�k 00 curpostalcodefieldname curPostalCodeFieldName�j .0 curpostalcodefieldpos curPostalCodeFieldPos�i 0 dryrunsucess dryRunSucess�h 0 dryrunchoice dryRunChoice�g &0 currentusernumber currentUserNumberi M�f
�e�d-:�c�b5�aIX�``lq�_�^y�]�\��[�Z�Y�X�W��V�U�T�S��R�Q���P'.�OPf������N"�MF�LLO�K�J�IVagj��H����������f 0 scriptaction scriptAction�e �d 0 
verifypage 
verifyPage
�c 
rgrp
�b 
radB
�a .prcsclicnull��� ��� uiel�` �_ �^ 40 getitunesstatusuntilllcd GetItunesStatusUntillLcd
�] .sysodelanull��� ��� nmbr
�\ 
pcap
�[ 
pisf
�Z 
sgrp�Y 
�X 
popB
�W 
focu
�V .prcskprsnull���     ctxt�U  �T  �S 0 	errorlist 	errorList
�R 
txtf
�Q 
valL�P 	�O 
�N �M  0 checkforerrors CheckForErrors
�L 
btns
�K .sysodlogaskr        TEXT
�J 
bhit
�I 
ctxt
�H 
butT���� �*��jb  b   f�+ E�O��  � b  0�k/��/j UY hO�Ec  O JhZ*�b  ��b  kb  ! a b  a a + E�O�a   Y hOb  j [OY��O�[ 8e*a a /a ,FOeb  0a a /a k/a k/a ,FOa j W X   _ !a "%E` !O !�b  0a a /a k/a #k/a $,FW X   _ !a %%�%E` !O !�b  0a a /a l/a #k/a $,FW X   _ !a &%�%E` !O !�b  0a a '/a k/a #k/a $,FW X   _ !a (%�%E` !OkE�OkE�Ob   a )  a *E�OlE�Y hO !�b  0a a +/a �/a #�/a $,FW X   _ !a ,%�%E` !OeE�Ob   a -  fE�Y hO�e  N 6e*a a ./a ,FOeb  0a a +/a l/a k/a ,FO�j W X   _ !a /%�%E` !Y hOkE�OmE�Ob   a 0  a 1E�OkE�Y hO !�b  0a a +/a �/a #�/a $,FW X   _ !a 2%�%E` !O !�b  0a a 3/a k/a #k/a $,FW X   _ !a 4%�%E` !O !�b  0a a 3/a l/a #k/a $,FW X   _ !a 5%�%E` !O)j+ 6Ob  e  Ja 7a 8a 9a :lvl ;a <,a =&E�O�a >  !a ?a 8a @a Alvl ;a <,a =&E�Y hY hOb  f  7�a B  + b  0a Ca D/j W X   _ !a E%E` !Y hY Sa Fa 8a Ga Ha Imvl ;a <,a =&E^ O] a J  
a KE�Y hO] a L  jE^ OfEc  Y hOPUY h
 �Gk�F�Elm�D
�G .aevtoappnull  �   � ****k k     nn  Zoo  ipp  zqq �rr ss !�C�C  �F  �E  l  m �B n�A�@�?�>�=�B 0 	errorlist 	errorList�A 0 scriptaction scriptAction�@ &0 currentusernumber currentUserNumber�? "0 userdroppedfile userDroppedFile�> 0 droppedfile droppedFile�= 0 	mainmagic 	MainMagic�D jvE�O�E�OjE�OfE�O�E�O*��l+  �<�;�<  �;  �  
� boovfals�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �   ascr  ��ޭ