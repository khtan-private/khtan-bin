@echo off
rem Spacemacs naming conventions is <spacemacs-type>-<machinename>-<os>
set eprofile=spacemacs
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start /B emacs --with-profile spacemacs -title "%computername%-win-sp"
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  start /B emacs --with-profile spacemacs -title "%computername%-win-sp"
) else if /I "%computername%"=="ap-nylwne40vfl0" (
  echo "%computername% is supported"
  start /B emacs --with-profile %eprofile% -title "%computername%-win-%eprofile%"
) else (
  echo "Warning: %computername% not yet supported"
)
