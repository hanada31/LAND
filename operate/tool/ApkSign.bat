@echo off
@call "%~dp0\init.bat" %1 %2 %3
java -jar %~dp0signapk.jar %~dp0platform.x509.pem %~dp0platform.pk8 %APKOUTPATH%\dist\%APKNAME%.apk %APKPATH%_signed.apk 