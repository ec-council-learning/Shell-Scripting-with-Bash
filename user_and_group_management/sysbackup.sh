#!/bin/bash

# This will back up or "flash" your  OS & all your data on an external HDD
DEST_DRIVE="/dev/sdb" # Backup will be stored on this device
DEST_MOUNT="
            /media/usb"    # Mount point of flash drive
BACKUP_FOLDERS=("/dev/sda")    # Backup folders
#LOGFILE="/var/log/mybackup.log" # Logfile
#DELFILES="$DEST_MOUNT/delted_files" # Path to folder for deleted files
#THRESHOLD=10    # keep deleted files for 10 days

# write first parameter $1 to logfile
function write_to_log
{
  # get current date and time
  bkp_date=$(date +%Y-%m-%d@%H:%M:%S)
  echo -e "$bkp_date : $1" >> $LOGFILE
}

# Append log entry
write_to_log "====== Starting Backup ======"

# test whether symbolic link to flash drive exists
if [ ! -h $DEST_DRIVE ]; then
  write_to_log "[X] Error: Backup drive not available"
  write_to_log "====== Backup finished ======\n\n"
  exit 1
fi

# check whether mount point is in use
if [ ! -z "$(mount -l | grep ${DEST_MOUNT})" ]; then
  write_to_log "[X] Error: Mount point already in use"
  write_to_log "====== Backup finished ======\n\n"
  exit 1
fi

# Mount flash drive
mount $DEST_DRIVE $DEST_MOUNT
if [ $? -ne 0 ]; then
  write_to_log "[X] Error: Could not mount flash drive"
  write_to_log "====== Backup finished ======\n\n"
  exit 1
fi

# delete all files from $DELFILES older than $THRESHOLD days
if [ -d "${DELFILES}" ]; then
  find $DELFILES -type f -mtime $THRESHOLD -delete >> $LOGFILE
fi

# copy files (create backup)
for f in ${BACKUP_FOLDERS[@]}; do
  # check if given file is directory and readable
  if [ -d $f ] &amp;&amp; [ -r $d ]; then
    rsync -avbuz --delete --backup-dir=$DELFILES $f $DEST_MOUNT >> $LOGFILE
  fi
done

# flush file system buffer
sync

# unmount flash drive
umount $DEST_MOUNT
if [ $? -ne 0 ]; then
  write_to_log "[X] Error: Could not unmount flash drive"
fi

write_to_log "====== Backup finished ======\n\n"
