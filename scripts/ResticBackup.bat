@echo off
setlocal
SET RESTIC_REPOSITORY=sftp:rbkp@eleamsi:/share/b/astro-restic
SET RESTIC_PASSWORD=ilDUCA3nqui
SET BACKUPSOURCE=C:\Users\ismaele\Contabilita-Casarza

SET LOGPATH=C:\resticLOG\log.txt

echo ------------------------ >> %LOGPATH%
echo %DATE% - %TIME% >> %LOGPATH%
echo ------------------------ >> %LOGPATH%
restic backup %BACKUPSOURCE% >> %LOGPATH%
restic forget --keep-hourly 24 --keep-daily 6 --keep-weekly 3 --keep-monthly 12 --keep-yearly 2 --prune >> %LOGPATH%
echo. >> %LOGPATH%

REM Include those 2 lines for backing up All user docs
REM SET BACKUPSOURCE=C:\Users\ismaele\
REM restic backup %BACKUPSOURCE% --exclude-file=C:\bin\restic-excludes.txt