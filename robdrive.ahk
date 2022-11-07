#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory. MsgBox, 3, color, %color%, 0.2

Sleep 1000
while 1
{

	PixelSearch, Yx, Yy, 1, 300, 1919, 300, 0x11DDFF, 40, Fast



	if Yx<1100
	{
		Send {a down}
		Sleep 5
		Send {a up}

	}
	if Yx>1100
	{
		Send {d down}
		Sleep 5
		Send {d up}

	}
	
	Sleep 50
	
		
	DllCall("SetCursorPos", "int", Yx, "int", 300)


	if GetKeyState("Esc")
		break


}
