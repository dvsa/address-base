DROP TABLE IF EXISTS address_ni;
CREATE TABLE `address_ni` (
 `organisation_name` VARCHAR(60) DEFAULT NULL         COMMENT 'The trading or business name of an org within a property'
,`sub_building_name` VARCHAR(60) DEFAULT NULL         COMMENT 'Name or number of a flat, apartment or unit in a building'
,`building_name`     VARCHAR(70) DEFAULT NULL         COMMENT 'Name of building to which the address belongs'
,`building_number`   VARCHAR(20) DEFAULT NULL         COMMENT 'e.g. 12, 14-18, 7A'
,`primary_thorfare`  VARCHAR(60) DEFAULT NULL         COMMENT 'Thoroughfare or main access point of building.'
,`alt_thorfare_name1` VARCHAR(60) DEFAULT NULL        COMMENT 'Local name or name in different languare.'
,`secondary_thorfare` VARCHAR(60) DEFAULT NULL        COMMENT 'Main road off which primary thoroughfare is located'
,`locality`          VARCHAR(40) DEFAULT NULL         COMMENT 'Named area, e.g. business park name'
,`townland`          VARCHAR(40) NOT NULL             COMMENT 'sub area of town.'
,`town`              VARCHAR(40) DEFAULT NULL         COMMENT 'Either locality or town or both required'
,`county`            VARCHAR(40) NOT NULL
,`postcode`          VARCHAR(8)  DEFAULT NULL
,`blpu`              BIGINT UNSIGNED DEFAULT NULL    COMMENT 'Basic Land and Property Unit' 
,`unique_building_id` BIGINT UNSIGNED NOT NULL       COMMENT 'Identifies Primary Addressable Object.'
,`uprn`              BIGINT UNSIGNED NOT NULL        COMMENT 'Unique address id across NI and GB data'
,`usrn`              INT UNSIGNED NOT NULL           COMMENT 'Unique streen id'
,`local_council`     VARCHAR(40) NOT NULL            COMMENT 'admin area'
,`x_cor`             INT NOT NULL                    COMMENT 'Irish grid x coordinate'
,`y_cor`             INT NOT NULL                    COMMENT 'Irish grid y coordinate'
,`temp_coords`       CHAR(1) DEFAULT NULL            COMMENT 'Y if coordinates temporary'
,`building_status`   VARCHAR(40) NOT NULL            COMMENT 'None, Under Construction, Built, Derelict and Demolished'
,`address_status`    VARCHAR(11) NOT NULL            COMMENT 'Candidate,Provisional,Approved,Historical,Rejected'
,`classification`    VARCHAR(20) DEFAULT NULL        COMMENT 'Usage of building ND_XYZ Non Domestic, DO_XYZ domestic'
,`creation_date`     DATE DEFAULT NULL               COMMENT 'Date record added by local council'
,`commencement_date` DATE DEFAULT NULL               COMMENT 'Date construction begun'
,`archived_date`     DATE DEFAULT NULL               COMMENT 'Date status becomes Historic'
,`action`            CHAR(1) DEFAULT NULL            COMMENT 'Only used in Delta load, I, U, null or D'
,`udprn`             VARCHAR(20)                     COMMENT 'Unique delivery point number'
,`posttown`          VARCHAR(40)                     COMMENT 'Postal service town for area'
,`postcode_trim`     VARCHAR(7) DEFAULT NULL         COMMENT 'Postcode with no whitespace for searching'
,PRIMARY KEY address_ni_pk (uprn)
,KEY `ix_address_ni_postcode_trim` (`postcode_trim`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;
