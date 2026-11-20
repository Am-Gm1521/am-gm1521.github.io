@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  本地预览
echo ============================================
echo.
echo 浏览器将打开 http://localhost:4000/
echo 改完文章保存后，刷新浏览器即可看到
echo 关闭预览：在本窗口按 Ctrl+C
echo.
start "" http://localhost:4000/
call hexo server
