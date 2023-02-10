@echo off
echo.

title Wobbly-Tooth-Save-Manager.bat
TASKKILL /t /f /im "steam.exe"
TASKKILL /t /f /im "yuzu.exe"
TASKKILL /t /f /im "citra-qt.exe"
TASKKILL /t /f /im "ISZ-Win64-Shipping.exe"  
TASKKILL /t /f /im "ISZ-Win64-Shipping.exe"
TASKKILL /t /f /im "City2-Win64-Shipping.exe"

set isz_pc="%LOCALAPPDATA%\ISZ\Saved\SaveGames"
set ark_pc="%LOCALAPPDATA%\City2\Saved\SaveGames"
set vam_pc="%LOCALAPPDATA%\VS\Saved\SaveGames"

set isz_switch="%APPDATA%\yuzu\nand\user\save\0000000000000000\ACFD420771E844E4267F33DC770797BC\0100954014718000"
set ark_switch="%APPDATA%\yuzu\nand\user\save\0000000000000000\ACFD420771E844E4267F33DC770797BC\01008AB00FBA6000"
set vam_switch="%APPDATA%\yuzu\nand\user\save\0000000000000000\ACFD420771E844E4267F33DC770797BC\01007AE019B5A000"
set top_switch="%APPDATA%\yuzu\nand\user\save\0000000000000000\ACFD420771E844E4267F33DC770797BC\01009FF00A160000"

:: ADD LATER!!! (Update v1.3)
::set isz_3dsU="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\00190300\data\00000001"
::set isz_3dsE="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\00199700\data\00000001"

::set bmz_3dsE="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\001c9d00\data\00000001"
::set bmz_3dsU="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\001b4200\data\00000001"

::set tsb_3dsU="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\00125400\data\00000001"
::set tsb_3dsE="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\0012cc00\data\00000001"

::set bm_3dsE="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\0014da00\data\00000001"
::set bm_3dsU="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\0014c900\data\00000001"

::set tmh_3dsE="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\00176300\data\00000001"
::set tmh_3dsU="%APPDATA%\Citra\sdmc\Nintendo 3DS\00000000000000000000000000000000\00000000000000000000000000000000\title\00040000\0016f300\data\00000001"


if exist _backups (
  goto :start
) else (
  goto :nofolder0
)

:nofolder0
MKDIR _backups\ISZ-Saves\Switch
MKDIR _backups\ISZ-Saves\PC

MKDIR _backups\Arkady-Saves\Switch
MKDIR _backups\Arkady-Saves\PC

MKDIR _backups\TipTop-Saves\Switch

MKDIR _backups\VS-Saves\Switch
MKDIR _backups\VS-Saves\PC

MKDIR _backups\3DS-Saves\BattleMiner\EUR
MKDIR _backups\3DS-Saves\BattleMiner\USA

MKDIR _backups\3DS-Saves\BattleMinerZ\EUR
MKDIR _backups\3DS-Saves\BattleMinerZ\USA

MKDIR _backups\3DS-Saves\Ice_Station_Z\EUR
MKDIR _backups\3DS-Saves\Ice_Station_Z\USA

MKDIR _backups\3DS-Saves\Magic_Hammer\EUR
MKDIR _backups\3DS-Saves\Magic_Hammer\USA

MKDIR _backups\3DS-Saves\Toy_Stunt_Bike\EUR
MKDIR _backups\3DS-Saves\Toy_Stunt_Bike\USA


:: ADD LATER (Update v1.3)
::xcopy %isz_3dsE% "%CD%\_backups\3DS-Saves\Ice_Station_Z\EUR" /y
::xcopy %isz_3dsU% "%CD%\_backups\3DS-Saves\Ice_Station_Z\USA" /y

::xcopy %bmz_3dsE% "%CD%\_backups\3DS-Saves\BattleMinerZ\EUR" /y
::xcopy %bmz_3dsU% "%CD%\_backups\3DS-Saves\BattleMinerZ\USA" /y

::xcopy %bm_3dsE% "%CD%\_backups\3DS-Saves\BattleMiner\EUR" /y
::xcopy %bm_3dsU% "%CD%\_backups\3DS-Saves\BattleMiner\USA" /y

::xcopy %tsb_3dsE% "%CD%\_backups\3DS-Saves\Toy_Stunt_Bike\EUR" /y
::xcopy %tsb_3dsU% "%CD%\_backups\3DS-Saves\Toy_Stunt_Bike\USA" /y

::xcopy %tmh_3dsE% "%CD%\_backups\3DS-Saves\Magic_Hammer\EUR" /y
::xcopy %tmh_3dsU% "%CD%\_backups\3DS-Saves\Magic_Hammer\USA" /y







cls
goto :start

:start
cls
echo Created By: Cracko298
sleep 2
:menu0
cls
echo Page (1/3) - Steam Injects/Backups
echo.
echo 1 = Backup "Ice Station Z" PC/Steam Save-Data
echo 2 = Backup "Vampire Slayer" PC/Steam Save-Data
echo 3 = Backup "Arkady Smith" PC/Steam Save-Data
echo.
echo 6 = Inject Backup of "Ice Station Z" PC/Steam Save-Data
echo 7 = Inject Backup of "Vampire Slayer" PC/Steam Save-Data
echo 8 = Inject Backup of "Arkady Smith" PC/Steam Save-Data
echo.
echo 9 = Next Page (Switch Injects/Backups)
echo 0 = Exit The Save-Manager
echo.
:choice1
set /P c=What Option(s) Would you Like to Select?: 
if /I "%c%" EQU "1" goto :m1
if /I "%c%" EQU "2" goto :m2
if /I "%c%" EQU "3" goto :m3
if /I "%c%" EQU "6" goto :m6
if /I "%c%" EQU "7" goto :m7
if /I "%c%" EQU "8" goto :m8
if /I "%c%" EQU "9" goto :menu1
if /I "%c%" EQU "0" goto :exit
goto :menu0

:exit
sleep 1
cls
exit

:m1 
cls
echo %isz_pc%
xcopy %isz_pc% "%CD%\_backups\ISZ-Saves\PC" /y
echo.
echo "Ice Station Z" Steam/PC Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu0

:m2
cls
xcopy %vam_pc% "%CD%\_backups\VS-Saves\PC" /y
echo.
echo "Vampire Slayer: The Resurrection" Steam/PC Save-Data Was Successfully Backed-Up.
echo. 
sleep 3
goto :menu0

:m3
cls
echo %ark_pc%
xcopy %ark_pc% "%CD%\_backups\Arkady-Saves\PC" /y
echo.
echo "The Casebook of Arkady Smith" Steam/PC Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu0

:m6
cls
xcopy "%CD%\_backups\ISZ-Saves\PC" %isz_pc% /y
echo.
echo Injected "Ice Station Z" Steam/PC Save-Data Successfully.
echo.
sleep 3
goto :menu0

:m7
cls
xcopy "%CD%\_backups\VS-Saves\PC" %vam_pc% /y
echo.
echo Injected "Vampire Slayer: The Resurrection" Steam/PC Save-Data Successfully.
sleep 3
goto :menu0

:m8
cls
xcopy "%CD%\_backups\Arkady-Saves\PC" %ark_pc% /y
echo.
echo Injected "The Casebook of Arkady Smith" Steam/PC Save-Data Successfully.
echo.
sleep 3
goto :menu0

:menu1
cls
echo Page (2/3) - Switch Injects/Backups
echo.
echo 1 = Backup "Ice Station Z" Switch Save-Data
echo 2 = Backup "Vampire Slayer" Switch Save-Data
echo 3 = Backup "Arkady Smith" Switch Save-Data
echo 4 = Backup "Toy Stunt Bike" Switch Save-Data
echo.
echo 5 = Inject Backup of "Ice Station Z" Switch Save-Data
echo 6 = Inject Backup of "Vampire Slayer" Switch Save-Data
echo 7 = Inject Backup of "Arkady Smith" Switch Save-Data
echo 8 = Inject Backup of "Toy Stunt Bike" Switch Save-Data
echo.
echo 9 = Next Page (3DS Injects/Backups) (UNDER DEVELOPMENT!!!)
echo 0 = Previous Page (Steam Injects/Backups)
echo C = Credits
echo.
:choice2
set /P c=What Option(s) Would you Like to Select?: 
if /I "%c%" EQU "1" goto :p1
if /I "%c%" EQU "2" goto :p2
if /I "%c%" EQU "3" goto :p3
if /I "%c%" EQU "4" goto :p4
if /I "%c%" EQU "5" goto :p6
if /I "%c%" EQU "6" goto :p7
if /I "%c%" EQU "7" goto :p8
if /I "%c%" EQU "8" goto :p9
if /I "%c%" EQU "0" goto :menu0
if /I "%c%" EQU "C" goto :credits
if /I "%c%" EQU "c" goto :credits
goto :menu1

:p1
cls
echo %isz_switch%
xcopy %isz_switch% "%CD%\_backups\ISZ-Saves\Switch" /y
echo.
echo "Ice Station Z" Switch Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu1

:p2
cls
echo %vam_switch%
xcopy %vam_switch% "%CD%\_backups\VS-Saves\Switch" /y
echo.
echo "Vampire Slayer: The Resurrection" Switch Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu1

:p3
cls
echo %ark_switch%
xcopy %ark_switch% "%CD%\_backups\Arkady-Saves\Switch" /y
echo.
echo "The Casebook of Arkady Smith" Switch Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu1

:p4
cls
echo %top_switch%
xcopy %top_switch% "%CD%\_backups\TipTop-Saves\Switch" /y
echo.
echo "Toy Stunt Bike: TipTop's Trials" Switch Save-Data Was Successfully Backed-Up.
echo.
sleep 3
goto :menu1

:p6
cls
xcopy "%CD%\_backups\ISZ-Saves\Switch" %isz_switch% /y
echo.
echo Injected "Ice Station Z" Switch Save-Data Successfully.
echo.
sleep 3
goto :menu1

:p7
cls
xcopy "%CD%\_backups\VS-Saves\Switch" %vam_switch% /y
echo.
echo Injected "Vampire Slayer: The Resurrection" Switch Save-Data Successfully.
echo.
sleep 3
goto :menu1

:p8
cls
xcopy "%CD%\_backups\Arkady-Saves\Switch" %ark_switch% /y
echo.
echo Injected "The Casebook of Arkady Smith" Switch Save-Data Successfully.
echo.
sleep 3
goto :menu1

:p9
cls
xcopy "%CD%\_backups\TipTop-Saves\Switch" %top_switch% /y
echo.
echo Injected "Toy Stunt Bike: TipTop's Trials" Switch Save-Data Successfully.
echo.
sleep 3
goto :menu1

:credits
cls
echo.
echo         Development Team:                                 Special Thanks To:
echo.
echo         Cracko298   (Developer)                           Wobbly Tooth Ltd.   (Developer of These Games)
echo         SpeakerZ    (Tester)                              Lolmoore2           (Original Idea)
echo         Gage.C      (Tester)                              Nunchuck            (Supporter)
echo                                                           Orange 8-)          (Supporter)
echo                                                           QeyLime             (Supporter)
echo                                                           TopsDaily           (Supporter)
echo.
echo.
echo.
sleep 5
echo.
@pause
goto :menu1