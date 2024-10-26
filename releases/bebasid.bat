	IF "%version%" == "5.2" call :LITE2
	IF "%version%" == "5.1" call :LITE2
	call :FLUSH
	cls
	call :BANNER
	echo BEBASID telah berhasil terpasang
	echo.
	echo Tekan tombol apa saja untuk keluar
	pause >nul
	exit
)

:LITE3 (
	powershell -command "Invoke-WebRequest 'https://raw.githubusercontent.com/bebasid/bebasid/master/dev/resources/hosts.sfw' -OutFile 'hosts'"
	exit /b 0
)

:LITE2 (
	powershell -command "(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/bebasid/bebasid/master/dev/resources/hosts.sfw', 'hosts')"
	exit /b 0
)

:BANNER (
	echo.
	echo   ____  _____ ____    _    ____ ___ ____ 
	echo "| __ )| ____| __ )  / \  / ___|_ _|  _ \ "
	echo "|  _ \|  _| |  _ \ / _ \ \___ \| || | | |"
	echo "| |_) | |___| |_) / ___ \ ___) | || |_| |"
	echo "|____/|_____|____/_/   \_\____/___|____/ "
	echo.
	echo ==   PEDULI INTERNET NETRAL  ==
	echo.
	exit /b 0
)

:FLUSH (
	ipconfig /flushdns > nul
	ipconfig /release > nul
	ipconfig /renew > nul
	exit /b 0
)
endlocal
