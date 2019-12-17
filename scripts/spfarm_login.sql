"USE [master]"
"GO"
"IF NOT EXISTS (SELECT name FROM master.dbo.syslogins WHERE name = N'$DomainNetBIOSName\$SPFarmAccount')"
"BEGIN"
"CREATE LOGIN [$DomainNetBIOSName\$SPFarmAccount] FROM WINDOWS WITH DEFAULT_DATABASE=[master]"
"END"
"GO"
"ALTER SERVER ROLE [dbcreator] ADD MEMBER [$DomainNetBIOSName\$SPFarmAccount]"
"GO"
"ALTER SERVER ROLE [securityadmin] ADD MEMBER [$DomainNetBIOSName\$SPFarmAccount]"
"GO"