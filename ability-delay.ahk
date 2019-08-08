#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; v1.1
; Use the [F1] key to enable ability key delay
; - Rhett

isEnabled := false

*F1::
isEnabled := !isEnabled
if isEnabled {
	SoundBeep, 300, 50
	SoundBeep, 400, 50
	SoundBeep, 500, 50
} else {               
	SoundBeep, 500, 50
	SoundBeep, 400, 50
	SoundBeep, 300, 50
}
return

*$f::
if isEnabled {
	KeyWait, f, T0.2
	if ErrorLevel {
		Send, f   ; Comment this line to disable the ability key entirely
	}
} else {
	Send, f
}
return