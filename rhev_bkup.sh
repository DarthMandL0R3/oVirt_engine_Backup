#!/bin/bash
engine-backup --mode=backup --scope=all --file="/var/lib/ovirt-engine/backups/fullbackup-$(date +%Y%m%d%H%M%S).tar.bz2" --log=/var/log/ovirt-engine/fullbackup-$(date +%Y%m%d%H%M%S).log
wait
exit 0