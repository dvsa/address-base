SET UNIQUE_CHECKS = 0;

LOAD DATA LOCAL INFILE 'GB_CSV_FILE_NAME'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,latitude
,longitude
,rpc
,local_custodian_code
,country
,la_start_date
,last_update_date
,entry_date
,@rm_organisation_name
,@la_organisation
,@department_name
,@legal_name
,@sub_building_name
,@building_name
,@building_number
,@sao_start_number
,@sao_start_prefix
,@sao_end_number
,@sao_end_suffix
,@sao_text
,@alt_language_sao_text
,@pao_start_number
,@pao_start_prefix
,@pao_end_number
,@pao_end_suffix
,@pao_text
,@alt_language_pao_text
,usrn
,usrn_match_indicator
,@area_name
,@level
,@official_flag
,@os_address_toid
,@os_address_toid_version
,@os_roadlink_toid
,@os_roadlink_toid_version
,@os_topo_toid
,@os_topo_toid_version
,@voa_ct_record
,@voa_ndr_record
,street_description
,@alt_language_street_description
,@dependent_thoroughfare
,@thoroughfare
,@welsh_dependent_thoroughfare
,@welsh_thoroughfare
,@double_dependent_locality
,@dependent_locality
,@locality
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@welsh_post_town
,@postcode
,@postcode_locator
,@postcode_type
,@delivery_point_suffix
,@addressbase_postal
,@po_box_number
,@ward_code
,@parish_code
,@rm_start_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
udprn = nullif(@udprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,organisation_name = nullif(@rm_organisation_name, '')
,la_organisation = nullif(@la_organisation, '')
,department_name = nullif(@department_name, '')
,legal_name = nullif(@legal_name, '')
,sub_building_name = nullif(@sub_building_name, '')
,building_name = nullif(@building_name, '')
,sao_start_number = nullif(@sao_start_number, '')
,sao_start_prefix = nullif(@sao_start_prefix, '')
,sao_end_number = nullif(@sao_end_number, '')
,sao_end_suffix = nullif(@sao_end_suffix, '')
,sao_text = nullif(@sao_text, '')
,alt_language_sao_text = nullif(@alt_language_sao_text, '')
,pao_start_number = nullif(@pao_start_number, '')
,pao_start_prefix = nullif(@pao_start_prefix, '')
,pao_end_number = nullif(@pao_end_number, '')
,pao_end_suffix = nullif(@pao_end_suffix, '')
,pao_text = nullif(@pao_text, '')
,alt_language_pao_text = nullif(@alt_language_pao_text, '')
,area_name = nullif(@area_name, '')
,level = nullif(@level, '')
,official_flag = nullif(@official_flag, '')
,os_address_toid = nullif(@os_address_toid, '')
,os_address_toid_version = nullif(@os_address_toid_version, '')
,os_roadlink_toid = nullif(@os_roadlink_toid, '')
,os_roadlink_toid_version = nullif(@os_roadlink_toid_version, '')
,os_topo_toid = nullif(@os_topo_toid, '')
,os_topo_toid_version = nullif(@os_topo_toid_version, '')
,voa_ct_record = nullif(@voa_ct_record, '')
,voa_ndr_record = nullif(@voa_ndr_record, '')
,alt_language_street_description = nullif(@alt_language_street_description, '')
,dependent_thoroughfare = nullif(@dependent_thoroughfare, '')
,thoroughfare = nullif(@thoroughfare, '')
,welsh_dependent_thoroughfare = nullif(@welsh_dependent_thoroughfare, '')
,welsh_thoroughfare = nullif(@welsh_thoroughfare, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,delivery_point_suffix = nullif(@delivery_point_suffix, '')
,addressbase_postal = nullif(@addressbase_postal, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,rm_start_date = nullif(@rm_start_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
 SELECT row_count() rows_inserted;
