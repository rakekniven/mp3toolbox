@PROMPT PROMPT$G
@ECHO DIR = %0
IF EXIST Manifest.res  DEL Manifest.res
BRCC32.exe -m -foManifest.res Manifest.rc
IF ERRORLEVEL 1   PAUSE
EXIT
