REM by Dreg https://buzzpirat.com/


if defined PRE (
echo DEFINED!
SET MP_EXTRA_CC_PRE=-DBUZZ_VER=%BZVER% -DBPV3_COMP=1 
SET 
)else (
SET PRE=
SET MP_EXTRA_CC_PRE=-DBUZZ_VER=%BZVER%
)

SET PATH=C:\Program Files\Microchip\MPLABX\v6.15\gnuBins\GnuWin32\bin;%PATH%;

cd busPirate.X  || goto :error
make clean  || goto :error
make  || goto :error
cp dist\BusPirate_v3\production\busPirate.X.production.hex ..\%PRE%BZ-firmware-v7.1.%BZV%.lowcase.hex  || goto :error
make clean || goto :error

echo UPPER CASE... please be patient, wait ~1 minute
@echo off
setlocal EnableDelayedExpansion
> ..\%PRE%BZ-firmware-v7.1.%BZV%.hex (
    for /F "delims=" %%a in (..\%PRE%BZ-firmware-v7.1.%BZV%.lowcase.hex) do (
        set "line=%%a"
        for %%b in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
            set "line=!line:%%b=%%b!"
        )
        <nul set /p ="!line!"
        echo.
    )
)
set /a "count=0"
set /a "max_lines=5"

for /F "delims=" %%a in (..\%PRE%BZ-firmware-v7.1.%BZV%.hex) do (
    set /a "count+=1"
    echo %%a
    if !count! geq !max_lines! goto :endpt
)
:endpt
echo ....
for %%I in ("..\%PRE%BZ-firmware-v7.1.%BZV%.hex") do set size1=%%~zI
for %%I in ("..\%PRE%BZ-firmware-v7.1.%BZV%.lowcase.hex") do set size2=%%~zI
if !size1! equ !size2! (
    echo OK CONVERTING UPPER CASE
	@echo on
) else (
    echo ERROR CONVERTING UPPER CASE
	@echo on
	goto :error
)

goto oki
:error
echo ERROR!
pause
:oki

