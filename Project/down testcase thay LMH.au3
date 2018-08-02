#include <WinAPIFiles.au3>

$headLink = InputBox("LINK","Đường dẫn")
$Ten = InputBox("Name","Tên bài")
$start = InputBox("Number","Bắt đầu")
$end = InputBox("Number","Kết thúc")
$Tai = InputBox("","Folder về")
if $headLink == "" or $start == "" or $end == "" then exit

$headLink = $headLink & $Ten & "/"
for $i = $start to $end
   Local $cr = $Tai & "\" & $Ten & "\" & $i & "\"
   DirCreate($cr)

   Local $abc = $headLink & "$" & $Ten
   if ($i < 10) Then
	  $abc = $abc & "0" & $i & "/"
   Else
	  $abc = $abc & $i & "/"
   EndIf

   Local $input  = $abc & $Ten & ".inp"
   Local $output = $abc & $Ten & ".out"

   _ON($input, ".inp")
   ;_ON($output, ".out")
Next

Func _ON($char, $s)
   $x = 556
   $y = 46
   $x1 = 119
   $y1 = 360
   $x2 = 347
   $y2 = 47
   $x3 = 264
   $y3 = 377
   $x4 = 287
   $y4 = 406
   $x5 = 213
   $y5 = 438

   MouseClick("left",$x, $y)
   send($char)
   send("{Enter}")
   MouseClick("left",$x1,$y1)
   ;Sleep(1000)
   send("^s")
   ;Sleep(1000)
   MouseClick("left",$x2,$y2)
   Send($cr)
   send("{Enter}")
   MouseClick("left",$x3,$y3)
   $temp = $Ten & $s
   send($temp)
   MouseClick("left",$x4,$y4)
   MouseClick("left",$x5,$y5)
   send("{Enter}")
EndFunc