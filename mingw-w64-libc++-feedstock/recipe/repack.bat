@echo off
echo Building %PKG_NAME%
set "src=%SRC_DIR%\%PKG_NAME%"
set "dst=%PREFIX%\Library"
if exist "%src%\.BUILDINFO" del "%src%\.BUILDINFO"
if exist "%src%\.MTREE" del "%src%\.MTREE"
if exist "%src%\.PKGINFO" del "%src%\.PKGINFO"
if exist "%src%\.INSTALL" del "%src%\.INSTALL"
robocopy /E /NFL /NDL /NP /NJH /NJS "%src%" "%dst%"
if %ERRORLEVEL% GEQ 8 exit /b 1
exit /b 0
