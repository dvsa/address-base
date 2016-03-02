DROP TABLE IF EXISTS addressbase.address_gb;
CREATE TABLE addressbase.`address_gb` (
  `uprn`                 BIGINT UNSIGNED NOT NULL       COMMENT 'Unique Property Reference No assigned by LLPG or OS'
 ,`udprn`                INT UNSIGNED DEFAULT NULL      COMMENT 'Royal Mail’s Unique Delivery Point Reference Number'
 ,`change_type`          VARCHAR(1) NOT NULL               COMMENT 'Type of Record Change'
 ,`state`                TINYINT DEFAULT NULL           COMMENT 'A code identifying the current state of the property'
 ,`state_date`           DATE DEFAULT NULL              COMMENT 'Date on which the property achieved its state'
 ,`class`                VARCHAR(6) NOT NULL               COMMENT 'Classification of the address record'
 ,`parent_uprn`          BIGINT UNSIGNED DEFAULT NULL   COMMENT 'UPRN of the parent record if a parent child exists'
 ,`x_coordinate`         DECIMAL(8,2) NOT NULL          COMMENT 'Metres defining x location in British National Grid'
 ,`y_coordinate`         DECIMAL(9,2) NOT NULL          COMMENT 'Metres defining y location in British National Grid'
 ,`latitude`             DECIMAL(9,7) NOT NULL          COMMENT 'Latitude location in accordance with ETRS89'
 ,`longitude`            DECIMAL(8,7) NOT NULL          COMMENT 'Longitude location in accordance with ETRS89'
 ,`rpc`                  TINYINT UNSIGNED NOT NULL      COMMENT 'Representative Point Code. Reflects positional accuracy'
 ,`local_custodian_code` SMALLINT UNSIGNED NOT NULL     COMMENT 'Unique identifier of the LLPG Custodian'
 ,`country`              VARCHAR(1) NOT NULL               COMMENT 'E,w,s,n,l,m,j?'
 ,`la_start_date`           DATE NOT NULL                  COMMENT 'Addressbase insert date'
 ,`last_update_date`     DATE NOT NULL                  COMMENT 'Addressbase update date'
 ,`entry_date`           DATE NOT NULL                  COMMENT 'Local Authority database insert date'
 ,`organisation_name`    VARCHAR(60) DEFAULT NULL          COMMENT 'business name given to a delivery point within a building'
 ,`la_organisation`      VARCHAR(100) DEFAULT NULL         COMMENT 'Name of current occupier as provided by the LA Custodian'
 ,`department_name`      VARCHAR(60) DEFAULT NULL          COMMENT 'e.g. Marketing'
 ,`legal_name`           VARCHAR(60) DEFAULT NULL          COMMENT 'Registered legal name of the organisation'
 ,`sub_building_name`    VARCHAR(30) DEFAULT NULL          COMMENT 'e.g. FLAT 3 '
 ,`building_name`        VARCHAR(50) DEFAULT NULL          COMMENT 'e.g. Hillcrest House'
 ,`building_number`      INT UNSIGNED DEFAULT NULL         COMMENT 'building number if numeric'
 ,`sao_start_number`     SMALLINT UNSIGNED DEFAULT NULL COMMENT 'No of the secondary addressable obj, or the start of range'
 ,`sao_start_suffix`     VARCHAR(2) DEFAULT NULL           COMMENT 'The suffix to the SAO_START_NUMBER'
 ,`sao_end_number`       SMALLINT UNSIGNED DEFAULT NULL COMMENT 'End number range for the SAO where SAO_START_NUMBER not null'
 ,`sao_end_suffix`       VARCHAR(2) DEFAULT NULL           COMMENT 'Suffix for end number'
 ,`sao_text`             VARCHAR(90) DEFAULT NULL          COMMENT 'Describes the SAO, such as Maisonette'
 ,`alt_language_sao_text` VARCHAR(90) DEFAULT NULL         COMMENT 'Describes the SAO, such as Maisonette in specified language'
 ,`pao_start_number`     SMALLINT(6) DEFAULT NULL       COMMENT 'No of the primary addressable obj, or the start of range'
 ,`pao_start_suffix`     VARCHAR(2) DEFAULT NULL           COMMENT 'The suffix to the PAO_START_NUMBER'
 ,`pao_end_number`       SMALLINT(6) DEFAULT NULL       COMMENT 'End number range for the SAO where PAO_START_NUMBER not null'
 ,`pao_end_suffix`       VARCHAR(2) DEFAULT NULL           COMMENT 'Suffix for end number'
 ,`pao_text`             VARCHAR(90) DEFAULT NULL          COMMENT 'Describes the SAO, such as Maisonette'
 ,`alt_language_pao_text` VARCHAR(90) DEFAULT NULL         COMMENT 'Describes the SAO, such as Maisonette in specified language'
 ,`usrn`                 INT UNSIGNED NOT NULL          COMMENT 'Unique Street Reference Number'
 ,`usrn_match_indicator` TINYINT UNSIGNED NOT NULL      COMMENT 'Match Method. 1 manual, s spacial'
 ,`area_name`            VARCHAR(40) DEFAULT NULL          COMMENT '3rd level of area e.g. Croft'
 ,`level`                VARCHAR(30) DEFAULT NULL          COMMENT 'Memorandum of the vertical position of the property.'
 ,`official_flag`        VARCHAR(1) DEFAULT NULL           COMMENT 'Status of the address'
 ,`os_address_toid`      VARCHAR(20) DEFAULT NULL          COMMENT 'OS uid'
 ,`os_address_toid_version` SMALLINT UNSIGNED DEFAULT NULL COMMENT 'Version of OS address'
 ,`os_roadlink_toid`     VARCHAR(20) DEFAULT NULL          COMMENT 'The OS MasterMap Integrated Transport Network™ (ITN) road link'
 ,`os_roadlink_toid_version` SMALLINT UNSIGNED DEFAULT NULL COMMENT 'Roadlink version'
 ,`os_topo_toid`         VARCHAR(20) DEFAULT NULL         COMMENT 'The OS MasterMap Topography Layer TOID.'
 ,`os_topo_toid_version` SMALLINT UNSIGNED DEFAULT NULL COMMENT 'Topography version'
 ,`voa_ct_record`        BIGINT UNSIGNED DEFAULT NULL   COMMENT 'Unique VOA council tax reference'
 ,`voa_ndr_record`       BIGINT UNSIGNED DEFAULT NULL   COMMENT 'Unique VOA non domestic rate ref'
 ,`street_description`   VARCHAR(100) NOT NULL             COMMENT 'Local Land and Property Gazetteer (LLPG) street name'
 ,`alt_language_street_description` VARCHAR(100) DEFAULT NULL COMMENT 'street description in records specified language'
 ,`dependent_thoroughfare` VARCHAR(80) DEFAULT NULL        COMMENT 'e.g. KINGS PARADE, HIGH STREET and QUEENS PARADE, HIGH STREET'
 ,`thoroughfare`         VARCHAR(80) DEFAULT NULL          COMMENT 'e.g. HIGH STREET'
 ,`welsh_dependent_thoroughfare` VARCHAR(80) DEFAULT NULL  COMMENT 'The Welsh translation of DEPENDENT_THOROUGHFARE'
 ,`welsh_thoroughfare`   VARCHAR(80) DEFAULT NULL          COMMENT 'The Welsh translation of THOROUGHFARE'
 ,`double_dependent_locality` VARCHAR(35) DEFAULT NULL     COMMENT 'Distinguishes similar thoroghfares in same locality'
 ,`dependent_locality`   VARCHAR(35) DEFAULT NULL          COMMENT 'An area within a post town'
 ,`locality_name`             VARCHAR(35) DEFAULT NULL          COMMENT 'An area within a hamlet, town or village'
 ,`welsh_dependent_locality` VARCHAR(35) DEFAULT NULL      COMMENT 'Welsh translation of dependent locality'
 ,`welsh_double_dependent_locality` VARCHAR(35) DEFAULT NULL COMMENT 'Welsh translation of double dependent locality'
 ,`town_name`            VARCHAR(30) DEFAULT NULL          COMMENT 'Town name'
 ,`administritive_area`  VARCHAR(30) NOT NULL              COMMENT 'Local Highway Authority name'
 ,`post_town`            VARCHAR(35) DEFAULT NULL          COMMENT 'Royal Mail sorting office servicing record'
 ,`welsh_post_town`      VARCHAR(35) DEFAULT NULL          COMMENT 'Welsh translation of post town'
 ,`postcode`             VARCHAR(8) DEFAULT NULL           COMMENT 'Postcode with separator space'
 ,`postcode_locator`     VARCHAR(8) DEFAULT NULL           COMMENT 'PAF postcode if sourced from Royal Mail'
 ,`postcode_type`        VARCHAR(1) DEFAULT NULL           COMMENT 'Desc the address as a small or large user as defined by RM'
 ,`delivery_point_suffix` VARCHAR(2) DEFAULT NULL          COMMENT 'uid of individual delivery point within a postcode'
 ,`addressbase_postal`    VARCHAR(1) DEFAULT NULL
 ,`po_box_number`        VARCHAR(6) DEFAULT NULL
 ,`ward_code`            VARCHAR(9) DEFAULT NULL           COMMENT 'The ONS GSS code of the electoral ward'
 ,`parish_code`          VARCHAR(9) DEFAULT NULL           COMMENT 'The ONS GSS code of the parish, town or community'
 ,`rm_start_date`        DATE DEFAULT NULL              COMMENT 'Date on which the Royal Mail address was loaded'
 ,`multi_occ_count`      SMALLINT UNSIGNED DEFAULT NULL COMMENT 'Count of child upns'
 ,`voa_ndr_p_desc_code`  VARCHAR(5) DEFAULT NULL           COMMENT 'non domestic rates category'
 ,`voa_ndr_scat_code`    VARCHAR(4) DEFAULT NULL           COMMENT 'non domestic rates special cat code'
 ,`alt_language`         VARCHAR(3) DEFAULT NULL           COMMENT 'Alt language for fields using one'
 ,`postcode_trim`        VARCHAR(7) DEFAULT NULL           COMMENT 'Postcode with no whitespace for searching'
 ,PRIMARY KEY address_gb_pk(uprn)
 ,KEY `ix_address_gb_postcode_trim` (`postcode_trim`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DELIMITER $$
DROP FUNCTION IF EXISTS gb_address_concat$$
CREATE FUNCTION gb_address_concat(p_uprn BIGINT UNSIGNED) 
RETURNS VARCHAR(500) CHARSET utf8 DETERMINISTIC READS SQL DATA
BEGIN
  DECLARE result VARCHAR(500);

SELECT 
    CASE
        WHEN
            addressbase_postal IN ('C' , 'L')
        THEN
            CONCAT_WS('|',
                    sao_text,
                    CASE
                        WHEN
                            sao_start_number IS NOT NULL
                                OR pao_text IS NOT NULL
                        THEN
                            CONCAT(CONCAT_WS('', sao_start_number, sao_start_suffix),
                                    CASE
                                        WHEN sao_end_number IS NOT NULL THEN '-'
                                        ELSE ''
                                    END,
                                    CONCAT_WS('',
                                            sao_end_number,
                                            sao_end_suffix,
                                            ' ',
                                            pao_text))
                        ELSE NULL
                    END,
                    CONCAT(CONCAT_WS('',
                                    '',
                                    pao_start_number,
                                    pao_start_suffix),
                            CASE
                                WHEN pao_end_number IS NOT NULL THEN '-'
                                ELSE ''
                            END,
                            CONCAT_WS('', '', pao_end_number, pao_end_suffix),
                            ' ',
                            street_description))
        WHEN addressbase_postal = 'D' THEN NULL
    END
INTO result FROM
    address_gb
WHERE
    uprn = p_uprn;
  RETURN result;

END$$

DELIMITER ;

CREATE OR REPLACE VIEW gb_readable_vw AS
/*

Turn data from addressbase columns into human readable address.
Ref: http://www.royalmail.com/sites/default/files/docs/pdf/programmers_guide_edition_7_v5.pdf
The addressbase data has 2 sources. Local Authorities and Post Office (LA and PAF).
There is not sufficient documentation on queying this data on internet.
Additionally, the Northern Ireland (NI) data is received in the PAF format.
Because of this the below query uses the PAF rules - mainly so that the 
corresponding NI query is similar.  
If its not a PAF record then call a function to get data in | separated
column order.  The rules are simpler than the PAF version.
*/
SELECT
CASE 
WHEN addressbase_postal in ('C','L')
    THEN substring_index(gb_address_concat(uprn),'|',1)
-- 1a Based on org name, have po box
WHEN organisation_name IS NOT NULL AND po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 	
    THEN gb.organisation_name
-- 1b Based on org name, no po box           
WHEN organisation_name IS NOT NULL AND po_box_number IS NULL AND building_name is null AND sub_building_name is null and building_number is null 		
	THEN organisation_name
-- 2a building number only + dependent_thoroughfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and dependent_thoroughfare is not null
    THEN concat(building_number, ' ', dependent_thoroughfare)
-- 2b building number only + thoroughfare     
WHEN building_number is not null AND building_name is null and sub_building_name is null and thoroughfare is not null
    THEN concat(building_number, ' ', thoroughfare)
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null 
    THEN concat(building_number, ' ', coalesce(double_dependent_locality, dependent_locality))
-- 3a building name only + exception rule 
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$') 	
	THEN concat(building_name,' ',coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality))
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
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')			
	THEN sub_building_name
-- 6c sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null 	
    THEN sub_building_name
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(sub_building_name, ' ', building_name)

-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN sub_building_name
END address_line1
,CASE 
WHEN addressbase_postal in ('C','L') AND length(gb_address_concat(uprn)) - length(replace(gb_address_concat(uprn), '|' , ''))+ 1 > 1 THEN
	substring_index(substring_index(gb_address_concat(uprn),'|',2),'|',-1)
WHEN addressbase_postal in ('C','L') THEN NULL
-- 1a Based on org name, have po box
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 	
    THEN concat('PO BOX ',po_box_number)
-- 1b Based on org name, no po box           
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NULL AND building_name is null AND sub_building_name is null and building_number is null 		
	THEN thoroughfare
-- 2a building number only + dependent_thoroughfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and dependent_thoroughfare is not null
    THEN coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality)
-- 2b building number only + thoroughfare     
WHEN building_number is not null AND building_name is null and sub_building_name is null and thoroughfare is not null
    THEN coalesce(double_dependent_locality,dependent_locality)
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null 
    THEN CASE WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 3a building name only + exception rule 
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$') 	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality) 
                            WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null	
	THEN coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)

-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null	
	THEN concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null 	
	THEN concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')		
	THEN coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)
-- 6b sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')			
	THEN concat(building_name, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))
-- 6c sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null 	
    THEN building_name
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))

-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN building_name
END address_line2,

CASE
WHEN addressbase_postal in ('C','L') AND length(gb_address_concat(uprn)) - length(replace(gb_address_concat(uprn), '|' , ''))+ 1 > 2 THEN
	substring_index(substring_index(gb_address_concat(uprn),'|',3),'|',-1)
WHEN addressbase_postal in ('C','L') THEN NULL 
-- 1a Based on org name, have po box
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 	
    THEN coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality)
-- 1b Based on org name, no po box           
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NULL AND building_name is null AND sub_building_name is null and building_number is null 		
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality,dependent_locality)
                            WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 2a building number only + dependent_thoroughfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and dependent_thoroughfare is not null
    THEN coalesce(double_dependent_locality,dependent_locality)
-- 2b building number only + thoroughfare     
WHEN building_number is not null AND building_name is null and sub_building_name is null and thoroughfare is not null
    THEN CASE WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null 
    THEN null
-- 3a building name only + exception rule 
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$') 	
	THEN CASE WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare is not null and double_dependent_locality is not null THEN dependent_locality END
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null 	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')		
	THEN  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6b sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')			
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6c sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null 	
    THEN coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))
END address_line3,
CASE
WHEN addressbase_postal in ('C','L') AND length(gb_address_concat(uprn)) - length(replace(gb_address_concat(uprn), '|' , ''))+ 1 > 3 THEN
	substring_index(substring_index(gb_address_concat(uprn),'|',4),'|',-1)
WHEN addressbase_postal in ('C','L') THEN NULL  
-- 1a Based on org name, have po box
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 	
    THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality,dependent_locality)
                            WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 1b Based on org name, no po box           
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NULL AND building_name is null AND sub_building_name is null and building_number is null 		
	THEN null
-- 2a building number only + dependent_thoroughfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and dependent_thoroughfare is not null
    THEN CASE WHEN double_dependent_locality IS NULL THEN dependent_locality END
-- 2b building number only + thoroughfare     
WHEN building_number is not null AND building_name is null and sub_building_name is null and thoroughfare is not null
    THEN null
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null 
    THEN null
-- 3a building name only + exception rule 
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$') 	
	THEN null
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END

-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null 	
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')		
	THEN CASE WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6b sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')			
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 6c sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null 	
    THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END
END address_line4
, coalesce(post_town,town_name) post_town
, postcode_locator postcode
, postcode_trim
, organisation_name
, administritive_area
, uprn
FROM address_gb gb where postcode_trim is not null AND addressbase_postal IN ('C','L','D')
;
