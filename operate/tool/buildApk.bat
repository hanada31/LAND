@echo off
@call "%~dp0\init.bat" %1 %2 %3
aapt package -f -m -J %APKFOLDER%\gen -S %APKFOLDER%\res -M %APKFOLDER%\AndroidManifest.xml -I %ANDROIDJAR%  
javac -source 1.6 -target 1.6 -cp  %BFSTESTJAR%;%SOLOJAR%;%JUNITJAR% -bootclasspath %ANDROIDJAR% -d %APKFOLDER%\bin %APKFOLDER%\src\%SRCFOLDER%\test\*.java %APKFOLDER%\gen\%SRCFOLDER%\test\R.java   
cd %APKFOLDER%\bin\ 
jar cvf %APKNAME%.jar * 
cd ..
dx --dex --output=%APKFOLDER%\bin\classes.dex %APKFOLDER%\bin\%APKNAME%.jar %BFSTESTJAR% %SOLOJAR% %JUNITJAR% 