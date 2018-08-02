#NoTrayIcon
#include <WinAPIFiles.au3>

$Link = "D:\UTM"

$sFirst = FileFindFirstFile($Link & "\*")
while 1
   $sFound = FileFindNextFile($sFirst)
   if @error then Exit
   Change($sFound)
WEnd

func Change($name)
   $ar = StringSplit($name," ")
   $new = ""
   for $i = 4 to $ar[0] step 1
	  $new = $new & $ar[$i] & " "
   Next
   FileMove($Link & "\" & $name,$Link & "\" & $new,0)
EndFunc