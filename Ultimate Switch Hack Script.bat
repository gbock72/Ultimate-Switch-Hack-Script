::Script by Shadow256
@echo off
::MODE con:cols=140 lines=70
chcp 1252 >nul
set /p ushs_version=<tools\version.txt
IF EXIST tools\sd_switch\version.txt (
	set /p ushs_packs_version=<tools\sd_switch\version.txt
) else (
	set /p ushs_packs_version=<tools\packs_version.txt
)
IF EXIST tools\sd_switch\cheats\version.txt (
	set /p ushs_cheats_version=<tools\sd_switch\cheats\version.txt
) else (
	set /p ushs_cheats_version=<tools\cheats_version.txt
)
cls
title Shadow256 Ultimate Switch Hack Script %ushs_version%
cd /d "%~dp0"
mkdir test
IF %errorlevel% NEQ 0 (
	echo Le script se trouve dans un r�pertoire n�cessitant les privil�ges administrateur pour �tre �crit. Veuillez relancer le script avec les privil�ges administrateur en faisant un clique droit dessus et en s�lectionnant "Ex�cuter en tant qu'administrateur".
	goto:end_script
)
rmdir /s /q test
echo Avant de continuer, v�rifiez ceci car le script pourrait ne pas fonctionner si ce param�tre est mal r�gl�:
echo - Faire un clique droit sur la barre de titre ou le raccourci "alt+espace" et cliquer sur "Propri�t�s".
echo - Aller dans l'onglet "Polices", choisir la police "Lucida Console" et cliquer sur "OK".
echo.
echo Si tout est bon, le script devrait fonctionner correctement.
echo Si le script se ferme imm�diatement apr�s ceci, cela veut dire que la police que vous avez s�lectionn� n'est pas compatible avec l'encodage de caract�res UTF-8.
pause
TOOLS\Storage\verif_update.bat
:end_script
pause
exit