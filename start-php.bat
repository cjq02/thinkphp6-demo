@echo off
chcp 65001
echo 启动 PHP FastCGI...
cd /d d:\apps\php

REM 检查PHP-CGI.exe是否存在
if not exist php-cgi.exe (
  echo 错误: 找不到 php-cgi.exe
  echo 当前目录: %CD%
  pause
  exit
)

REM 检查端口是否已被占用
netstat -ano | findstr :9000
if %ERRORLEVEL% EQU 0 (
  echo 警告: 端口9000已被占用，可能需要先关闭已运行的PHP-CGI
)

echo 正在启动 PHP-CGI...
php-cgi.exe -b 127.0.0.1:9000

REM 如果PHP-CGI立即退出，此行会执行
echo PHP-CGI已退出！检查是否有错误。
pause 