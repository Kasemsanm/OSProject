ECHO OFF

:Menu
CLS
ECHO.
ECHO ==================== Menu ========================
ECHO    1 : Show Date A.D. and B.E
ECHO    2 : Dellete All file in Floder path Except file you select
ECHO    3 : Guess Dice
ECHO ==================================================
SET /P Choice=Plese Enter choice :
IF %Choice% == 1 GOTO ShowDate
IF %Choice% == 2 GOTO DelteFile
IF %Choice% == 3 GOTO GuessGame
GOTO Menu

:ShowDate
ECHO THIS Show Date
PAUSE
GOTO Menu

:DelteFile
ECHO THIS DelteFile
PAUSE
GOTO Menu

:GuessGame
ECHO THIS GuessGame
PAUSE
GOTO Menu

PAUSE 