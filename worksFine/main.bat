@echo off
cls



REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 1 /F
REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /f /d C:/test/wallpaper.bmp
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
start explorer.exe