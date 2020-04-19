#!/bin/bash

# The device where the /data/ folder is located 
dev_path='/dev/sdb'
# Data folder path
data_path='/mnt/sdb/owncloud/data/'

# when the percentage of used space exceeds 85%...
if  [[ `df | grep "$dev_path" | sed 's/%//g' | awk '{print$5}'` -gt 85 ]];  then
# Find files path, which marked as Favorite in web-gui and write them in file
mysql -D owncloud -e "select path from oc_filecache, oc_vcategory_to_object where oc_filecache.fileid = oc_vcategory_to_object.objid" | sed '1d ; s/^/.*\//' > /tmp/chosen.txt
# Delete all files, older than 30 days, except Favorite files
find "$data_path" -regex .*/files/.* -ctime +30 |  grep -v -f /tmp/chosen.txt | tr '\n' '\0' | xargs -0 rm -f

# Rescan files in Data folder
cd /var/www/owncloud
sudo -u www-data ./occ files:scan --all

rm /tmp/chosen.txt
fi
