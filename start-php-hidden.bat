@echo off
chcp 65001
echo 在后台启动 PHP FastCGI...
RunHiddenConsole.exe d:\apps\php\php-cgi.exe -b 127.0.0.1:9000
echo PHP-CGI 已在后台启动 