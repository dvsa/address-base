/*

Turn data from addressbase columns into human readable address.
Ref: http://www.royalmail.com/sites/default/files/docs/pdf/programmers_guide_edition_7_v5.pdf
The addressbase data has 2 sources. Local Authorities and Post Office (LA and PAF).
There is not sufficient documentation on queying this data on internet.
Additionally, the Northern Ireland (NI) data is received in the PAF format.
Because of this the below query uses the PAF rules - mainly so that the 
corresponding NI query is similar.  The LA columns in address_gb are agnored.
It would be possibly to create the same readable address from either
LA or PAF data.

Technical bit on query-

The query below has comments such as 1a, this refers to rule 1 in the PAF document.
Tha a,b,c are to split some rules up and make the query more readable.

The address_lin1 part contains all the logic.  The outer CASE statement
splits on the rules in the PAF guide.  Then each section has an inner
CASE wich calculates lines 2,3,4. Each of these calculations is compared 
to ZZZ - always false, thus causinf the next branch of the case to be
checked and thus calculated. The ELSE returns address line 1 and is 
always used as any branch before has a false condition.

*/
-- CREATE OR REPLACE VIEW gb_readable_vw AS
SELECT
CASE 
-- 1a Based on org name, have po box
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 	
    THEN CASE 
    -- Line 2 is the po box
    WHEN (@Line2 := concat('PO BOX ',po_box_number)) = 'ZZZ' THEN null
	-- Line 3 is first locality/thoroghfare data
	WHEN (@Line3 := coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality)) = 'ZZZ' THEN null
	-- Line 4 is second locality/thoroughfare data
	WHEN (@Line4 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality,dependent_locality)
                            WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Logic := '1a') = 'ZZZ' THEN NULL
	-- Line 1 is the org name
	ELSE gb.organisation_name END
-- 1b Based on org name, no po box           
WHEN gb.organisation_name IS NOT NULL AND gb.po_box_number IS NULL AND building_name is null AND sub_building_name is null and building_number is null 		
	THEN CASE 
    -- Line 2 is first locality/thoroghfare data
    WHEN (@Line2 := coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality)) = 'ZZZ' THEN null
	-- Line 3 second locality/thoroughfare data
    WHEN (@Line3 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality,dependent_locality)
                            WHEN dependent_thoroughfare IS NULL AND thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line4 := null) = 'ZZZ' THEN null
    WHEN (@Logic := '1b') = 'ZZZ' THEN NULL
	-- Line 1 is org name
	ELSE gb.organisation_name END
-- 2a building number only + dependent_thoroughfare
WHEN building_number is not null AND building_name is null and sub_building_name is null and dependent_thoroughfare is not null
    THEN CASE 
    WHEN (@Line2 := thoroughfare) = 'ZZZ' THEN null
	WHEN (@Line3 := coalesce(double_dependent_locality,dependent_locality)) = 'ZZZ' THEN null
	WHEN (@Line4 := CASE WHEN double_dependent_locality IS NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
    WHEN (@Logic := '2a') = 'ZZZ' THEN NULL
		-- Line 1 is building number and dependent thoroughfare
	ELSE concat(building_number, ' ', dependent_thoroughfare) END
-- 2b building number only + thoroughfare     
WHEN building_number is not null AND building_name is null and sub_building_name is null and thoroughfare is not null
    THEN CASE 
    WHEN (@Line2 := coalesce(double_dependent_locality,dependent_locality)) = 'ZZZ' THEN null
    WHEN (@Line3 := CASE WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line4 := null) = 'ZZZ' THEN NULL
    WHEN (@Logic := '2b') = 'ZZZ' THEN NULL
		-- Line 1 is building number and thoroughfare
	ELSE concat(building_number, ' ', thoroughfare) END
-- 2c building number only + locality and/or dependent locality
WHEN building_number is not null AND building_name is null and sub_building_name is null 
    THEN CASE 
    WHEN (@Line2 := CASE WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line3 := null) = 'ZZZ' THEN NULL
	WHEN (@Line4 := null) = 'ZZZ' THEN NULL
    WHEN (@Logic := '2c') = 'ZZZ' THEN NULL
	ELSE concat(building_number, ' ', coalesce(double_dependent_locality, dependent_locality)) END
-- 3a building name only + exception rule 
WHEN sub_building_name is null and building_number is null and (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$') 	
	THEN CASE 
    -- Line 2 is the next locality/thoughfare
    WHEN (@Line2 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality) 
                            WHEN double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	-- Line 3 is next locality/thoroughfare
	WHEN (@Line3 := CASE WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare is not null and double_dependent_locality is not null THEN dependent_locality END) = 'ZZZ' THEN null
		-- No Line 4 - out of data
	WHEN (@Line4 := null) = 'ZZZ' THEN NULL
    WHEN (@Logic := '3a') = 'ZZZ' THEN NULL
	-- Line 1 is building name + first locality/thoroughfare line
	ELSE concat(building_name,' ',coalesce(dependent_thoroughfare,thoroughfare,double_dependent_locality,dependent_locality)) END
-- 3b building name only, no exception rule
WHEN sub_building_name is null and building_number is null and building_name is not null	
	THEN CASE 
    -- Line 2 is first locality/thoroughfare line
    WHEN (@Line2 := coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)) = 'ZZZ' THEN null
	-- Line 3 is second locality/thoroughfare line
	WHEN (@Line3 :=  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line4 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
	WHEN (@Logic := '3b') = 'ZZZ' THEN NULL
	-- Line 1 is building name
	ELSE building_name END

-- 4 Both building name and number
WHEN building_number is not null and building_name is not null and sub_building_name is null	
	THEN CASE 
    -- Line 2 is building number and first thoroughfare/locality line
    WHEN (@Line2 := concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))) = 'ZZZ' THEN NULL
	-- Line 3 is next line of locality/thoroughfare
    WHEN (@Line3 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
    -- Line 4 is next line of locality/thoroughfare
	WHEN (@Line4 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
	WHEN (@Logic := '4') = 'ZZZ' THEN NULL
    -- Line 1 is nuilding name
	ELSE building_name END
-- 5 Both sub_building_name and building number (very similar to 4, only line 1 differs)
WHEN sub_building_name is not null AND building_number is not null and building_name is null 	
	THEN CASE 
    -- Line 2 is building number and first thoroughfare/locality line
    WHEN (@Line2 := concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))) = 'ZZZ' THEN NULL
	-- Line 3 is next line of locality/thoroughfare
    WHEN (@Line3 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
    -- Line 4 is next line of locality/thoroughfare
	WHEN (@Line4 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
	WHEN (@Logic := '5') = 'ZZZ' THEN NULL
    -- Line 1 is nuilding name
	ELSE sub_building_name END
-- 6a sub building and building name, no number - sub_building name matches exception criteria
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')		
	THEN CASE 
    -- Line 2 is first locality/thoroughfare line
    WHEN (@Line2 := coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)) = 'ZZZ' THEN null
	-- Line 3 is second locality/thoroughfare line
	WHEN (@Line3 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line4 := CASE WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
	WHEN (@Logic := '6a') = 'ZZZ' THEN NULL
	-- Line 1 is sub building name and building name
	ELSE  concat(sub_building_name, ' ', building_name) END
-- 6b sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null AND (length(building_name) = 1 OR building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')			
    THEN CASE 
    -- Line 2 is building name
    WHEN (@Line2 := concat(building_name, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))) = 'ZZZ' THEN NULL
	WHEN (@Line3 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	-- Line 3 is second locality/thoroughfare line
	WHEN (@Line4 :=  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Logic := '6c') = 'ZZZ' THEN NULL
	-- Line 1 is sub building 
	ELSE  sub_building_name END
-- 6c sub building and building name, no number 
WHEN sub_building_name is not null and building_name is not null and building_number is null 	
    THEN CASE 
    -- Line 2 is building name
    WHEN (@Line2 := building_name) = 'ZZZ' THEN NULL
	WHEN (@Line3 := coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality)) = 'ZZZ' THEN null
	-- Line 3 is second locality/thoroughfare line
	WHEN (@Line4 :=  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
                            WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Logic := '6c') = 'ZZZ' THEN NULL
	-- Line 1 is sub building 
	ELSE  sub_building_name END
-- 7a building name + sub building name (meets exception rule) + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null AND (length(sub_building_name) = 1 OR sub_building_name regexp '^[0-9]((.*)?[0-9])?([a-zA-Z])?$')
	THEN CASE 
    WHEN (@Line2 := concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))) = 'ZZZ' THEN NULL
    -- Line 3 is second locality/thoroughfare line
	WHEN (@Line3 :=  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Line4 := CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN NULL
	WHEN (@Logic := '7a') = 'ZZZ' THEN NULL
    -- Line 1 is sub building name and building name
    ELSE concat(sub_building_name, ' ', building_name) END

-- 7b building name + sub building name + building number
WHEN sub_building_name is not null and building_name is not null and building_number is not null
	THEN CASE 
    WHEN (@Line2 := building_name) = 'ZZZ' THEN NULL 
    WHEN (@Line3 := concat(building_number, ' ', coalesce(dependent_thoroughfare, thoroughfare, double_dependent_locality, dependent_locality))) = 'ZZZ' THEN NULL
    -- Line 3 is second locality/thoroughfare line
	WHEN (@Line4 :=  CASE 	WHEN dependent_thoroughfare IS NOT NULL THEN thoroughfare 
							WHEN dependent_thoroughfare is null and thoroughfare IS NOT NULL THEN coalesce(double_dependent_locality, dependent_locality)
							WHEN thoroughfare IS NULL AND double_dependent_locality IS NOT NULL THEN dependent_locality END) = 'ZZZ' THEN null
	WHEN (@Logic := '7b') = 'ZZZ' THEN NULL
    -- Line 1 is sub building name
    ELSE sub_building_name END
END address_line1
, @Line2 address_line2
, @Line3 address_line3
, @Line4 address_line4
, post_town
, postcode
, @Logic debug_path
, organisation_name
, administritive_area
, po_box_number
, uprn
FROM address_gb gb where postcode_trim is not null 
 -- and gb.organisation_name IS NOT NULL AND gb.po_box_number IS NOT NULL AND building_name is null AND sub_building_name is null and building_number is null 
 and postcode_trim = 'wv164aw'
;
