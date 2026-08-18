@echo on

set "SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%"

if exist "%LIBRARY_LIB%\x64" set "LIB=%LIBRARY_LIB%\x64;%LIB%"

if /I "%~1"=="cuda" (
  "%PYTHON%" -m pip install . -vvv --no-deps --config-settings=--global-option=ext-all-sms
) else (
  "%PYTHON%" -m pip install . -vvv --no-deps
)
if errorlevel 1 exit /b 1
