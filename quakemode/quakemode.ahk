
; modified from https://natsakis.com/post/quake/
; Changing the default escape character
; Change your hotkey here
#sc029::

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