@ECHO OFF
:menu
cls
ECHO ##################################################
ECHO #    1 : Show Current Date AD and BE             #
ECHO #    2 : Delete all file except select file      #
ECHO #    3 : Dice Game                               #
ECHO ##################################################
SET /P choice=Please Enter choice :
IF %choice% == 1 GOTO ShowDate
IF %choice% == 2 GOTO DeleteFile
IF %choice% == 3 GOTO DiceGame
IF %choice% == e EXIT
GOTO menu

:ShowDate

GOTO ExitAndMenu

:DeleteFile
REM Delete File but not delete file in except file
ECHO
ECHO ============== Delete File ==============
SET /P Except=Please Enter Except File :
FOR %%i IN (*) DO IF NOT %%i == %Except% DEL "%%i"
REM End Delete file
GOTO ExitAndMenu

:DiceGame

GOTO ExitAndMenu

:ExitAndMenu
SET /P choice=Please Enter e(Exit) or m(Menu) :
IF %choice% == m GOTO menu
IF %choice% == e EXIT
GOTO ExitAndMenu