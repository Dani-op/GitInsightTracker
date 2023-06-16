@echo off
cls
echo.
echo ======================================================
echo       GIT INSIGHTS SCRIPT (Developed by Dani-op)
echo ======================================================
echo.

:commitCount
echo ======================================================
echo 	=== ASCII Bar Graph for Commit Counts: ===
echo ======================================================
echo Do you want to continue? (Y/N)
set /p UserInput=
if /i "%UserInput%"=="Y" (
    git shortlog -s -n --all --no-merges
    git shortlog -s -n --all --no-merges > temp.txt
	setlocal enabledelayedexpansion
    for /f "tokens=1,2" %%a in (temp.txt) do (
        set "bar="
        for /l %%i in (1,1,%%a) do set "bar=!bar!#"
        echo %%b : !bar!
    )
    del temp.txt
) else (
    goto commitMessages
)
echo Press any key to continue . . .
pause >nul

:commitMessages
echo.
echo ======================================================
echo     === Commit Messages and Usernames from each Contributor: ===
echo ======================================================
echo Do you want to continue? (Y/N)
set /p UserInput=
if /i "%UserInput%"=="Y" (
    git shortlog --pretty=short --no-merges
) else (
    goto detailedCommit
)
echo Press any key to continue . . .
pause >nul

:detailedCommit
echo.
echo ======================================================
echo     === Obtaining Detailed Commit Messages: ===
echo ======================================================
echo Do you want to continue? (Y/N)
set /p UserInput=
if /i "%UserInput%"=="Y" (
	git log --oneline --pretty=format:"%%cn committed %%h on %%cd" --no-merges --full-history --oneline --no-notes --branches --source --abbrev-commit --show-linear-break --left-right) 
	else (
    goto visualizingCommits
)
echo Press any key to continue . . .
pause >nul

:visualizingCommits
echo.
echo ======================================================
echo 	=== Visualizing Commits with Graph: ===
echo ======================================================
echo Do you want to continue? (Y/N)
set /p UserInput=
if /i "%UserInput%"=="Y" (
    git log --pretty=format:"%%cn committed %%h on %%cd" --no-merges --full-history --oneline --no-notes --branches --source --graph --abbrev-commit
) else (
    goto endScript
)
echo Press any key to continue . . .
pause >nul

:endScript
echo.
echo === End of Script ===
pause >nul
