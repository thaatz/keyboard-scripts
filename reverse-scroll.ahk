#NoEnv ;https://autohotkey.com/docs/commands/_NoEnv.htm

; https://autohotkey.com/board/topic/99344-ability-to-apply-scroll-reverse-script-to-touchpad-moves-ignore-mouse-moves/
; my toughbook CF-C2 cant reverse scrolling and is stuck on "natural" scrolling direction for some reason, which i dont like

#MaxHotkeysPerInterval 200

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return

; other resources
; https://www.autohotkey.com/boards/viewtopic.php?t=14265