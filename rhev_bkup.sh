#!/bin/bash

DFOLDER=DB/DBi/Lower_DMZ/Lower_Env/New_Prod/Prod_DMZ/Prod_Env #Remove other that is not needed and '/' symbols

#Remove backup files older than 5 days 
find /var/lib/ovirt-engine/backups/ -mtime +5 -exec rm {} \;
sleep 2

#Run RHEVM Engine backup
engine-backup --mode=backup --scope=all --file="/var/lib/ovirt-engine/backups/fullbackup-$(date +%Y%m%d%H%M%S).tar.bz2" --log=/var/log/ovirt-engine/fullbackup-$(date +%Y%m%d%H%M%S).log 1>/tmp/ovirt-engine_backup.log 2>/tmp/ovirt-engine_error.log

#Backup to Infra-Syncthing server (10.10.0.34)
rsync -az --update /var/lib/ovirt-engine/backups/ sysadmin@10.10.0.34:/home/sysadmin/RHEVMBackup/$DFOLDER/
sleep 2

wait
exit 0
