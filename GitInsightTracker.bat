@echo off
echo.
echo ======================================================
echo                  GIT INSIGHTS SCRIPT
echo 	Developed by Dani-op
echo ======================================================
echo.
echo ======================================================
echo                  Counting Git Commits:
echo ======================================================
git shortlog -s -n --all --no-merges
echo Press any key to continue . . .
pause >nul
echo.
echo ======================================================
echo     === Obtaining Detailed Commit Messages: ===
echo ======================================================
git log --pretty=format:"%%cn committed %%h on %%cd" --no-merges --full-history --oneline --no-notes --branches --source
echo Press any key to continue . . .
pause >nul
echo.
echo ======================================================
echo 	=== Visualizing Commits with Graph: ===
echo ======================================================
git log --pretty=format:"%%cn committed %%h on %%cd" --no-merges --full-history --oneline --no-notes --branches --source --graph
echo Press any key to continue . . .
pause >nul
echo.
echo ======================================================
echo 	=== Log Statistics: ===
echo ======================================================
git log --stat
echo Press any key to continue . . .
pause >nul
echo.
echo ======================================================
echo 	=== Changes Since Last Commit: ===
echo ======================================================
git diff --stat
echo Press any key to continue . . .
pause >nul
echo.
echo ======================================================
echo 	=== Show Branches and Their Commits: ===
echo ======================================================
git show-branch
echo Press any key to continue . . .
pause >nul
echo.
echo === End of Script ===
pause >nul
