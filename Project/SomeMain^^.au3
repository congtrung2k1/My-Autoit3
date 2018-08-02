#NoTrayIcon
#include <WindowsConstants.au3>
#include <WinAPI.au3>
#include <Misc.au3>

;=======================================Chương trình=================================
_Start()

;----------------------------Cảnh báo-------------------------------
Func _Start()
   $msg = MsgBox(1,"Cảnh báo !","Đảm bảo xung quanh không có ai nhé :3" & @CRLF & "Nhấn nút Reset nếu có trường hợp khẩn cấp :v (chỉ có một phút thôi)" & @CRLF & "Cắm tai nghe nữa ^^")
   if ($msg = 1) Then
	  _Close()
	  _CreatFolder()
	  _Main()

	  $Stime = TimerInit()
	  While 1
		 _Close()
		 $Etime = TimerDiff($Stime)
		 if $Etime >= 60000 then Exit
	  WEnd
   Else
	  Exit
   EndIf
EndFunc

;-----------------------------Khóa máy tính--------------------------
Func _Close()
   BlockInput(1)
   _WinAPI_ShowCursor(false)
   If ProcessExists("taskmgr.exe") Then ProcessClose("taskmgr.exe")
   If ProcessExists("cmd.exe") Then	ProcessClose("cmd.exe")
   If ProcessExists("UniKeyNT.exe") Then ProcessClose("UniKeyNT.exe")
EndFunc

;-------------------------------Tạo file-----------------------------
Func _CreatFolder()
   #cs
   ;------------List----------------------
   Local $install[16]
   $install[-1] = "NewData\image\background.jpg"
   $install[0] = "NewData\image\favicon.ico"
   $install[1] = "NewData\music\I-Do-911.mp3"
   $install[2] = "NewData\music\NgungLamBan.mp3"
   $install[3] = "NewData\music\Until-You.mp3"
   $install[4] = "NewData\renxi\default.css"
   $install[5] = "NewData\renxi\functions.js"
   $install[6] = "NewData\renxi\jquery.min.js"
   $install[7] = "NewData\renxi\jscex.min.js"
   $install[8] = "NewData\renxi\jscex-async.min.js"
   $install[9] = "NewData\renxi\jscex-async-powerpack.min.js"
   $install[10] = "NewData\renxi\jscex-builderbase.min.js"
   $install[11] = "NewData\renxi\jscex-jit.js"
   $install[12] = "NewData\renxi\jscex-parser.js"
   $install[13] = "NewData\renxi\love.js"
   $install[14] = "NewData\index.html"
   ;---------------------------------------
   #ce

   DirCreate(@DesktopDir & "\NewData")
   DirCreate(@DesktopDir & "\NewData\image")
   DirCreate(@DesktopDir & "\NewData\music")
   DirCreate(@DesktopDir & "\NewData\renxi")

   FileInstall("NewData\image\background.jpg", @DesktopDir & '\' & "NewData\image\background.jpg")
   FileInstall("NewData\image\favicon.ico", @DesktopDir & '\' & "NewData\image\favicon.ico")
   ProgressSet(10)
   FileInstall("NewData\music\I-Do-911.mp3", @DesktopDir & '\' & "NewData\music\I-Do-911.mp3")
   ProgressSet(20)
   FileInstall("NewData\music\NgungLamBan.mp3", @DesktopDir & '\' & "NewData\music\NgungLamBan.mp3")
   ProgressSet(30)
   FileInstall("NewData\music\Until-You.mp3", @DesktopDir & '\' & "NewData\music\Until-You.mp3")
   ProgressSet(40)
   FileInstall("NewData\renxi\default.css", @DesktopDir & '\' & "NewData\renxi\default.css")
   ProgressSet(50)
   FileInstall("NewData\renxi\functions.js", @DesktopDir & '\' & "NewData\renxi\functions.js")
   ProgressSet(60)
   FileInstall("NewData\renxi\jquery.min.js", @DesktopDir & '\' & "NewData\renxi\jquery.min.js")
   ProgressSet(70)
   FileInstall("NewData\renxi\jscex.min.js", @DesktopDir & '\' & "NewData\renxi\jscex.min.js")
   ProgressSet(80)
   FileInstall("NewData\renxi\jscex-async.min.js", @DesktopDir & '\' & "NewData\renxi\jscex-async.min.js")
   ProgressSet(90)
   FileInstall("NewData\renxi\jscex-async-powerpack.min.js", @DesktopDir & '\' & "NewData\renxi\jscex-async-powerpack.min.js")
   ProgressSet(100)
   FileInstall("NewData\renxi\jscex-builderbase.min.js", @DesktopDir & '\' & "NewData\renxi\jscex-builderbase.min.js")
   ProgressSet(110)
   FileInstall("NewData\renxi\jscex-jit.js", @DesktopDir & '\' & "NewData\renxi\jscex-jit.js")
   ProgressSet(120)
   FileInstall("NewData\renxi\jscex-parser.js", @DesktopDir & '\' & "NewData\renxi\jscex-parser.js")
   ProgressSet(130)
   FileInstall("NewData\renxi\love.js", @DesktopDir & '\' & "NewData\renxi\love.js")
   ProgressSet(140)
   FileInstall("NewData\index.html", @DesktopDir & '\' & "NewData\index.html")
   ProgressSet(150)
EndFunc

;-------------------------------Chạy web-----------------------------
Func _Main()
   ;Mở trang web
   send("#r")
   WinWait("Run")
   Send("cmd{Enter}")
   sleep(2000)
   Send("cd Desktop\NewData{Enter}")
   Send("start index.html{Enter}")

   ;Đợi web tải
   Local $TitleName = "For my big big WORLD :3"
   WinWaitActive($TitleName)
   Send("{F11}")
   Sleep(3000)

   _PCClick()   ;Click chuột
EndFunc

;--------------------------Click chiếm chuột----------------------
Func _PCCLick()
   Local $x,$y = 350
   if @DesktopWidth < 1280 then
	  $x = 530
   ElseIF @DesktopWidth >= 1280 then
	  $x = int(@DesktopWidth/2)-20
   EndIf

   MouseClick("left",$x,$y)
   MouseMove(52,718)
EndFunc
#ce

#cs
;----------------------------Click không chiếm chuột--------------
Func _PCClick()
   ;Khai báo
   Const $LBUTTONDOWN  	= 0x201
   Const $LBUTTONUP   	= 0x202
   Const $LBUTTON 		= 0x1

   Local $Struct = DllStructCreate($tagPoint)
   Local $hwnd = _WinAPI_WindowFromPoint($Struct)

   ;Lấy vị trí
   Local $x,$y = 350
   if @DesktopWidth < 1280 then
	  $x = 530
   ElseIF @DesktopWidth >= 1280 then
	  $x = int(@DesktopWidth/2)-20
   EndIf
   local $lParam = ($y * 65536) + ($x)

   ;Click chuột
   _WinAPI_PostMessage($hwnd, $LBUTTONDOWN, $LBUTTON,$lParam)
   _WinAPI_PostMessage($hwnd, $LBUTTONUP, 0,$lParam)

   MouseMove(52,718)
EndFunc
#ce