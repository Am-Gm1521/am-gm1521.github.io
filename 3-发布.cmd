@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  发布到 GitHub Pages
echo ============================================
echo.
call hexo clean
call hexo deploy
if errorlevel 1 (
  echo.
  echo [失败] 请检查网络，或运行 ssh -T git@github.com 测试认证
  pause
  exit /b
)
echo.
echo ============================================
echo  发布完成
echo  约 30 秒后访问：https://am-gm1521.github.io/
echo ============================================
pause
