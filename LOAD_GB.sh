#!/bin/bash

connection=$1
# Check connection string passed in
if [ "$connection" = "" ]
then
  echo 'No connection argument supplied. Correct example ./LOAD_GB.sh "-u root -ppassword" or better ./LOAD_GB.sh --login-path=xyz'
  exit
fi

# Check can connect
if ! mysql $connection -e "exit"
then
   echo "Can not connect to database"
   exit
fi


mysql $connection addressbase < ./create_gb.sql
mysql $connection addressbase -e "ALTER TABLE address_gb DISABLE KEYS;"
for f in ./AddressBasePlus_FULL_*.csv
do
 
  echo $(date '+%H:%M:%S') Loading "$f"
  
  sed "s|GB_CSV_FILE_NAME|$f|g" < ./load_gb.sql | mysql $connection addressbase --show_warnings
 
  echo $(date '+%H:%M:%S') Finished "$f"
  
done

echo $(date '+%H:%M:%S') Enabling keys
mysql $connection addressbase -e "ALTER TABLE address_gb ENABLE KEYS;"
echo $(date '+%H:%M:%S') Keys enabled