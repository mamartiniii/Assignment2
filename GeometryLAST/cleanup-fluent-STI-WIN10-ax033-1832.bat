echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax033 54610 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 9380) 
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 1832) 
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 1292)
del "Z:\NFS_FRASALA\A_PROJECT_NFS\Assignment2\GeometryLAST\cleanup-fluent-STI-WIN10-ax033-1832.bat"
