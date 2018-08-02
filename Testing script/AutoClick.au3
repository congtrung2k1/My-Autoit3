#include <WinAPI.au3>
#include <GUIConstantsEx.au3>

Global $Struct = DllStructCreate($tagPoint)
Global $hwnd,$hien=True,$chay=False,$button,$x,$y
Const $WM_MOUSEMOVE= 0x200
Const $WM_LBUTTONDOWN   = 0x201
Const $WM_LBUTTONUP    = 0x202
Const $WM_MBUTTONDOWN  = 0x207
Const $WM_MBUTTONUP    = 0x208
Const $WM_RBUTTONDOWN  = 0x204
Const $WM_RBUTTONUP    = 0x205
Const $WM_NCLBUTTONDOWN  = 0xA1
Const $WM_LBUTTONDBLCLK  = 0x203
Const $WM_MBUTTONDBLCLK  = 0x209
Const $WM_RBUTTONDBLCLK  = 0x206
Const $MK_LBUTTON = 0x1
Const $MK_MBUTTON = 0x10
Const $MK_RBUTTON = 0x2


;TrayIcon
Opt("GUIOnEventMode",1)
;Opt("TrayIconHide",1)
Opt("TrayMenuMode",1)
Opt("TrayOnEventMode",1)
TraySetIcon("Shell32.dll",29)
TraySetOnEvent(-13,"anhien") ;khi click thì hi?n GUI
TraySetOnEvent(-11,"info") ;khi di chuy?n chu?t qua
TraySetClick(1)
TraySetState()
$trBD=TrayCreateItem("Bat dau")
TrayItemSetOnEvent(-1,"batdau")
$trah=TrayCreateItem("An/Hien")
TrayItemSetOnEvent(-1,"anhien")
TrayCreateItem("")
$trth=TrayCreateItem("Thoat")
TrayItemSetOnEvent(-1,"thoat")
;=>TrayIcon

HotKeySet("{esc}","thoat")
HotKeySet("^a","getwin")
HotKeySet("^s","batdau")

GUICreate("AutoClick",200,150,@DesktopWidth-210,@DesktopHeight-350,0x2000)
GUISetState()
GUICtrlCreateLabel("Toa do:",5,5,50,15)
$tdx=GUICtrlCreateLabel("x",55,5,70,15)
$tdy=GUICtrlCreateLabel("y",125,5,70,15)
GUICtrlCreateLabel("Tu dong ",5,30,50,15)
$but=GUICtrlCreateCombo("Left Click",60,27,100,15)
GUICtrlSetData(-1,"Left Double Click")
GUICtrlSetData(-1,"Middle Click")
GUICtrlSetData(-1,"Middle Double Click")
GUICtrlSetData(-1,"Right Click")
GUICtrlSetData(-1,"Right Double Click")
GUICtrlSetData(-1,"Mouse Move")
GUICtrlCreateLabel("Sau ",5,60,20,15)
$thoigian=GUICtrlCreateInput("3000",30,58,130,15)
GUICtrlCreateLabel("ms",170,60,50,15)
$cmdbd=GUICtrlCreateButton("Bat dau",5,80,80,30)
GUICtrlSetOnEvent(-1,"batdau")
GUICtrlCreateButton("Thoat",85,80,80,30)
GUICtrlSetOnEvent(-1,"thoat")
GUICtrlCreateButton("-",170,80,15,15)
GUICtrlSetOnEvent(-1,"anhien")
GUICtrlSetTip(-1,"An chuong trinh xuong Taskbar")
GUICtrlCreateButton("?",170,95,15,15)
GUICtrlSetOnEvent(-1,"huongdan")
GUICtrlSetTip(-1,"Huong dan cai j nhi?")

huongdan()

While 1
	Sleep(1000)
WEnd
Func batdau()
	If Not $hwnd Then
		MsgBox(0,"Chu y","Di chuot vao cua so roi an Ctrl+A de lay cua so")
		Return 0
	EndIf
	ToolTip("")
	TrayItemSetState($trBD,4)
	If GUICtrlRead($cmdbd)="Bat dau" Then
		GUICtrlSetData($cmdbd,"Dung")
		TrayItemSetText($trbd,"Dung")
	Else
		GUICtrlSetData($cmdbd,"Bat dau")
		TrayItemSetText($trbd,"Bat dau")
	EndIf
	$chay=Not $chay
	$button=GUICtrlRead($but)
	pclick($x,$y,$button)
	If $chay Then
		timer(1)
	Else
		timer(0)
	EndIf
EndFunc
Func timer($t)
	$time=GUICtrlRead($thoigian)
	If $time="" Then $time=0
	$time=Int($time)
	If $t=1 Then
		AdlibRegister("tuclick",$time)
	Else
		AdlibUnRegister("tuclick")
	EndIf
EndFunc
Func huongdan()
	ToolTip("Di chuot den toa do can click va an Ctrl+A de lay toa do!",10,10,"Chu y")
EndFunc
Func tuclick()
	pclick($x,$y,$button)
EndFunc
Func Pos()
    DllStructSetData($Struct, "x", MouseGetPos(0))
    DllStructSetData($Struct, "y", MouseGetPos(1))
EndFunc   ;==>Pos
Func getwin()
	Pos()
	$hwnd = _WinAPI_WindowFromPoint($Struct)
	_WinAPI_ScreenToClient($hwnd,$Struct)
	$x=DllStructGetData($Struct,"x")
	$y=DllStructGetData($Struct,"y")
	GUICtrlSetData($tdx,$x)
	GUICtrlSetData($tdy,$y)

EndFunc
;click
Func pclick($x=0,$y=0,$button='Left Click')
   local $lParam = ($y * 65536) + ($x)
			$button='Left Click'
            _WinAPI_PostMessage($hwnd, $WM_LBUTTONDOWN, $MK_LBUTTON,$lParam)
            _WinAPI_PostMessage($hwnd, $WM_LBUTTONUP, 0,$lParam)
EndFunc
;=>click

Func thoat()
	Exit
EndFunc