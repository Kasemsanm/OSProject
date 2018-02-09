@ECHO OFF
COLOR 2
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
IF %choice% == 3 GOTO GuessDiceGame
IF %choice% == e EXIT
GOTO menu

:ShowDate
cls
SET Weekday=%date:~0,3%
SET Month=%date:~4,2%
SET Day=%date:~7,2%
SET BEYear=%date:~10,4%
SET /A ADYear=%BEYear%+543
ECHO.
ECHO ====== SHOW DATE A.D. AND B.E. ======
ECHO     B.E. :: %Weekday% / %Day% / %Month% / %BEYear%
ECHO     A.D. :: %Weekday% / %Day% / %Month% / %ADYear%
ECHO =====================================
ECHO.
GOTO ExitAndMenu

:DeleteFile
cls
ECHO.
ECHO ============== Delete File ==============
SET /P Except=Please Enter Except File :
FOR %%i IN (*) DO IF NOT %%i == %Except% DEL "%%i"
GOTO ExitAndMenu

:GuessDiceGame
cls
ECHO.
ECHO ============== Guess Dice Game ==============
SET /P UserGuess=Please Enter guess score of two dice (2 to 12 score) :
FOR %%i IN (2 3 4 5 6 7 8 9 10 11 12) DO IF %UserGuess% == %%i GOTO StartGame
GOTO GuessDiceGame
:StartGame
SET /A Rount=0

:Dice
SET /A Rount=%Rount%+1
SET /A Dice1=%random% %%6+1
SET /A Dice2=%random% %%6+1
SET /A Score=%Dice1% + %Dice2%

ECHO =================================
ECHO   Rount of Dice : %Rount%
ECHO   Dice1 is %Dice1%
ECHO   Dice2 is %Dice2%
ECHO   Dice Score : %Score%
ECHO   UserGuess : %UserGuess%
IF %Score% == %UserGuess%  GOTO endGame
ECHO =================================
ECHO ===    UserGuess Incorrect    ===
ECHO =================================
ECHO.
ECHO.
GOTO Dice

:endGame
ECHO =================================
ECHO ===     UserGuess Correct     ===
ECHO =================================
ECHO.
ECHO   Total Rount : %Rount%
ECHO.
GOTO ExitAndMenu

:ExitAndMenu
SET /P choice=Please Enter e(Exit) or m(Menu) :
IF %choice% == m GOTO menu
IF %choice% == e EXIT
GOTO ExitAndMenu