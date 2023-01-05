echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax001 54149 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax001" (%KILL_CMD% 4048) 
if /i "%LOCALHOST%"=="STI-WIN10-ax001" (%KILL_CMD% 10900) 
if /i "%LOCALHOST%"=="STI-WIN10-ax001" (%KILL_CMD% 6272) 
if /i "%LOCALHOST%"=="STI-WIN10-ax001" (%KILL_CMD% 1672)
del "Z:\NFS_FRASALA\A_PROJECT_NFS\Assignment2\Geometry_2023\cleanup-fluent-STI-WIN10-ax001-6272.bat"
