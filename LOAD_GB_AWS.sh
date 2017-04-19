#!/bin/bash

log () {

echo $1;
exit 1;
}

source /tmp/s3assume.sh "arn:aws:iam::054614622558:role/ADDRESS-ProdToDev-AssumeRole"

# Check can connect
result=$(mysql -e "exit"  2>&1)|| log "Cannot connect to database: $result"

#s3="s3://app-olcs-pri-olcs-deploy-s3/addressbase/"
s3="s3://devapp-olcs-pri-olcs-deploy-s3/addressbase/"
addressbaseversion="2015-09-15"

result=$(mysql < ./create_gb.sql 2>&1) || log "Failed to run create_gb.sql: $result"

result=$(mysql -e "ALTER TABLE address_gb DISABLE KEYS;" 2>&1) || log "DISABLE KEYS Failed: $result"

result=$(/usr/local/bin/aws s3 ls ${s3}| grep csv.zip 2>&1) || log "Failed to list files from ${s3}: $result"

files=( $(/usr/local/bin/aws s3 ls ${s3} | grep csv.zip | cut -d' ' -f5 2>&1)) || log "Failed to extract file names"

[ ${#files[@]} -gt 0 ] || log "No Files Found!"

for f in ${files[*]}
do
  #grab fresh key to protect from 1 hour timeout
  source /tmp/s3assume.sh "arn:aws:iam::054614622558:role/ADDRESS-ProdToDev-AssumeRole"
  
  echo "file:"
  echo $f
  echo $(date '+%H:%M:%S') Downloading "$f"
  /usr/local/bin/aws s3 cp ${s3}${f} . || log "Failed to download ${f} from ${s3}"

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