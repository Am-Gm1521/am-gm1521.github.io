@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  发布：推送到 GitHub，由 Actions 自动构建
echo ============================================
echo.
git add -A
git commit -m "post: update content"
git push origin source
if errorlevel 1 (
  echo.
  echo [失败] 请检查网络，或运行 ssh -T git@github.com 测试
  pause
  exit /b
)
echo.
echo ============================================
echo  已推送，GitHub 正在构建
echo  约 1-2 分钟后访问：https://am-gm1521.github.io/
echo  进度：https://github.com/Am-Gm1521/am-gm1521.github.io/actions
echo ============================================
pause
