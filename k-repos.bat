@echo off
rem List of machines and repo locations that need checking
rem .bat may not be correct format because not all machines have cmd
if /I "%computername%"=="kwee1" (
   echo "%computername% is supported"
   echo "d:/users/khtan/bin"
   echo "d:/users/khtan/emacsConfig"
   echo "d:/cprojects/gitnub/play"
   echo "d:/cprojects/lotus"
) else if /I "%computername%"=="kwee1-ubuntu" (
rem machine name is not correct
rem shell is also not correct
  echo "~/cprojects/lotus"
) else if /I "%computername%"=="air" (
  echo "%computername% is supported"
  echo "d:/users/khtan/bin"
  echo "d:/users/khtan/emacsConfig"
  echo "c:/cprojects/gitnub/play"
) else (
echo "Warning: %computername% not yet supported"
)
