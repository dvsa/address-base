#!/bin/bash

connection=$1
# Check connection string passed in
if [ "$connection" = "" ]
then
  echo 'No connection argument supplied. Correct example ./LOAD_NI.sh "-u root -ppassword" or better ./LOAD_NI.sh --login-path=xyz'
  exit
fi

# Check can connect
if ! mysql $connection -e "exit"
then
   echo "Can not connect to database"
   exit
fi


mysql $connection addressbase < ./create_ni.sql

# Filter out the _EXT_ NI file.
for f in ./ALLNI_????????_F.csv
do
  echo $(date '+%H:%M:%S') Loading "$f"
  
  sed "s|NI_CSV_FILE_NAME|$f|g" < ./load_ni.sql | mysql $connection addressbase --show_warnings
  
  echo $(date '+%H:%M:%S') Finished "$f"
done