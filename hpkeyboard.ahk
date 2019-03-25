; generic keyboard script for chopping off numpad and arrow keys/home cluster and adding in layers
; ARROW KEYS - use [RAlt]+[i][j][k][l]
; ARROW KEYS - use [RAlt]+ {[}{;}{'}{enter}
; HOME CLUSTER -	HOME is p
;					END is ]
;					PGUP is backspace
;					PGDN is \
; NUMPAD - use [LShift][LAlt]+[7][8][9],[u][i][o],[j][k][l]
; CAPSLOCK - use [RShift]+[CapsLock]
;using touchcursor with ` as function modifier for arrow keys and homerow stuff (spacefn but using ` instead of space)

#NoEnv
#SingleInstance Force
;#UseHook On ;this is on by default

;CapsLock::send {pause downtemp} ;capslock and use with touchcursor?
;CapsLock up:: send {pause up}
;CapsLock::help ;pretty much no keyboard has the help key and pretty much no software uses the help key
CapsLock::f9
>+Capslock::CapsLock ; right shift + capslock will toggle capslock

;de wae to do it without touchcursor
;https://superuser.com/questions/799557/autohotkey-use-capslock-key-as-modifier-key
#if getkeystate("capslock", "P") ;we're getting the physical state of the capslock key itself, so even if we rebind it to something else this will still work
	j::numpad1
	k::numpad2
	l::numpad3
	u::numpad4
	i::numpad5
	o::numpad6
	7::numpad7
	8::numpad8
	9::numpad9
	space::numpad0
	.::numpaddot
	/::numpaddiv
	f::backspace
	
	backspace::delete
#if

;--------------------
; ARROW KEYS
;--------------------
;i think its ok to take alt for these https://en.wikipedia.org/wiki/Table_of_keyboard_shortcuts
RAlt::return ;this will disable the alt toggle from RAlt, but still allow Alt key combos. This just makes it so that if you mess up, the context menu doesnt open up after pressing RAlt
;getkeystate doesnt work with alt, so we need to bind the alt layer manually with all modifier combinations
>!i::send {up}
>!j::send {left}
>!k::send {down}
>!l::send {right}
>!+i::send +{up} ;gotta manually add the shift binds
>!+j::send +{left}
>!+k::send +{down}
>!+l::send +{right}
>!^i::send ^{up} ;gotta manually add the ctrl binds
>!^j::send ^{left}
>!^k::send ^{down}
>!^l::send ^{right}
>!^+i::send ^+{up} ;gotta manually add the ctrl+shift binds
>!^+j::send ^+{left}
>!^+k::send ^+{down}
>!^+l::send ^+{right}

;{[}{;}{'}{enter} keys are more comfortable to hit with ralt
![::send {up}
!`;::send {left}
!'::send {down}
!Enter::send {right}
+![::send +{up} ;gotta manually add the shift binds
+!`;::send +{left}
+!'::send +{down}
+!Enter::send +{right}
^![::send ^{up} ;gotta manually add the ctrl binds
^!`;::send ^{left}
^!'::send ^{down}
^!Enter::send ^{right}

;control modifiers, so you can keep your right hand on alt to do the arrow keys
>!^z::send ^{z}
>!^x::send ^{x}
>!^c::send ^{c}
>!^v::send ^{v}

;aerosnap
>!#i::send {i up}#{up} ; disable settings hotkey in windows 10
>!#j::send #{left}
>!#k::send #{down}
>!#l::send {l up}#{right} ;disable the windows lock hotkey
>!#[::send #{up}
>!#;::send #{left}
>!#'::send #{down}
>!#enter::send #{right}

;~`; & l::send {l up} ;these two dont work, but i was trying to make a fix that would disable win+l when using arrow keys from touchcursor
;#;::send {l up}

;--------------------
; HOME CLUSTER
;--------------------
!u::home
!o::end
!+u::+home ;shift binds
!+o::+end
!^u::^home ;ctrl binds
!^o::^end
!p::home
!]::end
!Backspace::send {pgup}
!\::send {pgdn}

;*RShift::send {blind}{up}
;*RAlt::send {blind}{Left}
;*AppsKey::send {Down}
;RCtrl::send {RCtrl UP}{Right} ;we use rctrl up first because for some reason the ctrl will toggle after repeated uses of the right arrow
;~*RCtrl::
;	if GetKeyState("RCtrl", "P")
;	{
;		send {ctrl up}{blind}{right down}
;	}
;	else
;	send {right up}
;return

printscreen::run snippingtool.exe
