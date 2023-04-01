@echo on
cd %HOME%
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
) else if /I "%computername%"=="air" (
  echo "%computername% to be supported"
) else (
  echo "%computername% not yet supported"
)
