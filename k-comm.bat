@echo on
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start C:\Users\tankh\AppData\Local\Programs\signal-desktop\Signal.exe
   start C:\Users\tankh\AppData\Local\WhatsApp\WhatsApp.exe
) else if /I "%computername%"=="air" (
  echo "%computername% to be supported"
) else (
  echo "%computername% not yet supported"
)
