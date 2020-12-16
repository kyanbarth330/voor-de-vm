@echo off
cls


reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /f /d C:/test/wallpaper.bmp
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters