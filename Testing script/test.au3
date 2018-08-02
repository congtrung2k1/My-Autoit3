OnAutoItExitRegister("CloseChildProcesses")

$Notepad=Run(@WindowsDir & "\Notepad.exe", "", @SW_MAXIMIZE)
Sleep(5000) ;So you get to see that it has been opened
Exit

Func CloseChildProcesses()
    ProcessClose($Notepad)
EndFunc