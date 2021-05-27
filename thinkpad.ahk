;https://autohotkey.com/board/topic/148849-help-to-map-keyboard-keys-on-mouse-axis/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#installKeybdHook
#InstallMouseHook ; May to make a difference but not sure.


;ideas
;change the middle trackpoint mouse button to be middle mouse button and then we can just use the capslock key for scrolling using this script
;capslock changes mouse move to scroll

; to replace TouchCursors
; https://www.autohotkey.com/boards/viewtopic.php?t=61420
#If GetKeyState("CapsLock", "p")
$*i::up
$*j::left
$*k::down
$*l::right
$*u::PgUp
$*o::PgDn
#If

capslock::
SetCapsLockState, Off ;keep capslock off
BlockInput, MouseMoveOff ;make sure we can move the mouse
SetTimer, monitorMouse, 1
BlockInput, MouseMove ;stop mouse input temporarily as a speed limiter
return

capslock up::
BlockInput, MouseMoveOff ;make sure we can move the mouse again
SetTimer, monitorMouse, Off
return

;tab:: ;this is just for debugging, this is our backup escape
;BlockInput, MouseMoveOff ;make sure we can move the mouse again
;SetTimer, monitorMouse, Off
;return

monitorMouse:
BlockInput, MouseMoveOff ;make sure the mouse can move here
MouseGetPos, start_x, start_y
Sleep 5
BlockInput, MouseMove ;stop the mouse temporarily, basically as a speed limiter
MouseGetPos, end_x, end_y
mousemove, start_x, start_y
If (start_x - 5 > end_x) ; if end_x is further to the left
 {
 send {wheelleft}
 }
If (start_x + 5 < end_x) ; if end_x is further to the right
 {
 send {wheelright}
 }
If (start_y -5 > end_y) ; if end_y is further to the top
 {
 send {wheelup}
 sleep 10 ;slow the scrolling down a little bit
 }
If (start_y + 5 < end_y) ; if end_y is further to the bottom
 {
 ;Send {Down}
 Send {wheeldown}
 sleep 10
 }
mousemove, start_x, start_y
return