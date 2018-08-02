#include <WindowsConstants.au3>
while 1
   $x = MouseGetPos(0)
   $y = MouseGetPos(1)
   ToolTip($x&' '&$y,$x,$y)
WEnd