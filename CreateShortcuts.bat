@echo off

set sctfolder=shortcuts

:: checks for shortcuts folder, and creates one, if it doesn't exist
if not exist "%cd%\%sctfolder%" mkdir %sctfolder%

:: moves shortcuts/files to shortcuts folder
if exist *.lnk move /y *.lnk %sctfolder%
if exist *.exe move /y *.exe %sctfolder%
if exist *.url move /y *.url %sctfolder%

:: removes existing bat files, except this one.
for /r %%F in (*.bat) do if not %%~nxF == %~nx0 del "%%~nxF"

:: creates new ones
for /r %sctfolder% %%F in (*.*) do (

    :: creating the bat file with the name of shortcut
    type nul > %%~nF.bat

    :: writing contents for the bat file
    echo @echo off > "%%~nF.bat"
    echo set sctname="%%~nxF" >> "%%~nF.bat"

    :: starts the program
    echo start %sctfolder%\%%sctname%% >> "%%~nF.bat"

    :: closes the folder where the program is in
    echo taskkill /f /fi "WindowTitle eq %%cd%%*">> "%%~nF.bat"

    echo exit >> "%%~nF.bat"
)

exit