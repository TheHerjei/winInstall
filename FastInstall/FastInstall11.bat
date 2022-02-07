@echo off

set BASEPATH=%~dp0

REM Disabilito Autorun

MKDIR %HOMEDRIVE%\autoRun.Inf
attrib +r +h +s %HOMEDRIVE%\autoRun.Inf
icacls %HOMEDRIVE%\autoRun.Inf /deny everyone:F

dir D:\
IF %ERRORLEVEL% EQU 0 (
	MKDIR D:\autoRun.Inf
	attrib +r +h +s D:\autoRun.Inf
	icacls D:\autoRun.Inf /deny everyone:F
)

dir E:\
IF %ERRORLEVEL% EQU 0 (
	MKDIR E:\autoRun.Inf
	attrib +r +h +s E:\autoRun.Inf
	icacls E:\autoRun.Inf /deny everyone:F
)

REM Copio i tools in C:\bin
mkdir %HOMEDRIVE%\bin
robocopy /mt:128 /S /E /R:0 /W:0 %BASEPATH%\bin %HOMEDRIVE%\bin

REM Imposto C:\bin sulla variabile PATH...
setx /M PATH "%PATH%;C:\bin"

REM Gestione aggiornamenti di windows
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; %BASEPATH%\multiplerdp.ps1

REM Installo applicazioni
winget upgrade --all
winget install -e -h Open-Shell.Open-Shell-Menu &
winget install -e -h VideoLAN.VLC &
winget install -e -h 7zip.7zip &
winget install -e -h Zoom.Zoom &
winget install -e -h Google.Chrome &
winget install -e -h Adobe.Acrobat.Reader.64-bit &
winget install -e -h WhatsApp.WhatsApp &
winget install -e -h Telegram.TelegramDesktop &
winget install -e -h AntibodySoftware.WizTree &

REM Link di Aiuto sul desktop
mklink %PUBLIC%\Desktop\AIUTO "C:\Windows\System32\quickassist.exe"

REM Escludo l'ibernazione...
powercfg /hibernate off

REM Disattivo servizi non utili
sc config "DusmSvc" start= disabled
sc config "CscService" start= disabled
sc config "ForensiTAppxService" start= disabled
sc config "XblAuthManager" start= disabled
sc config "MapsBroker" start= disabled
sc config "XblGameSave" start= disabled
sc config "iphlpsvc" start= disabled
sc config "WdiServiceHost" start= disabled
sc config "WdiSystemHost" start= disabled
sc config "AppReadiness" start= disabled
sc config "LanmanServer" start= demand
sc config "DPS" start= disabled
sc config "RetailDemo" start= disabled
sc config "WbioSrvc" start= disabled
sc config "lfsvc" start= disabled
sc config "spectrum" start= disabled
sc config "XboxNetApiSvc" start= disabled
sc config "perceptionsimulation" start= disabled
sc config "WpnService" start= disabled
sc config "BITS" start= disabled
sc config "UevAgentService" start= disabled
sc config "SQLWriter" start= disabled
sc config "SysMain" start= disabled
sc config "TapiSrv" start= disabled
sc config "WalletService" start= disabled
sc config "WSearch" start= disabled
sc config "XboxGipSvc" start= disabled
sc config "NaturalAutentication" start= disabled
sc config "NgcCtnrSvc" start= disabled
sc config "WpcMonSvc" start= disabled
sc config "SEMgrSvc" start= disabled
sc config "MicrosoftEdgeElevationService" start= disabled
sc config "edgeupdate" start= disabled
sc config "edgeupdatem" start= disabled
sc config "AppReadiness" start= disabled
sc config "SensorDataService" start= disabled
sc config "SharedRealitySvc" start= disabled
sc config "WMPNetworkSvc" start= disabled
sc config "EntAppSvc" start= disabled
sc config "TroubleshootingSvc" start= disabled
sc config "SensorService" start= disabled
sc config "PhoneSvc" start= disabled
sc config "wisvc" start= disabled
sc config "ZoomCptService" start= manual

REM Attivo utente Administrator ATTENZIONE! USARE CON CAUTELA!
net user Administrator admin /active:yes

REM Importo l'associazione files per tutti gli utenti
if EXIST %BASEPATH%\AppAssociations\AppAssociations.xml (
dism /online /Import-DefaultAppAssociations:"%BASEPATH%\AppAssociations\AppAssociations.xml"
)

REM Disabilito Consumer Experience
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f

REM Creo pianificazione per upgrade automatico attraverso winget
SCHTASKS /CREATE /U Administrator /P admin /SC DAILY /I 1 /TN "AppUpgrade" /TR "C:\bin\appupgrade.bat" /ST 18:00

REM Rimuovo pianificazioni esistenti non insteressanti
SCHTASKS /DELETE /TN "Adobe Acrobat Update Task"

REM Rimuovo AppXProvisionedPackage per tutti gli utenti
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; %BASEPATH%\appxRemove.ps1

REM Abilito le connessioni desktop remoto multiple
REM **Questo script di powershell va rilanciato dopo ogni feature upgrade di windows**
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; %BASEPATH%\multiplerdp.ps1

REM Rimuovo Wallpaper
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

REM Rinomino il computer
SET /a _rand=(%RANDOM%*100/32768)+1
wmic ComputerSystem where Name=%COMPUTERNAME% call Rename Name="WTest-%_rand%"

REM Apro WPD e Dism per configurazioni aggiuntive
start C:\bin\WPD.exe
start C:\bin\Dism++x64.exe