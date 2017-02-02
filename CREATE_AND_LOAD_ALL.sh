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

echo Creating Schema
mysql $connection addressbase < ./create_schema.sql

echo
echo Creating and loading NI table
./LOAD_NI.sh "$connection"

echo
echo Creating and loading GB table
./LOAD_GB.sh "$connection"