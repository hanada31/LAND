@call "%~dp0\init.bat" %1 %2 %3
start /min "logcat" CMD /c call %~dp0\log.bat %4