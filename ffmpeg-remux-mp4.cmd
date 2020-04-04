@echo off
cd /d "%~dp0"

:: user setting
set "ffmpeg=ffmpeg"
set "append=_remux"
set "dest_ext=mp4"

:: main
%ffmpeg% -y -i %1 -codec copy "%~dpn1%append%.%dest_ext%" 2> "%~dpn1%append%.log"
