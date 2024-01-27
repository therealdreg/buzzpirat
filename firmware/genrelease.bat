SET BZV=11
SET BZVER=ELEVEN




del /F *.hex  || goto :ierror
SET PRE=BPCOMP
@call genrelease_int.bat
cd ..
set PRE=
@call genrelease_int.bat
cd ..
goto ioki
:ierror
echo ERROR!
:ioki
pause