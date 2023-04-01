@echo on
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start "usa"  /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="usa" --profile-directory="Profile 5"
   start "beam" /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="beam" --profile-directory="Profile 1"
   start "even" /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --title="even" --profile-directory="Profile 3"
) else if /I "%computername%"=="air" (
  echo "%computername% to be supported"
) else (
  echo "%computername% not yet supported"
)
