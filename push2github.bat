@echo off
chcp 65001 >nul
cd /d "%~dp0"
git add -A
git commit -m "Global Mining Map V1.0"
git push -u github master --force
pause