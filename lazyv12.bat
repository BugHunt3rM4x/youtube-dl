@echo off
youtube-dl -U
:loop0
set /p id="Enter URL: "
youtube-dl -i -w -f mp4 %id%
set /p var="Move Videos?[Y/N]: "
if /I %var%== Y goto :loop1
goto :loop0
:loop1
move *.mp4 %userprofile%\Videos
goto :loop0
