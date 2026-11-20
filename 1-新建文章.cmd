@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo  新建文章
echo ============================================
echo.
echo 文件名用英文（会成为 URL）：如 segment-tree-1
set /p name=请输入文件名: 
if "%name%"=="" (
  echo 未输入，已取消。
  pause
  exit /b
)
call hexo new "%name%"
if errorlevel 1 (
  echo 创建失败。
  pause
  exit /b
)
if not exist "source\_posts\%name%.md" (
  echo 没找到生成的文件：source\_posts\%name%.md
  pause
  exit /b
)
set "editor="
if exist "%ProgramFiles%\Typora\Typora.exe" set "editor=%ProgramFiles%\Typora\Typora.exe"
if not defined editor where code >nul 2>nul && set "editor=code"
if not defined editor set "editor=notepad"
start "" "%editor%" "source\_posts\%name%.md"
echo.
echo 已用编辑器打开：source\_posts\%name%.md
echo 写完内容后，双击「3-发布.cmd」上线
pause
