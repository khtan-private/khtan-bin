setlocal
set HOME=c:\cprojects\github\khtan-private\spacemacsHome2
set PATH=C:\programs\emacs-26.3-x86_64\bin;%PATH%
echo "New spacemacs 2" > c:\tmp\announce2.txt
REM This will make every invocation load all the files
REM start runemacs -f resume c:\tmp\announce2.txt %*
REM This is to remind myself I am using <>2.bat
REM start runemacs c:\tmp\announce2.txt %*
start runemacs %*
endlocal
