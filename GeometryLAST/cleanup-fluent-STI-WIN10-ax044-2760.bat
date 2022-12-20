echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax044 52397 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax044" (%KILL_CMD% 10896) 
if /i "%LOCALHOST%"=="STI-WIN10-ax044" (%KILL_CMD% 8324) 
if /i "%LOCALHOST%"=="STI-WIN10-ax044" (%KILL_CMD% 2760) 
if /i "%LOCALHOST%"=="STI-WIN10-ax044" (%KILL_CMD% 9036)
del "Z:\Assignment2\GeometryLAST\cleanup-fluent-STI-WIN10-ax044-2760.bat"
