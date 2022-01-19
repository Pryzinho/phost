@echo off
title Server 1.18.1 - 1Gb
:start
java -Xms1G -Xmx2G -jar paper.jar -nogui
pause
goto start