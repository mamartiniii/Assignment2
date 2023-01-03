echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax012 52764 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax012" (%KILL_CMD% 3680) 
if /i "%LOCALHOST%"=="STI-WIN10-ax012" (%KILL_CMD% 3056) 
if /i "%LOCALHOST%"=="STI-WIN10-ax012" (%KILL_CMD% 2996) 
if /i "%LOCALHOST%"=="STI-WIN10-ax012" (%KILL_CMD% 10632)
del "C:\Users\mmartini\Downloads\Assignment2\Geometry_2023\cleanup-fluent-STI-WIN10-ax012-2996.bat"
