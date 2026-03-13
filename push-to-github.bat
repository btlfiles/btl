@echo off
echo ================================
echo  BTL GitHub Push Script
echo ================================
echo.

cd /d "%~dp0"

echo Adding all changes...
git add -A

echo.
set /p MSG="Commit message (or press Enter for default): "
if "%MSG%"=="" set MSG=Update files

git commit -m "%MSG%"

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo ================================
echo  Done! Changes are live.
echo ================================
echo  Give it 1-2 minutes for GitHub
echo  Pages to rebuild.
echo ================================
pause
