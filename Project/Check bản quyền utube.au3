#include<_HttpRequest.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Tool Check B?n Quy?n Youtube", 332, 229, 265, 121)
$Button1 = GUICtrlCreateButton("Check ?", 112, 200, 107, 25)
$List1 = GUICtrlCreateList("", -8, 80, 337, 110)
$Input1 = GUICtrlCreateInput("", 120, 48, 121, 21)
$Label1 = GUICtrlCreateLabel("T? Khóa C?n Search : ", 8, 48, 113, 17)
$Label2 = GUICtrlCreateLabel("Tool Check B?n Quy?n Youtube", 80, 8, 158, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
                Case $GUI_EVENT_CLOSE
                        Exit
                 Case $Button1
                        get()

        EndSwitch
WEnd



Func get()
If GUICtrlRead($Input1) = '' Then
   MsgBox(0,0,"Vui Lòng Nh?p 'T? Khóa C?n Search'")
   Return
Endif
$ten = Random(1,1000,1)
        $path = @ScriptDir & '\' & $ten & '.txt'
$search = GUICtrlRead($Input1)
$laydulieu = _HttpRequest(2,"https://www.youtube.com/results?search_query="&_URIEnCode($search)&"")
$getvideo = StringRegExp($laydulieu,'data-context-item-id="(.*?)"',3)
For $i = 0 to UBound($getvideo) -1
$laydulieu1 = _HttpRequest(2,"https://www.youtube.com/watch?v="&$getvideo[$i]&"")
$banquyen = StringRegExp($laydulieu1,"<meta name=attribution content=(.*?)/>",3)
If @error Then
MsgBox(0,0,"L?i")
   Return
Endif
 If StringLen($banquyen[0]) = 22 Then
        GUICtrlSetData($List1,"https://www.youtube.com/watch?v="&$getvideo[$i]&"" & @LF)
        FileWrite($path,"https://www.youtube.com/watch?v="&$getvideo[$i]&"" & @LF)
   Endif
NExt
If Not @error Then
ShellExecute(@ScriptDir & '\' & $ten & '.txt')
endif
Endfunc
