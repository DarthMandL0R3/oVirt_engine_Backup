#!/bin/bash
engine-backup --mode=backup --scope=all --file="/var/lib/ovirt-engine/backups/fullbackup-$(date +%Y%m%d%H%M%S).tar.bz2" --log=/var/log/ovirt-engine/fullbackup-$(date +%Y%m%d%H%M%S).log 1> /tmp/ovirt-engine_backup.log 2> /tmp/ovirt-engine_error.log
wait
exit 0
