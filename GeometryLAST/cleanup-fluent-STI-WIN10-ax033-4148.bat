echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax033 54032 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 4812) 
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 10012) 
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 4148) 
if /i "%LOCALHOST%"=="STI-WIN10-ax033" (%KILL_CMD% 3936)
del "Z:\NFS_FRASALA\A_PROJECT_NFS\Assignment2\GeometryLAST\cleanup-fluent-STI-WIN10-ax033-4148.bat"
