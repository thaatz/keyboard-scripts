#InstallKeybdHook
#SingleInstance force ;if there is a previous instance of this script already running, the newest instance will replace the old one
SendMode Input

;====================
;general keybindings
;====================
;XButton2::Up
;XButton1::Down

;====================
;general keybindings
;====================
;CapsLock is LControl
CapsLock::LControl
;>^e::Send {Up}{Up} 
;>^d::Send {Down}{Down}

;Control and CapsLock is CapsLock toggle
;^CapsLock::CapsLock 
;Rshift and CapsLock is CapsLock
;RShift & CapsLock::Send {CapsLock}
;https://autohotkey.com/board/topic/57089-capslock-doesnt-toggle-with-ahk/
RShift & CapsLock::SetCapsLockState, % (State:=!State) ? "On" : "Off"

;LShift+RShift is Home
;this way I can still use the RShift button, but also have an easy home button too
LShift & RShift::Send {Home}

;====================
;Scroll Lock On on startup (this is for the teracopy toggle)
;====================
;https://www.reddit.com/r/Windows10/comments/3gjcxd/numlock_disabled_after_booting_up_windows_10/
;SetScrollLockState, On


;====================
;Numlock stuff
;====================
;this script is supposed to make the numpad on the keycool 84 more like a real numpad (location of the buttons for touch tyuping)
;http://stackoverflow.com/questions/17506736/can-autohotkey-toggle-keymapping

;LShift+CapsLock is Numlock (sometimes i accidentally toggle this in games if i hit the wrong buttons)
;LShift & CapsLock::Send {NumLock}
;LAlt+Capslock is numlock
LAlt & CapsLock::Send {NumLock}

;map the numpad to be more like a regular numpad (for muscle memory)
#If GetKeyState("NumLock", "T")
	F8::/
	F9::*
	F10::-
	NumpadDiv::+
	NumpadMult::+
	NumpadSub::NumpadEnter
	NumpadAdd::NumpadEnter
	Space::Numpad0
	^Space::send {Space}
	`::Backspace ;so i can keep my right hand on the numpad
	;quick numlock shit with capslock
#If

;quicknumpad
;alt+shift and numpad is quick numpad
;ctrl+alt (capslock+alt) would probably also work, but this is unlikely to have conflicts with other programs
;fyi doesnt seem to work in windows 10 calc
!+j::send {Numpad1}
!+k::send {Numpad2}
!+l::send {Numpad3}
!+u::send {Numpad4}
!+i::send {Numpad5}
!+o::send {Numpad6}
!+7::send {Numpad7}
!+8::send {Numpad8}
!+9::send {Numpad9}
!+space::send {Numpad0}
!+backspace::send {backspace}
!+h::send {backspace}
!+a::send {backspace}

;====================
;lock swiching
;====================
;switch printscreen and numlock
PrintScreen::Numlock
NumLock::PrintScreen

;switch pause and scrollock
Pause::ScrollLock
ScrollLock::Pause
