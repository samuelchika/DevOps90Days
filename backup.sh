#!/bin/bash
echo "Taking backup..."

backup_time=`date +%b-%d-%y` #get the current date
destination=/home/samez/backup/backup-$backup_time.tar.gz
source_folder=/home/samez/90DaysDevOps

tar -cpzf $destination -P $source_folder

echo "Backup Done"
