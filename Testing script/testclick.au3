$v = WinGetHandle("Chào m?ng b?n d?n v?i Facebook - Ðang nh?p, Ðang ký ho?c Tìm hi?u thêm")
$X = 782
$Y = 301
sleep(2000)
PostMessage($v, 0x201, 0x1, $X + $Y * 0x10000)
PostMessage($v, 0x202, 0x1, $X + $Y * 0x10000)

Func PostMessage($Arg00, $Arg01, $Arg02, $Arg03)
   DllCall("user32.dll", "lresult", "PostMessageA", "hwnd", $Arg00, "uint", $Arg01, "wparam", $Arg02, "lparam", $Arg03)
EndFunc