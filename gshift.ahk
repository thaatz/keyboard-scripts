; psuedo g-shift for the dumb mice that dont have the feature built in like g203
; to use, bind the g-shift button to F6
; set dpi to max dpi you would use and the sensitivity shifting will reduce it from there
;--------------------------------------------------------------------------------

#InstallKeybdHook
#SingleInstance force ;if there is a previous instance of this script already running, the newest instance will replace the old one
SendMode Input

;side mouse buttons
;https://autohotkey.com/docs/KeyList.htm#Joystick
;--------------------
;forward button
;--------------------
f6 & XButton2::send {7}

;--------------------
;back button
;--------------------
f6 & XButton1::send {6}

;change mouse sesnitivity
;https://autohotkey.com/docs/commands/DllCall.htm
;cycle through stuff
;https://autohotkey.com/board/topic/56147-help-cycling-through-a-list-of-options-with-one-hotkey/
;--------------------
;mouse1
;--------------------
;decrease sensitivity
f6 & LButton::
 mspeed--
 if mspeed = 3
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 10, UInt, 0)
 else if mspeed = 2
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 7, UInt, 0)
 else if mspeed <= 1
 {
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 2, UInt, 0)
    mspeed = 1
 }
return

;--------------------
;mouse2
;--------------------
f6 & RButton::
 mspeed++
 if mspeed = 1
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 2, UInt, 0)
 else if mspeed = 2
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 7, UInt, 0)
 else if mspeed >= 3
 {
    DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, 10, UInt, 0)
	mspeed = 3
 }
return