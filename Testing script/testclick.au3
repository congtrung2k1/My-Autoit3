$v = WinGetHandle("Ch�o m?ng b?n d?n v?i Facebook - �ang nh?p, �ang k� ho?c T�m hi?u th�m")
$X = 782
$Y = 301
sleep(2000)
PostMessage($v, 0x201, 0x1, $X + $Y * 0x10000)
PostMessage($v, 0x202, 0x1, $X + $Y * 0x10000)

Func PostMessage($Arg00, $Arg01, $Arg02, $Arg03)
   DllCall("user32.dll", "lresult", "PostMessageA", "hwnd", $Arg00, "uint", $Arg01, "wparam", $Arg02, "lparam", $Arg03)
EndFunc