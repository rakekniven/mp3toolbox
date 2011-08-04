mkdir ..\setup\rar-folder
mkdir ..\setup\rar-folder\LC
mkdir ..\setup\rar-folder\config
mkdir ..\setup\rar-folder\templates

copy ..\src\mp3toolbox.exe ..\setup\rar-folder
copy ..\src\gpl-2.0.txt ..\setup\rar-folder
copy ..\src\LC\Lang*.txt ..\setup\rar-folder\LC
copy ..\src\config\*.cfg ..\setup\rar-folder\config
copy ..\src\templates\*.txt ..\setup\rar-folder\templates
copy ..\src\templates\*.html ..\setup\rar-folder\templates

pause ...
