@echo off
rem Spacemacs naming conventions is <spacemacs-type>-<machinename>-<os>
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start "C:\Program Files (x86)\ECCO\ecco32.exe" "g:\My Drive\za\family-usa.eco"
   start "C:\Program Files (x86)\ECCO\ecco32.exe" "g:\My Drive\za\eaglecap.eco"
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  start "C:\Program Files (x86)\ECCO\ecco32.exe" "C:\Users\tankh\GDrive\tan.k.h.usa@gmail.com\za\family-usa.eco"
  start "C:\Program Files (x86)\ECCO\ecco32.exe" "C:\Users\tankh\GDrive\tan.k.h.usa@gmail.com\za\eaglecap.eco"
) else (
  echo "Warning: %computername% not yet supported"
)
