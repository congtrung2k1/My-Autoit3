#NoTrayIcon
#include <GUIConstantsEx.au3>
#include <Misc.au3>

_Create_GUI()
Func _Create_GUI()
   GUICreate("darkness-103", 300, 300, 110, 110)
   GUICtrlCreateMenu ("TeenCode Translate")

   ;Tạo Label
   Global $L_Label = 55
   Global $T_Label = 10
   GUICtrlCreateLabel("CHỌN NGÔN NGỮ CẦN CHUYỂN ĐỔI",$L_Label, $T_Label);

   ;Tạo GUI chọn
   Global $L_But = $L_Label
   Global $T_But = $T_Label + 15
   Global $TC = GUICtrlCreateButton ("Teen Code", $L_But, $T_But)

   $L_But = $L_Label + 120
   $T_But = $T_Label + 15
   Global $TV = GUICtrlCreateButton ("Tiếng Việt", $L_But, $T_But)

   GUISetState(@SW_SHOW)
   while 1
	  $msg = GUIGetMsg()
	  If $msg = $GUI_EVENT_CLOSE Then Exit
	  If $msg = $TC Then _Teen_TV()
	  If $msg = $TV Then _TV_Teen()
   WEND
EndFunc


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Func _TV_Teen()
   $Input = InputBox("Input","                     NHẬP TIẾNG VIỆT")
   if not @error then
	  If $Input = '' Then
		 MsgBox(64,"Error","Rỗng")
	  else
		 $Data = StringSplit($Input,'')
		 Global $KetQua = ''

		 for $i = 1 to StringLen($Input)
			$KiTu = $Data[$i]
			$KetQua &= _ChuyenDoiQuaTC($KiTu)
		 Next

		 _TraLoi($KetQua)
	  EndIf
   EndIf
EndFunc

Func _ChuyenDoiQuaTC($KiTu)

   Local $Out
   Switch $KiTu
	  Case 'a', 'A'
		 $Out = '4'
	  Case 'ă', 'Ă'
		 $Out = '@'
	  Case 'â', 'Â'
		 $Out = '4^'
	  Case 'b', 'B'
		 $Out = 'ß'
	  Case 'c','C'
		 $Out = 'x'
	  Case 'd', 'D'
		 $Out = '|)'
	  Case 'Đ', 'đ'
		 $Out = '+)'
	  Case 'e', 'E'
		 $Out = '3'
	  Case 'ê', 'Ê'
		 $Out = '3^'
	  Case 'g', 'G'
		 $Out = '9'
	  Case 'i', 'I'
		 $Out = '1'
	  Case 'k', 'K'
		 $Out = '|<'
	  Case 'l', "L"
		 $Out = '|_'
	  Case 'm', "M"
		 $Out = '|\/|'
	  Case 'n', 'N'
		 $Out = '|\|'
	  Case 'O','o'
		 $Out = '0'
	  Case 'ô', 'Ô'
		 $Out = '0^'
	  Case 'T', 't'
		 $Out = '+'
	  Case 'u', 'U'
		 $Out = 'µ'
	  Case 'ư', 'Ư'
		 $Out = 'µ*'
	  Case 'S', 's'
		 $Out = '$'
	  Case 'q', 'Q'
		 $Out = 'w'
	  Case 'p', 'P'
		 $Out = '|*'
	  Case 'ph', 'PH', 'Ph', 'pH'
		 $Out = 'f'
	  Case 'r', 'R'
		 $Out = '[\'
	  Case 'x', 'X'
		 $Out = '><'
	  Case 'v', 'V'
		 $Out = '\/'
	  Case 'w','W'
		 $Out = '\/\/'
	  Case 'y','Y'
		 $Out = '¥'
; dấu sắc và dấu huyền
	  Case 'á','Á'
		 $Out = "4'"
	  Case 'à','À'
		 $Out = "4`"
	  Case 'ắ','Ắ'
		 $Out = "@'"
	  Case 'ằ','Ằ'
		 $Out = "@`"
	  Case 'ấ','Ấ'
		 $Out = "4^'"
	  Case 'ầ','Ầ'
		 $Out = "4^`"
	  Case 'é', 'É'
		 $Out = "3'"
	  Case 'ế', 'Ế'
		 $Out = "3^'"
	  Case 'è', 'È'
		 $Out = '3`'
	  Case 'ề', 'Ề'
		 $Out = '3^`'
	  Case 'í', 'Í'
		 $Out = "1'"
	  Case 'Ì', 'ì'
		 $Out = '1`'
	  Case 'ó','O'
		 $Out = "0'"
	  Case 'ố', 'Ố'
		 $Out = '0^'
	  Case 'ò', 'Ò'
		 $Out = '0`'
	  Case 'ồ', 'Ồ'
		 $Out = '0^`'
	  Case 'ú', 'Ú'
		 $Out = 'µ'
	  Case 'ứ', 'Ứ'
		 $Out = "µ*'"
	  Case 'ù', 'Ù'
		 $Out = 'µ`'
	  Case 'ừ', 'Ừ'
		 $Out = 'µ*`'
	  Case 'Ý','ý'
		 $Out = "¥'"
	  Case 'ỳ','Ỳ'
		 $Out = '¥`'

	  Case 'ả','Ả'
		 $Out = "4?"
	  Case 'ẳ','Ẳ'
		 $Out = "@?"
	  Case 'ẩ','Ẩ'
		 $Out = "4^?"
	  Case 'ẻ', 'Ẻ'
		 $Out = "3?"
	  Case 'ể', 'Ể'
		 $Out = "3^?"
	  Case 'ỉ', 'Ỉ'
		 $Out = "1?"
	  Case 'ỏ','Ỏ'
		 $Out = "0?"
	  Case 'ổ', 'Ổ'
		 $Out = "0^?"
	  Case 'ủ', 'Ủ'
		 $Out = 'µ?'
	  Case 'ử', 'Ử'
		 $Out = "µ*?"
	  Case 'ỷ','Ỷ'
		 $Out = "¥?"
; dấu ngã
	  Case 'ã','Ã'
		 $Out = "4~"
	  Case 'ẵ','Ẵ'
		 $Out = "@~"
	  Case 'ẫ','Ẫ'
		 $Out = "4^~"
	  Case 'ẽ', 'Ẽ'
		 $Out = "3~"
	  Case 'ễ', 'Ễ'
		 $Out = "3^~"
	  Case 'ĩ', 'Ĩ'
		 $Out = "1~"
	  Case 'õ','Õ'
		 $Out = "0~"
	  Case 'ỗ', 'Ỗ'
		 $Out = "0^~"
	  Case 'ũ', 'Ũ'
		 $Out = 'µ~'
	  Case 'ữ', 'Ữ'
		 $Out = "µ*~"
	  Case 'ỹ','Ỹ'
		 $Out = "¥~"
; dấu nặng
	  Case 'ạ','Ạ'
		 $Out = "4."
	  Case 'ặ','Ặ'
		 $Out = "@."
	  Case 'ậ','Ậ'
		 $Out = "4^."
	  Case 'ẹ', 'Ẹ'
		 $Out = "3."
	  Case 'ệ', 'Ệ'
		 $Out = "3^."
	  Case 'ị', 'Ị'
		 $Out = "!"
	  Case 'ọ','Ọ'
		 $Out = "0."
	  Case 'ộ', 'Ộ'
		 $Out = "0^."
	  Case 'ụ', 'Ụ'
		 $Out = 'µ.'
	  Case 'ự', 'Ự'
		 $Out = "µ*."
	  Case 'ỵ','Ỵ'
		 $Out = "¥."

	  Case Else
		 $Out = $KiTu
   EndSwitch

   Return $Out

EndFunc


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>===========================================<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Func _Teen_TV()
   $Input = InputBox("Input","                     NHẬP TEEN CODE")
   If not @error Then
	  If $Input = '' Then
			MsgBox(64,"Error","Rỗng")
		 else
			$Data = StringSplit($Input,'')
			Global $KetQua = ''

			for $i = 1 to StringLen($Input)
			   local $vt = 0

			   $KiTu = $Data[$i]
			   local $Nhan = _ChuyenDoiQuaTV1($KiTu)
			   if $Nhan <> '%' Then
				  $Cong = $Nhan
				  $vt = 1
			   EndIf

			   if StringLen($Input)-$i >= 1 then
				  $KiTu = $Data[$i] & $Data[$i+1]
				  local $Nhan = _ChuyenDoiQuaTV2($KiTu)
				  if $Nhan <> '%' Then
					$Cong = $Nhan
					$vt = 2
				  EndIf

				  if StringLen($Input)-$i >= 2 then
					 $KiTu = $Data[$i] & $Data[$i+1] & $Data[$i+2]
					 local $Nhan = _ChuyenDoiQuaTV3($KiTu)
					 if $Nhan <> '%' Then
						$Cong = $Nhan
						$vt = 3
					 EndIf

					 if StringLen($Input)-$i >= 3 then
						$KiTu = $Data[$i] & $Data[$i+1] & $Data[$i+2] & $Data[$i+3]
						local $Nhan = _ChuyenDoiQuaTV4($KiTu)
						if $Nhan <> '%' Then
						   $Cong = $Nhan
						   $vt = 4
						EndIf
					 EndIf
				  EndIf
			   EndIf

			   Switch $vt
				  Case 0
					 $KetQua &= $Data[$i]
				  Case 1
					 $KetQua &= $Cong
					 $i += 0
				  Case 2
					 $KetQua &= $Cong
					 $i += 1
				  Case 3
					 $KetQua &= $Cong
					 $i += 2
				  Case 4
					 $KetQua &= $Cong
					 $i += 3
			   EndSwitch
			Next

			_TraLoi($KetQua)
	  EndIf
   EndIf
EndFunc

Func _ChuyenDoiQuaTV1($KiTu)
   Local $Out = ''

   Switch $KiTu
	  Case '4', '@'
		 $Out = 'a'
	  Case 'ß'
		 $Out = 'b'
	  Case 'x','('
		 $Out = 'c'
	  Case '3'
		 $Out = 'e'
	  Case '9'
		 $Out = 'g'
	  Case '#'
		 $Out = 'h'
	  Case 'j'
		 $Out = 'i'
	  Case '1'
		 $Out = 'i'
	  Case '|'
		 $Out = 'l'
	  Case '0'
		 $Out = 'o'
	  Case '+'
		 $Out = 't'
	  Case 'µ'
		 $Out = 'µ'
	  Case '$'
		 $Out = 's'
	  Case 'w'
		 $Out = 'q'
	  Case 'f'
		 $Out = 'ph'
	  Case '¥'
		 $Out = 'y'
	  Case Else
		 $Out = '%'
   EndSwitch

   Return $Out
EndFunc

Func _ChuyenDoiQuaTV2($KiTu)
   Local $Out = ''

   Switch $KiTu
	  Case '4{'
		 $Out = 'ă'
	  Case '4^', '@^'
		 $Out = 'â'
	  Case '])', '|)'
		 $Out = 'd'
	  Case '+)'
		 $Out = 'đ'
	  Case 'F_'
		 $Out = 'e'
	  Case '3^'
		 $Out = 'ê'
	  Case '(¬'
		 $Out = 'g'
	  Case '|<'
		 $Out = 'k'
	  Case '|_'
		 $Out = 'l'
	  Case '/v'
		 $Out = 'm'
	  Case ']['
		 $Out = 'n'
	  Case '0^'
		 $Out = 'ô'
	  Case 'µ*'
		 $Out = 'ư'
	  Case 'v/'
		 $Out = 'qu'
	  Case '|*'
		 $Out = 'p'
	  Case '[\', 'Pv'
		 $Out = 'r'
	  Case '><'
		 $Out = 'x'
	  Case '\/'
		 $Out = 'v'
	  Case 'v/'
		 $Out = 'w'
; sắc, huyền
	  Case "4'", "@'", '4/', '@/'
		 $Out = "á"
	  Case "4`", '@`', '@\', '4\'
		 $Out = "à"
	  Case "3'", '3\'
		 $Out = "è"
	  Case "1'", '1/'
		 $Out = "í"
	  Case '1`', '1\'
		 $Out = 'ì'
	  Case "0'", '0/'
		 $Out = "ó"
	  Case '0`', '0\'
		 $Out = 'ò'
	  Case "µ'", 'u/', 'µ/'
		 $Out = 'µ'
	  Case 'µ`', 'µ\', 'u\'
		 $Out = 'ù'
	  Case 'uk'
		 $Out = 'ừ'
	  Case "¥'", 'y/', '¥/'
		 $Out = "ý"
	  Case '¥`', 'y\', '¥\'
		 $Out = 'ỳ'
; hỏi
	  Case '4?','@?'
		 $Out = "ả"
	  Case '3?'
		 $Out = "ẻ"
	  Case '1?'
		 $Out = "ỉ"
	  Case '0?'
		 $Out = "ỏ"
	  Case 'µ?'
		 $Out = 'ủ'
	  Case "¥?"
		 $Out = "ỷ"
;dấu ngã
	  Case '4~','@~'
		 $Out = "ã"
	  Case '3~'
		 $Out = "ẽ"
	  Case '1~'
		 $Out = "ĩ"
	  Case "0~"
		 $Out = "õ"
	  Case 'µ~'
		 $Out = 'ũ'
	  Case "¥~"
		 $Out = "ỹ"
; dấu nặng
	  Case '4.','@.'
		 $Out = "ạ"
	  Case '3.'
		 $Out = "ẹ"
	  Case '!'
		 $Out = "ị"
	  Case '0.'
		 $Out = "ọ"
	  Case 'µ.'
		 $Out = 'ụ'
	  Case  "¥."
		 $Out = "ỵ"
	  Case Else
		 $Out = '%'
   EndSwitch

   return $Out
   EndFunc

Func _ChuyenDoiQuaTV3($KiTu)
   Local $Out = ''

   Switch $KiTu
	  Case 'F_^'
		 $Out = 'ê'
	  Case '|\|'
		 $Out = 'n'
; sắc, huyền
   Case "@{'", "4{'", "@{/", "4{/"
	  $Out = "ắ"
   Case "@{`", '4{`', "@{\", '4{\'
	  $Out = "ằ"
   Case "4^'", "@^'", "4^/", "@^/"
	  $Out = "ấ"
   Case "4^`", "@^`", "4^\", "@^\"
	  $Out = "ầ"
   Case "3^'", '3^/'
	  $Out = "ế"
   Case '3^`', '3^\'
	  $Out = 'ề'
   Case "0^'", '0^/'
	  $Out = 'ồ'
   Case '0^`', '0^\'
	  $Out = 'ồ'
   Case "µ*'"
	  $Out = "ứ"
   Case 'µ*`', 'µ*\', 'ukm', 'uhm'
	  $out = 'ừ'
;hỏi
   Case '@{?','4{?'
	  $Out = "ẳ"
   Case '@^?','4^?'
	  $Out = "ẩ"
   Case '3^?'
	  $Out = "ể"
   Case "µ*?"
	  $Out = "ử"
   Case '0^?'
	  $Out = "ổ"
;ngã
   Case '4{~','@{~'
	  $Out = "ẵ"
   Case '4^~','@^~'
	  $Out = "ẫ"
   Case '3^~'
	  $Out = "ễ"
   Case '0^~'
	  $Out = "ỗ"
   Case "µ*~"
	  $Out = "ữ"
;nặng
   Case '4{.','@{.'
	  $Out = "ặ"
   Case '@^.', '4^.'
	  $Out = "ậ"
   Case '3^.'
	  $Out = "ệ"
   Case '0^.'
	  $Out = "ộ"
   Case "µ*."
	  $Out = "ự"
   Case Else
	  $Out = '%'
   EndSwitch

   return $Out
EndFunc

Func _ChuyenDoiQuaTV4($KiTu)
   local $Out = ''

   Switch $KiTu
	  Case '\/\/'
		 $Out = 'w'
	  Case '|\/|'
		 $Out = 'm'
	  case else
		 $Out = '%'
   EndSwitch

   return $Out
EndFunc


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>==========================================<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Func _TraLoi($KetQua)
   $L_But = 125
   $T_But = $T_Label + 40
   $DA = GUICtrlCreateButton (" Dịch: ", $L_But, $T_But)

   $L_In = 5
   Global $T_In = $T_But + 30
   $W_In = 300 - $L_In - 5
   Global $H_In = 300 - $T_In - 50
   GUICtrlCreateEdit($KetQua, $L_In, $T_In, $W_In, $H_In,0x0040+0x0004)
   $DA = GUICtrlCreateButton ('Nhấn để tiếp tục', $L_Label + 42, $T_In + $H_In)

   while 1
	  Switch GUIGetMsg()
		 Case $GUI_EVENT_CLOSE
			GUISetState(@SW_HIDE)
			Exit
		 Case $DA, $TC, $TV
			GUISetState(@SW_HIDE)
			_Create_GUI()
			Exit
	  EndSwitch
   WEnd
EndFunc






