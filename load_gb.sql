
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_001.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_002.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_003.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_004.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_005.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_006.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_007.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_008.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_009.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_010.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_011.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_012.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_013.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_014.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_015.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_016.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_017.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_018.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_019.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_020.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_021.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_022.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_023.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_024.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_025.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_026.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_027.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_028.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_029.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_030.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_031.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_032.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_033.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_034.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
LOAD DATA LOCAL INFILE 'AddressBasePlus_FULL_2014-02-01_035.csv'
REPLACE INTO TABLE addressbase.address_gb FIELDS TERMINATED by ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' (
uprn
,@rm_rdprn
,change_type
,@state
,@state_date
,class
,@parent_uprn
,x_coordinate
,y_coordinate
,rpc
,local_custodian_code
,start_date
,@end_date
,last_update_date
,entry_date
,@organisation_name
,@organisation
,@department_name
,@scottish_department_name
,@building_name
,@sub_building_name
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
,@dependent_thoroughfare_name
,@thoroughfare_name
,@welsh_dependent_thoroughfare_name
,@welsh_thoroughfare_name
,@double_dependent_locality
,@dependent_locality
,@locality_name
,@welsh_dependent_locality
,@welsh_double_dependent_locality
,@town_name
,administritive_area
,@post_town
,@postcode
,@postcode_locator
,@postcode_type
,@postal_address
,@po_box_number
,@ward_code
,@parish_code
,@process_date
,@multi_occ_count
,@voa_ndr_p_desc_code
,@voa_ndr_scat_code
,@alt_language
)
SET
rm_rdprn = nullif(@rm_rdprn, '')
,state = nullif(@state, '')
,state_date = nullif(@state_date, '')
,parent_uprn = nullif(@parent_uprn, '')
,end_date = nullif(@end_date, '')
,organisation_name = nullif(@organisation_name, '')
,organisation = nullif(@organisation, '')
,department_name = nullif(@department_name, '')
,scottish_department_name = nullif(@scottish_department_name, '')
,building_name = nullif(@building_name, '')
,sub_building_name = nullif(@sub_building_name, '')
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
,dependent_thoroughfare_name = nullif(@dependent_thoroughfare_name, '')
,thoroughfare_name = nullif(@thoroughfare_name, '')
,welsh_dependent_thoroughfare_name = nullif(@welsh_dependent_thoroughfare_name, '')
,welsh_thoroughfare_name = nullif(@welsh_thoroughfare_name, '')
,double_dependent_locality = nullif(@double_dependent_locality, '')
,dependent_locality = nullif(@dependent_locality, '')
,locality_name = nullif(@locality_name, '')
,welsh_dependent_locality = nullif(@welsh_dependent_locality, '')
,welsh_double_dependent_locality = nullif(@welsh_double_dependent_locality, '')
,town_name = nullif(@town_name, '')
,post_town = nullif(@post_town, '')
,postcode = nullif(@postcode, '')
,postcode_locator = nullif(@postcode_locator, '')
,postcode_type = nullif(@postcode_type, '')
,postal_address = nullif(@postal_address, '')
,po_box_number = nullif(@po_box_number, '')
,ward_code = nullif(@ward_code, '')
,parish_code = nullif(@parish_code, '')
,process_date = nullif(@process_date, '')
,multi_occ_count = nullif(@multi_occ_count, '')
,voa_ndr_p_desc_code = nullif(@voa_ndr_p_desc_code, '')
,voa_ndr_scat_code = nullif(@voa_ndr_scat_code, '')
,alt_language = nullif(@alt_language, '')
,postcode_trim = nullif(REPLACE(@postcode, ' ', ''), '')
 ;
 
