# OLCS Address Service ETL
### Synopsis 
The OLCS Address Service ETL is a data script component within the Online Licensing and Compliance System developed as part of the OLCS project for the Driver and Vehicle Licensing Agency (DVSA).

The script reads the Address Base and Pointer Data, which contain the Postcodes and addresses in use in Great Britain and Northern Ireland, and transforms the data into a MySQL database for use with an API.  The database is accessed using the OLCS Address Service API.

The data sources are Address Base and Pointer Data.  The information contained in these data sources has variances from the Post Office list.

### Change History 
This is the first version of the OLCS Address Service ETL script to be published. For a detailed change log, see the file named [CHANGELOG.md](./CHANGELOG.md). 

### Known Issues 
There are no known issues with the OLCS Address Service ETL.

### Contributing
If you would like to send a bug report or contact us regarding any code-related queries please create an issue within GitHub. Valid reports and queries will receive responses within 60 days. 

### License 
Copyright (c) 2016 HM Government (Driver and Vehicle Standards Agency) 
Free software published under an MIT License - please see the file named [LICENSE.txt](./LICENSE.txt).

### Acknowledgements 
The following people created the OLCS Address Service ETL:
* Paul Roberts
