echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v212\fluent\ntbin\win64\tell.exe" STI-WIN10-ax046 53161 CLEANUP_EXITING
if /i "%LOCALHOST%"=="STI-WIN10-ax046" (%KILL_CMD% 11300) 
if /i "%LOCALHOST%"=="STI-WIN10-ax046" (%KILL_CMD% 10588) 
if /i "%LOCALHOST%"=="STI-WIN10-ax046" (%KILL_CMD% 7124) 
if /i "%LOCALHOST%"=="STI-WIN10-ax046" (%KILL_CMD% 11628)
del "Z:\NFS_FRASALA\A_PROJECT_NFS\Assignment2\GeometryLAST\cleanup-fluent-STI-WIN10-ax046-7124.bat"
