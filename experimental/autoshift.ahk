; create an array/object of the keys you want shift:
Keys := ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"]

; create a hotkey once for each key in this object, using a For-Loop:
For each, key in Keys
{   
    Hotkey, $%key%, Shift_Key ; the $ prefix forces the keyboard hook to be used
    Hotkey, ~$%key% Up, Up_Key
}
return

Shift_Key:
    ThisHotkey := StrReplace(A_ThisHotkey, "$") ; remove the $ prefix 
    If (A_PriorHotKey = "$" ThisHotKey)
    {
        Text := ThisHotkey
        StringUpper, Text, Text
        ToolTip %Text%
        ; KeyWait, %ThisHotkey%           
        SendInput, {BS}+%ThisHotkey% ; "shift" it
        ToolTip
    }
    else
        SendInput, %ThisHotkey%
return

Up_Key:
return