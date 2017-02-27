#!/bin/bash

log () {

echo $1;
exit 1;
}

# Check can connect
result=$(mysql -e "exit"  2>&1)|| log "Cannot connect to database: $result"

#s3="s3://app-olcs-pri-olcs-deploy-s3/addressbase/"
s3="s3://devapp-olcs-pri-olcs-deploy-s3/addressbase/"
addressbaseversion="2015-09-15"

result=$(mysql < ./create_gb.sql 2>&1) || log "Failed to run create_gb.sql: $result"

result=$(mysql -e "ALTER TABLE address_gb DISABLE KEYS;" 2>&1) || log "DISABLE KEYS Failed: $result"

result=$(s3cmd ls ${s3}AddressBasePlus_FULL_${addressbaseversion}_* 2>&1) || log "Failed to list files from ${s3}: $result"

files=( $(s3cmd ls ${s3}AddressBasePlus_FULL_${addressbaseversion}_*|cut -d'/' -f5) ) || log "Failed to extract file names"

[ ${#files[@]} -gt 0 ] || log "No Files Found!"

for f in ${files[*]}
do
  echo $(date '+%H:%M:%S') Downloading "$f"
  s3cmd get -f ${s3}${f} || log "Failed to download ${f} from ${s3}"
  
  echo $(date '+%H:%M:%S') Unpacking "$f"
  unzip -p $f > gb_csv || log "Failed to unzip ${f}"
  
  echo $(date '+%H:%M:%S') Loading "$f"
  result=$(mysql --show_warnings < ./load_gb.sql 2>&1) || log "Failed to load load_gb.sql: $result"

  echo $(date '+%H:%M:%S') Removing "$f"
  rm -f gb_csv
  rm -f ${f}
  echo $(date '+%H:%M:%S') Finished "$f"

done

echo $(date '+%H:%M:%S') Enabling keys
result=$(mysql -e "ALTER TABLE address_gb ENABLE KEYS;" 2>&1) || log "ENABLE KEYS Failed: $result"

echo $(date '+%H:%M:%S') Keys enabled
