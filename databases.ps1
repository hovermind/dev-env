cinst sql-server-express
refreshenv
cinst sql-server-management-studio
refreshenv

# SQL Server Developer edition
cinst sql-server-2017
refreshenv
if (Test-PendingReboot) { Invoke-Reboot }


cinst mongodb

cinst mysql
refreshenv
cinst mysql.workbench

cinst sqlite
cinst postgresql
