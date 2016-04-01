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


CREATE OR REPLACE VIEW ni_readable_vw AS
SELECT
CASE
-- 1 Based on org name
WHEN organisation_name IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null
	THEN organisation_name
-- 2a building number only + secondary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and secondary_thorfare is not null
    THEN concat(building_number, ' ', secondary_thorfare)
-- 2b building number only + primary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and primary_thorfare is not null
    THEN concat(building_number, ' ', primary_thorfare)
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null
    THEN concat(building_number, ' ', coalesce(townland,locality))
-- 3a building name only + exception rule
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(building_name,' ',coalesce(secondary_thorfare, primary_thorfare, townland, locality))
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null
	THEN building_name
-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null
	THEN building_name
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null
	THEN sub_building_name
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(sub_building_name, ' ', building_name)
-- 6b sub building and building name, no number
WHEN sub_building_name is not null and building_name is not null and building_number is null
    THEN sub_building_name
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(sub_building_name, ' ', building_name)
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN sub_building_name
END address_line1,
CASE
-- 1 Based on org name
WHEN organisation_name IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null
	THEN coalesce(secondary_thorfare, primary_thorfare, locality)
-- 2a building number only + secondary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and secondary_thorfare is not null
    THEN primary_thorfare
-- 2b building number only + primary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and primary_thorfare is not null
    THEN coalesce(townland, locality)
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null
    THEN CASE WHEN townland IS NOT NULL THEN locality END
-- 3a building name only + exception rule
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
							WHEN townland IS NOT NULL THEN locality END
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null
	THEN coalesce(secondary_thorfare, primary_thorfare, townland, locality)
-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null
	THEN concat(building_number, ' ', coalesce(secondary_thorfare, primary_thorfare, townland, locality))
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null
	THEN concat(building_number, ' ', coalesce(secondary_thorfare, primary_thorfare, townland, locality))
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN coalesce(secondary_thorfare, primary_thorfare, townland, locality)
-- 6b sub building and building name, no number
WHEN sub_building_name is not null and building_name is not null and building_number is null
    THEN building_name
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(building_number, ' ', coalesce(secondary_thorfare, primary_thorfare, townland, locality))
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN building_name
END address_line2,
CASE
-- 1 Based on org name
WHEN organisation_name IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN secondary_thorfare IS NULL AND primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
							WHEN secondary_thorfare IS NULL AND primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 2a building number only + secondary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and secondary_thorfare is not null
    THEN coalesce(townland, locality)
-- 2b building number only + primary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and primary_thorfare is not null
    THEN CASE WHEN townland IS NOT NULL THEN locality END
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null
    THEN null
-- 3a building name only + exception rule
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                                WHEN secondary_thorfare IS NULL AND primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END                            
-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
                            WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
                            WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 6b sub building and building name, no number
WHEN sub_building_name is not null and building_name is not null and building_number is null
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
                            WHEN primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality) 
							WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN concat(building_number, ' ', coalesce(secondary_thorfare, primary_thorfare, townland, locality))
END address_line3,
CASE
WHEN town != posttown THEN town
-- 1 Based on org name
WHEN organisation_name IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
							WHEN secondary_thorfare IS NULL AND primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN secondary_thorfare IS NULL AND primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
-- 2a building number only + secondary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and secondary_thorfare is not null
    THEN CASE WHEN townland IS NULL THEN locality END
-- 2b building number only + primary_thorfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and primary_thorfare is not null
    THEN null
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null
    THEN null
-- 3a building name only + exception rule
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN null
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                            WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                                WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                                WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
                                WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 6b sub building and building name, no number
WHEN sub_building_name is not null and building_name is not null and building_number is null
    THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
							WHEN primary_thorfare is null and townland IS NOT NULL THEN locality END
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN coalesce(townland, locality)
    							WHEN secondary_thorfare is null AND primary_thorfare IS NOT NULL AND townland IS NOT NULL THEN locality END
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN CASE 	WHEN secondary_thorfare IS NOT NULL THEN primary_thorfare
    							WHEN secondary_thorfare is null and primary_thorfare IS NOT NULL THEN coalesce(townland, locality)
    							WHEN primary_thorfare IS NULL AND townland IS NOT NULL THEN locality END
END address_line4
, coalesce(posttown, town) post_town
, postcode
, postcode_trim
, organisation_name
, local_council administritive_area
, uprn
FROM address_ni where postcode_trim is not null
;
