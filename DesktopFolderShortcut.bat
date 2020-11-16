@echo off
set shortcutName=""
start %cd%\Shortcuts\%shortcutName%
taskkill /fi "windowtitle eq %cd%"
exit
