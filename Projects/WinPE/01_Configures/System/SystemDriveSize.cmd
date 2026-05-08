call :USE_WES_FBWF
goto :EOF

:USE_WES_FBWF
echo Enable 12GB cache size with Windows Embedded Standard's fbwf driver
copy /y fbwf_12GB.cfg "%X_WIN%\fbwf.cfg"
copy /y fbwf.sys "%X_SYS%\drivers\fbwf.sys"
rem support exFAT boot.sdi
reg add HKLM\Tmp_SYSTEM\ControlSet001\Services\exfat /v Start /t REG_DWORD /d 0 /f
goto :EOF
