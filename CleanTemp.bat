cd d:\users\khtan\bin
d:
date /t > sdelete-temp.log
time /t >> sdelete-temp.log
sdelete -s %TEMP% >> sdelete-temp.log
sdelete -s c:\windows\temp > sdelete-windowstemp.log
