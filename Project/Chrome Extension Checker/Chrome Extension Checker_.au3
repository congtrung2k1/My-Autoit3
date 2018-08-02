#NoTrayIcon
Global Const $0 = 194
Global Const $1 = 181
Global Const $2 = 183
Global Const $3 = 177
Global Const $4 = 3150016

Func _6(ByRef $5, $6)
	If NOT IsArray($5) Then Return SetError(1, 0, -1)
	Local $7 = UBound($5, 1) - 1
	If IsArray($6) Then
		If UBound($6, 0) <> 1 OR UBound($6, 1) < 2 Then Return SetError(4, 0, -1)
	Else
		Local $8, $9, $a
		$6 = StringStripWS($6, 8)
		$9 = StringSplit($6, ";")
		$6 = ""
		For $b = 1 To $9[0]
			If NOT StringRegExp($9[$b], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
			$a = StringSplit($9[$b], "-")
			Switch $a[0]
				Case 1
					$6 &= $a[1] & ";"
				Case 2
					If Number($a[2]) >= Number($a[1]) Then
						$8 = $a[1] - 1
						Do
							$8 += 1
							$6 &= $8 & ";"
						Until $8 = $a[2]
					EndIf
			EndSwitch
		Next
		$6 = StringSplit(StringTrimRight($6, 1), ";")
	EndIf
	If $6[1] < 0 OR $6[$6[0]] > $7 Then Return SetError(5, 0, -1)
	Local $c = 0
	Switch UBound($5, 0)
		Case 1
			For $b = 1 To $6[0]
				$5[$6[$b]] = ChrW(64177)
			Next
			For $d = 0 To $7
				If $5[$d] == ChrW(64177) Then
					ContinueLoop
				Else
					If $d <> $c Then
						$5[$c] = $5[$d]
					EndIf
					$c += 1
				EndIf
			Next
			ReDim $5[$7 - $6[0] + 1]
		Case 2
			Local $e = UBound($5, 2) - 1
			For $b = 1 To $6[0]
				$5[$6[$b]][0] = ChrW(64177)
			Next
			For $d = 0 To $7
				If $5[$d][0] == ChrW(64177) Then
					ContinueLoop
				Else
					If $d <> $c Then
						For $f = 0 To $e
							$5[$c][$f] = $5[$d][$f]
						Next
					EndIf
					$c += 1
				EndIf
			Next
			ReDim $5[$7 - $6[0] + 1][$e + 1]
		Case Else
			Return SetError(2, 0, False)
	EndSwitch
	Return UBound($5, 1)
EndFunc

Func _16($g, $h = "*", $i = 0, $j = False)
	Local $k = "|", $l = "", $m = "", $n = ""
	$g = StringRegExpReplace($g, "[\\/]+$", "") & "\"
	If $i = Default Then $i = 0
	If $j Then $n = $g
	If $h = Default Then $h = "*"
	If NOT FileExists($g) Then Return SetError(1, 0, 0)
	If StringRegExp($h, "[\\/:><\|]|(?s)^\s*$") Then Return SetError(2, 0, 0)
	If NOT ($i = 0 OR $i = 1 OR $i = 2) Then Return SetError(3, 0, 0)
	Local $o = FileFindFirstFile($g & $h)
	If @error Then Return SetError(4, 0, 0)
	While 1
		$m = FileFindNextFile($o)
		If @error Then ExitLoop
		If ($i + @extended = 2) Then ContinueLoop
		$l &= $k & $n & $m
	WEnd
	FileClose($o)
	If $l = "" Then Return SetError(4, 0, 0)
	Return StringSplit(StringTrimLeft($l, 1), $k)
EndFunc

Global Const $p = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $q = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ((@OSVersion = "WIN_XP") ? "" : ";" & $p & ";uint uChevronState")
Global Const $r = "dword Length;ptr Descriptor;bool InheritHandle"

Func _2n($s, $t, $u = 0, $v = 0, $w = 0, $x = "wparam", $y = "lparam", $0z = "lresult")
	Local $10 = DllCall("user32.dll", $0z, "SendMessageW", "hwnd", $s, "uint", $t, $x, $u, $y, $v)
	If @error Then Return SetError(@error, @extended, "")
	If $w >= 0 AND $w <= 4 Then Return $10[$w]
	Return $10
EndFunc

Global Const $11 = Ptr(-1)
Global Const $12 = Ptr(-1)
Global Const $13 = BitShift(256, 8)
Global Const $14 = BitShift(8192, 8)
Global Const $15 = BitShift(32768, 8)
Global Const $16 = 14

Func _9a($s, $17)
	If NOT IsHWnd($s) Then $s = GUICtrlGetHandle($s)
	Local $18 = _9z($s)
	_an($s, $18, $18)
	_2n($s, $0, True, $17, 0, "wparam", "wstr")
EndFunc

Func _9z($s)
	If NOT IsHWnd($s) Then $s = GUICtrlGetHandle($s)
	Return _2n($s, $16)
EndFunc

Func _aa($s, $19)
	If NOT IsHWnd($s) Then $s = GUICtrlGetHandle($s)
	If BitAND($19, 1) <> 1 AND BitAND($19, 0) <> 0 AND BitAND($19, 3) <> 3 AND BitAND($19, 2) <> 2 AND BitAND($19, 4) <> 4 Then Return 0
	If $19 == 4 Then
		Return _2n($s, $2)
	Else
		Return _2n($s, $1, $19)
	EndIf
EndFunc

Func _an($s, $1a, $1b)
	If NOT IsHWnd($s) Then $s = GUICtrlGetHandle($s)
	_2n($s, $3, $1a, $1b)
EndFunc

Func _ax($1c, $i = 0)
	Local Const $1d = 183
	Local Const $1e = 1
	Local $1f = 0
	If BitAND($i, 2) Then
		Local $1g = DllStructCreate("byte;byte;word;ptr[4]")
		Local $1h = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", "struct*", $1g, "dword", $1e)
		If @error Then Return SetError(@error, @extended, 0)
		If $1h[0] Then
			$1h = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", "struct*", $1g, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $1h[0] Then
				$1f = DllStructCreate($r)
				DllStructSetData($1f, 1, DllStructGetSize($1f))
				DllStructSetData($1f, 2, DllStructGetPtr($1g))
				DllStructSetData($1f, 3, 0)
			EndIf
		EndIf
	EndIf
	Local $1i = DllCall("kernel32.dll", "handle", "CreateMutexW", "struct*", $1f, "bool", 1, "wstr", $1c)
	If @error Then Return SetError(@error, @extended, 0)
	Local $1j = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $1j[0] = $1d Then
		If BitAND($i, 1) Then
			DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $1i[0])
			If @error Then Return SetError(@error, @extended, 0)
			Return SetError($1j[0], $1j[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $1i[0]
EndFunc

_ax(@ScriptName)
Opt("MustDeclareVars", 1)
Global Const $1k = _b3()
Global $1l = GUICreate("[J2TEAM] Chrome Extension Checker by Juno_okyo", 700, 425)
GUISetFont(12, 400, 0, "Segoe UI")
Global $1m = GUICtrlCreateLabel("Path to Extensions:", 16, 18, 133, 25)
Global $1n = GUICtrlCreateInput($1k, 160, 16, 377, 29)
GUICtrlSetState(-1, 256)
Global $1o = GUICtrlCreateButton("...", 552, 16, 43, 29)
GUICtrlSetCursor(-1, 0)
Global $1p = GUICtrlCreateButton("Start", 608, 16, 75, 29)
GUICtrlSetCursor(-1, 0)
GUICtrlSetState(-1, 512)
Global $1q = GUICtrlCreateEdit("Waiting...", 16, 64, 666, 305, BitOR($4, 2048))
GUICtrlSetBkColor(-1, 3355443)
GUICtrlSetColor(-1, 8118403)
GUIStartGroup()
Global $1r = GUICtrlCreateButton("Fan-page", 172, 384, 100, 29)
GUICtrlSetCursor(-1, 0)
Global $1s = GUICtrlCreateButton("Group", 293, 384, 75, 29)
GUICtrlSetCursor(-1, 0)
Global $1t = GUICtrlCreateButton("Opensource", 389, 384, 115, 29)
GUICtrlSetCursor(-1, 0)
GUIStartGroup()
GUISetState(@SW_SHOW)
While 1
	Local $1u = GUIGetMsg()
	Switch $1u
		Case -3
			Exit
		Case $1o
			_b8()
		Case $1p
			_b4()
		Case $1r
			ShellExecute("https://www.facebook.com/J2TeaM.pro/")
		Case $1s
			ShellExecute("https://www.facebook.com/groups/j2team.community/")
		Case $1t
			ShellExecute("https://github.com/J2TeaM/chrome-extension-checker")
	EndSwitch
WEnd

Func _b3()
	Local $1v = @LOCALAPPDATADIR & "\Google\Chrome\"
	If NOT FileExists($1v) Then
		$1v = @LOCALAPPDATADIR & "\CocCoc\Browser\"
		If NOT FileExists($1v) Then Return ""
	EndIf
	Return $1v & "User Data\Default\Extensions\"
EndFunc

Func _b4()
	GUICtrlSetData($1q, "")
	Local $1v = GUICtrlRead($1n)
	If $1v AND FileExists($1v) Then
		If StringLeft($1v, 1) <> "\" Then $1v &= "\"
		Local $1w = _16($1v, "*", 2)
		_b7("Total extensions: " & $1w[0] & @CRLF)
		_6($1w, 0)
		For $1x In $1w
			_b5($1v, $1x)
		Next
		_b7("Done!" & @CRLF)
	Else
		MsgBox(16 + 262144, "Error", "Please select a valid path to Extensions folder!", 0, $1l)
		GUICtrlSetState($1n, 256)
		_b8()
		Return False
	EndIf
EndFunc

Func _b5($1v, $1x)
	If StringLen($1x) <> 32 Then Return False
	_b7("Checking extension: " & $1x & @TAB)
	If $1x == "ngpampappnmepgilojfohadhhmbhlaek" OR $1x == "hmlcjjclebjnfohgmgikjfnbmfkigocc" Then
		_b7(" [OK]" & @CRLF)
		Return True
	EndIf
	If $1x == "ldobpmmlhhamdbpcipmehcibdlkoliah" Then
		_b7(" [Malware Extension]" & @CRLF)
		Return False
	EndIf
	Local $1y = _b6($1v & $1x)
	If $1y == False Then
		_b7(" [ERROR]" & @CRLF)
		Return False
	Else
		Local $1z = FileOpen($1y)
		Local $20 = FileRead($1z)
		FileClose($1z)
		If StringInStr($20, '"name": "IDM Integration Module"') Then
			If StringInStr($20, '"author": "J2Team"') Then
				_b7(" [Malware Extension]" & @CRLF)
			Else
				_b7(" [Fake IDM Extension]" & @CRLF)
			EndIf
			Return False
		EndIf
	EndIf
	_b7(" [OK]" & @CRLF)
	Return True
EndFunc

Func _b6($1v)
	Local $21 = _16($1v, "*", 2, True)
	If NOT @error AND $21[0] > 0 Then
		Return $21[1] & "\manifest.json"
	Else
		Return False
	EndIf
EndFunc

Func _b7($22)
	_9a($1q, $22)
	Local $1b = StringLen(GUICtrlRead($1q))
	_an($1q, $1b, $1b)
	_aa($1q, 4)
EndFunc

Func _b8()
	Local $1z = FileSelectFolder("Select folder", $1k, 0, "", $1l)
	If NOT @error Then GUICtrlSetData($1n, $1z)
EndFunc
