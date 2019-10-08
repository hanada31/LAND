@echo off
@call "%~dp0\init.bat" %1 %2 %3
@ping 127.0.0.1 -n 5 >nul 
aapt package -f -M %APKFOLDER%\AndroidManifest.xml -S %APKFOLDER%\res -I %ANDROIDJAR% -F %APKFOLDER%\bin\resources.ap_  
java -cp %SDKLIB% com.android.sdklib.build.ApkBuilderMain  %APKFOLDER%\%2.apk  -v -u -z %APKFOLDER%\bin\resources.ap_ -f %APKFOLDER%\bin\classes.dex -rf  %APKFOLDER%\src    
java -jar %TOOLPATH%\signapk.jar %TOOLPATH%\platform.x509.pem %TOOLPATH%\platform.pk8  %APKFOLDER%\%2.apk  %APKFOLDER%\%2_signed.apk 
