#include <WinAPIFiles.au3>

$Link = InputBox("INPUT", "Nhập đường dẫn file")
$start = InputBox("BẮT ĐẦU", "Bắt đầu từ file số", "00")
$end = InputBox("KẾT THÚC", "Kết thúc ở file số", "09")
$tenIn = InputBox("INP","Tên input cũ:", "test")
$tenOut = InputBox("OUT","Tên output cũ:", "test")
$duoiIn = InputBox("INP", "Định dạng đuôi input cũ:", "txt")
$duoiOut = InputBox("OUT", "Định dạng đuôi output cũ:", "txt")
$duoiInNew = InputBox("INP MỚI", "Định dạng đuôi input mới:", "inp")
$duoiOutNew = InputBox("OUT MỚI", "Định dạng đuôi output mới:", "out")
if $Link == "" or $start == "" or $end == "" then exit

$ar = StringSplit($Link,"\")
$ten = $ar[$ar[0]]
$Link &= "\"

For $i = $start to $end

   if ($i < 10) Then
	  $s = "0" & $i
   Else
	  $s = $i
   EndIf

   $cr = $Link & "test" & $s
   DirCreate($cr)
   $inpcu = $tenIn & $s & "." & $duoiIn
   $inpmoi = $ten & "." & $duoiInNew
   $outcu = $tenOut & $s & "." & $duoiOut
   $outmoi = $ten & "." & $duoiOutNew

   FileMove($Link & $inpcu, $cr & "\" & $inpmoi,0)
   FileMove($Link & $outcu, $cr & "\" & $outmoi,0)
Next