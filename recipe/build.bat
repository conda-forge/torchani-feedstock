@echo on

set "SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%"

"%PYTHON%" -m pip install . -vvv --no-deps
if errorlevel 1 exit /b 1
