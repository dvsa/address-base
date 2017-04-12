#!/bin/bash

log () {

echo $1;
exit 1;
}

source /tmp/s3assume.sh "arn:aws:iam::054614622558:role/ADDRESS-ProdToDev-AssumeRole"

# Check can connect
result=$(mysql -e "exit"  2>&1) || log "Cannot connect to database: $result"

#s3="s3://app-olcs-pri-olcs-deploy-s3/addressbase/"
s3="s3://devapp-olcs-pri-olcs-deploy-s3/addressbase/"
niversion="20160117"

result=$(mysql < ./create_ni.sql 2>&1) || log "Failed to run create_ni.sql: $result"

result=$(mysql -e "ALTER TABLE address_ni DISABLE KEYS;" 2>&1) || log "DISABLE KEYS Failed: $result"

f=ALLNI_${niversion}_F.zip

echo $(date '+%H:%M:%S') Downloading "$f"
 /usr/local/bin/aws s3 cp ${s3}${f} . || log "Failed to downoad ${f} from ${s3}"

echo $(date '+%H:%M:%S') Unpacking "$f"
unzip -p $f ALLNI_${niversion}_F.csv > ni.csv || log "Failed to unzip ${f}"

echo $(date '+%H:%M:%S') Loading "$f"
result=$(mysql --show_warnings < ./load_ni.sql 2>&1) || log "Failed to load load_ni.sql: $result"

echo $(date '+%H:%M:%S') Removing "$f"
rm -f ni.csv
rm -f ${f}
echo $(date '+%H:%M:%S') Finished "$f"

echo $(date '+%H:%M:%S') Enabling keys
result=$(mysql -e "ALTER TABLE address_ni ENABLE KEYS;" 2>&1) || log "ENABLE KEYS Failed: $result"

echo $(date '+%H:%M:%S') Keys enabled
