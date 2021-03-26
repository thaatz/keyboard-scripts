#InstallKeybdHook
#SingleInstance force ;if there is a previous instance of this script already running, the newest instance will replace the old one
SendMode Input

;this script is supposed to make the numpad on the keycool 84 more like a real numpad (location of the buttons for touch tyuping)
;http://stackoverflow.com/questions/17506736/can-autohotkey-toggle-keymapping

+CapsLock::NumLock

#If GetKeyState("NumLock", "T")
	F8::/
	F9::*
	F10::-
	NumpadDiv::+
	NumpadMult::+
	NumpadSub::NumpadEnter
	NumpadAdd::NumpadEnter
	Space::Numpad0
	^Space::send {space}
	`::Backspace ;so i can keep my right hand on the numpad
	;quick numlock shit with capslock
#If