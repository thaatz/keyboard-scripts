;https://autohotkey.com/board/topic/148849-help-to-map-keyboard-keys-on-mouse-axis/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#installKeybdHook

;ideas
;change the middle trackpoint mouse button to be middle mouse button and then we can just use the capslock key for scrolling using this script
;capslock changes mouse move to scroll
;capslock changes esdf to arrows

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
Sleep 1
MouseGetPos, end_x, end_y
BlockInput, MouseMove ;stop the mouse temporarily, basically as a speed limiter
mousemove, start_x, start_y
;BlockInput, MouseMoveoFF
If (start_x > end_x) ; if end_x is further to the left
 {
 send {wheelleft}
 }
If (start_x < end_x) ; if end_x is further to the right
 {
 send {wheelright}
 }
If (start_y > end_y) ; if end_y is further to the top
 {
 send {wheelup}
 sleep 10 ;slow the scrolling down a little bit
 }
If (start_y < end_y) ; if end_y is further to the bottom
 {
 ;Send {Down}
 Send {wheeldown}
 sleep 10
 }
mousemove, start_x, start_y
return