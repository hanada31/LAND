@echo off
@set APKFOLDER=%~dp0..\..\%1
@set APKNAME=%2
@set APKPATH=%APKFOLDER%\%APKNAME%
@set APKOUTPATH=%APKPATH%
@set APKTOOL=%~dp0apktool.jar
@set TOOLPATH=%~dp0..\..\operate\tool
@set ANDROIDJAR=%~dp0..\..\libs\android.jar
@set SDKLIB=%~dp0..\..\libs\sdklib.jar
REM @set SDK=F:\AndroidSdk\android-sdk-windows\
REM @set ANDROIDJAR=%SDK%platforms\android-17\android.jar
REM @set SDKLIB=%SDK%tools\lib\sdklib.jar
@set BFSTESTJAR=%~dp0..\..\libs\BFStest.jar
@set SOLOJAR=%~dp0..\..\libs\robotium-solo.jar
@set JUNITJAR=%~dp0..\..\libs\junit.jar
REM 1f04f2b3
REM 022KNG141D000020