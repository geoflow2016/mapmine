@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo 初始化Git仓库...
git init
git add index.html
git commit -m "全球矿业项目开源地图V1.0 - 8508条数据"

echo.
echo 添加远程仓库...
git remote add origin https://flow2026:23da27878e84fcf47f2c74a6a3162012@gitee.com/flow2026/mines.git

echo.
echo 推送代码...
git push -u origin master --force

echo.
echo 完成！
pause