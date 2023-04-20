@echo off
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start C:\Users\tankh\AppData\Local\Programs\signal-desktop\Signal.exe
   rem start C:\Users\tankh\AppData\Local\WhatsApp\WhatsApp.exe
   start "whatsapp" /B "%USERPROFILE%/Desktop/WhatsAppX.lnk"
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  start C:\Users\tankh\AppData\Local\Programs\signal-desktop\Signal.exe
  rem MS UWP restrictions does not allow running the .exe directly
  rem Created a WhatsAppX link and placed on Desktop
  start "whatsapp" /B "%USERPROFILE%/Desktop/WhatsAppX.lnk"
) else (
  echo "Warning: %computername% not yet supported"
)
