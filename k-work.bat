@echo on
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start /B emacs --with-profile spacemacs -title kwee1-win-spacemacs
   start "C:\Program Files (x86)\ECCO\ecco32.exe" "g:\My Drive\za\eaglecap.eco"
   start "C:\Program Files (x86)\ECCO\ecco32.exe" "g:\My Drive\za\family-usa.eco"
) else if /I "%computername%"=="air" (
  echo "%computername% to be supported"
) else (
  echo "%computername% not yet supported"
)
