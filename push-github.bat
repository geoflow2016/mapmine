@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo   GitHub Pages 部署脚本
echo ========================================
echo.

echo 请先在 GitHub 创建仓库：
echo 1. 访问 https://github.com/new
echo 2. 仓库名: mines
echo 3. 选择 Public
echo 4. 不要勾选 README
echo 5. 点击 Create repository
echo.

set /p TOKEN="请输入 GitHub Personal Access Token: "

echo.
echo 推送代码到 GitHub...
git remote add github https://flow2026:%TOKEN%@github.com/flow2026/mines.git 2>nul
git push -u github master --force

echo.
echo 完成！
pause