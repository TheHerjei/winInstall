set WPKGROOT=\\dd\p\sw\_deploy
set SOFTWARE=\\dd\p\sw\win\x32
set PACKAGES=\\dd\p\sw\win\x32

cscript %WPKGROOT%\wpkg.js /synchronize /debug /nonotify
rem /debug
rem /quiet 
rem /nonotify