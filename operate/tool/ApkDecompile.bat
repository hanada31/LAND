@echo off
@call "%~dp0\init.bat" %1 %2 %3
java -jar %APKTOOL% d -f %APKPATH%.apk -o %APKOUTPATH% 