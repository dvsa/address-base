-- noinspection SqlResolveForFile
SET UNIQUE_CHECKS = 0;

LOAD DATA LOCAL
    INFILE 'NI_CSV_FILE_NAME'
    REPLACE
    INTO TABLE address_ni
    CHARACTER SET latin1
    FIELDS
        TERMINATED by ','
        OPTIONALLY ENCLOSED BY '"'
    LINES
        TERMINATED BY '\n'
    IGNORE 1 LINES
(
 @organisation_name
,@sub_building_name
,@building_name
,@building_number
,@primary_thorfare
,@alt_thorfare_name1
,@secondary_thorfare
,@locality
,townland
,@town
,county
,@postcode
,@blpu
,unique_building_id
,uprn
,usrn
,local_council
,x_cor
,y_cor
,@temp_coords
,building_status
,address_status
,@classification
,@creation_date
,@commencement_date
,@archived_date
,@action
,@udprn
,@posttown
)
SET
 organisation_name = nullif(@organisation_name,'')
,sub_building_name = nullif(@sub_building_name,'')
,building_name = nullif(@building_name,'')
,building_number = nullif(@building_number,'')
,primary_thorfare = nullif(@primary_thorfare,'')
,alt_thorfare_name1 = nullif(@alt_thorfare_name1,'')
,secondary_thorfare = nullif(@secondary_thorfare,'')
,locality = nullif(@locality,'')
,town = nullif(@town,'')
,postcode = nullif(@postcode,'')
,blpu = nullif(@blpu,'')
,temp_coords = nullif(@temp_coords,'')
,classification = nullif(@classification,'')
,creation_date = STR_TO_DATE(nullif(@creation_date,''), '%d-%b-%y')
,commencement_date = STR_TO_DATE(nullif(@commencement_date,''), '%d-%b-%y')
,archived_date = STR_TO_DATE(nullif(@archived_date,''), '%d-%b-%y')
,action = nullif(@action,'')
,udprn = nullif(@udprn,'')
,posttown = nullif(@posttown,'')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
;

SET @rows_ins = row_count();

DELETE FROM address_ni
WHERE
    `address_status` IN ('REJECTED', 'HISTORICAL')
    OR `postcode_trim` IS NULL;

SET @rows_del = row_count();

SELECT (@rows_ins - @rows_del) as 'added rows';
