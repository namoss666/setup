@echo off

:: Set the path to the executable
set "exePath=C:\Program Files\Snippingtool\mapper.exe"
set "driver1=Vsn.sys"
set "data=.data"

:: Change to the directory where the executable is located
cd /d "C:\Program Files\Snippingtool"


net stop winmgmt /y
:: Run the command with the specified parameters
"%exePath%" %driver1% %data%

:: Check the error level to determine if the command was successful
if %errorlevel% equ 0 (
    echo Setup successfully.
net start winmgmt /y
) else (
    echo Command failed setup with error code %errorlevel%.
)

net start winmgmt
:: Keep the command window open
Exit