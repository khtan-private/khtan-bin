@echo on
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   start "ubuntu2" /B wsl --distribution Ubuntu-22.04 -- emacs --with-profile spacemacs -title kwee1-ubuntu-spacemacs
) else if /I "%computername%"=="air" (
  echo "%computername% to be supported"
) else (
  echo "%computername% not yet supported"
)

