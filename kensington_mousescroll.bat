REM after installing kensington TrackballWorks, it will always set the vertical mouse scrolling to 1 lines instead of the default 3.
REM this makes scrolling with your usual mouse a lot slower. so this script will reset it to 3 on startup. put it in your startup folder or something
REM https://stackoverflow.com/questions/44985682/how-do-i-change-mouse-settings-in-my-batch-script/55371778#55371778
reg add "HKCU\Control Panel\Desktop" /v WheelScrollLines /t REG_SZ /d 3 /f
