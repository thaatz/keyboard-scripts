#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#installKeybdHook

; control
^space::tab
;^LBUTTON::tab
; probably going to have issues with ctrl clicking items for like selecting items or soemthing

; alt
!space::tab
;!LBUTTON::tab

; super
#space::tab


; for thinkpad we could use the mouse buttons in a similar fashion to how thumb clusters are used.
; https://stackoverflow.com/questions/3525132/mouse-button-modifiers-autohotkey
; ^LBUTTON::SendInput,^{tab}
