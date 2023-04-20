@echo off
rem Spacemacs naming conventions is <spacemacs-type>-<machinename>-<os>
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start /B emacs --with-profile spacemacs -title spacemacs-kwee1-win
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  start /B emacs --with-profile spacemacs -title spacemacs-air-win
) else (
  echo "Warning: %computername% not yet supported"
)
