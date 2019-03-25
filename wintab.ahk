#NoEnv ;https://autohotkey.com/docs/commands/_NoEnv.htm

;adding windows 10 functionality into windows 7

; DetectHiddenWindows, On

;bind the thing to win+`
#Tab::
send #``
return

;win shift s, snipping tool just like in windows 10 creators update
+#s::
if WinExist("Snipping Tool"){
	;WinWait, Snipping Tool ;if the snipping tool is already open, this will start a new clip
	WinActivate, Snipping Tool
	Send ^n
} else {
	run snippingtool
}
return