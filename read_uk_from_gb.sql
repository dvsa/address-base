select uprn, coalesce(organisation_name ,concat(ifnull(sao_start_number, '')
  , ifnull(sao_start_prefix, '')
  , if (sao_end_number is null, '', concat('-', sao_end_number))
  , ifnull(sao_end_suffix, '')
  , if (sao_start_number is not null and sao_text is not null, concat(' ', sao_text), ifnull(sao_text,'')))) saon
, coalesce(building_name, concat(ifnull(pao_start_number, '')
  , ifnull(pao_start_prefix, '')
  , if(pao_end_number is null, '', concat('-', pao_end_number))
  , ifnull(pao_end_suffix, '')
  , if(pao_start_number is not null and pao_text is not null, concat(' ', pao_text), ifnull(pao_text, '')))) paon
, street_description
, nullif(locality_name, '') locality
, town_name
, administritive_area
, nullif(postcode, '') postcode
from address_gb where postcode = 'WV16 4AW';