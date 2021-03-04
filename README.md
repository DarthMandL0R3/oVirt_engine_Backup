# RHEVM_Engine_Backup

Script to schedule RHEV / Ovirt Engine backup

## Objective

This script objective is to schedule the backup to take place on specific time and date.  
  
The timings are as shown below:
* Monday, 12 AM (GMT +8)
* Thursday, 12 AM (GMT +8)
* Sunday, 12 AM (GMT +8)

## Warning

Script needs to be run with root privileges.

## Usage

1. Clone the repository using ```git clone http://infra-gitea.bestinet.com.my/Bestinet-OPS-Team/RHEVM_Engine_Backup.git```.
2. Change the permission of the file ```rhev_bkup.sh``` to execute.
3. Add cron job for the user ```root``` to execute the script.
4. Monitor the execution and result at the designated folders.

## Future Tasks

1. Housekeeping the mountpoint for every environment backups.
2. Intergrate with mass sharing systems such as Syncthing.

## Notice

Please ensure the safety of your butt at all time.  
This is a fair warning!