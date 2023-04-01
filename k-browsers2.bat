@echo off
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start "odd"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="odd" --profile-directory="Profile 4"
   start "pcc"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="pcc" --profile-directory="Profile 7"
   start "poipoi"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="poipoi" --profile-directory="Profile 2"
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  start "odd"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="odd" --profile-directory="Profile 7"
  start "pcc"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="pcc" --profile-directory="Profile 6"
  start "poipoi"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="poipoi" --profile-directory="Profile 5"
) else (
  echo "Warning: %computername% not yet supported"
)
