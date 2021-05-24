
#InstallKeybdHook
#SingleInstance force ;if there is a previous instance of this script already running, the newest instance will replace the old one
SendMode Input

; modified from https://natsakis.com/post/quake/
; dont use ctrl tilde because it is used by vscode to bring up terminal
#sc029::
; ^space:: ; ctrl space would be good except i will hit this combo on games a lot

DetectHiddenWindows, on
IfWinExist ahk_class CASCADIA_HOSTING_WINDOW_CLASS
{

	IfWinActive ahk_class CASCADIA_HOSTING_WINDOW_CLASS
	  {
			WinHide ahk_class CASCADIA_HOSTING_WINDOW_CLASS
			WinActivate ahk_id %active_id%
		}
	else
	  {
		WinGet, active_id, ID, A
		WinShow ahk_class CASCADIA_HOSTING_WINDOW_CLASS
		WinActivate ahk_class CASCADIA_HOSTING_WINDOW_CLASS
	  }
}
else
	Run wt.exe

DetectHiddenWindows, off
return