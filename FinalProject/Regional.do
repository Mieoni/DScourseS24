
gen year_100 = year * 100
gen new_year_quarter = 0 
replace new_year_quarter = year_100 + quarter


gen bank = 0
replace bank = 1 if unique_carrier_name =="Markair Inc." & year >= 1992 & quarter == 2
replace bank = 1 if unique_carrier_name =="Markair Inc." & year >= 1995 & quarter == 2
replace bank = 1 if unique_carrier_name =="Eastwind Airlines Inc." & year >= 1999 & quarter == 3
replace bank = 1 if unique_carrier_name =="Regions Air, Inc." & year >= 2001 & quarter == 1
replace bank = 1 if unique_carrier_name =="Midway Airlines Inc." & year >= 2001 & quarter == 3
replace bank = 1 if unique_carrier_name =="Colgan Air" & year >= 2002 & quarter == 3
replace bank = 1 if unique_carrier_name =="PSA Airlines Inc." & year >= 2002 & quarter == 3
replace bank = 1 if unique_carrier_name =="PSA Airlines Inc." & year >= 2004 & quarter == 3
replace bank = 1 if unique_carrier_name =="Piedmont Airlines" & year >= 2002 & quarter == 3
replace bank = 1 if unique_carrier_name =="Piedmont Airlines" & year >= 2004 & quarter == 3
replace bank = 1 if unique_carrier_name =="Air Wisconsin Airlines Corp" & year >= 2002 & quarter == 4
replace bank = 1 if unique_carrier_name =="SkyWest Airlines Inc." & year >= 2002 & quarter == 4
replace bank = 1 if unique_carrier_name =="Trans States Airlines" & year >= 2002 & quarter == 4
replace bank = 1 if unique_carrier_name =="Trans States Airlines" & year >= 2011 & quarter == 4
replace bank = 1 if unique_carrier_name =="Aloha Airlines Inc." & year >= 2004 & quarter == 4
replace bank = 1 if unique_carrier_name =="Comair Inc." & year >= 2005 & quarter == 3
replace bank = 1 if unique_carrier_name =="Mesaba Airlines" & year >= 2005 & quarter == 4
replace bank = 1 if unique_carrier_name =="Big Sky Airlines Inc." & year >= 2008 & quarter == 1
replace bank = 1 if unique_carrier_name =="Boston-Maine Airways" & year >= 2008 & quarter == 1
replace bank = 1 if unique_carrier_name =="Air Midwest Inc." & year >= 2008 & quarter == 2
replace bank = 1 if unique_carrier_name =="Colgan Air" & year >= 2004 & quarter == 3
replace bank = 1 if unique_carrier_name =="Colgan Air" & year >= 2012 & quarter == 4
replace bank = 1 if unique_carrier_name =="Mesa Airlines Inc." & year >= 2010 & quarter == 1
replace bank = 1 if unique_carrier_name =="Envoy Air" & year >= 2011 & quarter == 4
replace bank = 1 if unique_carrier_name =="Executive Airlines" & year >= 2011 & quarter == 4
replace bank = 1 if unique_carrier_name =="Endeavor Air Inc." & year >= 2012 & quarter == 2
replace bank = 1 if unique_carrier_name =="Pacific Wings Airlines" & year >= 2013 & quarter == 2
replace bank = 1 if unique_carrier_name =="Republic Airlines" & year >= 2016 & quarter == 1
replace bank = 1 if unique_carrier_name =="Seaport Airlines, Inc." & year >= 2016 & quarter == 1
replace bank = 1 if unique_carrier_name =="Peninsula Airways Inc." & year >= 2017 & quarter == 3
replace bank = 1 if unique_carrier_name =="Great Lakes Airlines" & year >= 2018 & quarter == 1


tab unique_carrier_name if bank == 1

* ABE 1st Comair05-3
tab unique_carrier_name year if origin == "ABE" & bank == 1
tab year quarter if origin == "ABE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ABE" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ABE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ABE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ABE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ABE" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ABE" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ABE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ABE" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ABE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ABE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ABE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ABE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ABE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ABE" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ABE" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABE" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "ABE" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ABE" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ABE" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ABE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ABE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ABE" & unique_carrier_name =="Republic Airlines"




* ABI 1st Envoy 11-4
tab unique_carrier_name year if origin == "ABI" & bank == 1
tab year quarter if origin == "ABI" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ABI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ABI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "ABI" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABI" & unique_carrier_name =="SkyWest Airlines Inc."


* ABL
tab unique_carrier_name year if origin == "ABL" & bank == 1

* ABQ 1st Mesa 10-01
tab unique_carrier_name year if origin == "ABQ" & bank == 1
tab year quarter if origin == "ABQ" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ABQ" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ABQ" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ABQ" & unique_carrier_name =="Pacific Wings Airlines"
tab year quarter if origin == "ABQ" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ABQ" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ABQ" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABQ" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ABQ" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ABQ" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ABQ" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201302, 201601) & origin == "ABQ" & unique_carrier_name =="Pacific Wings Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ABQ" & unique_carrier_name =="Republic Airlines"


* ABR 1st Mesaba 05-4
tab unique_carrier_name year if origin == "ABR" & bank == 1
tab year quarter if origin == "ABR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ABR" & unique_carrier_name =="SkyWest Airlines Inc."

* ABY
tab unique_carrier_name year if origin == "ABY" & bank == 1


* ACK 1st Comair05-3
tab unique_carrier_name year if origin == "ACK" & bank == 1
tab year quarter if origin == "ACK" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ACK" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ACK" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ACK" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ACK" & unique_carrier_name =="Endeavor Air Inc."


drop if inrange(new_year_quarter, 200203, 200504) & origin == "ACK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ACK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ACK" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ACK" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ACK" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "ACK" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ACK" & unique_carrier_name =="Comair Inc."




* ACT 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "ACT" & bank == 1
tab year quarter if origin == "ACT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ACT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ACT" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "ACT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ACT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ACT" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 200203, 200504) & origin == "ACT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ACT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ACT" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ACT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ACT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ACT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ACT" & unique_carrier_name =="Colgan Air"



* ACV
tab unique_carrier_name year if origin == "ACV" & bank == 1
tab year quarter if origin == "ACV" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "ACV" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ACV" & unique_carrier_name =="SkyWest Airlines Inc."


* ACY 1st Trans State02-4
tab unique_carrier_name year if origin == "ACY" & bank == 1
tab year quarter if origin == "ACY" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ACY" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ACY" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "ACY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "ACY" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ACY" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ACY" & unique_carrier_name =="Comair Inc."




* ADK
tab unique_carrier_name year if origin == "ADK" & bank == 1

* ADQ
tab unique_carrier_name year if origin == "ADQ" & bank == 1


* ADS
tab unique_carrier_name year if origin == "ADS" & bank == 1


* ADW
tab unique_carrier_name year if origin == "ADW" & bank == 1


* AET
tab unique_carrier_name year if origin == "AET" & bank == 1


* AEX 1st Mesaba 05-4
tab unique_carrier_name year if origin == "AEX" & bank == 1
tab year quarter if origin == "AEX" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "AEX" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "AEX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "AEX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "AEX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "AEX" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AEX" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "AEX" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "AEX" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "AEX" & unique_carrier_name =="Colgan Air"


* AFK
tab unique_carrier_name year if origin == "AFK" & bank == 1

* AFW
tab unique_carrier_name year if origin == "AFW" & bank == 1
tab year quarter if origin == "AFW" & unique_carrier_name =="Envoy Air"


* AGC
tab unique_carrier_name year if origin == "AGC" & bank == 1

* AGN
tab unique_carrier_name year if origin == "AGN" & bank == 1

* AGS 1st Comair05-3
tab unique_carrier_name year if origin == "AGS" & bank == 1
tab year quarter if origin == "AGS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "AGS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "AGS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "AGS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "AGS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "AGS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "AGS" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "AGS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "AGS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AGS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AGS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AGS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AGS" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "AGS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AGS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "AGS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "AGS" & unique_carrier_name =="Comair Inc."



* AHN
tab unique_carrier_name year if origin == "AHN" & bank == 1
tab year quarter if origin == "AHN" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "AHN" & unique_carrier_name =="Mesa Airlines Inc."


* AIA
tab unique_carrier_name year if origin == "AIA" & bank == 1

* AIK
tab unique_carrier_name year if origin == "AIK" & bank == 1

* AIN
tab unique_carrier_name year if origin == "AIN" & bank == 1

* AKB
tab unique_carrier_name year if origin == "AKB" & bank == 1

* AKI
tab unique_carrier_name year if origin == "AKI" & bank == 1

* AKK
tab unique_carrier_name year if origin == "AKK" & bank == 1

* AKN 1st Peninsula17-3
tab unique_carrier_name year if origin == "AKN" & bank == 1
tab year quarter if origin == "AKN" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "AKN" & unique_carrier_name =="Peninsula Airways Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "AKN" & unique_carrier_name =="Markair Inc."

* AKO
tab unique_carrier_name year if origin == "AKO" & bank == 1

* AKP
tab unique_carrier_name year if origin == "AKP" & bank == 1

* ALB 1st Trans State02-4
tab unique_carrier_name year if origin == "ALB" & bank == 1
tab year quarter if origin == "ALB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ALB" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ALB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ALB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ALB" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ALB" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ALB" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ALB" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ALB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ALB" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ALB" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ALB" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200103, 200503) & origin == "ALB" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ALB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ALB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ALB" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ALB" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ALB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "ALB" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ALB" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ALB" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ALB" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "ALB" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ALB" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ALB" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ALB" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ALB" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ALB" & unique_carrier_name =="Republic Airlines"



* ALM
tab unique_carrier_name year if origin == "ALM" & bank == 1
 
* ALN 
tab unique_carrier_name year if origin == "ALN" & bank == 1

* ALO 1st Mesaba05-4
tab unique_carrier_name year if origin == "ALO" & bank == 1
tab year quarter if origin == "ALO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ALO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ALO" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ALO" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ALO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ALO" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ALO" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 201202, 201601) & origin == "ALO" & unique_carrier_name =="Endeavor Air Inc."


* ALS 
tab unique_carrier_name year if origin == "ALS" & bank == 1

* ALW 
tab unique_carrier_name year if origin == "ALW" & bank == 1

* ALZ 
tab unique_carrier_name year if origin == "ALZ" & bank == 1

* AMA 1st Envoy11-4
tab unique_carrier_name year if origin == "AMA" & bank == 1
tab year quarter if origin == "AMA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "AMA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "AMA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "AMA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "AMA" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AMA" & unique_carrier_name =="Trans States Airlines"

* AMW 
tab unique_carrier_name year if origin == "AMW" & bank == 1

* ANB 
tab unique_carrier_name year if origin == "ANB" & bank == 1

* ANC 1st Peninsula17-3
tab unique_carrier_name year if origin == "ANC" & bank == 1
tab year quarter if origin == "ANC" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "ANC" & unique_carrier_name =="Peninsula Airways Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "ANC" & unique_carrier_name =="Markair Inc."


* AND 
tab unique_carrier_name year if origin == "AND" & bank == 1

* ANI
tab unique_carrier_name year if origin == "ANI" & bank == 1

* ANN 
tab unique_carrier_name year if origin == "ANN" & bank == 1

* ANP 
tab unique_carrier_name year if origin == "ANP" & bank == 1

* ANV
tab unique_carrier_name year if origin == "ANV" & bank == 1
 
* AOO
tab unique_carrier_name year if origin == "AOO" & bank == 1
tab year quarter if origin == "AOO" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "AOO" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AOO" & unique_carrier_name =="Colgan Air"


* AOS 
tab unique_carrier_name year if origin == "AOS" & bank == 1

* APA 
tab unique_carrier_name year if origin == "APA" & bank == 1

* APC 
tab unique_carrier_name year if origin == "APC" & bank == 1

* APF 
tab unique_carrier_name year if origin == "APF" & bank == 1

* APN 1st Mesaba05-4
tab unique_carrier_name year if origin == "APN" & bank == 1
tab year quarter if origin == "APN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "APN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "APN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "APN" & unique_carrier_name =="Endeavor Air Inc."


* AQY 
tab unique_carrier_name year if origin == "AQY" & bank == 1

* ARA 
tab unique_carrier_name year if origin == "ARA" & bank == 1

* ARB 
tab unique_carrier_name year if origin == "ARB" & bank == 1

* ARC
tab unique_carrier_name year if origin == "ARC" & bank == 1

* ART 
tab unique_carrier_name year if origin == "ART" & bank == 1
tab year quarter if origin == "ART" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ART" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ART" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ART" & unique_carrier_name =="Envoy Air"


* ASE 1st Air wisconsin02-4
tab unique_carrier_name year if origin == "ASE" & bank == 1
tab year quarter if origin == "ASE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ASE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ASE" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ASE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ASE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ASE" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "ASE" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ASE" & unique_carrier_name =="Republic Airlines"


* ASH 
tab unique_carrier_name year if origin == "ASH" & bank == 1

* ASL 
tab unique_carrier_name year if origin == "ASL" & bank == 1

* AST 
tab unique_carrier_name year if origin == "AST" & bank == 1

* ATK 
tab unique_carrier_name year if origin == "ATK" & bank == 1

* ATL Trans State, Air Wisconsin 02-4
tab unique_carrier_name year if origin == "ATL" & bank == 1
tab year quarter if origin == "ATL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ATL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ATL" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ATL" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ATL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ATL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 199202, 199604) & origin == "ATL" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ATL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ATL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200101, 200304) & origin == "ATL" & unique_carrier_name =="Regions Air, Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ATL" & unique_carrier_name =="SkyWest Airlines Inc."


drop if inrange(new_year_quarter, 200403, 200802) & origin == "ATL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ATL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "ATL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ATL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ATL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ATL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ATL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ATL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ATL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ATL" & unique_carrier_name =="Republic Airlines"



* ATO 
tab unique_carrier_name year if origin == "ATO" & bank == 1

* ATT 
tab unique_carrier_name year if origin == "ATT" & bank == 1

* ATU 
tab unique_carrier_name year if origin == "ATU" & bank == 1

* ATW 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "ATW" & bank == 1
tab year quarter if origin == "ATW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ATW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ATW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ATW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ATW" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ATW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ATW" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ATW" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ATW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "ATW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ATW" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ATW" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ATW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ATW" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ATW" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ATW" & unique_carrier_name =="Comair Inc."


* ATY 1st Mesaba05-4
tab unique_carrier_name year if origin == "ATY" & bank == 1
tab year quarter if origin == "ATW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ATW" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "ATY" & unique_carrier_name =="Endeavor Air Inc."


* AUG 
tab unique_carrier_name year if origin == "AUG" & bank == 1
tab year quarter if origin == "AUG" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "AUG" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AUG" & unique_carrier_name =="Colgan Air"


* AUK 
tab unique_carrier_name year if origin == "AUK" & bank == 1

* AUM 
tab unique_carrier_name year if origin == "AUM" & bank == 1

* AUO 
tab unique_carrier_name year if origin == "AUO" & bank == 1

* AUS 1st Comair05-3
tab unique_carrier_name year if origin == "AUS" & bank == 1
tab year quarter if origin == "AUS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "AUS" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "AUS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "AUS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "AUS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "AUS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "AUS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "AUS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "AUS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "AUS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "AUS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "AUS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "AUS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "AUS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "AUS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200801, 201004) & origin == "AUS" & unique_carrier_name =="Big Sky Airlines Inc."
drop if inrange(new_year_quarter, 200801, 201004) & origin == "AUS" & unique_carrier_name =="Boston-Maine Airways"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "AUS" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "AUS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AUS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "AUS" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AUS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "AUS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "AUS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "AUS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201302, 201601) & origin == "AUS" & unique_carrier_name =="Pacific Wings Airlines"
drop if inrange(new_year_quarter, 201601, 201902) & origin == "AUS" & unique_carrier_name =="Seaport Airlines, Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "AUS" & unique_carrier_name =="Republic Airlines"
drop if inrange(new_year_quarter, 201703, 202002) & origin == "AUS" & unique_carrier_name =="Peninsula Airways Inc."
drop if inrange(new_year_quarter, 201801, 202004) & origin == "AUS" & unique_carrier_name =="Great Lakes Airlines"


* AUW 
tab unique_carrier_name year if origin == "AUW" & bank == 1

* AUZ 
tab unique_carrier_name year if origin == "AUZ" & bank == 1

* AVL 1st Comair05-3
tab unique_carrier_name year if origin == "AVL" & bank == 1
tab year quarter if origin == "AVL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "AVL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "AVL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "AVL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "AVL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "AVL" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "AVL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "AVL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AVL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AVL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AVL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AVL" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "AVL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "AVL" & unique_carrier_name =="Comair Inc."




* AVP 1st Comair05-3
tab unique_carrier_name year if origin == "AVP" & bank == 1
tab year quarter if origin == "AVP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "AVP" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "AVP" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "AVP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "AVP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "AVP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "AVP" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "AVP" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "AVP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "AVP" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 200204, 200804) & origin == "AVP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AVP" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "AVP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "AVP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "AVP" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "AVP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "AVP" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AVP" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "AVP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "AVP" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "AVP" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "AVP" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "AVP" & unique_carrier_name =="Republic Airlines"




* AVW 
tab unique_carrier_name year if origin == "AVW" & bank == 1

* AWK 
tab unique_carrier_name year if origin == "AWK" & bank == 1

* AWM 
tab unique_carrier_name year if origin == "AWM" & bank == 1

* AXX 
tab unique_carrier_name year if origin == "AXX" & bank == 1

* AYS
tab unique_carrier_name year if origin == "AYS" & bank == 1

* BAB 
tab unique_carrier_name year if origin == "BAB" & bank == 1

* BAD 
tab unique_carrier_name year if origin == "BAD" & bank == 1

* BAF 
tab unique_carrier_name year if origin == "BAF" & bank == 1

* BBX 
tab unique_carrier_name year if origin == "BBX" & bank == 1

* BCB 
tab unique_carrier_name year if origin == "BCB" & bank == 1

* BCE
tab unique_carrier_name year if origin == "BCE" & bank == 1
 
* BCT 
tab unique_carrier_name year if origin == "BCT" & bank == 1

* BDL 1st Midway01-3
tab unique_carrier_name year if origin == "BDL" & bank == 1
tab year quarter if origin == "BDL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BDL" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BDL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BDL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BDL" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BDL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BDL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BDL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BDL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BDL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BDL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BDL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BDL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BDL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BDL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BDL" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BDL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BDL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200404, 200804) & origin == "BDL" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "BDL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BDL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200801, 201004) & origin == "BDL" & unique_carrier_name =="Big Sky Airlines Inc."
drop if inrange(new_year_quarter, 200801, 201004) & origin == "BDL" & unique_carrier_name =="Boston-Maine Airways"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "BDL" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BDL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BDL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "BDL" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BDL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BDL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BDL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BDL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201302, 201601) & origin == "BDL" & unique_carrier_name =="Pacific Wings Airlines"
drop if inrange(new_year_quarter, 201601, 201902) & origin == "BDL" & unique_carrier_name =="Seaport Airlines, Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BDL" & unique_carrier_name =="Republic Airlines"




* BDR 
tab unique_carrier_name year if origin == "BDR" & bank == 1

* BDY 
tab unique_carrier_name year if origin == "BDY" & bank == 1

* BED 
tab unique_carrier_name year if origin == "BED" & bank == 1
tab year quarter if origin == "BDL" & unique_carrier_name =="Boston-Maine Airways"

* BEH 
tab unique_carrier_name year if origin == "BEH" & bank == 1

* BET
tab unique_carrier_name year if origin == "BET" & bank == 1
tab year quarter if origin == "BET" & unique_carrier_name =="Markair Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "BET" & unique_carrier_name =="Markair Inc."

* BFD 
tab unique_carrier_name year if origin == "BFD" & bank == 1
tab year quarter if origin == "BFD" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BFD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BFD" & unique_carrier_name =="Colgan Air"


* BFF 
tab unique_carrier_name year if origin == "BFF" & bank == 1
tab year quarter if origin == "BFF" & unique_carrier_name =="Peninsula Airways Inc."

* BFG 
tab unique_carrier_name year if origin == "BFG" & bank == 1

* BFI 
tab unique_carrier_name year if origin == "BFI" & bank == 1

* BFK 
tab unique_carrier_name year if origin == "BFK" & bank == 1

* BFL 1st Mesa10-1
tab unique_carrier_name year if origin == "BFL" & bank == 1
tab year quarter if origin == "BFL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BFF" & unique_carrier_name =="SkyWest Airlines Inc."


* BFM 
tab unique_carrier_name year if origin == "BFM" & bank == 1

* BFT 
tab unique_carrier_name year if origin == "BFT" & bank == 1

* BGM 
tab unique_carrier_name year if origin == "BFM" & bank == 1

* BGQ 
tab unique_carrier_name year if origin == "BGQ" & bank == 1

* BGR 1st Comair05-3
tab unique_carrier_name year if origin == "BGR" & bank == 1
tab year quarter if origin == "BGR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BGR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BGR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BGR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BGR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BGR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BGR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BGR" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BGR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BGR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BGR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BGR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BGR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BGR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BGR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BGR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BGR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BGR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BGR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BGR" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BGR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BGR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BGR" & unique_carrier_name =="Republic Airlines"


* BHB 
tab unique_carrier_name year if origin == "BHB" & bank == 1
tab year quarter if origin == "BHB" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BHB" & unique_carrier_name =="Peninsula Airways Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BHB" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BHB" & unique_carrier_name =="Colgan Air"


* BHM 1st Midway01-3
tab unique_carrier_name year if origin == "BHM" & bank == 1
tab year quarter if origin == "BHM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BHM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BHM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BHM" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BHM" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BHM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BHM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BHM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BHM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BHM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BHM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BHM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BHM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BHM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BHM" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BHM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BHM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BHM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "BHM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BHM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BHM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BHM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BHM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BHM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BHM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BHM" & unique_carrier_name =="Republic Airlines"



* BIC 
tab unique_carrier_name year if origin == "BIC" & bank == 1

* BID 
tab unique_carrier_name year if origin == "BID" & bank == 1

* BIF 
tab unique_carrier_name year if origin == "BIF" & bank == 1

* BIG 
tab unique_carrier_name year if origin == "BIG" & bank == 1

* BIH 
tab unique_carrier_name year if origin == "BIH" & bank == 1

* BIL 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "BIL" & bank == 1
tab year quarter if origin == "BIL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BIL" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "BIL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BIL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BIL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BIL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BIL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BIL" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BIL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "BIL" & unique_carrier_name =="Endeavor Air Inc."



* BIS 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "BIS" & bank == 1
tab year quarter if origin == "BIS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BIS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BIS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BIS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BIS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BIS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BIS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BIS" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BIS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BIS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BIS" & unique_carrier_name =="Trans States Airlines"


* BIX 
tab unique_carrier_name year if origin == "BIX" & bank == 1

* BJC 
tab unique_carrier_name year if origin == "BJC" & bank == 1

* BJI 1st Mesaba05-4
tab unique_carrier_name year if origin == "BJI" & bank == 1
tab year quarter if origin == "BJI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BJI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BJI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "BJI" & unique_carrier_name =="Endeavor Air Inc."


* BJJ 
tab unique_carrier_name year if origin == "BJJ" & bank == 1

* BKC 
tab unique_carrier_name year if origin == "BKC" & bank == 1

* BKF 
tab unique_carrier_name year if origin == "BKF" & bank == 1

* BKG 
tab unique_carrier_name year if origin == "BKG" & bank == 1

* BKL 
tab unique_carrier_name year if origin == "BKL" & bank == 1

* BKW 
tab unique_carrier_name year if origin == "BKW" & bank == 1
tab year quarter if origin == "BKW" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BKW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BKW" & unique_carrier_name =="Colgan Air"


* BKX 
tab unique_carrier_name year if origin == "BKX" & bank == 1

* BLD 
tab unique_carrier_name year if origin == "BLD" & bank == 1

* BLF 
tab unique_carrier_name year if origin == "BLF" & bank == 1
tab year quarter if origin == "BLF" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BLF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BLF" & unique_carrier_name =="Colgan Air"


* BLI 
tab unique_carrier_name year if origin == "BLI" & bank == 1
tab year quarter if origin == "BLI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BLI" & unique_carrier_name =="SkyWest Airlines Inc."


* BLM 
tab unique_carrier_name year if origin == "BLM" & bank == 1

* BLV
tab unique_carrier_name year if origin == "BLV" & bank == 1

* BMC 
tab unique_carrier_name year if origin == "BMC" & bank == 1

* BMG 
tab unique_carrier_name year if origin == "BMG" & bank == 1

* BMI 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "BMI" & bank == 1
tab year quarter if origin == "BMI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BMI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BMI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BMI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BMI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BMI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BMI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BMI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BMI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BMI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BMI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BMI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BMI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BMI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BMI" & unique_carrier_name =="Comair Inc."


* BML 
tab unique_carrier_name year if origin == "BML" & bank == 1

* BMX 
tab unique_carrier_name year if origin == "BMX" & bank == 1

* BNA 1st Trans state, Air Wisconsin02-4
tab unique_carrier_name year if origin == "BNA" & bank == 1
tab year quarter if origin == "BNA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BNA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BNA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BNA" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BNA" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BNA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BNA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200103, 200503) & origin == "BNA" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BNA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BNA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200101, 200501) & origin == "BNA" & unique_carrier_name =="Regions Air, Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BNA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "BNA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BNA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BNA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BNA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BNA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BNA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BNA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BNA" & unique_carrier_name =="Republic Airlines"



* BNF 
tab unique_carrier_name year if origin == "BNF" & bank == 1

* BNO 
tab unique_carrier_name year if origin == "BNO" & bank == 1

* BOI 1st Aloha04-4
tab unique_carrier_name year if origin == "BOI" & bank == 1
tab year quarter if origin == "BOI" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "BOI" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "BOI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BOI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BOI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BOI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BOI" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BOI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BOI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BOI" & unique_carrier_name =="Republic Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BOI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BOI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BOI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BOI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BOI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BOI" & unique_carrier_name =="Republic Airlines"



* BOS 1st Midway01-3
tab unique_carrier_name year if origin == "BOS" & bank == 1
tab year quarter if origin == "BOS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BOS" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BOS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BOS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BOS" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BOS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BOS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BOS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BOS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BOS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BOS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BOS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BOS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BOS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BOS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BOS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "BOS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BOS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BOS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BOS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BOS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BOS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BOS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BOS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BOS" & unique_carrier_name =="Republic Airlines"




* BOW X
tab unique_carrier_name year if origin == "BOW" & bank == 1


* BPT 
tab unique_carrier_name year if origin == "BPT" & bank == 1
tab year quarter if origin == "BPT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BPT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BPT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "BPT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BPT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BPT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BPT" & unique_carrier_name =="SkyWest Airlines Inc."


* BQK 
tab unique_carrier_name year if origin == "BQK" & bank == 1
tab year quarter if origin == "BQK" & unique_carrier_name =="SkyWest Airlines Inc."


* BQN X
tab unique_carrier_name year if origin == "BQN" & bank == 1

* BQV X
tab unique_carrier_name year if origin == "BQV" & bank == 1

* BRD 1st Mesaba05-4
tab unique_carrier_name year if origin == "BRD" & bank == 1
tab year quarter if origin == "BRD" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BRD" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BRD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "BRD" & unique_carrier_name =="Endeavor Air Inc."


* BRL 
tab unique_carrier_name year if origin == "BRL" & bank == 1
tab year quarter if origin == "BRL" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200501) & origin == "BRL" & unique_carrier_name =="Regions Air, Inc."


* BRO 1st Envoy11-4
tab unique_carrier_name year if origin == "BRO" & bank == 1
tab year quarter if origin == "BRO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BRO" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BRO" & unique_carrier_name =="SkyWest Airlines Inc."


* BRW 
tab unique_carrier_name year if origin == "BRW" & bank == 1
tab year quarter if origin == "BRW" & unique_carrier_name =="Markair Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "BRW" & unique_carrier_name =="Markair Inc."

* BSW X
tab unique_carrier_name year if origin == "BSW" & bank == 1

* BSZ X
tab unique_carrier_name year if origin == "BSZ" & bank == 1

* BTI X
tab unique_carrier_name year if origin == "BTI" & bank == 1

* BTL X
tab unique_carrier_name year if origin == "BTL" & bank == 1

* BTM 
tab unique_carrier_name year if origin == "BTM" & bank == 1
tab year quarter if origin == "BTM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTM" & unique_carrier_name =="SkyWest Airlines Inc."


* BTP X
tab unique_carrier_name year if origin == "BTP" & bank == 1

* BTR 1st Comair05-3
tab unique_carrier_name year if origin == "BTR" & bank == 1
tab year quarter if origin == "BTR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BTR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BTR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BTR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BTR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BTR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BTR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BTR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BTR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BTR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BTR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BTR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BTR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BTR" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BTR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BTR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BTR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BTR" & unique_carrier_name =="Republic Airlines"

* BTT X
tab unique_carrier_name year if origin == "BTT" & bank == 1

* BTV 1st Comair05-3
tab unique_carrier_name year if origin == "BTV" & bank == 1
tab year quarter if origin == "BTV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BTV" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BTV" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BTV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BTV" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BTV" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BTV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BTV" & unique_carrier_name =="Piedmont Airlines"

tab year quarter if origin == "BTV" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BTV" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BTV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BTV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BTV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BTV" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BTV" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTV" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BTV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "BTV" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BTV" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BTV" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BTV" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BTV" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BTV" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BTV" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BTV" & unique_carrier_name =="Republic Airlines"




* BTY X
tab unique_carrier_name year if origin == "BTY" & bank == 1

* BUF 1st Trans State02-4 
tab unique_carrier_name year if origin == "BUF" & bank == 1
tab year quarter if origin == "BUF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BUF" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BUF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BUF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BUF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BUF" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BUF" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BUF" & unique_carrier_name =="Piedmont Airlines"

tab year quarter if origin == "BUF" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BUF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BUF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BUF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BUF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BUF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BUF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "BUF" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BUF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BUF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "BUF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BUF" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BUF" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BUF" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BUF" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BUF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BUF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BUF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BUF" & unique_carrier_name =="Republic Airlines"



* BUR 1st Aloha04-4
tab unique_carrier_name year if origin == "BUR" & bank == 1
tab year quarter if origin == "BUR" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "BUR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BUR" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "BUR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BUR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "BUR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201601, 201902) & origin == "BUR" & unique_carrier_name =="Seaport Airlines, Inc."

* BVD X
tab unique_carrier_name year if origin == "BVD" & bank == 1

* BVO X
tab unique_carrier_name year if origin == "BVO" & bank == 1

* BVU X
tab unique_carrier_name year if origin == "BVU" & bank == 1
 
* BVY X
tab unique_carrier_name year if origin == "BVY" & bank == 1
 
* BWC X
tab unique_carrier_name year if origin == "BWC" & bank == 1

* BWD X
tab unique_carrier_name year if origin == "BWD" & bank == 1

* BWG X
tab unique_carrier_name year if origin == "BWG" & bank == 1

* BWI 1st Trans State02-4
tab unique_carrier_name year if origin == "BWI" & bank == 1
tab year quarter if origin == "BWI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BWI" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "BWI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BWI" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BWI" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "BWI" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BWI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "BWI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BWI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 199202, 199604) & origin == "BWI" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BWI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BWI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "BWI" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "BWI" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "BWI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "BWI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "BWI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BWI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "BWI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "BWI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "BWI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "BWI" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BWI" & unique_carrier_name =="Republic Airlines"



* BXS X
tab unique_carrier_name year if origin == "BXS" & bank == 1

* BYA X
tab unique_carrier_name year if origin == "BYA" & bank == 1

* BYW X
tab unique_carrier_name year if origin == "BYW" & bank == 1

* BZN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "BZN" & bank == 1
tab year quarter if origin == "BZN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "BZN" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "BZN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "BZN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "BZN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "BZN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "BZN" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "BZN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "BZN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "BZN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "BZN" & unique_carrier_name =="Republic Airlines"


* CAD
tab unique_carrier_name year if origin == "CAD" & bank == 1

* CAE 1st Comair05-3
tab unique_carrier_name year if origin == "CAE" & bank == 1
tab year quarter if origin == "CAE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CAE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CAE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CAE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CAE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CAE" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CAE" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CAE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CAE" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CAE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CAE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CAE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CAE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CAE" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CAE" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "CAE" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CAE" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CAE" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CAE" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CAE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CAE" & unique_carrier_name =="Republic Airlines"



* CAK 1st Trans State02-4
tab unique_carrier_name year if origin == "CAK" & bank == 1
tab year quarter if origin == "CAK" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CAK" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CAK" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CAK" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CAK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CAK" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CAK" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CAK" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CAK" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CAK" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CAK" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CAK" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CAK" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CAK" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CAK" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CAK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CAK" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CAK" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CAK" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CAK" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CAK" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CAK" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CAK" & unique_carrier_name =="Comair Inc."


* CBA
tab unique_carrier_name year if origin == "CBA" & bank == 1

* CBE
tab unique_carrier_name year if origin == "CBE" & bank == 1

* CBF
tab unique_carrier_name year if origin == "CBF" & bank == 1

* CBM
tab unique_carrier_name year if origin == "CBM" & bank == 1

* CCR
tab unique_carrier_name year if origin == "CCR" & bank == 1

* CDB 1st Peninsula17-3
tab unique_carrier_name year if origin == "CDB" & bank == 1
tab year quarter if origin == "CDB" & unique_carrier_name =="Peninsula Airways Inc."

* CDC
tab unique_carrier_name year if origin == "CDC" & bank == 1
tab year quarter if origin == "CDC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CDC" & unique_carrier_name =="SkyWest Airlines Inc."


* CDL
tab unique_carrier_name year if origin == "CDL" & bank == 1

* CDR
tab unique_carrier_name year if origin == "CDR" & bank == 1

* CDV
tab unique_carrier_name year if origin == "CDV" & bank == 1

* CDW
tab unique_carrier_name year if origin == "CDW" & bank == 1

* CEC 1st Peninsula17-3
tab unique_carrier_name year if origin == "CEC" & bank == 1
tab year quarter if origin == "CEC" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "CEC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CEC" & unique_carrier_name =="SkyWest Airlines Inc."

* CEF
tab unique_carrier_name year if origin == "CEF" & bank == 1

* CEM
tab unique_carrier_name year if origin == "CEM" & bank == 1

* CEU
tab unique_carrier_name year if origin == "CEU" & bank == 1

* CEW
tab unique_carrier_name year if origin == "CEW" & bank == 1

* CEX
tab unique_carrier_name year if origin == "CEX" & bank == 1

* CEZ
tab unique_carrier_name year if origin == "CEZ" & bank == 1

* CFA
tab unique_carrier_name year if origin == "CFA" & bank == 1

* CFT
tab unique_carrier_name year if origin == "CFT" & bank == 1

* CGA
tab unique_carrier_name year if origin == "CGA" & bank == 1

* CGE
tab unique_carrier_name year if origin == "CGE" & bank == 1

* CGF
tab unique_carrier_name year if origin == "CGF" & bank == 1

* CGI 1st Trans State02-4
tab unique_carrier_name year if origin == "CGI" & bank == 1
tab year quarter if origin == "CGI" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "CGI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CGI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200101, 200501) & origin == "CGI" & unique_carrier_name =="Regions Air, Inc."


* CGX
tab unique_carrier_name year if origin == "CGX" & bank == 1

* CHA 1st Comair05-3
tab unique_carrier_name year if origin == "CHA" & bank == 1
tab year quarter if origin == "CHA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CHA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CHA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CHA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CHA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CHA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CHA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CHA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CHA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CHA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHA" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "CHA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CHA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CHA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CHA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CHA" & unique_carrier_name =="Comair Inc."

* CHD
tab unique_carrier_name year if origin == "CHD" & bank == 1

* CHO 1st Mesaba05-4
tab unique_carrier_name year if origin == "CHO" & bank == 1
tab year quarter if origin == "CHO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CHO" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CHO" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CHO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CHO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CHO" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CHO" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CHO" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CHO" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CHO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CHO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHO" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHO" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHO" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHO" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHO" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHO" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CHO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "CHO" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CHO" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CHO" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CHO" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "CHO" & unique_carrier_name =="Colgan Air"


* CHP
tab unique_carrier_name year if origin == "CHP" & bank == 1

* CHS 1st Midway01-3
tab unique_carrier_name year if origin == "CHS" & bank == 1
tab year quarter if origin == "CHS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CHS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CHS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CHS" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CHS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CHS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CHS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CHS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CHS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CHS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CHS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CHS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CHS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CHS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CHS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CHS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CHS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CHS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CHS" & unique_carrier_name =="Republic Airlines"



* CHU
tab unique_carrier_name year if origin == "CHU" & bank == 1

* CIC 
tab unique_carrier_name year if origin == "CIC" & bank == 1
tab year quarter if origin == "CIC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CIC" & unique_carrier_name =="SkyWest Airlines Inc."


* CID 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "CID" & bank == 1
tab year quarter if origin == "CID" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CID" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CID" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CID" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CID" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CID" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CID" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CID" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CID" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CID" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CID" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CID" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CID" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CID" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CID" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CID" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CID" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CID" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CID" & unique_carrier_name =="Republic Airlines"



* CIK
tab unique_carrier_name year if origin == "CIK" & bank == 1

* CIL
tab unique_carrier_name year if origin == "CIL" & bank == 1

* CIU 1st Mesaba05-4
tab unique_carrier_name year if origin == "CIU" & bank == 1
tab year quarter if origin == "CIU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CIU" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CIU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "CIU" & unique_carrier_name =="Endeavor Air Inc."


* CJI
tab unique_carrier_name year if origin == "CJI" & bank == 1

* CJR
tab unique_carrier_name year if origin == "CJR" & bank == 1

* CKB 1st Comair05-3
tab unique_carrier_name year if origin == "CKB" & bank == 1
tab year quarter if origin == "CKB" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CKB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CKB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CKB" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "CKB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "CKB" & unique_carrier_name =="Colgan Air"


* CKD
tab unique_carrier_name year if origin == "CKD" & bank == 1

* CKM
tab unique_carrier_name year if origin == "CKM" & bank == 1

* CKU
tab unique_carrier_name year if origin == "CKU" & bank == 1

* CKV
tab unique_carrier_name year if origin == "CKV" & bank == 1

* CKX
tab unique_carrier_name year if origin == "CKX" & bank == 1

* CLD
tab unique_carrier_name year if origin == "CLD" & bank == 1
tab year quarter if origin == "CLD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLD" & unique_carrier_name =="SkyWest Airlines Inc."

* CLE 1st Trans State02-4
tab unique_carrier_name year if origin == "CLE" & bank == 1
tab year quarter if origin == "CLE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CLE" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CLE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CLE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CLE" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CLE" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CLE" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CLE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CLE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CLE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CLE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CLE" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CLE" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CLE" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CLE" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CLE" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CLE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "CLE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CLE" & unique_carrier_name =="Republic Airlines"



* CLF
tab unique_carrier_name year if origin == "CLF" & bank == 1

* CLL 1st Envoy11-4
tab unique_carrier_name year if origin == "CLL" & bank == 1
tab year quarter if origin == "CLL" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CLL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CLL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CLL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CLL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "CLL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CLL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLL" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLL" & unique_carrier_name =="Trans States Airlines"


* CLM
tab unique_carrier_name year if origin == "CLM" & bank == 1

* CLP
tab unique_carrier_name year if origin == "CLP" & bank == 1

* CLT 1st Comair05-3
tab unique_carrier_name year if origin == "CLT" & bank == 1
tab year quarter if origin == "CLT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CLT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CLT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CLT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CLT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CLT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CLT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CLT" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CLT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CLT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CLT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CLT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CLT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CLT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CLT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CLT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "CLT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "CLT" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CLT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CLT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CLT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CLT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CLT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CLT" & unique_carrier_name =="Republic Airlines"


* CLU
tab unique_carrier_name year if origin == "CLU" & bank == 1

* CMH 1st Trans State02-4
tab unique_carrier_name year if origin == "CMH" & bank == 1
tab year quarter if origin == "CMH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CMH" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CMH" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CMH" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CMH" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "CMH" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CMH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CMH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CMH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CMH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CMH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CMH" & unique_carrier_name =="SkyWest Airlines Inc."


drop if inrange(new_year_quarter, 200503, 201001) & origin == "CMH" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CMH" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CMH" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CMH" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CMH" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CMH" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CMH" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "CMH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CMH" & unique_carrier_name =="Republic Airlines"



* CMI 1st Trans State02-4
tab unique_carrier_name year if origin == "CMI" & bank == 1
tab year quarter if origin == "CMI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CMI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CMI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CMI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CMI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CMI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CMI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CMI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CMI" & unique_carrier_name =="Comair Inc."


* CMX 1st Mesaba05-4
tab unique_carrier_name year if origin == "CMX" & bank == 1
tab year quarter if origin == "CMX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CMX" & unique_carrier_name =="SkyWest Airlines Inc."


* CNM 1st Pacific Wings Airlines13
tab unique_carrier_name year if origin == "CNM" & bank == 1
tab year quarter if origin == "CNM" & unique_carrier_name =="Pacific Wings Airlines"

* CNO
tab unique_carrier_name year if origin == "CNO" & bank == 1

* CNW
tab unique_carrier_name year if origin == "CNW" & bank == 1

* CNY
tab unique_carrier_name year if origin == "CNY" & bank == 1
tab year quarter if origin == "CNY" & unique_carrier_name =="SkyWest Airlines Inc."

* COD 1st Trans State02-4
tab unique_carrier_name year if origin == "COD" & bank == 1
tab year quarter if origin == "CMH" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CMH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CMH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "CMH" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CMH" & unique_carrier_name =="Trans States Airlines"


* COE
tab unique_carrier_name year if origin == "COE" & bank == 1

* CON
tab unique_carrier_name year if origin == "CON" & bank == 1

* COS 1st  Air Wisconsin02-4
tab unique_carrier_name year if origin == "COS" & bank == 1
tab year quarter if origin == "COS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "COS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "COS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "COS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "COS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "COS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "COS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "COS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "COS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "COS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "COS" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "COS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "COS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "COS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "COS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "COS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "COS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "COS" & unique_carrier_name =="Republic Airlines"




* COU 1st Trans State02-4
tab unique_carrier_name year if origin == "COU" & bank == 1
tab year quarter if origin == "COU" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "COU" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "COU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "COU" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "COU" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "COU" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "COU" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "COU" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "COU" & unique_carrier_name =="Air Wisconsin Airlines Corp"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "COU" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "COU" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "COU" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "COU" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "COU" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "COU" & unique_carrier_name =="Endeavor Air Inc."



* CPR 1st Mesa10-1
tab unique_carrier_name year if origin == "CPR" & bank == 1
tab year quarter if origin == "CPR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CPR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CPR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CPR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "CPR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CPR" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CPR" & unique_carrier_name =="Trans States Airlines"

* CPS
tab unique_carrier_name year if origin == "CPS" & bank == 1

* CPX
tab unique_carrier_name year if origin == "CPX" & bank == 1

* CRE
tab unique_carrier_name year if origin == "CRE" & bank == 1

* CRG
tab unique_carrier_name year if origin == "CRG" & bank == 1

* CRP 1st Envoy11-4
tab unique_carrier_name year if origin == "CRP" & bank == 1
tab year quarter if origin == "CRP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CRP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "CRP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CRP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CRP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CRP" & unique_carrier_name =="Trans States Airlines"


* CRS
tab unique_carrier_name year if origin == "CRS" & bank == 1

* CRW 1st Trans State02-4 , Air Wisconsin02-4
tab unique_carrier_name year if origin == "CRW" & bank == 1
tab year quarter if origin == "CRW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CRW" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CRW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CRW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CRW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CRW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CRW" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CRW" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CRW" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CRW" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "CRW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CRW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CRW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CRW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CRW" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CRW" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CRW" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CRW" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CRW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CRW" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CRW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CRW" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CRW" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CRW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "CRW" & unique_carrier_name =="Colgan Air"


* CSG 1st Envoy11-4
tab unique_carrier_name year if origin == "CSG" & bank == 1
tab year quarter if origin == "CSG" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CSG" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CSG" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "CSG" & unique_carrier_name =="Mesaba Airlines"


* CSM
tab unique_carrier_name year if origin == "CSM" & bank == 1

* CSN
tab unique_carrier_name year if origin == "CSN" & bank == 1

* CSU
tab unique_carrier_name year if origin == "CSU" & bank == 1

* CSV
tab unique_carrier_name year if origin == "CSV" & bank == 1

* CTH
tab unique_carrier_name year if origin == "CTH" & bank == 1

* CUB
tab unique_carrier_name year if origin == "CUB" & bank == 1

* CUW
tab unique_carrier_name year if origin == "CUW" & bank == 1

* CVG 1st Trans State02-4, Air Wisconsin02-4
tab unique_carrier_name year if origin == "CVG" & bank == 1
tab year quarter if origin == "CVG" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CVG" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "CVG" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "CVG" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CVG" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CVG" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CVG" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "CVG" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "CVG" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CVG" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200403, 200802) & origin == "CVG" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CVG" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CVG" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "CVG" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "CVG" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CVG" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "CVG" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "CVG" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "CVG" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CVG" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CVG" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CVG" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "CVG" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "CVG" & unique_carrier_name =="Republic Airlines"


* CVN
tab unique_carrier_name year if origin == "CVN" & bank == 1

* CVO
tab unique_carrier_name year if origin == "CVO" & bank == 1

* CVS
tab unique_carrier_name year if origin == "CVS" & bank == 1

* CWA 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "CWA" & bank == 1
tab year quarter if origin == "CWA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CWA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "CWA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CWA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "CWA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CWA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "CWA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CWA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "CWA" & unique_carrier_name =="Endeavor Air Inc."


* CWF
tab unique_carrier_name year if origin == "CWF" & bank == 1

* CWI
tab unique_carrier_name year if origin == "CWI" & bank == 1

* CXC
tab unique_carrier_name year if origin == "CXC" & bank == 1

* CXF
tab unique_carrier_name year if origin == "CXF" & bank == 1

* CXO
tab unique_carrier_name year if origin == "CXO" & bank == 1

* CYF
tab unique_carrier_name year if origin == "CYF" & bank == 1

* CYM
tab unique_carrier_name year if origin == "CYM" & bank == 1

* CYS 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "CYS" & bank == 1
tab year quarter if origin == "CYS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "CYS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "CYS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "CYS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "CYS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "CYS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "CYS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "CYS" & unique_carrier_name =="Trans States Airlines"


* CYT
tab unique_carrier_name year if origin == "CYT" & bank == 1

* CZF
tab unique_carrier_name year if origin == "CZF" & bank == 1

* CZN
tab unique_carrier_name year if origin == "CZN" & bank == 1

* DAB 1st Comair05-3
tab unique_carrier_name year if origin == "DAB" & bank == 1
tab year quarter if origin == "DAB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DAB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DAB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DAB" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DAB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "DAB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DAB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DAB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DAB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "DAB" & unique_carrier_name =="Mesa Airlines Inc."



* DAG
tab unique_carrier_name year if origin == "DAG" & bank == 1

* DAL 1st Envoy11-4
tab unique_carrier_name year if origin == "DAL" & bank == 1
tab year quarter if origin == "DAL" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "DAL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DAL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DAL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DAL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DAL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "DAL" & unique_carrier_name =="Comair Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "DAL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DAL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "DAL" & unique_carrier_name =="Colgan Air"

* DAN
tab unique_carrier_name year if origin == "DAN" & bank == 1

* DAY 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "DAY" & bank == 1
tab year quarter if origin == "DAY" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DAY" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DAY" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DAY" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "DAY" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DAY" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DAY" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "DAY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DAY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DAY" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DAY" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DAY" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DAY" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "DAY" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DAY" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DAY" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DAY" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DAY" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DAY" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DAY" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DAY" & unique_carrier_name =="Republic Airlines"


* DBQ 1st Mesaba05-4
tab unique_carrier_name year if origin == "DBQ" & bank == 1
tab year quarter if origin == "DBQ" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DBQ" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "DBQ" & unique_carrier_name =="Envoy Air"

* DCA 1st Midway01-3
tab unique_carrier_name year if origin == "DCA" & bank == 1
tab year quarter if origin == "DCA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DCA" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "DCA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DCA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DCA" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "DCA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DCA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DCA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "DCA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DCA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DCA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "DCA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DCA" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DCA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DCA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "DCA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DCA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DCA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DCA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DCA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DCA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DCA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "DCA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DCA" & unique_carrier_name =="Republic Airlines"



* DCK
tab unique_carrier_name year if origin == "DCK" & bank == 1
 
* DCU
tab unique_carrier_name year if origin == "DCU" & bank == 1

* DDC 
tab unique_carrier_name year if origin == "DDC" & bank == 1
tab year quarter if origin == "DDC" & unique_carrier_name =="Peninsula Airways Inc."

* DEC 1st Trans State02-4
tab unique_carrier_name year if origin == "DEC" & bank == 1
tab year quarter if origin == "DEC" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "DEC" & unique_carrier_name =="Trans States Airlines"


* DEN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "DEN" & bank == 1
tab year quarter if origin == "DEN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DEN" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DEN" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DEN" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DEN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DEN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 199202, 199604) & origin == "DEN" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DEN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DEN" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DEN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "DEN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DEN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DEN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DEN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DEN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DEN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DEN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DEN" & unique_carrier_name =="Republic Airlines"



* DET 
tab unique_carrier_name year if origin == "DET" & bank == 1

* DFW 1st Comair05-3
tab unique_carrier_name year if origin == "DFW" & bank == 1
tab year quarter if origin == "DFW" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "DFW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DFW" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "DFW" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DFW" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DFW" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DFW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "DFW" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DFW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DFW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DFW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "DFW" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "DFW" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DFW" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DFW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "DFW" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DFW" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DFW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "DFW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DFW" & unique_carrier_name =="Republic Airlines"




* DGB 
tab unique_carrier_name year if origin == "DGB" & bank == 1

* DHN
tab unique_carrier_name year if origin == "DHN" & bank == 1
tab year quarter if origin == "DHN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DHN" & unique_carrier_name =="SkyWest Airlines Inc."

* DHT 
tab unique_carrier_name year if origin == "DHT" & bank == 1

* DIK 
tab unique_carrier_name year if origin == "DIK" & bank == 1
tab year quarter if origin == "DIK" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DIK" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "DIK" & unique_carrier_name =="Trans States Airlines"

* DIO 
tab unique_carrier_name year if origin == "DIO" & bank == 1

* DJN 
tab unique_carrier_name year if origin == "DJN" & bank == 1

* DKK 
tab unique_carrier_name year if origin == "DKK" & bank == 1

* DLF 
tab unique_carrier_name year if origin == "DLF" & bank == 1

* DLG 1st Peninsula17-3
tab unique_carrier_name year if origin == "DLG" & bank == 1
tab year quarter if origin == "DLG" & unique_carrier_name =="Peninsula Airways Inc."

* DLH 1st Mesaba05-4
tab unique_carrier_name year if origin == "DLH" & bank == 1
tab year quarter if origin == "DLH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DLH" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DLH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DLH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DLH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "DLH" & unique_carrier_name =="Air Wisconsin Airlines Corp"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "DLH" & unique_carrier_name =="Endeavor Air Inc."


* DLL
tab unique_carrier_name year if origin == "DLL" & bank == 1

* DLS 
tab unique_carrier_name year if origin == "DLS" & bank == 1

* DMA
tab unique_carrier_name year if origin == "DMA" & bank == 1
 
* DMN 
tab unique_carrier_name year if origin == "DMN" & bank == 1

* DNE 
tab unique_carrier_name year if origin == "DNE" & bank == 1

* DNL 
tab unique_carrier_name year if origin == "DNL" & bank == 1

* DNN 
tab unique_carrier_name year if origin == "DNN" & bank == 1

* DOF 
tab unique_carrier_name year if origin == "DOF" & bank == 1

* DOV 
tab unique_carrier_name year if origin == "DOV" & bank == 1

* DPA 
tab unique_carrier_name year if origin == "DPA" & bank == 1

* DPG 
tab unique_carrier_name year if origin == "DPG" & bank == 1

* DQF
tab unique_carrier_name year if origin == "DQF" & bank == 1
 
* DQG 
tab unique_carrier_name year if origin == "DQG" & bank == 1

* DQH 
tab unique_carrier_name year if origin == "DQH" & bank == 1

* DQK 
tab unique_carrier_name year if origin == "DQK" & bank == 1

* DQL
tab unique_carrier_name year if origin == "DQL" & bank == 1

* DQN 
tab unique_carrier_name year if origin == "DQN" & bank == 1

* DQR 
tab unique_carrier_name year if origin == "DQR" & bank == 1

* DQS 
tab unique_carrier_name year if origin == "DQS" & bank == 1

* DQU 
tab unique_carrier_name year if origin == "DQU" & bank == 1

* DQV 
tab unique_carrier_name year if origin == "DQV" & bank == 1

* DQW 
tab unique_carrier_name year if origin == "DQW" & bank == 1

* DRF 
tab unique_carrier_name year if origin == "DRF" & bank == 1

* DRG 
tab unique_carrier_name year if origin == "DRG" & bank == 1

* DRO 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "DRO" & bank == 1
tab year quarter if origin == "DRO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DRO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DRO" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DRO" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DRO" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DRO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "DRO" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DRO" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DRO" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DRO" & unique_carrier_name =="Republic Airlines"


* DRT 
tab unique_carrier_name year if origin == "DRT" & bank == 1
tab year quarter if origin == "DRT" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "DRT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DRT" & unique_carrier_name =="Colgan Air"

* DSI 
tab unique_carrier_name year if origin == "DSI" & bank == 1

* DSM 1st Trans State02-4
tab unique_carrier_name year if origin == "DSM" & bank == 1
tab year quarter if origin == "DSM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DSM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DSM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DSM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DSM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DSM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DSM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DSM" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DSM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DSM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "DSM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DSM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "DSM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DSM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DSM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DSM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DSM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DSM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DSM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DSM" & unique_carrier_name =="Republic Airlines"



* DTH
tab unique_carrier_name year if origin == "DTH" & bank == 1

* DTO 
tab unique_carrier_name year if origin == "DTO" & bank == 1

* DTR 
tab unique_carrier_name year if origin == "DTR" & bank == 1

* DTW 1st Trans State02-4
tab unique_carrier_name year if origin == "DTW" & bank == 1
tab year quarter if origin == "DTW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "DTW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "DTW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "DTW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "DTW" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "DTW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DTW" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "DTW" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "DTW" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "DTW" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "DTW" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "DTW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DTW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DTW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "DTW" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "DTW" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "DTW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "DTW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "DTW" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "DTW" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DTW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "DTW" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "DTW" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "DTW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "DTW" & unique_carrier_name =="Republic Airlines"



* DUA 
tab unique_carrier_name year if origin == "DUA" & bank == 1

* DUJ
tab unique_carrier_name year if origin == "DUJ" & bank == 1
tab year quarter if origin == "DUJ" & unique_carrier_name =="Air Midwest Inc."

* DUT 1st Peninsula17-3
tab unique_carrier_name year if origin == "DUT" & bank == 1
tab year quarter if origin == "DUT" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "DUT" & unique_carrier_name =="Peninsula Airways Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "DUT" & unique_carrier_name =="Markair Inc."

* DVL 1st Mesaba05-4
tab unique_carrier_name year if origin == "DVL" & bank == 1
tab year quarter if origin == "DVL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "DVL" & unique_carrier_name =="SkyWest Airlines Inc."

* DVN 
tab unique_carrier_name year if origin == "DVN" & bank == 1

* DVT
tab unique_carrier_name year if origin == "DVT" & bank == 1
 
* DWA
tab unique_carrier_name year if origin == "DWA" & bank == 1
 
* DWH
tab unique_carrier_name year if origin == "DWH" & bank == 1

* DXR 
tab unique_carrier_name year if origin == "DXR" & bank == 1

* DYS 
tab unique_carrier_name year if origin == "DYS" & bank == 1



* EAA 
tab unique_carrier_name year if origin == "EAA" & bank == 1

* EAR 
tab unique_carrier_name year if origin == "EAR" & bank == 1
tab year quarter if origin == "EAR" & unique_carrier_name =="Peninsula Airways Inc."

* EAT 
tab unique_carrier_name year if origin == "EAT" & bank == 1

* EAU 1st Mesaba05-4
tab unique_carrier_name year if origin == "EAU" & bank == 1
tab year quarter if origin == "EAU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "EAU" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "EAU" & unique_carrier_name =="SkyWest Airlines Inc."

* ECG 
tab unique_carrier_name year if origin == "ECG" & bank == 1

* ECP 1st Endeavor12-2
tab unique_carrier_name year if origin == "ECP" & bank == 1
tab year quarter if origin == "ECP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ECP" & unique_carrier_name =="Mesaba Airlines"

* ECS
tab unique_carrier_name year if origin == "ECS" & bank == 1

* EDA 
tab unique_carrier_name year if origin == "EDA" & bank == 1

* EDE 
tab unique_carrier_name year if origin == "EDE" & bank == 1

* EDF 
tab unique_carrier_name year if origin == "EDF" & bank == 1

* EDW 
tab unique_carrier_name year if origin == "EDW" & bank == 1

* EEK 
tab unique_carrier_name year if origin == "EEK" & bank == 1

* EEN 
tab unique_carrier_name year if origin == "EEN" & bank == 1

* EFB 
tab unique_carrier_name year if origin == "EFB" & bank == 1

* EFD 
tab unique_carrier_name year if origin == "EFD" & bank == 1

* EFK 
tab unique_carrier_name year if origin == "EFK" & bank == 1

* EGA 
tab unique_carrier_name year if origin == "EGA" & bank == 1

* EGE 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "EGE" & bank == 1
tab year quarter if origin == "EGE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EGE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "EGE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "EGE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "EGE" & unique_carrier_name =="Mesa Airlines Inc."

* EGP 
tab unique_carrier_name year if origin == "DGP" & bank == 1

* EGV 
tab unique_carrier_name year if origin == "DGV" & bank == 1

* EGX 
tab unique_carrier_name year if origin == "DGX" & bank == 1

* EHM 
tab unique_carrier_name year if origin == "DHM" & bank == 1

* EIL 
tab unique_carrier_name year if origin == "EIL" & bank == 1

* EKI 
tab unique_carrier_name year if origin == "EKI" & bank == 1

* EKO 
tab unique_carrier_name year if origin == "EKO" & bank == 1
tab year quarter if origin == "EKO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EKO" & unique_carrier_name =="SkyWest Airlines Inc."

* EKX
tab unique_carrier_name year if origin == "EKX" & bank == 1

* ELD 1st Seaport16-1
tab unique_carrier_name year if origin == "ELD" & bank == 1
tab year quarter if origin == "ELD" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "ELD" & unique_carrier_name =="Seaport Airlines, Inc."

* ELI 
tab unique_carrier_name year if origin == "ELI" & bank == 1

* ELM 1st Trans State02-4
tab unique_carrier_name year if origin == "ELM" & bank == 1
tab year quarter if origin == "ELM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ELM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ELM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ELM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ELM" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ELM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ELM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ELM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ELM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ELM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ELM" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "ELM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ELM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ELM" & unique_carrier_name =="Endeavor Air Inc."


* ELN 
tab unique_carrier_name year if origin == "ELN" & bank == 1

* ELP 1st Mesa10-1
tab unique_carrier_name year if origin == "ELP" & bank == 1
tab year quarter if origin == "ELP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ELP" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "ELP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ELP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ELP" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ELP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ELP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ELP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200404, 200804) & origin == "ELP" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ELP" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ELP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ELP" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ELP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ELP" & unique_carrier_name =="Republic Airlines"




* ELV 
tab unique_carrier_name year if origin == "ELV" & bank == 1

* ELY 
tab unique_carrier_name year if origin == "ELY" & bank == 1
tab year quarter if origin == "ELY" & unique_carrier_name =="Air Midwest Inc."

* EMK 
tab unique_carrier_name year if origin == "EMK" & bank == 1

* ENA 
tab unique_carrier_name year if origin == "ENA" & bank == 1

* END 
tab unique_carrier_name year if origin == "END" & bank == 1

* ENN
tab unique_carrier_name year if origin == "ENN" & bank == 1

* ENV 
tab unique_carrier_name year if origin == "ENV" & bank == 1
tab year quarter if origin == "ENV" & unique_carrier_name =="SkyWest Airlines Inc."

* ENW 
tab unique_carrier_name year if origin == "ENW" & bank == 1

* EOK 
tab unique_carrier_name year if origin == "EOK" & bank == 1

* ERI 1st Trans State02-4 
tab unique_carrier_name year if origin == "ERI" & bank == 1
tab year quarter if origin == "ERI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ERI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ERI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ERI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ERI" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ERI" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ERI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ERI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ERI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ERI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ERI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ERI" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ERI" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ERI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "ERI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ERI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ERI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ERI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ERI" & unique_carrier_name =="Comair Inc."


* ERV 
tab unique_carrier_name year if origin == "ERV" & bank == 1

* ESC 1st Mesaba05-4
tab unique_carrier_name year if origin == "ESC" & bank == 1
tab year quarter if origin == "ESC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ESC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ESC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "ESC" & unique_carrier_name =="Endeavor Air Inc."


* ESD 
tab unique_carrier_name year if origin == "ESD" & bank == 1

* ESF 
tab unique_carrier_name year if origin == "ESF" & bank == 1

* ESN 
tab unique_carrier_name year if origin == "ESN" & bank == 1

* EUG 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "EUG" & bank == 1
tab year quarter if origin == "EUG" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EUG" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EUG" & unique_carrier_name =="SkyWest Airlines Inc."


* EVV 1st Trans State02-4
tab unique_carrier_name year if origin == "EVV" & bank == 1
tab year quarter if origin == "EVV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EVV" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "EVV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "EVV" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "EVV" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "EVV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "EVV" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "EVV" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "EVV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "EVV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EVV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "EVV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201001) & origin == "EVV" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "EVV" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "EVV" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "EVV" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "EVV" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "EVV" & unique_carrier_name =="Comair Inc."



* EWB 
tab unique_carrier_name year if origin == "EWB" & bank == 1

* EWN
tab unique_carrier_name year if origin == "EWN" & bank == 1
tab year quarter if origin == "EWN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EWN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "EWN" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EWN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "EWN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "EWN" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWN" & unique_carrier_name =="Piedmont Airlines"

* EWR 1st Midway01-3
tab unique_carrier_name year if origin == "EWR" & bank == 1
tab year quarter if origin == "EWR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EWR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "EWR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "EWR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "EWR" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "EWR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "EWR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "EWR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EWR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "EWR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "EWR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWR" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EWR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "EWR" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "EWR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EWR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "EWR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "EWR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "EWR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "EWR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "EWR" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "EWR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "EWR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "EWR" & unique_carrier_name =="Republic Airlines"


* EXI
tab unique_carrier_name year if origin == "EXI" & bank == 1

* EYW 1st Comair05-3
tab unique_carrier_name year if origin == "EYW" & bank == 1
tab year quarter if origin == "EYW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "EYW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "EYW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "EYW" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "EYW" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "EYW" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "EYW" & unique_carrier_name =="Republic Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "EYW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "EYW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "EYW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EYW" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200504) & origin == "EYW" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "EYW" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201104, 201601) & origin == "EYW" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "EYW" & unique_carrier_name =="Republic Airlines"




* FAI  
tab unique_carrier_name year if origin == "FAI" & bank == 1
tab year quarter if origin == "FAI" & unique_carrier_name =="Markair Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "FAI" & unique_carrier_name =="Markair Inc."


* FAK 
tab unique_carrier_name year if origin == "FAK" & bank == 1

* FAQ 
tab unique_carrier_name year if origin == "FAQ" & bank == 1

* FAR 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "FAR" & bank == 1
tab year quarter if origin == "FAR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FAR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FAR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FAR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FAR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FAR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "FAR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FAR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "FAR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "FAR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FAR" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FAR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FAR" & unique_carrier_name =="Endeavor Air Inc."



* FAT 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "FAT" & bank == 1
tab year quarter if origin == "FAT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FAT" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "FAT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FAT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FAT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FAT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "FAT" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "FAT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FAT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201204, 201503) & origin == "FAT" & unique_carrier_name =="Colgan Air"

* FAY 1st Mesa10-1
tab unique_carrier_name year if origin == "FAY" & bank == 1
tab year quarter if origin == "FAY" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FAY" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FAY" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FAY" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "FAY" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "FAY" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "FAY" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FAY" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "FAY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "FAY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "FAY" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "FAY" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "FAY" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "FAY" & unique_carrier_name =="Republic Airlines"


* FBK 
tab unique_carrier_name year if origin == "FBK" & bank == 1

* FCA
tab unique_carrier_name year if origin == "FCA" & bank == 1
tab year quarter if origin == "FCA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FCA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FCA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "FCA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "FCA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "FCA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "FCA" & unique_carrier_name =="SkyWest Airlines Inc."


* FCM
tab unique_carrier_name year if origin == "FCM" & bank == 1

* FDK 
tab unique_carrier_name year if origin == "FDK" & bank == 1

* FDY 
tab unique_carrier_name year if origin == "FDY" & bank == 1

* FFO 
tab unique_carrier_name year if origin == "FFO" & bank == 1

* FFT 
tab unique_carrier_name year if origin == "FFT" & bank == 1

* FHB 
tab unique_carrier_name year if origin == "FHB" & bank == 1

* FHU 
tab unique_carrier_name year if origin == "FHU" & bank == 1
tab year quarter if origin == "FHU" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "FHU" & unique_carrier_name =="Envoy Air"


* FID 
tab unique_carrier_name year if origin == "FID" & bank == 1

* FKL
tab unique_carrier_name year if origin == "FKL" & bank == 1
tab year quarter if origin == "FKL" & unique_carrier_name =="Air Midwest Inc."

* FLG 1st Mesa10-1
tab unique_carrier_name year if origin == "FLG" & bank == 1
tab year quarter if origin == "FLG" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FLG" & unique_carrier_name =="SkyWest Airlines Inc."

* FLL 1st Midway01-3
tab unique_carrier_name year if origin == "FLL" & bank == 1
tab year quarter if origin == "FLL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FLL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "FLL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FLL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FLL" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "FLL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "FLL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "FLL" & unique_carrier_name =="SkyWest Airlines Inc."
 
drop if inrange(new_year_quarter, 200204, 200804) & origin == "FLL" & unique_carrier_name =="Air Wisconsin Airlines Corp" 
drop if inrange(new_year_quarter, 200203, 200802) & origin == "FLL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "FLL" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "FLL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FLL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FLL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "FLL" & unique_carrier_name =="Republic Airlines"
 
* FLO 
tab unique_carrier_name year if origin == "FLO" & bank == 1
tab year quarter if origin == "FLO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FLO" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FLO" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "FLO" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "FLO" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200203, 200502) & origin == "FLO" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "FLO" & unique_carrier_name =="Piedmont Airlines"

* FLT 
tab unique_carrier_name year if origin == "FLT" & bank == 1

* FMH
tab unique_carrier_name year if origin == "FMH" & bank == 1

* FMN 
tab unique_carrier_name year if origin == "FMN" & bank == 1
tab year quarter if origin == "FMN" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "FMN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FMN" & unique_carrier_name =="SkyWest Airlines Inc."


* FMY 
tab unique_carrier_name year if origin == "FMY" & bank == 1

* FNL 
tab unique_carrier_name year if origin == "FNL" & bank == 1
tab year quarter if origin == "FNL" & unique_carrier_name =="SkyWest Airlines Inc."

* FNR
tab unique_carrier_name year if origin == "FNR" & bank == 1

* FNT 1st Comair05-3
tab unique_carrier_name year if origin == "FNT" & bank == 1
tab year quarter if origin == "FNT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FNT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "FNT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FNT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FNT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FNT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FNT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "FNT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FNT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FNT" & unique_carrier_name =="Endeavor Air Inc."


* FOD 1st Mesaba05-4
tab unique_carrier_name year if origin == "FOD" & bank == 1
tab year quarter if origin == "FOD" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FOD" & unique_carrier_name =="Mesaba Airlines"

* FOE 
tab unique_carrier_name year if origin == "FOE" & bank == 1
tab year quarter if origin == "FOE" & unique_carrier_name =="Mesa Airlines Inc."

* FOK 
tab unique_carrier_name year if origin == "FOK" & bank == 1

* FPR 
tab unique_carrier_name year if origin == "FPR" & bank == 1

* FQB
tab unique_carrier_name year if origin == "FQB" & bank == 1

* FQE 
tab unique_carrier_name year if origin == "FQE" & bank == 1

* FQF 
tab unique_carrier_name year if origin == "FQF" & bank == 1

* FQG 
tab unique_carrier_name year if origin == "FQG" & bank == 1

* FQJ 
tab unique_carrier_name year if origin == "FQJ" & bank == 1

* FQK 
tab unique_carrier_name year if origin == "FQK" & bank == 1

* FQV 
tab unique_carrier_name year if origin == "FQV" & bank == 1

* FQW 
tab unique_carrier_name year if origin == "FQW" & bank == 1

* FRD 
tab unique_carrier_name year if origin == "FRD" & bank == 1

* FRG 
tab unique_carrier_name year if origin == "FRG" & bank == 1

* FRP 
tab unique_carrier_name year if origin == "FRP" & bank == 1

* FRY 
tab unique_carrier_name year if origin == "FRY" & bank == 1

* FSD 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "FSD" & bank == 1
tab year quarter if origin == "FSD" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FSD" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "FSD" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FSD" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FSD" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FSD" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FSD" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "FSD" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "FSD" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FSD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "FSD" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "FSD" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "FSD" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FSD" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FSD" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FSD" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "FSD" & unique_carrier_name =="Republic Airlines"


* FSM 1st Trans State02-4
tab unique_carrier_name year if origin == "FSM" & bank == 1
tab year quarter if origin == "FSM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FSM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FSM" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "FSM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FSM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FSM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "FSM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "FSM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "FSM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "FSM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FSM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "FSM" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FSM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FSM" & unique_carrier_name =="Endeavor Air Inc."


* FTG
tab unique_carrier_name year if origin == "FTG" & bank == 1

* FTW 
tab unique_carrier_name year if origin == "FTW" & bank == 1

* FTY 
tab unique_carrier_name year if origin == "FTY" & bank == 1

* FVG 
tab unique_carrier_name year if origin == "FVG" & bank == 1

* FVQ 
tab unique_carrier_name year if origin == "FVQ" & bank == 1

* FVW 
tab unique_carrier_name year if origin == "FVW" & bank == 1

* FVZ 
tab unique_carrier_name year if origin == "FVZ" & bank == 1

* FWA 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "FWA" & bank == 1
tab year quarter if origin == "FWA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "FWA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "FWA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "FWA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "FWA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "FWA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "FWA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "FWA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "FWA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "FWA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "FWA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "FWA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "FWA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "FWA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FWA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "FWA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "FWA" & unique_carrier_name =="Endeavor Air Inc."

* FWH 1st Envoy11-4
tab unique_carrier_name year if origin == "FWH" & bank == 1
tab year quarter if origin == "FWH" & unique_carrier_name =="Envoy Air"

* FWL 
tab unique_carrier_name year if origin == "FWL" & bank == 1

* FWS 
tab unique_carrier_name year if origin == "FWS" & bank == 1

* FXE
tab unique_carrier_name year if origin == "FXE" & bank == 1

* FYU 
tab unique_carrier_name year if origin == "FYU" & bank == 1

* FYV
tab unique_carrier_name year if origin == "FYV" & bank == 1

* GAI 
tab unique_carrier_name year if origin == "GAI"& bank == 1

* GAL 
tab unique_carrier_name year if origin == "GAL" & bank == 1

* GAM 
tab unique_carrier_name year if origin == "GAM" & bank == 1

* GBD 
tab unique_carrier_name year if origin == "GBD" & bank == 1

* GBH 
tab unique_carrier_name year if origin == "GBH" & bank == 1

* GBR 
tab unique_carrier_name year if origin == "GBR" & bank == 1

* GCC 
tab unique_carrier_name year if origin == "GCC" & bank == 1
tab year quarter if origin == "GCC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GCC" & unique_carrier_name =="SkyWest Airlines Inc."


* GCK 
tab unique_carrier_name year if origin == "GCK" & bank == 1
tab year quarter if origin == "GCK" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "GCK" & unique_carrier_name =="Envoy Air"

* GCN 
tab unique_carrier_name year if origin == "GCN" & bank == 1

* GDC 
tab unique_carrier_name year if origin == "GDC" & bank == 1

* GDV 
tab unique_carrier_name year if origin == "GDV" & bank == 1
tab year quarter if origin == "GDV" & unique_carrier_name =="Big Sky Airlines Inc."

* GED 
tab unique_carrier_name year if origin == "GED" & bank == 1

* GEG 1st Endeavor12-2
tab unique_carrier_name year if origin == "GEG" & bank == 1
tab year quarter if origin == "GEG" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GEG" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GEG" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GEG" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "GEG" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "GEG" & unique_carrier_name =="SkyWest Airlines Inc."


* GEK 
tab unique_carrier_name year if origin == "GEK" & bank == 1

* GFB 
tab unique_carrier_name year if origin == "GFB" & bank == 1

* GFK 1st Mesaba05-4
tab unique_carrier_name year if origin == "GFK" & bank == 1
tab year quarter if origin == "GFK" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GFK" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GFK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "GFK" & unique_carrier_name =="Endeavor Air Inc."

* GFL 
tab unique_carrier_name year if origin == "GFL" & bank == 1

* GGG 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "GGG" & bank == 1
tab year quarter if origin == "GGG" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GGG" & unique_carrier_name =="Executive Airlines"


* GGW 
tab unique_carrier_name year if origin == "GGW" & bank == 1
tab year quarter if origin == "GGW" & unique_carrier_name =="Big Sky Airlines Inc."

* GJT 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "GJT" & bank == 1
tab year quarter if origin == "GJT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GJT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GJT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GJT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GJT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "GJT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GJT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GJT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "GJT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "GJT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GJT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GJT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "GJT" & unique_carrier_name =="Republic Airlines"

* GKN 
tab unique_carrier_name year if origin == "GKN" & bank == 1

* GLD 
tab unique_carrier_name year if origin == "GLD" & bank == 1

* GLH 1st Mesaba05-4
tab unique_carrier_name year if origin == "GLH" & bank == 1
tab year quarter if origin == "GLH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GLH" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "GLH" & unique_carrier_name =="Endeavor Air Inc."


* GLS 
tab unique_carrier_name year if origin == "GLS" & bank == 1

* GLV 
tab unique_carrier_name year if origin == "GLV" & bank == 1

* GMT 
tab unique_carrier_name year if origin == "GMT" & bank == 1

* GMU 
tab unique_carrier_name year if origin == "GMU" & bank == 1

* GNU 
tab unique_carrier_name year if origin == "GNU" & bank == 1

* GNV 1st Envoy11-4
tab unique_carrier_name year if origin == "GNV" & bank == 1
tab year quarter if origin == "GNV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GNV" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GNV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "GNV" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "GNV" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "GNV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "GNV" & unique_carrier_name =="Piedmont Airlines"

* GON 
tab unique_carrier_name year if origin == "GON" & bank == 1

* GPT 1st Comair05-3
tab unique_carrier_name year if origin == "GPT" & bank == 1
tab year quarter if origin == "GPT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GPT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GPT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GPT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GPT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GPT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GPT" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GPT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GPT" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "GPT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GPT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "GPT" & unique_carrier_name =="Endeavor Air Inc."


* GPZ 
tab unique_carrier_name year if origin == "GPZ" & bank == 1

* GRB 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "GRB" & bank == 1
tab year quarter if origin == "GRB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GRB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GRB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GRB" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GRB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GRB" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GRB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GRB" & unique_carrier_name =="SkyWest Airlines Inc."


drop if inrange(new_year_quarter, 200503, 201502) & origin == "GRB" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "GRB" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "GRB" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GRB" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "GRB" & unique_carrier_name =="Endeavor Air Inc."

* GRI 1st Envoy11-4
tab unique_carrier_name year if origin == "GRI" & bank == 1
tab year quarter if origin == "GRI" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "GRI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GRI" & unique_carrier_name =="Mesa Airlines Inc."

* GRK 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "GRK" & bank == 1
tab year quarter if origin == "GRK" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "GRK" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GRK" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "GRK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GRK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "GRK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GRK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "GRK" & unique_carrier_name =="SkyWest Airlines Inc."


* GRR 1st Trans State02-4
tab unique_carrier_name year if origin == "GRR" & bank == 1
tab year quarter if origin == "GRR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GRR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GRR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GRR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GRR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GRR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GRR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "GRR" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "GRR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "GRR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GRR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GRR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "GRR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "GRR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "GRR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "GRR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "GRR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GRR" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GRR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "GRR" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "GRR" & unique_carrier_name =="Republic Airlines"



* GSB X
tab unique_carrier_name year if origin == "GSB" & bank == 1

* GSO 1st Trans State02-4
tab unique_carrier_name year if origin == "GSO" & bank == 1
tab year quarter if origin == "GSO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GSO" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "GSO" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GSO" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GSO" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "GSO" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "GSO" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GSO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GSO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "GSO" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "GSO" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "GSO" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GSO" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "GSO" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GSO" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "GSO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "GSO" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "GSO" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "GSO" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GSO" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GSO" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "GSO" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "GSO" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "GSO" & unique_carrier_name =="Republic Airlines"

* GSP 1st Trans State02-4
tab unique_carrier_name year if origin == "GSP" & bank == 1
tab year quarter if origin == "GSP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GSP" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GSP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "GSP" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "GSP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GSP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GSP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "GSP" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "GSP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GSP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "GSP" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "GSP" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "GSP" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "GSP" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GSP" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GSP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "GSP" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "GSP" & unique_carrier_name =="Republic Airlines"


* GST X
tab unique_carrier_name year if origin == "GST" & bank == 1

* GTF 1st Endeavor12-2
tab unique_carrier_name year if origin == "GTF" & bank == 1
tab year quarter if origin == "GTF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GTF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GTF" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GTF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GTF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "GTF" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "GTF" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "GTF" & unique_carrier_name =="SkyWest Airlines Inc."


* GTR 1st Mesaba05-4
tab unique_carrier_name year if origin == "GTR" & bank == 1
tab year quarter if origin == "GTR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "GTR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "GTR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "GTR" & unique_carrier_name =="Endeavor Air Inc."


* GTY X
tab unique_carrier_name year if origin == "GTY" & bank == 1

* GUC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "GUC" & bank == 1
tab year quarter if origin == "GUC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "GUC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "GUC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "GUC" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "GUC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "GUC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "GUC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GUC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "GUC" & unique_carrier_name =="Trans States Airlines"

* GUF X
tab unique_carrier_name year if origin == "GUF" & bank == 1

* GUM X
tab unique_carrier_name year if origin == "GUM" & bank == 1

* GUP X
tab unique_carrier_name year if origin == "GUP" & bank == 1

* GUS X
tab unique_carrier_name year if origin == "GUS" & bank == 1

* GVQ X
tab unique_carrier_name year if origin == "GVQ" & bank == 1

* GWO X
tab unique_carrier_name year if origin == "GWO" & bank == 1

* GYR X
tab unique_carrier_name year if origin == "GYR" & bank == 1

* GYY X
tab unique_carrier_name year if origin == "GYY" & bank == 1


* HAO 
tab unique_carrier_name year if origin == "HAO" & bank == 1

* HAR 
tab unique_carrier_name year if origin == "HAR" & bank == 1

* HBC 
tab unique_carrier_name year if origin == "HBC" & bank == 1

* HBG
tab unique_carrier_name year if origin == "HBG" & bank == 1

* HBH 
tab unique_carrier_name year if origin == "HBH" & bank == 1

* HCB
tab unique_carrier_name year if origin == "HCB" & bank == 1
 
* HCR 
tab unique_carrier_name year if origin == "HCR" & bank == 1

* HDN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "HDN" & bank == 1
tab year quarter if origin == "HDN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "HDN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "HDN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "HDN" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "HDN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "HDN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "HDN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "HDN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HDN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HDN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "HDN" & unique_carrier_name =="Republic Airlines"

* HES 
tab unique_carrier_name year if origin == "HES" & bank == 1
tab year quarter if origin == "HES" & unique_carrier_name =="Seaport Airlines, Inc."

* HFD 
tab unique_carrier_name year if origin == "HFD" & bank == 1

* HGR 
tab unique_carrier_name year if origin == "HGR" & bank == 1
tab year quarter if origin == "HGR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "HGR" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "HGR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "HGR" & unique_carrier_name =="Piedmont Airlines"

* HGZ 
tab unique_carrier_name year if origin == "HGZ" & bank == 1

* HHH
tab unique_carrier_name year if origin == "HHH" & bank == 1
tab year quarter if origin == "HHH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "HHH" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "HHH" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 200203, 200502) & origin == "HHH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HHH" & unique_carrier_name =="Piedmont Airlines"

* HHR 
tab unique_carrier_name year if origin == "HHR" & bank == 1

* HIB 1st Endeavor12-2
tab unique_carrier_name year if origin == "HIB" & bank == 1
tab year quarter if origin == "HIB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HIB" & unique_carrier_name =="SkyWest Airlines Inc."


* HIE 
tab unique_carrier_name year if origin == "HIE" & bank == 1

* HIF 
tab unique_carrier_name year if origin == "HIF" & bank == 1

* HII 
tab unique_carrier_name year if origin == "HII" & bank == 1

* HIK 
tab unique_carrier_name year if origin == "HIK" & bank == 1

* HIO 
tab unique_carrier_name year if origin == "HIO" & bank == 1

* HKB
tab unique_carrier_name year if origin == "HKB" & bank == 1

* HKY 
tab unique_carrier_name year if origin == "HKY" & bank == 1

* HLG 
tab unique_carrier_name year if origin == "HLG" & bank == 1

* HLM 
tab unique_carrier_name year if origin == "HLM" & bank == 1

* HLN
tab unique_carrier_name year if origin == "HLM" & bank == 1

* HMN 
tab unique_carrier_name year if origin == "HMN" & bank == 1

* HMS 
tab unique_carrier_name year if origin == "HMS" & bank == 1

* HNH 
tab unique_carrier_name year if origin == "HNH" & bank == 1

* HNL 1st Aloha04-4
tab unique_carrier_name year if origin == "HNL" & bank == 1
tab year quarter if origin == "HNL" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "HNL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "HNL" & unique_carrier_name =="Pacific Wings Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "HNL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201302, 201601) & origin == "HNL" & unique_carrier_name =="Pacific Wings Airlines"

* HNM 
tab unique_carrier_name year if origin == "HNM" & bank == 1

* HNS 
tab unique_carrier_name year if origin == "HNS" & bank == 1

* HOB 
tab unique_carrier_name year if origin == "HOB" & bank == 1

* HOM 
tab unique_carrier_name year if origin == "HOM" & bank == 1

* HON 
tab unique_carrier_name year if origin == "HON" & bank == 1

* HOP 
tab unique_carrier_name year if origin == "HOP" & bank == 1

* HOT 1st Seaport16-1
tab unique_carrier_name year if origin == "HOT" & bank == 1
tab year quarter if origin == "HOT" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "HOT" & unique_carrier_name =="Seaport Airlines, Inc."


* HOU 1st Comair05-3
tab unique_carrier_name year if origin == "HOU" & bank == 1
tab year quarter if origin == "HOU" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "HOU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HOU" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "HOU" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "HOU" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "HOU" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "HOU" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200403, 200802) & origin == "HOU" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "HOU" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "HOU" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 201104, 201603) & origin == "HOU" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HOU" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "HOU" & unique_carrier_name =="Endeavor Air Inc."

* HPB 
tab unique_carrier_name year if origin == "HPB" & bank == 1

* HPN 1st Comair05-3 
tab unique_carrier_name year if origin == "HPN" & bank == 1
tab year quarter if origin == "HPN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "HPN" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "HPN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "HPN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HPN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "HPN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "HPN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "HPN" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "HPN" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "HPN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "HPN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "HPN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "HPN" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HPN" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "HPN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HPN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "HPN" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HPN" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "HPN" & unique_carrier_name =="SkyWest Airlines Inc."


drop if inrange(new_year_quarter, 200504, 201001) & origin == "HPN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HPN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HPN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "HPN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "HPN" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "HPN" & unique_carrier_name =="Republic Airlines"


* HQM X
tab unique_carrier_name year if origin == "HQM" & bank == 1

* HRL 
tab unique_carrier_name year if origin == "HRL" & bank == 1
tab year quarter if origin == "HRL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HRL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "HRL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "HRL" & unique_carrier_name =="Endeavor Air Inc."


* HRO 1st Seaport16-1
tab unique_carrier_name year if origin == "HRO" & bank == 1
tab year quarter if origin == "HRO" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "HRO" & unique_carrier_name =="Seaport Airlines, Inc."

* HSH X
tab unique_carrier_name year if origin == "HSH" & bank == 1

* HSL X
tab unique_carrier_name year if origin == "HSL" & bank == 1

* HST X
tab unique_carrier_name year if origin == "HST" & bank == 1

* HSV 1st Comair05-3
tab unique_carrier_name year if origin == "HSV" & bank == 1
tab year quarter if origin == "HSV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "HSV" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "HSV" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "HSV" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "HSV" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "HSV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "HSV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "HSV" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "HSV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HSV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "HSV" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "HSV" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HSV" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "HSV" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "HSV" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "HSV" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "HSV" & unique_carrier_name =="Republic Airlines"

* HTO X
tab unique_carrier_name year if origin == "HTO" & bank == 1

* HTS 1st Comair05-3
tab unique_carrier_name year if origin == "HTS" & bank == 1
tab year quarter if origin == "HTS" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "HTS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "HTS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "HTS" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "HTS" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200502) & origin == "HTS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HTS" & unique_carrier_name =="Piedmont Airlines"


* HUF 
tab unique_carrier_name year if origin == "HUF" & bank == 1
tab year quarter if origin == "HUF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "HUF" & unique_carrier_name =="Trans States Airlines"

* HUS X
tab unique_carrier_name year if origin == "HUS" & bank == 1

* HVN 1st Comair05-3
tab unique_carrier_name year if origin == "HVN" & bank == 1
tab year quarter if origin == "HVN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "HVN" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200502) & origin == "HVN" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HVN" & unique_carrier_name =="Piedmont Airlines"


* HVR 
tab unique_carrier_name year if origin == "HVR" & bank == 1
tab year quarter if origin == "HVR" & unique_carrier_name =="Big Sky Airlines Inc."

* HWD X
tab unique_carrier_name year if origin == "HWD" & bank == 1

* HWI X
tab unique_carrier_name year if origin == "HWI" & bank == 1

* HYA 
tab unique_carrier_name year if origin == "HYA" & bank == 1
tab year quarter if origin == "HYA" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "HYA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "HYA" & unique_carrier_name =="Colgan Air"


* HYG X
tab unique_carrier_name year if origin == "HYG" & bank == 1

* HYL X
tab unique_carrier_name year if origin == "HYL" & bank == 1

* HYS 
tab unique_carrier_name year if origin == "HYS" & bank == 1
tab year quarter if origin == "HYS" & unique_carrier_name =="SkyWest Airlines Inc."


* IAB
tab unique_carrier_name year if origin == "IAB" & bank == 1
 
* IAD 
tab unique_carrier_name year if origin == "HWD" & bank == 1

* IAG 
tab unique_carrier_name year if origin == "IAG" & bank == 1

* IAH 1st Comair05-3
tab unique_carrier_name year if origin == "IAH" & bank == 1
tab year quarter if origin == "IAH" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "IAH" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "IAH" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "IAH" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "IAH" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "IAH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "IAH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IAH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "IAH" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "IAH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IAH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "IAH" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "IAH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "IAH" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "IAH" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "IAH" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "IAH" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "IAH" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "IAH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 201902) & origin == "IAH" & unique_carrier_name =="Seaport Airlines, Inc."

* IAN 
tab unique_carrier_name year if origin == "IAN" & bank == 1

* ICT 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "ICT" & bank == 1
tab year quarter if origin == "ICT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ICT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ICT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ICT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ICT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ICT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ICT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ICT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ICT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ICT" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ICT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "ICT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ICT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ICT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ICT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ICT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ICT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ICT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ICT" & unique_carrier_name =="Republic Airlines"

* ICY 
tab unique_carrier_name year if origin == "ICY" & bank == 1

* IDA 1st Endeavor12-2
tab unique_carrier_name year if origin == "IDA" & bank == 1
tab year quarter if origin == "IDA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "IDA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "IDA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "IDA" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "IDA" & unique_carrier_name =="Mesaba Airlines"

* IFP 
tab unique_carrier_name year if origin == "IFP" & bank == 1
tab year quarter if origin == "IFP" & unique_carrier_name =="SkyWest Airlines Inc."

* IGG 
tab unique_carrier_name year if origin == "IGG" & bank == 1

* IGM 
tab unique_carrier_name year if origin == "IGM" & bank == 1
tab year quarter if origin == "IGM" & unique_carrier_name =="Air Midwest Inc."

* IKK 
tab unique_carrier_name year if origin == "IKK" & bank == 1

* IKO 
tab unique_carrier_name year if origin == "IKO" & bank == 1

* ILE 
tab unique_carrier_name year if origin == "ILE" & bank == 1
tab year quarter if origin == "ILE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ILE" & unique_carrier_name =="SkyWest Airlines Inc."

* ILG 
tab unique_carrier_name year if origin == "ILG" & bank == 1
tab year quarter if origin == "ILG" & unique_carrier_name =="Trans States Airlines"

* ILI 
tab unique_carrier_name year if origin == "ILI" & bank == 1

* ILM 1st Comair05-3
tab unique_carrier_name year if origin == "ILM" & bank == 1
tab year quarter if origin == "ILM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ILM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ILM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ILM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ILM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ILM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ILM" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ILM" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ILM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ILM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ILM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ILM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ILM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ILM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ILM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ILM" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "ILM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ILM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ILM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ILM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ILM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ILM" & unique_carrier_name =="Republic Airlines"

* ILN 
tab unique_carrier_name year if origin == "ILN" & bank == 1

* IMT 1st Endeavor12-2
tab unique_carrier_name year if origin == "IMT" & bank == 1
tab year quarter if origin == "IMT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "IMT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "IMT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "IMT" & unique_carrier_name =="Mesaba Airlines"

* IND 1st Midway01-3
tab unique_carrier_name year if origin == "IND" & bank == 1
tab year quarter if origin == "IND" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "IND" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "IND" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "IND" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "IND" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "IND" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "IND" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "IND" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "IND" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IND" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "IND" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IND" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "IND" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "IND" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "IND" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IND" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IND" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IND" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201502) & origin == "IND" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "IND" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "IND" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "IND" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "IND" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "IND" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "IND" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "IND" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "IND" & unique_carrier_name =="Republic Airlines"


* INL 1st Mesaba05-4
tab unique_carrier_name year if origin == "INL" & bank == 1
tab year quarter if origin == "INL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "INL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "INL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "INL" & unique_carrier_name =="Endeavor Air Inc."

* INS
tab unique_carrier_name year if origin == "INS" & bank == 1

* INT
tab unique_carrier_name year if origin == "INT" & bank == 1
tab year quarter if origin == "INT" & unique_carrier_name =="Trans States Airlines"

* IOW 
tab unique_carrier_name year if origin == "IOW" & bank == 1

* IPL 
tab unique_carrier_name year if origin == "IPL" & bank == 1
tab year quarter if origin == "IPL" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "IPL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "IPL" & unique_carrier_name =="SkyWest Airlines Inc."


* IPT 
tab unique_carrier_name year if origin == "IPT" & bank == 1
tab year quarter if origin == "IPT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "IPT" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "IPT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "IPT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "IPT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "IPT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "IPT" & unique_carrier_name =="Trans States Airlines"

* IRC 
tab unique_carrier_name year if origin == "IRC" & bank == 1

* IRK 
tab unique_carrier_name year if origin == "IRK" & bank == 1
tab year quarter if origin == "IRK" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "IRK" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "IRK" & unique_carrier_name =="Regions Air, Inc."

* ISM
tab unique_carrier_name year if origin == "ISM" & bank == 1

* ISN 
tab unique_carrier_name year if origin == "ISN" & bank == 1
tab year quarter if origin == "ISN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ISN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "ISN" & unique_carrier_name =="Trans States Airlines"


* ISO 
tab unique_carrier_name year if origin == "ISO" & bank == 1

* ISP 1st Comair05-3
tab unique_carrier_name year if origin == "ISP" & bank == 1
tab year quarter if origin == "ISP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ISP" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ISP" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ISP" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ISP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ISP" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ISP" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ISP" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ISP" & unique_carrier_name =="Piedmont Airlines"

* ISS 
tab unique_carrier_name year if origin == "ISS" & bank == 1

* ITH 1st Trans State02-4
tab unique_carrier_name year if origin == "ITH" & bank == 1
tab year quarter if origin == "ITH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ITH" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ITH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ITH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ITH" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ITH" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ITH" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ITH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ITH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ITH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ITH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ITH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ITH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ITH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ITH" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "ITH" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ITH" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ITH" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ITH" & unique_carrier_name =="Colgan Air"

* ITO 1st Aloha04-4
tab unique_carrier_name year if origin == "ITO" & bank == 1
tab year quarter if origin == "ITO" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "ITO" & unique_carrier_name =="Mesa Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "ITO" & unique_carrier_name =="Mesa Airlines Inc."

* IWD 
tab unique_carrier_name year if origin == "IWD" & bank == 1

* IYK
tab unique_carrier_name year if origin == "IYK" & bank == 1
tab year quarter if origin == "IYK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "IYK" & unique_carrier_name =="SkyWest Airlines Inc."

* JAC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "JAC" & bank == 1
tab year quarter if origin == "JAC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "JAC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "JAC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAC" & unique_carrier_name =="SkyWest Airlines Inc."


* JAN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "JAN" & bank == 1
tab year quarter if origin == "JAN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "JAN" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "JAN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "JAN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "JAN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "JAN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "JAN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "JAN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "JAN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "JAN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAN" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "JAN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "JAN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "JAN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JAN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JAN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "JAN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "JAN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "JAN" & unique_carrier_name =="Colgan Air"


* JAX 1st Midway01-3
tab unique_carrier_name year if origin == "JAX" & bank == 1
tab year quarter if origin == "JAX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "JAX" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "JAX" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "JAX" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "JAX" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "JAX" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "JAX" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "JAX" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "JAX" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "JAX" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "JAX" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAX" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "JAX" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "JAX" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "JAX" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "JAX" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JAX" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "JAX" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JAX" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "JAX" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "JAX" & unique_carrier_name =="Republic Airlines"

* JBR 
tab unique_carrier_name year if origin == "JBR" & bank == 1
tab year quarter if origin == "JBR" & unique_carrier_name =="Air Midwest Inc."

* JCI 
tab unique_carrier_name year if origin == "JCI" & bank == 1

* JEF 
tab unique_carrier_name year if origin == "JEF" & bank == 1

* JFK 1st Comair05-3
tab unique_carrier_name year if origin == "JFK" & bank == 1
tab year quarter if origin == "JFK" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "JFK" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "JFK" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "JFK" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "JFK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "JFK" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "JFK" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "JFK" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "JFK" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "JFK" & unique_carrier_name =="Air Wisconsin Airlines Corp"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "JFK" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JFK" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "JFK" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "JFK" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "JFK" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "JFK" & unique_carrier_name =="Republic Airlines"


* JGC 
tab unique_carrier_name year if origin == "JGC" & bank == 1

* JGG 
tab unique_carrier_name year if origin == "JGG" & bank == 1

* JHM 
tab unique_carrier_name year if origin == "JHM" & bank == 1

* JHW
tab unique_carrier_name year if origin == "JHW" & bank == 1
tab year quarter if origin == "JHW" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "JHW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "JHW" & unique_carrier_name =="Colgan Air"

* JLN 1st Trans State02-4
tab unique_carrier_name year if origin == "JLN" & bank == 1
tab year quarter if origin == "JLN" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "JLN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "JLN" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "JLN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "JLN" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 201104, 201601) & origin == "JLN" & unique_carrier_name =="Executive Airlines"


* JMS 1st Mesaba05-4
tab unique_carrier_name year if origin == "JMS" & bank == 1
tab year quarter if origin == "JMS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "JMS" & unique_carrier_name =="SkyWest Airlines Inc."

* JNU 
tab unique_carrier_name year if origin == "JNU" & bank == 1
tab year quarter if origin == "JNU" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "JNU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "JNU" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "JNU" & unique_carrier_name =="Markair Inc."

* JON 
tab unique_carrier_name year if origin == "JON" & bank == 1

* JQF 
tab unique_carrier_name year if origin == "JQF" & bank == 1

* JRA 
tab unique_carrier_name year if origin == "JRA" & bank == 1

* JRB 
tab unique_carrier_name year if origin == "JRB" & bank == 1

* JRF 
tab unique_carrier_name year if origin == "JRF" & bank == 1

* JRV 
tab unique_carrier_name year if origin == "JRV" & bank == 1

* JSE 
tab unique_carrier_name year if origin == "JSE" & bank == 1

* JST 
tab unique_carrier_name year if origin == "JST" & bank == 1
tab year quarter if origin == "JST" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "JST" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "JST" & unique_carrier_name =="Colgan Air"

* JVL
tab unique_carrier_name year if origin == "JVL" & bank == 1

* JXN 
tab unique_carrier_name year if origin == "JXN" & bank == 1

* JZE 
tab unique_carrier_name year if origin == "JZE" & bank == 1

* JZI
tab unique_carrier_name year if origin == "JZI" & bank == 1
 
* JZL
tab unique_carrier_name year if origin == "JZL" & bank == 1

* JZM 
tab unique_carrier_name year if origin == "JZM" & bank == 1

* JZT 
tab unique_carrier_name year if origin == "JZT" & bank == 1

* JZU
tab unique_carrier_name year if origin == "JZU" & bank == 1
 
* JZY 
tab unique_carrier_name year if origin == "JZY" & bank == 1

* KAE 
tab unique_carrier_name year if origin == "KAE" & bank == 1

* KAL 
tab unique_carrier_name year if origin == "KAL" & bank == 1

* KBC 
tab unique_carrier_name year if origin == "KBC" & bank == 1

* KBK 
tab unique_carrier_name year if origin == "KBK" & bank == 1

* KCC 
tab unique_carrier_name year if origin == "KCC" & bank == 1

* KCG
tab unique_carrier_name year if origin == "KCG" & bank == 1
 
* KCL 
tab unique_carrier_name year if origin == "KCL" & bank == 1

* KCN 
tab unique_carrier_name year if origin == "KCN" & bank == 1

* KCQ 
tab unique_carrier_name year if origin == "KCQ" & bank == 1

* KCR 
tab unique_carrier_name year if origin == "KCR" & bank == 1

* KDK 
tab unique_carrier_name year if origin == "KDK" & bank == 1

* KEB 
tab unique_carrier_name year if origin == "KEB" & bank == 1

* KEH 
tab unique_carrier_name year if origin == "KEH" & bank == 1

* KEK 
tab unique_carrier_name year if origin == "KEK" & bank == 1

* KFP 
tab unique_carrier_name year if origin == "KFP" & bank == 1

* KGK 
tab unique_carrier_name year if origin == "KGK" & bank == 1

* KGX
tab unique_carrier_name year if origin == "KGX" & bank == 1
 
* KIB
tab unique_carrier_name year if origin == "KIB" & bank == 1

* KKA 
tab unique_carrier_name year if origin == "KKA" & bank == 1

* KKB 
tab unique_carrier_name year if origin == "KKB" & bank == 1

* KKH 
tab unique_carrier_name year if origin == "KKH" & bank == 1

* KKI 
tab unique_carrier_name year if origin == "KKI" & bank == 1

* KKK 
tab unique_carrier_name year if origin == "KKK" & bank == 1

* KKL 
tab unique_carrier_name year if origin == "KKL" & bank == 1

* KKU 
tab unique_carrier_name year if origin == "KKU" & bank == 1

* KLG 
tab unique_carrier_name year if origin == "KLG" & bank == 1

* KLL 
tab unique_carrier_name year if origin == "KLL" & bank == 1

* KLN 
tab unique_carrier_name year if origin == "KLN" & bank == 1

* KLW 
tab unique_carrier_name year if origin == "KLW" & bank == 1

* KMO 
tab unique_carrier_name year if origin == "KMO" & bank == 1

* KMY 
tab unique_carrier_name year if origin == "KMY" & bank == 1

* KNB
tab unique_carrier_name year if origin == "KNB" & bank == 1
 
* KNK
tab unique_carrier_name year if origin == "KNK" & bank == 1

* KNW 
tab unique_carrier_name year if origin == "KNW" & bank == 1

* KOA 1st Aloha04-4
tab unique_carrier_name year if origin == "KOA" & bank == 1
tab year quarter if origin == "KOA" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "KOA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "KOA" & unique_carrier_name =="Pacific Wings Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "KOA" & unique_carrier_name =="Mesa Airlines Inc."

* KOT 
tab unique_carrier_name year if origin == "KOT" & bank == 1

* KOY 
tab unique_carrier_name year if origin == "KOY" & bank == 1

* KOZ
 tab unique_carrier_name year if origin == "KOZ" & bank == 1

* KPB 
tab unique_carrier_name year if origin == "KPB" & bank == 1

* KPC 
tab unique_carrier_name year if origin == "KPC" & bank == 1

* KPM 
tab unique_carrier_name year if origin == "KPM" & bank == 1

* KPN 
tab unique_carrier_name year if origin == "KPN" & bank == 1

* KPR 
tab unique_carrier_name year if origin == "KPR" & bank == 1

* KPV 
tab unique_carrier_name year if origin == "KPV" & bank == 1

* KPY 
tab unique_carrier_name year if origin == "KPY" & bank == 1

* KQA 
tab unique_carrier_name year if origin == "KQA" & bank == 1

* KSM 
tab unique_carrier_name year if origin == "KSM" & bank == 1

* KSR
tab unique_carrier_name year if origin == "KSR" & bank == 1

* KTB 
tab unique_carrier_name year if origin == "KTB" & bank == 1

* KTN
tab unique_carrier_name year if origin == "KTN" & bank == 1

* KTS 
tab unique_carrier_name year if origin == "KTS" & bank == 1

* KUK 
tab unique_carrier_name year if origin == "KUK" & bank == 1

* KUW 
tab unique_carrier_name year if origin == "KUW" & bank == 1

* KVC 
tab unique_carrier_name year if origin == "KVC" & bank == 1

* KVL 
tab unique_carrier_name year if origin == "KVL" & bank == 1

* KWF
tab unique_carrier_name year if origin == "KWF" & bank == 1
 
* KWK 
tab unique_carrier_name year if origin == "KWK" & bank == 1

* KWN
tab unique_carrier_name year if origin == "KWN" & bank == 1

* KWP 
tab unique_carrier_name year if origin == "KWP" & bank == 1

* KWT
tab unique_carrier_name year if origin == "KWT" & bank == 1

* KXA 
tab unique_carrier_name year if origin == "KXA" & bank == 1

* KYK 
tab unique_carrier_name year if origin == "KYK" & bank == 1

* KYU 
tab unique_carrier_name year if origin == "KYU" & bank == 1

* KZB 
tab unique_carrier_name year if origin == "KZB" & bank == 1


* LAA 
tab unique_carrier_name year if origin == "LAA" & bank == 1

* LAF 
tab unique_carrier_name year if origin == "LAF" & bank == 1
tab year quarter if origin == "LAF" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "LAF" & unique_carrier_name =="Regions Air, Inc."

* LAL 
tab unique_carrier_name year if origin == "LAL" & bank == 1

* LAM 
tab unique_carrier_name year if origin == "LAM" & bank == 1
tab year quarter if origin == "LAM" & unique_carrier_name =="Pacific Wings Airlines"

drop if inrange(new_year_quarter, 201302, 201601) & origin == "LAM" & unique_carrier_name =="Pacific Wings Airlines"


* LAN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "LAN" & bank == 1
tab year quarter if origin == "LAN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LAN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "LAN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LAN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LAN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LAN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LAN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LAN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LAN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "LAN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "LAN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LAN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201001) & origin == "LAN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "LAN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LAN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LAN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LAN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LAN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "LAN" & unique_carrier_name =="Comair Inc."


* LAR 
tab unique_carrier_name year if origin == "LAR" & bank == 1
tab year quarter if origin == "LAR" & unique_carrier_name =="SkyWest Airlines Inc."

* LAS 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "LAS" & bank == 1
tab year quarter if origin == "LAS" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "LAS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LAS" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "LAS" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "LAS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LAS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LAS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "LAS" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "LAS" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LAS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "LAS" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "LAS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "LAS" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LAS" & unique_carrier_name =="Mesa Airlines Inc."


* LAW 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "LAW" & bank == 1
tab year quarter if origin == "LAW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LAW" & unique_carrier_name =="Executive Airlines"


* LAX 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "LAX" & bank == 1
tab year quarter if origin == "LAX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LAX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LAX" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "LAX" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LAX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LAX" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "LAX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "LAX" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "LAX" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LAX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "LAX" & unique_carrier_name =="Mesa Airlines Inc."


* LBB 1st Mesa10-1
tab unique_carrier_name year if origin == "LBB" & bank == 1
tab year quarter if origin == "LBB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LBB" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LBB" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "LBB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LBB" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LBB" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LBB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201601) & origin == "LBB" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LBB" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LBB" & unique_carrier_name =="Endeavor Air Inc."

* LBE 1st Mesaba05-4
tab unique_carrier_name year if origin == "LBE" & bank == 1
tab year quarter if origin == "LBE" & unique_carrier_name =="Mesaba Airlines"

* LBF 
tab unique_carrier_name year if origin == "LBF" & bank == 1
tab year quarter if origin == "LBF" & unique_carrier_name =="Peninsula Airways Inc."

* LBL 
tab unique_carrier_name year if origin == "LBL" & bank == 1
tab year quarter if origin == "LBL" & unique_carrier_name =="Peninsula Airways Inc."

* LCH 1st Envoy11-4
tab unique_carrier_name year if origin == "LCH" & bank == 1
tab year quarter if origin == "LCH" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "LCH" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LCH" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "LCH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LCH" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LCH" & unique_carrier_name =="Trans States Airlines"


* LCI 
tab unique_carrier_name year if origin == "LCI" & bank == 1

* LCK
tab unique_carrier_name year if origin == "LCK" & bank == 1

* LDJ 
tab unique_carrier_name year if origin == "LDJ" & bank == 1

* LEB
tab unique_carrier_name year if origin == "LEB" & bank == 1
tab year quarter if origin == "LEB" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "LEB" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LEB" & unique_carrier_name =="Colgan Air"

* LEE
tab unique_carrier_name year if origin == "LEE" & bank == 1

* LEW 
tab unique_carrier_name year if origin == "LEW" & bank == 1

* LEX 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "LEX" & bank == 1
tab year quarter if origin == "LEX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LEX" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "LEX" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LEX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LEX" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LEX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LEX" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LEX" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "LEX" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LEX" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "LEX" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LEX" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "LEX" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LEX" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LEX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "LEX" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "LEX" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LEX" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LEX" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LEX" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LEX" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "LEX" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "LEX" & unique_carrier_name =="Republic Airlines"

* LFI
tab unique_carrier_name year if origin == "LFI" & bank == 1

* LFT 1st Mesaba05-4
tab unique_carrier_name year if origin == "LFT" & bank == 1
tab year quarter if origin == "LFT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "LFT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LFT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LFT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LFT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "LFT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LFT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200403, 200802) & origin == "LFT" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "LFT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "LFT" & unique_carrier_name =="Republic Airlines"


* LGA 1st Midway01-3
tab unique_carrier_name year if origin == "LGA" & bank == 1
tab year quarter if origin == "LGA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LGA" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "LGA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LGA" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LGA" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "LGA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "LGA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LGA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LGA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "LGA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 199202, 199604) & origin == "LGA" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "LGA" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "LGA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "LGA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LGA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LGA" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LGA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LGA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201502) & origin == "LGA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "LGA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LGA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LGA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LGA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LGA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "LGA" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "LGA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "LGA" & unique_carrier_name =="Republic Airlines"


* LGB 1st Mesa10-1
tab unique_carrier_name year if origin == "LGB" & bank == 1
tab year quarter if origin == "LGB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LGB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LGB" & unique_carrier_name =="SkyWest Airlines Inc."

* LGC 
tab unique_carrier_name year if origin == "LGC" & bank == 1

* LGU 
tab unique_carrier_name year if origin == "LGU" & bank == 1

* LIH 1st Aloha04-4
tab unique_carrier_name year if origin == "LIH" & bank == 1
tab year quarter if origin == "LIH" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "LIH" & unique_carrier_name =="Mesa Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "LIH" & unique_carrier_name =="Mesa Airlines Inc."


* LIJ
tab unique_carrier_name year if origin == "LIJ" & bank == 1

* LIT 1st Trans State02-4, Air Wisconsin02-4
tab unique_carrier_name year if origin == "LIT" & bank == 1
tab year quarter if origin == "LIT" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LIT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "LIT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LIT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LIT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LIT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "LIT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LIT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LIT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "LIT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "LIT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "LIT" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LIT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LIT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "LIT" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LIT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LIT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "LIT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "LIT" & unique_carrier_name =="Colgan Air"


* LIV 
tab unique_carrier_name year if origin == "LIV" & bank == 1

* LJN 
tab unique_carrier_name year if origin == "LJN" & bank == 1

* LKE 
tab unique_carrier_name year if origin == "LKE" & bank == 1

* LKK 
tab unique_carrier_name year if origin == "LKK" & bank == 1

* LKP 
tab unique_carrier_name year if origin == "LKP" & bank == 1

* LMA 
tab unique_carrier_name year if origin == "LMA" & bank == 1

* LMT 
tab unique_carrier_name year if origin == "LMT" & bank == 1
tab year quarter if origin == "LMT" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "LMT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LMT" & unique_carrier_name =="SkyWest Airlines Inc."

* LNI 
tab unique_carrier_name year if origin == "LNI" & bank == 1

* LNK 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "LNK" & bank == 1
tab year quarter if origin == "LNK" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LNK" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LNK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "LNK" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LNK" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "LNK" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "LNK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "LNK" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "LNK" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "LNK" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LNK" & unique_carrier_name =="Endeavor Air Inc."

* LNS 
tab unique_carrier_name year if origin == "LNS" & bank == 1

* LNY 1st Aloha04-4
tab unique_carrier_name year if origin == "LNY" & bank == 1
tab year quarter if origin == "LNY" & unique_carrier_name =="Aloha Airlines Inc."

* LOT 
tab unique_carrier_name year if origin == "LOT" & bank == 1

* LOU 
tab unique_carrier_name year if origin == "LOU" & bank == 1

* LOZ
tab unique_carrier_name year if origin == "LOZ" & bank == 1
 
* LPR
tab unique_carrier_name year if origin == "LPR" & bank == 1

* LPS
tab unique_carrier_name year if origin == "LPS" & bank == 1
 
* LPW 
tab unique_carrier_name year if origin == "LPW" & bank == 1

* LRD 1st Envoy11-4
tab unique_carrier_name year if origin == "LRD" & bank == 1
tab year quarter if origin == "LRD" & unique_carrier_name =="Envoy Air"

* LRF 
tab unique_carrier_name year if origin == "LRF" & bank == 1

* LRU 
tab unique_carrier_name year if origin == "LRU" & bank == 1

* LSE 1st Mesaba05-4
tab unique_carrier_name year if origin == "LSE" & bank == 1
tab year quarter if origin == "LSE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "LSE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "LSE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "LSE" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "LSE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "LSE" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "LSE" & unique_carrier_name =="Endeavor Air Inc."

* LSF 
tab unique_carrier_name year if origin == "LSF" & bank == 1

* LSR
tab unique_carrier_name year if origin == "LSR" & bank == 1

* LSV 
tab unique_carrier_name year if origin == "LSV" & bank == 1

* LTS
tab unique_carrier_name year if origin == "LTS" & bank == 1
 
* LUF 
tab unique_carrier_name year if origin == "LUF" & bank == 1

* LUK 
tab unique_carrier_name year if origin == "LUK" & bank == 1

* LUP
tab unique_carrier_name year if origin == "LUP" & bank == 1
 
* LUR 
tab unique_carrier_name year if origin == "LUR" & bank == 1

* LVD
tab unique_carrier_name year if origin == "LVD" & bank == 1

* LVK 
tab unique_carrier_name year if origin == "LVK" & bank == 1

* LWB 
tab unique_carrier_name year if origin == "LWB" & bank == 1
tab year quarter if origin == "LWB" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "LWB" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LWB" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200802, 201101) & origin == "LWB" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "LWB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LWB" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LWB" & unique_carrier_name =="Trans States Airlines"

* LWC 
tab unique_carrier_name year if origin == "LWC" & bank == 1

* LWM 
tab unique_carrier_name year if origin == "LWM" & bank == 1

* LWS 
tab unique_carrier_name year if origin == "LWS" & bank == 1
tab year quarter if origin == "LWS" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "LWS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "LWS" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "LWS" & unique_carrier_name =="SkyWest Airlines Inc."


* LWT 
tab unique_carrier_name year if origin == "LWT" & bank == 1
tab year quarter if origin == "LWT" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "LWT" & unique_carrier_name =="Big Sky Airlines Inc."


* LYH 
tab unique_carrier_name year if origin == "LYH" & bank == 1
tab year quarter if origin == "LYH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "LYH" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "LYH" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "LYH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LYH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "LYH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "LYH" & unique_carrier_name =="Piedmont Airlines"

* LYU 
tab unique_carrier_name year if origin == "LYU" & bank == 1

* LZU 
tab unique_carrier_name year if origin == "LZU" & bank == 1


* MAF 1st Envoy11-4
tab unique_carrier_name year if origin == "MAF" & bank == 1
tab year quarter if origin == "MAF" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MAF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MAF" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "MAF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MAF" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MAF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201601, 202001) & origin == "MAF" & unique_carrier_name =="Republic Airlines"


* MAZ 
tab unique_carrier_name year if origin == "MAZ" & bank == 1

* MBL 
tab unique_carrier_name year if origin == "MBL" & bank == 1

* MBS 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "MBS" & bank == 1
tab year quarter if origin == "MBS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MBS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MBS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MBS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MBS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MBS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "MBS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MBS" & unique_carrier_name =="Endeavor Air Inc."

* MCC 
tab unique_carrier_name year if origin == "MCC" & bank == 1

* MCD 
tab unique_carrier_name year if origin == "MCD" & bank == 1

* MCE 
tab unique_carrier_name year if origin == "MCE" & bank == 1
tab year quarter if origin == "MCE" & unique_carrier_name =="Air Midwest Inc."

drop if inrange(new_year_quarter, 200802, 201101) & origin == "MCE" & unique_carrier_name =="Air Midwest Inc."


* MCF 
tab unique_carrier_name year if origin == "MCF" & bank == 1

* MCG 1st Peninsula17-3
tab unique_carrier_name year if origin == "MCG" & bank == 1
tab year quarter if origin == "MCG" & unique_carrier_name =="Peninsula Airways Inc."

* MCI 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "MCI" & bank == 1
tab year quarter if origin == "MCI" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MCI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MCI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MCI" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MCI" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MCI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200802, 201101) & origin == "MCI" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MCI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MCI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MCI" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MCI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MCI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MCI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MCI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MCI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MCI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MCI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MCI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 201902) & origin == "MCI" & unique_carrier_name =="Seaport Airlines, Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MCI" & unique_carrier_name =="Republic Airlines"


* MCK 
tab unique_carrier_name year if origin == "MCK" & bank == 1
tab year quarter if origin == "MCK" & unique_carrier_name =="Air Midwest Inc."

drop if inrange(new_year_quarter, 200802, 201101) & origin == "MCK" & unique_carrier_name =="Air Midwest Inc."

* MCN 1st Comair05-3
tab unique_carrier_name year if origin == "MCN" & bank == 1
tab year quarter if origin == "MCN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MCN" & unique_carrier_name =="Comair Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MCN" & unique_carrier_name =="Air Wisconsin Airlines Corp"


* MCO 1st Midway01-3
tab unique_carrier_name year if origin == "MCO" & bank == 1
tab year quarter if origin == "MCO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MCO" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MCO" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "MCO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MCO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MCO" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "MCO" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MCO" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MCO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MCO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MCO" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MCO" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MCO" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MCO" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MCO" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MCO" & unique_carrier_name =="Republic Airlines"


* MCW 1st Mesaba05-4
tab unique_carrier_name year if origin == "MCW" & bank == 1
tab year quarter if origin == "MCW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MCW" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "MCW" & unique_carrier_name =="Endeavor Air Inc."

* MDD 
tab unique_carrier_name year if origin == "MDD" & bank == 1

* MDH 
tab unique_carrier_name year if origin == "MDH" & bank == 1

* MDO 
tab unique_carrier_name year if origin == "MDO" & bank == 1

* MDR 
tab unique_carrier_name year if origin == "MDR" & bank == 1

* MDT 1st Comair05-3
tab unique_carrier_name year if origin == "MDT" & bank == 1
tab year quarter if origin == "MDT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MDT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MDT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MDT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MDT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MDT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MDT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MDT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MDT" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "MDT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MDT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MDT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MDT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MDT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MDT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MDT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "MDT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MDT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MDT" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MDT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "MDT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MDT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MDT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MDT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MDT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MDT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MDT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MDT" & unique_carrier_name =="Republic Airlines"


* MDW 1st Comair05-3
tab unique_carrier_name year if origin == "MDW" & bank == 1
tab year quarter if origin == "MDW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MDW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MDW" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "MDW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MDW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "MDW" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "MDW" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MDW" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "MDW" & unique_carrier_name =="Endeavor Air Inc."

* MDY
tab unique_carrier_name year if origin == "MDY" & bank == 1

* MEI 
tab unique_carrier_name year if origin == "MEI" & bank == 1
tab year quarter if origin == "MEI" & unique_carrier_name =="SkyWest Airlines Inc."

* MEM 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "MEM" & bank == 1
tab year quarter if origin == "MEM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MEM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MEM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MEM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "MEM" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MEM" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MEM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "MEM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MEM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MEM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MEM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MEM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MEM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MEM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MEM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MEM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MEM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 201902) & origin == "MEM" & unique_carrier_name =="Seaport Airlines, Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MEM" & unique_carrier_name =="Republic Airlines"


* MEO 
tab unique_carrier_name year if origin == "MEO" & bank == 1

* MER 
tab unique_carrier_name year if origin == "MER" & bank == 1

* MFD 
tab unique_carrier_name year if origin == "MFD" & bank == 1

* MFE 1st Envoy11-4
tab unique_carrier_name year if origin == "MFE" & bank == 1
tab year quarter if origin == "MFE" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MFE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MFE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MFE" & unique_carrier_name =="SkyWest Airlines Inc."


* MFH 
tab unique_carrier_name year if origin == "MFH" & bank == 1

* MFR
tab unique_carrier_name year if origin == "MFR" & bank == 1
tab year quarter if origin == "MFR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MFR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MFR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MFR" & unique_carrier_name =="SkyWest Airlines Inc."


* MGE 
tab unique_carrier_name year if origin == "MGE" & bank == 1

* MGM 1st Comair05-3
tab unique_carrier_name year if origin == "MGM" & bank == 1
tab year quarter if origin == "MGM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MGM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MGM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MGM" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MGM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MGM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MGM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MGM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MGM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "MGM" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MGM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MGM" & unique_carrier_name =="Comair Inc."


* MGW
tab unique_carrier_name year if origin == "MGW" & bank == 1
tab year quarter if origin == "MGW" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MGW" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "MGW" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "MGW" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200502) & origin == "MGW" & unique_carrier_name =="Piedmont Airlines"

* MGY 
tab unique_carrier_name year if origin == "MGY" & bank == 1

* MHE
tab unique_carrier_name year if origin == "MHE" & bank == 1

* MHK 1st Envoy11-4
tab unique_carrier_name year if origin == "MHK" & bank == 1
tab year quarter if origin == "MHK" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MHK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MHK" & unique_carrier_name =="SkyWest Airlines Inc."


* MHM 
tab unique_carrier_name year if origin == "MHM" & bank == 1

* MHR 
tab unique_carrier_name year if origin == "MHR" & bank == 1

* MHT 1st Comair05-3
tab unique_carrier_name year if origin == "MHT" & bank == 1
tab year quarter if origin == "MHT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MHT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MHT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MHT" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "MHT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MHT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MHT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MHT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "MHT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MHT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MHT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "MHT" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MHT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MHT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "MHT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MHT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MHT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "MHT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MHT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MHT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MHT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MHT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MHT" & unique_carrier_name =="Republic Airlines"


* MHV 
tab unique_carrier_name year if origin == "MHV" & bank == 1

* MIA 1st Comair05-3
tab unique_carrier_name year if origin == "MIA" & bank == 1
tab year quarter if origin == "MIA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MIA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MIA" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "MIA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MIA" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MIA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MIA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MIA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MIA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MIA" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 201001, 201304) & origin == "MIA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MIA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "MIA" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MIA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MIA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MIA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MIA" & unique_carrier_name =="Republic Airlines"


* MIB 
tab unique_carrier_name year if origin == "MIB" & bank == 1

* MIE 
tab unique_carrier_name year if origin == "MIE" & bank == 1

* MIV 
tab unique_carrier_name year if origin == "MIV" & bank == 1

* MJX 
tab unique_carrier_name year if origin == "MJX" & bank == 1

* MKC 
tab unique_carrier_name year if origin == "MKC" & bank == 1

* MKE 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "MKE" & bank == 1
tab year quarter if origin == "MKE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MKE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MKE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MKE" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MKE" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MKE" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MKE" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MKE" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MKE" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MKE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "MKE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MKE" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MKE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MKE" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MKE" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MKE" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MKE" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MKE" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MKE" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MKE" & unique_carrier_name =="Republic Airlines"


* MKG 1st Mesaba05-4
tab unique_carrier_name year if origin == "MKG" & bank == 1
tab year quarter if origin == "MKG" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MKG" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MKG" & unique_carrier_name =="SkyWest Airlines Inc."


* MKK 
tab unique_carrier_name year if origin == "MKK" & bank == 1
tab year quarter if origin == "MKG" & unique_carrier_name =="Pacific Wings Airlines"

* MKL 
tab unique_carrier_name year if origin == "MKL" & bank == 1
tab year quarter if origin == "MKL" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "MKL" & unique_carrier_name =="Regions Air, Inc."

* MKT 
tab unique_carrier_name year if origin == "MKT" & bank == 1

* MLB 1st Comair05-3
tab unique_carrier_name year if origin == "MLB" & bank == 1
tab year quarter if origin == "MLB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MLB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MLB" & unique_carrier_name =="PSA Airlines Inc."

* MLI 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "MLI" & bank == 1
tab year quarter if origin == "MLI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MLI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MLI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MLI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MLI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MLI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MLI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MLI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MLI" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MLI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MLI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MLI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MLI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MLI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MLI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MLI" & unique_carrier_name =="Comair Inc."


* MLL
tab unique_carrier_name year if origin == "MLL" & bank == 1
 
* MLS
tab unique_carrier_name year if origin == "MLS" & bank == 1
tab year quarter if origin == "MLS" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "MLS" & unique_carrier_name =="Big Sky Airlines Inc."


* MLU 1st Mesaba05-4
tab unique_carrier_name year if origin == "MLU" & bank == 1
tab year quarter if origin == "MLU" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MLU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MLU" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MLU" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "MLU" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MLU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "MLU" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MLU" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MLU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201601) & origin == "MLU" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MLU" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MLU" & unique_carrier_name =="Colgan Air"

* MLY
tab unique_carrier_name year if origin == "MLY" & bank == 1

* MMH 
tab unique_carrier_name year if origin == "MMH" & bank == 1
tab year quarter if origin == "MMH" & unique_carrier_name =="SkyWest Airlines Inc."

* MMU 
tab unique_carrier_name year if origin == "MMU" & bank == 1

* MNT 
tab unique_carrier_name year if origin == "MNT" & bank == 1

* MNZ 
tab unique_carrier_name year if origin == "MNZ" & bank == 1

* MOB 1st Comair05-3
tab unique_carrier_name year if origin == "MOB" & bank == 1
tab year quarter if origin == "MOB" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MOB" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MOB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MOB" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MOB" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MOB" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MOB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MOB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "MOB" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MOB" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MOB" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MOB" & unique_carrier_name =="Comair Inc."


* MOD 
tab unique_carrier_name year if origin == "MOD" & bank == 1
tab year quarter if origin == "MOD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MOD" & unique_carrier_name =="SkyWest Airlines Inc."

* MOP 
tab unique_carrier_name year if origin == "MOP" & bank == 1

* MOS 
tab unique_carrier_name year if origin == "MOS" & bank == 1

* MOT 1st Endeavor12-2
tab unique_carrier_name year if origin == "MOT" & bank == 1
tab year quarter if origin == "MOT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MOT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MOT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MOT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "MOT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MOT" & unique_carrier_name =="Trans States Airlines"

* MOU 
tab unique_carrier_name year if origin == "MOU" & bank == 1

* MPE 
tab unique_carrier_name year if origin == "MPE" & bank == 1

* MPO 
tab unique_carrier_name year if origin == "MPO" & bank == 1

* MPR 
tab unique_carrier_name year if origin == "MPR" & bank == 1

* MPV 
tab unique_carrier_name year if origin == "MPV" & bank == 1

* MQB 
tab unique_carrier_name year if origin == "MQB" & bank == 1

* MQI 
tab unique_carrier_name year if origin == "MQI" & bank == 1

* MQJ 
tab unique_carrier_name year if origin == "MQJ" & bank == 1

* MQT 1st Mesaba05-4
tab unique_carrier_name year if origin == "MQT" & bank == 1
tab year quarter if origin == "MQT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MQT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MQT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MQT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "MQT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MQT" & unique_carrier_name =="Endeavor Air Inc."

* MQY 
tab unique_carrier_name year if origin == "MQY" & bank == 1

* MRB 
tab unique_carrier_name year if origin == "MRB" & bank == 1

* MRI 
tab unique_carrier_name year if origin == "MRI" & bank == 1

* MRK 
tab unique_carrier_name year if origin == "MRK" & bank == 1

* MRY 1st Mesa10-1
tab unique_carrier_name year if origin == "MRY" & bank == 1
tab year quarter if origin == "MRY" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MRY" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MRY" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MRY" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "MRY" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MRY" & unique_carrier_name =="Endeavor Air Inc."

* MSC 
tab unique_carrier_name year if origin == "MSC" & bank == 1

* MSL 1st Mesaba05-4
tab unique_carrier_name year if origin == "MSL" & bank == 1
tab year quarter if origin == "MSL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MSL" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "MSL" & unique_carrier_name =="Endeavor Air Inc."

* MSN 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "MSN" & bank == 1
tab year quarter if origin == "MSN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MSN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MSN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MSN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MSN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MSN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MSN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MSN" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MSN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MSN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MSN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MSN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MSN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MSN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MSN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MSN" & unique_carrier_name =="Republic Airlines"


* MSO 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "MSO" & bank == 1
tab year quarter if origin == "MSO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MSO" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "MSO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MSO" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MSO" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSO" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200801, 201004) & origin == "MSO" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "MSO" & unique_carrier_name =="Endeavor Air Inc."


* MSP 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "MSP" & bank == 1
tab year quarter if origin == "MSP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MSP" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MSP" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MSP" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MSP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MSP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 199202, 199604) & origin == "MSP" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "MSP" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MSP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MSP" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSP" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MSP" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MSP" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MSP" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSP" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MSP" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MSP" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MSP" & unique_carrier_name =="Republic Airlines"

* MSS 
tab unique_carrier_name year if origin == "MSS" & bank == 1

* MSV 
tab unique_carrier_name year if origin == "MSV" & bank == 1

* MSY 1st Comair05-3
tab unique_carrier_name year if origin == "MSY" & bank == 1
tab year quarter if origin == "MSY" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MSY" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MSY" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MSY" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MSY" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MSY" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MSY" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200103, 200503) & origin == "MSY" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MSY" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSY" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MSY" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MSY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSY" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MSY" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "MSY" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MSY" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSY" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MSY" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MSY" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MSY" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MSY" & unique_carrier_name =="Republic Airlines"

* MTC 
tab unique_carrier_name year if origin == "MTC" & bank == 1

* MTH 
tab unique_carrier_name year if origin == "MTH" & bank == 1

* MTJ 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "MTJ" & bank == 1
tab year quarter if origin == "MTJ" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MTJ" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MTJ" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "MTJ" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MTJ" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MTJ" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "MTJ" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MTJ" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MTJ" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "MTJ" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MTJ" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MTJ" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MTJ" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MTJ" & unique_carrier_name =="Republic Airlines"

* MTM 
tab unique_carrier_name year if origin == "MTM" & bank == 1

* MTN 
tab unique_carrier_name year if origin == "MTN" & bank == 1

* MTO 
tab unique_carrier_name year if origin == "MTO" & bank == 1

* MTP 
tab unique_carrier_name year if origin == "MTP" & bank == 1

* MUE 1st Pacific Wings13-2
tab unique_carrier_name year if origin == "MUE" & bank == 1
tab year quarter if origin == "MUE" & unique_carrier_name =="Pacific Wings Airlines"



* MUO 
tab unique_carrier_name year if origin == "MUO" & bank == 1

* MVL 
tab unique_carrier_name year if origin == "MVL" & bank == 1

* MVM 
tab unique_carrier_name year if origin == "MVM" & bank == 1

* MVW 
tab unique_carrier_name year if origin == "MVW" & bank == 1

* MVY 1st Endeavor12-2
tab unique_carrier_name year if origin == "MVY" & bank == 1
tab year quarter if origin == "MVY" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MVY" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MVY" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MVY" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MVY" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "MVY" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MVY" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200503, 201001) & origin == "MVY" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MVY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MVY" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "MVY" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MVY" & unique_carrier_name =="Piedmont Airlines"

* MWA 
tab unique_carrier_name year if origin == "MWA" & bank == 1
tab year quarter if origin == "MWA" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "MWA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200101, 200503) & origin == "MWA" & unique_carrier_name =="Regions Air, Inc."

* MWH 
tab unique_carrier_name year if origin == "MWH" & bank == 1
tab year quarter if origin == "MWH" & unique_carrier_name =="SkyWest Airlines Inc."

* MXF 
tab unique_carrier_name year if origin == "MXF" & bank == 1

* MXY
tab unique_carrier_name year if origin == "MXY" & bank == 1
 
* MYF 
tab unique_carrier_name year if origin == "MYF" & bank == 1

* MYH 
tab unique_carrier_name year if origin == "MYH" & bank == 1

* MYK 
tab unique_carrier_name year if origin == "MYK" & bank == 1

* MYL
tab unique_carrier_name year if origin == "MYL" & bank == 1

* MYR 1st Midway01-3
tab unique_carrier_name year if origin == "MYR" & bank == 1
tab year quarter if origin == "MYR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "MYR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "MYR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "MYR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "MYR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "MYR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "MYR" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "MYR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "MYR" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "MYR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "MYR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "MYR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "MYR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MYR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "MYR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "MYR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "MYR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "MYR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "MYR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "MYR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "MYR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "MYR" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "MYR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "MYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "MYR" & unique_carrier_name =="Republic Airlines"

* MYU 
tab unique_carrier_name year if origin == "MYU" & bank == 1

* MZJ
tab unique_carrier_name year if origin == "MZJ" & bank == 1

* NAD 
tab unique_carrier_name year if origin == "NAD" & bank == 1

* NBG 
tab unique_carrier_name year if origin == "NBG" & bank == 1

* NCN 
tab unique_carrier_name year if origin == "NCN" & bank == 1

* NCO 
tab unique_carrier_name year if origin == "NCO" & bank == 1

* NEW 
tab unique_carrier_name year if origin == "NEW" & bank == 1

* NFL
tab unique_carrier_name year if origin == "NFL" & bank == 1
 
* NGU
tab unique_carrier_name year if origin == "NGU" & bank == 1

* NHK 
tab unique_carrier_name year if origin == "NHK" & bank == 1

* NHZ 
tab unique_carrier_name year if origin == "NHZ" & bank == 1

* NIB 
tab unique_carrier_name year if origin == "NIB" & bank == 1

* NIN 
tab unique_carrier_name year if origin == "NIN" & bank == 1

* NIP 
tab unique_carrier_name year if origin == "NIP" & bank == 1

* NJK 
tab unique_carrier_name year if origin == "NJK" & bank == 1

* NKI 
tab unique_carrier_name year if origin == "NKI" & bank == 1

* NKT 
tab unique_carrier_name year if origin == "NKT" & bank == 1

* NKX 
tab unique_carrier_name year if origin == "NKX" & bank == 1

* NLC 
tab unique_carrier_name year if origin == "NLC" & bank == 1

* NLG 
tab unique_carrier_name year if origin == "NLG" & bank == 1

* NME 
tab unique_carrier_name year if origin == "NME" & bank == 1

* NNK 
tab unique_carrier_name year if origin == "NNK" & bank == 1

* NNL 
tab unique_carrier_name year if origin == "NNL" & bank == 1

* NPA 
tab unique_carrier_name year if origin == "NPA" & bank == 1

* NPT 
tab unique_carrier_name year if origin == "NPT" & bank == 1

* NQA 
tab unique_carrier_name year if origin == "NQA" & bank == 1

* NQX 
tab unique_carrier_name year if origin == "NQX" & bank == 1

* NRB
tab unique_carrier_name year if origin == "NRB" & bank == 1

* NRR 
tab unique_carrier_name year if origin == "NRR" & bank == 1

* NSF
tab unique_carrier_name year if origin == "NSF" & bank == 1
 
* NTD 
tab unique_carrier_name year if origin == "NTD" & bank == 1

* NTU 
tab unique_carrier_name year if origin == "NTU" & bank == 1

* NUI
tab unique_carrier_name year if origin == "NUI" & bank == 1

* NUL
tab unique_carrier_name year if origin == "NUL" & bank == 1
 
* NUP 
tab unique_carrier_name year if origin == "NUP" & bank == 1

* NUQ 
tab unique_carrier_name year if origin == "NUQ" & bank == 1

* NUW 
tab unique_carrier_name year if origin == "NUW" & bank == 1

* NXX 
tab unique_carrier_name year if origin == "NXX" & bank == 1

* NYL 
tab unique_carrier_name year if origin == "NYL" & bank == 1

* NZC
tab unique_carrier_name year if origin == "NZC" & bank == 1

* NZY 
tab unique_carrier_name year if origin == "NZY" & bank == 1

* OAJ 1st Mesa10-1
tab unique_carrier_name year if origin == "OAJ" & bank == 1
tab year quarter if origin == "OAJ" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "OAJ" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "OAJ" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "OAJ" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "OAJ" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "OAJ" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "OAJ" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "OAJ" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "OAJ" & unique_carrier_name =="Piedmont Airlines"


* OAK 1st Aloha04-4
tab unique_carrier_name year if origin == "OAK" & bank == 1
tab year quarter if origin == "OAK" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "OAK" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "OAK" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "OAK" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "OAK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "OAK" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "OAK" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "OAK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "OAK" & unique_carrier_name =="Mesa Airlines Inc."

* OBU 
tab unique_carrier_name year if origin == "OBU" & bank == 1

* OCA 
tab unique_carrier_name year if origin == "OCA" & bank == 1

* OCE
tab unique_carrier_name year if origin == "OCE" & bank == 1

* OCF
tab unique_carrier_name year if origin == "OCF" & bank == 1

* ODW
tab unique_carrier_name year if origin == "ODW" & bank == 1

* OFF
tab unique_carrier_name year if origin == "OFF" & bank == 1

* OFK
tab unique_carrier_name year if origin == "OFK" & bank == 1

* OFU 
tab unique_carrier_name year if origin == "OFU" & bank == 1

* OGD
tab unique_carrier_name year if origin == "OGD" & bank == 1
tab year quarter if origin == "OGD" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "OGD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "OGD" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "OGD" & unique_carrier_name =="SkyWest Airlines Inc."


* OGG 1st Aloha04-4
tab unique_carrier_name year if origin == "OGG" & bank == 1
tab year quarter if origin == "OGG" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "OGG" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "OGG" & unique_carrier_name =="Pacific Wings Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "OGG" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201302, 201601) & origin == "OGG" & unique_carrier_name =="Pacific Wings Airlines"

* OGS 
tab unique_carrier_name year if origin == "OGS" & bank == 1

* OHC 
tab unique_carrier_name year if origin == "OHC" & bank == 1

* OKC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "OKC" & bank == 1
tab year quarter if origin == "OKC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "OKC" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "OKC" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "OKC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "OKC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "OKC" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "OKC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "OKC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "OKC" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "OKC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "OKC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 199202, 199604) & origin == "OKC" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "OKC" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "OKC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "OKC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "OKC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "OKC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "OKC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "OKC" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "OKC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "OKC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "OKC" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "OKC" & unique_carrier_name =="Republic Airlines"


* OKK
tab unique_carrier_name year if origin == "OKK" & bank == 1

* OLF 
tab unique_carrier_name year if origin == "OLF" & bank == 1
tab year quarter if origin == "OLF" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "OLF" & unique_carrier_name =="Big Sky Airlines Inc."


* OLH 
tab unique_carrier_name year if origin == "OLH" & bank == 1

* OLM 
tab unique_carrier_name year if origin == "OLM" & bank == 1

* OLS 
tab unique_carrier_name year if origin == "OLS" & bank == 1

* OMA 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "OMA" & bank == 1
tab year quarter if origin == "OMA" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "OMA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "OMA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "OMA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "OMA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "OMA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "OMA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "OMA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "OMA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "OMA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "OMA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "OMA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "OMA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "OMA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "OMA" & unique_carrier_name =="Republic Airlines"

* OME 
tab unique_carrier_name year if origin == "OME" & bank == 1
tab year quarter if origin == "OME" & unique_carrier_name =="Markair Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "OME" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "OME" & unique_carrier_name =="Markair Inc."

* ONH 
tab unique_carrier_name year if origin == "ONH" & bank == 1

* ONP 
tab unique_carrier_name year if origin == "ONP" & bank == 1

* ONT 1st Aloha04-4
tab unique_carrier_name year if origin == "ONT" & bank == 1
tab year quarter if origin == "ONT" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "ONT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ONT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ONT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ONT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ONT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "ONT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ONT" & unique_carrier_name =="Trans States Airlines"

* OOK 
tab unique_carrier_name year if origin == "OOK" & bank == 1

* OPF 
tab unique_carrier_name year if origin == "OPF" & bank == 1

* OPH 
tab unique_carrier_name year if origin == "OPH" & bank == 1

* OQB 
tab unique_carrier_name year if origin == "OQB" & bank == 1

* OQC 
tab unique_carrier_name year if origin == "OQC" & bank == 1

* OQG 
tab unique_carrier_name year if origin == "OQG" & bank == 1

* OQI 
tab unique_carrier_name year if origin == "OQI" & bank == 1

* OQL 
tab unique_carrier_name year if origin == "OQL" & bank == 1

* OQM 
tab unique_carrier_name year if origin == "OQM" & bank == 1

* OQP 
tab unique_carrier_name year if origin == "OQP" & bank == 1

* OQS 
tab unique_carrier_name year if origin == "OQS" & bank == 1

* OQX 
tab unique_carrier_name year if origin == "OQX" & bank == 1

* OQY
tab unique_carrier_name year if origin == "OQY" & bank == 1

* OQZ 
tab unique_carrier_name year if origin == "OQZ" & bank == 1

* ORD 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "ORD" & bank == 1
tab year quarter if origin == "ORD" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ORD" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ORD" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ORD" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ORD" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ORD" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ORD" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ORD" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ORD" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ORD" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ORD" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "ORD" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ORD" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ORD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "ORD" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ORD" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ORD" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ORD" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ORD" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ORD" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ORD" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ORD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ORD" & unique_carrier_name =="Republic Airlines"


* ORF 1st Trans State02-4
tab unique_carrier_name year if origin == "ORF" & bank == 1
tab year quarter if origin == "ORF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ORF" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ORF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ORF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ORF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ORF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ORF" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ORF" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ORF" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ORF" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ORF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ORF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ORF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ORF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ORF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ORF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ORF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ORF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ORF" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "ORF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ORF" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ORF" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ORF" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ORF" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ORF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ORF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ORF" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ORF" & unique_carrier_name =="Republic Airlines"

* ORH 
tab unique_carrier_name year if origin == "ORH" & bank == 1

* ORI 
tab unique_carrier_name year if origin == "ORI" & bank == 1

* ORL 
tab unique_carrier_name year if origin == "ORL" & bank == 1

* ORT 
tab unique_carrier_name year if origin == "ORT" & bank == 1

* ORV 
tab unique_carrier_name year if origin == "ORV" & bank == 1

* OSH 
tab unique_carrier_name year if origin == "OSH" & bank == 1

* OSU 
tab unique_carrier_name year if origin == "OSU" & bank == 1

* OTH 1st Seaport16-1
tab unique_carrier_name year if origin == "OTH" & bank == 1
tab year quarter if origin == "OTH" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "OTH" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "OTH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "OTH" & unique_carrier_name =="SkyWest Airlines Inc."


* OTS 
tab unique_carrier_name year if origin == "OTS" & bank == 1

* OTZ 
tab unique_carrier_name year if origin == "OTZ" & bank == 1
tab year quarter if origin == "OTZ" & unique_carrier_name =="Markair Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "OTZ" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "OTZ" & unique_carrier_name =="Markair Inc."

* OUN 
tab unique_carrier_name year if origin == "OUN" & bank == 1

* OWB 
tab unique_carrier_name year if origin == "OWB" & bank == 1
tab year quarter if origin == "OWB" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200304) & origin == "OWB" & unique_carrier_name =="Regions Air, Inc."

* OWD 
tab unique_carrier_name year if origin == "OWD" & bank == 1

* OXC 
tab unique_carrier_name year if origin == "OXC" & bank == 1

* OXR 
tab unique_carrier_name year if origin == "OXR" & bank == 1
tab year quarter if origin == "OXR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "OXR" & unique_carrier_name =="SkyWest Airlines Inc."

* PAE 
tab unique_carrier_name year if origin == "PAE" & bank == 1
tab year quarter if origin == "PAE" & unique_carrier_name =="SkyWest Airlines Inc."

* PAH 1st Mesaba05-4
tab unique_carrier_name year if origin == "PAH" & bank == 1
tab year quarter if origin == "PAH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PAH" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "PAH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "PAH" & unique_carrier_name =="Regions Air, Inc."

* PAM 
tab unique_carrier_name year if origin == "PAM" & bank == 1

* PAQ 
tab unique_carrier_name year if origin == "PAQ" & bank == 1

* PBG 1st Peninsula17-3
tab unique_carrier_name year if origin == "PBG" & bank == 1
tab year quarter if origin == "PBG" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PBG" & unique_carrier_name =="Peninsula Airways Inc."

* PBI 1st Comair05-3
tab unique_carrier_name year if origin == "PBI" & bank == 1
tab year quarter if origin == "PBI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PBI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PBI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PBI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PBI" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "PBI" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PBI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PBI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "PBI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PBI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PBI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PBI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PBI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PBI" & unique_carrier_name =="Republic Airlines"

* PBK
tab unique_carrier_name year if origin == "PBK" & bank == 1

* PBX
tab unique_carrier_name year if origin == "PBX" & bank == 1

* PCA
tab unique_carrier_name year if origin == "PCA" & bank == 1

* PCE 
tab unique_carrier_name year if origin == "PCE" & bank == 1

* PCT 
tab unique_carrier_name year if origin == "PCT" & bank == 1

* PDB 
tab unique_carrier_name year if origin == "PDB" & bank == 1

* PDK 
tab unique_carrier_name year if origin == "PDK" & bank == 1

* PDT 1st Seaport16-1
tab unique_carrier_name year if origin == "PDT" & bank == 1
tab year quarter if origin == "PDT" & unique_carrier_name =="Seaport Airlines, Inc."

* PDX 1st Seaport16-1 
tab unique_carrier_name year if origin == "PDX" & bank == 1
tab year quarter if origin == "PDX" & unique_carrier_name =="Big Sky Airlines Inc."
tab year quarter if origin == "PDX" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "PDX" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "PDX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "PDX" & unique_carrier_name =="Big Sky Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PDX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201703, 202002) & origin == "PDX" & unique_carrier_name =="Peninsula Airways Inc."

* PEC
tab unique_carrier_name year if origin == "PEC" & bank == 1

* PFD 
tab unique_carrier_name year if origin == "PFD" & bank == 1

* PFN 1st Comair05-3
tab unique_carrier_name year if origin == "PFN" & bank == 1
tab year quarter if origin == "PFN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PFN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PFN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "PFN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PFN" & unique_carrier_name =="SkyWest Airlines Inc."

* PGA 
tab unique_carrier_name year if origin == "PGA" & bank == 1

* PGC 
tab unique_carrier_name year if origin == "PGC" & bank == 1

* PGD 
tab unique_carrier_name year if origin == "PGD" & bank == 1

* PGM 
tab unique_carrier_name year if origin == "PGM" & bank == 1

* PGO 
tab unique_carrier_name year if origin == "PGO" & bank == 1

* PGS 
tab unique_carrier_name year if origin == "PGS" & bank == 1

* PGV 
tab unique_carrier_name year if origin == "PGV" & bank == 1
tab year quarter if origin == "PGV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PGV" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200403, 200802) & origin == "PGV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "PGV" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PGV" & unique_carrier_name =="Piedmont Airlines"

* PHF 1st Comair05-3
tab unique_carrier_name year if origin == "PHF" & bank == 1
tab year quarter if origin == "PHF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PHF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PHF" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PHF" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PHF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "PHF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHF" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201203, 201502) & origin == "PHF" & unique_carrier_name =="Comair Inc."


* PHL 1st Midway01-3
tab unique_carrier_name year if origin == "PHL" & bank == 1
tab year quarter if origin == "PHL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PHL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PHL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PHL" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "PHL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PHL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PHL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PHL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "PHL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHL" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHL" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHL" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PHL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201502) & origin == "PHL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PHL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PHL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PHL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PHL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PHL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PHL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PHL" & unique_carrier_name =="Republic Airlines"

* PHN 
tab unique_carrier_name year if origin == "PHN" & bank == 1

* PHO 
tab unique_carrier_name year if origin == "PHO" & bank == 1

* PHX 1st Comair05-3
tab unique_carrier_name year if origin == "PHX" & bank == 1
tab year quarter if origin == "PHX" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "PHX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PHX" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PHX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PHX" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "PHX" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PHX" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PHX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHX" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 199202, 199604) & origin == "PHX" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "PHX" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PHX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "PHX" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PHX" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PHX" & unique_carrier_name =="Comair Inc."


* PIA 1st Trans state, Air Wisconsin02-4
tab unique_carrier_name year if origin == "PIA" & bank == 1
tab year quarter if origin == "PIA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PIA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PIA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PIA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PIA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PIA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PIA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PIA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PIA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "PIA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PIA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PIA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PIA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PIA" & unique_carrier_name =="Endeavor Air Inc."


* PIB 1st Mesaba05-4
tab unique_carrier_name year if origin == "PIB" & bank == 1
tab year quarter if origin == "PIB" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PIB" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PIB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "PIB" & unique_carrier_name =="Endeavor Air Inc."

* PIE
tab unique_carrier_name year if origin == "PIE" & bank == 1
tab year quarter if origin == "PIE" & unique_carrier_name =="Eastwind Airlines Inc."

* PIH 
tab unique_carrier_name year if origin == "PIH" & bank == 1
tab year quarter if origin == "PIH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PIH" & unique_carrier_name =="SkyWest Airlines Inc."

* PIP 
tab unique_carrier_name year if origin == "PIP" & bank == 1

* PIR 1st Mesaba05-4
tab unique_carrier_name year if origin == "PIR" & bank == 1
tab year quarter if origin == "PIR" & unique_carrier_name =="Mesaba Airlines"


* PIT 1st Trans State02-4
tab unique_carrier_name year if origin == "PIT" & bank == 1
tab year quarter if origin == "PIT" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PIT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PIT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Eastwind Airlines Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PIT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PIT" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "PIT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PIT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PIT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PIT" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "PIT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PIT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PIT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PIT" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "PIT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PIT" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PIT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "PIT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PIT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200802, 201101) & origin == "PIT" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PIT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PIT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PIT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PIT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PIT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "PIT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PIT" & unique_carrier_name =="Republic Airlines"

* PIZ 
tab unique_carrier_name year if origin == "PIZ" & bank == 1

* PKA 
tab unique_carrier_name year if origin == "PKA" & bank == 1

* PKB
tab unique_carrier_name year if origin == "PKB" & bank == 1
tab year quarter if origin == "PKB" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PKB" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200403, 200802) & origin == "PKB" & unique_carrier_name =="Colgan Air"

* PLB 
tab unique_carrier_name year if origin == "PLB" & bank == 1

* PLN 1st Mesaba05-4
tab unique_carrier_name year if origin == "PLN" & bank == 1
tab year quarter if origin == "PLN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PLN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PLN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "PLN" & unique_carrier_name =="Endeavor Air Inc."

* PMB 
tab unique_carrier_name year if origin == "PMB" & bank == 1

* PMD 
tab unique_carrier_name year if origin == "PMD" & bank == 1
tab year quarter if origin == "PMD" & unique_carrier_name =="SkyWest Airlines Inc."

* PML 
tab unique_carrier_name year if origin == "PML" & bank == 1

* PNC 
tab unique_carrier_name year if origin == "PNC" & bank == 1

* PNE 
tab unique_carrier_name year if origin == "PNE" & bank == 1

* PNF
tab unique_carrier_name year if origin == "PNF" & bank == 1

* PNS 1st Comair05-3
tab unique_carrier_name year if origin == "PNS" & bank == 1
tab year quarter if origin == "PNS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PNS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PNS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PNS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PNS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PNS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PNS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PNS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PNS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PNS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PNS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PNS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "PNS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PNS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PNS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PNS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PNS" & unique_carrier_name =="Republic Airlines"

* PNX 
tab unique_carrier_name year if origin == "PNX" & bank == 1

* POB 
tab unique_carrier_name year if origin == "POB" & bank == 1

* POU 
tab unique_carrier_name year if origin == "POU" & bank == 1

* PPC 
tab unique_carrier_name year if origin == "PPC" & bank == 1

* PPG 1st Aloha04-4
tab unique_carrier_name year if origin == "PPG" & bank == 1
tab year quarter if origin == "PPG" & unique_carrier_name =="Aloha Airlines Inc."

* PPV 
tab unique_carrier_name year if origin == "PPV" & bank == 1

* PQI 1st Peninsula17-3
tab unique_carrier_name year if origin == "PQI" & bank == 1
tab year quarter if origin == "PQI" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PQI" & unique_carrier_name =="Peninsula Airways Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "PQI" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PQI" & unique_carrier_name =="Colgan Air"

* PQS
tab unique_carrier_name year if origin == "PQS" & bank == 1

* PRB 
tab unique_carrier_name year if origin == "PRB" & bank == 1

* PRC 
tab unique_carrier_name year if origin == "PRC" & bank == 1

* PSC 1st Air Wisconsin02-4 
tab unique_carrier_name year if origin == "PSC" & bank == 1
tab year quarter if origin == "PSC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PSC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PSC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PSC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PSC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "PSC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PSC" & unique_carrier_name =="Mesaba Airlines"

* PSE 
tab unique_carrier_name year if origin == "PSE" & bank == 1

* PSF 
tab unique_carrier_name year if origin == "PSF" & bank == 1

* PSG 
tab unique_carrier_name year if origin == "PSG" & bank == 1

* PSK 
tab unique_carrier_name year if origin == "PSK" & bank == 1

* PSM
tab unique_carrier_name year if origin == "PSM" & bank == 1
tab year quarter if origin == "PSM" & unique_carrier_name =="Boston-Maine Airways"

drop if inrange(new_year_quarter, 200801, 201004) & origin == "PSM" & unique_carrier_name =="Boston-Maine Airways"

* PSP 1st Mesa10-1
tab unique_carrier_name year if origin == "PSP" & bank == 1
tab year quarter if origin == "PSP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PSP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PSP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PSP" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PSP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PSP" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "PSP" & unique_carrier_name =="Envoy Air"

* PTA
tab unique_carrier_name year if origin == "PTA" & bank == 1

* PTD 
tab unique_carrier_name year if origin == "PTD" & bank == 1

* PTH 
tab unique_carrier_name year if origin == "PTH" & bank == 1

* PTK
tab unique_carrier_name year if origin == "PTK" & bank == 1

* PTU
tab unique_carrier_name year if origin == "PTU" & bank == 1

* PTW 
tab unique_carrier_name year if origin == "PTW" & bank == 1

* PUB 
tab unique_carrier_name year if origin == "PUB" & bank == 1
tab year quarter if origin == "PUB" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PUB" & unique_carrier_name =="SkyWest Airlines Inc."

* PUC 
tab unique_carrier_name year if origin == "PUC" & bank == 1

* PUO 
tab unique_carrier_name year if origin == "PUO" & bank == 1

* PUW 
tab unique_carrier_name year if origin == "PUW" & bank == 1

* PVC 
tab unique_carrier_name year if origin == "PVC" & bank == 1

* PVD 1st Trans State02-4
tab unique_carrier_name year if origin == "PVD" & bank == 1
tab year quarter if origin == "PVD" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PVD" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PVD" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "PVD" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PVD" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "PVD" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PVD" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PVD" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PVD" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "PVD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PVD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PVD" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PVD" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PVD" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PVD" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PVD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "PVD" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PVD" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PVD" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PVD" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PVD" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PVD" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PVD" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "PVD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PVD" & unique_carrier_name =="Republic Airlines"

* PVU 
tab unique_carrier_name year if origin == "PVU" & bank == 1
tab year quarter if origin == "PVU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PVU" & unique_carrier_name =="SkyWest Airlines Inc."

* PVY
tab unique_carrier_name year if origin == "PVY" & bank == 1

* PWA 
tab unique_carrier_name year if origin == "PWA" & bank == 1

* PWK 
tab unique_carrier_name year if origin == "PWK" & bank == 1

* PWM 1st Trans State02-4
tab unique_carrier_name year if origin == "PWM" & bank == 1
tab year quarter if origin == "PWM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "PWM" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "PWM" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "PWM" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "PWM" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "PWM" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "PWM" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "PWM" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "PWM" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PWM" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "PWM" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "PWM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PWM" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "PWM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "PWM" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "PWM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "PWM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "PWM" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "PWM" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "PWM" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "PWM" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "PWM" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "PWM" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "PWM" & unique_carrier_name =="Republic Airlines"

* PWR 
tab unique_carrier_name year if origin == "PWR" & bank == 1

* PWT 
tab unique_carrier_name year if origin == "PWT" & bank == 1

* PYM 
tab unique_carrier_name year if origin == "PYM" & bank == 1

* RAC 
tab unique_carrier_name year if origin == "RAC" & bank == 1

* RAP 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "RAP" & bank == 1
tab year quarter if origin == "RAP" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "RAP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "RAP" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RAP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "RAP" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RAP" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "RAP" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "RAP" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "RAP" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RAP" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "RAP" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "RAP" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RAP" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RAP" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "RAP" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "RAP" & unique_carrier_name =="Republic Airlines"

* RBD 
tab unique_carrier_name year if origin == "RBD" & bank == 1

* RBG 
tab unique_carrier_name year if origin == "RBG" & bank == 1

* RBH 
tab unique_carrier_name year if origin == "RBH" & bank == 1

* RBW 
tab unique_carrier_name year if origin == "RBW" & bank == 1

* RBY 
tab unique_carrier_name year if origin == "RBY" & bank == 1

* RCA 
tab unique_carrier_name year if origin == "RCA" & bank == 1

* RCE 
tab unique_carrier_name year if origin == "RCE" & bank == 1

* RDB
tab unique_carrier_name year if origin == "RDB" & bank == 1

* RDD 
tab unique_carrier_name year if origin == "RDD" & bank == 1
tab year quarter if origin == "RDD" & unique_carrier_name =="Peninsula Airways Inc."
tab year quarter if origin == "RDD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201601, 202001) & origin == "RDD" & unique_carrier_name =="Republic Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDD" & unique_carrier_name =="SkyWest Airlines Inc."


* RDG 
tab unique_carrier_name year if origin == "RDG" & bank == 1

* RDM
tab unique_carrier_name year if origin == "RDM" & bank == 1
tab year quarter if origin == "RDM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDM" & unique_carrier_name =="SkyWest Airlines Inc."

* RDR 
tab unique_carrier_name year if origin == "RDR" & bank == 1

* RDU 1st Midway01-3
tab unique_carrier_name year if origin == "RDU" & bank == 1
tab year quarter if origin == "RDU" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "RDU" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "RDU" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RDU" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RDU" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "RDU" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "RDU" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "RDU" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDU" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "RDU" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RDU" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "RDU" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RDU" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDU" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDU" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RDU" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RDU" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RDU" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RDU" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201502) & origin == "RDU" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "RDU" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "RDU" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RDU" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RDU" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "RDU" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "RDU" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "RDU" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "RDU" & unique_carrier_name =="Republic Airlines"

* RDV
tab unique_carrier_name year if origin == "RDV" & bank == 1

* RFD 
tab unique_carrier_name year if origin == "RFD" & bank == 1
tab year quarter if origin == "RFD" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RFD" & unique_carrier_name =="SkyWest Airlines Inc."

* RHI 1st Mesaba05-4
tab unique_carrier_name year if origin == "RHI" & bank == 1
tab year quarter if origin == "RHI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RHI" & unique_carrier_name =="SkyWest Airlines Inc."

* RIC 1st Trans State02-4
tab unique_carrier_name year if origin == "RIC" & bank == 1
tab year quarter if origin == "RIC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "RIC" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "RIC" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RIC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RIC" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "RIC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "RIC" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "RIC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RIC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "RIC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200103, 200402) & origin == "RIC" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200802) & origin == "RIC" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RIC" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "RIC" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RIC" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RIC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "RIC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "RIC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "RIC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RIC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RIC" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "RIC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "RIC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "RIC" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "RIC" & unique_carrier_name =="Republic Airlines"

* RIL 
tab unique_carrier_name year if origin == "RIL" & bank == 1

* RIV 
tab unique_carrier_name year if origin == "RIV" & bank == 1

* RIW 
tab unique_carrier_name year if origin == "RIW" & bank == 1

* RKD 
tab unique_carrier_name year if origin == "RKD" & bank == 1
tab year quarter if origin == "RKD" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "RKD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RKD" & unique_carrier_name =="Colgan Air"

* RKS 
tab unique_carrier_name year if origin == "RKS" & bank == 1
tab year quarter if origin == "RKS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RKS" & unique_carrier_name =="SkyWest Airlines Inc."

* RLU
tab unique_carrier_name year if origin == "RLU" & bank == 1

* RME 
tab unique_carrier_name year if origin == "RME" & bank == 1

* RMG 
tab unique_carrier_name year if origin == "RMG" & bank == 1

* RMN 
tab unique_carrier_name year if origin == "RMN" & bank == 1

* RMP 
tab unique_carrier_name year if origin == "RMP" & bank == 1

* RND 
tab unique_carrier_name year if origin == "RND" & bank == 1

* RNO 1st Aloha04-4
tab unique_carrier_name year if origin == "RNO" & bank == 1
tab year quarter if origin == "RNO" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "RNO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RNO" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "RNO" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "RNO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "RNO" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "RNO" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "RNO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "RNO" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RNO" & unique_carrier_name =="Envoy Air"

* RNT 
tab unique_carrier_name year if origin == "RNT" & bank == 1

* ROA 1st Trans State02-4
tab unique_carrier_name year if origin == "ROA" & bank == 1
tab year quarter if origin == "ROA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ROA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ROA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ROA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ROA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ROA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ROA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ROA" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ROA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ROA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ROA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ROA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ROA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ROA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ROA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ROA" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ROA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "ROA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ROA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ROA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ROA" & unique_carrier_name =="Comair Inc."


* ROC 1st Trans State02-4
tab unique_carrier_name year if origin == "ROC" & bank == 1
tab year quarter if origin == "ROC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "ROC" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "ROC" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ROC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "ROC" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "ROC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "ROC" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "ROC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ROC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "ROC" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ROC" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "ROC" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ROC" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "ROC" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "ROC" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "ROC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "ROC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "ROC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "ROC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ROC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "ROC" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "ROC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "ROC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "ROC" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "ROC" & unique_carrier_name =="Republic Airlines"

* ROG
tab unique_carrier_name year if origin == "ROG" & bank == 1

* ROP 
tab unique_carrier_name year if origin == "ROP" & bank == 1

* ROW 1st Envoy11-4
tab unique_carrier_name year if origin == "ROW" & bank == 1
tab year quarter if origin == "ROW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "ROW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "ROW" & unique_carrier_name =="SkyWest Airlines Inc."

* RQI 
tab unique_carrier_name year if origin == "RQI" & bank == 1

* RQK 
tab unique_carrier_name year if origin == "RQK" & bank == 1

* RQR 
tab unique_carrier_name year if origin == "RQR" & bank == 1

* RQZ 
tab unique_carrier_name year if origin == "RQZ" & bank == 1

* RSH 
tab unique_carrier_name year if origin == "RSH" & bank == 1

* RSJ 
tab unique_carrier_name year if origin == "RSJ" & bank == 1

* RSN 
tab unique_carrier_name year if origin == "RSN" & bank == 1

* RST 1st Mesaba05-4
tab unique_carrier_name year if origin == "RST" & bank == 1
tab year quarter if origin == "RST" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "RST" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "RST" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "RST" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RST" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RST" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "RST" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "RST" & unique_carrier_name =="Endeavor Air Inc."


* RSW 1st Comair05-3
tab unique_carrier_name year if origin == "RSW" & bank == 1
tab year quarter if origin == "RSW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "RSW" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "RSW" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "RSW" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "RSW" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "RSW" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "RSW" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "RSW" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "RSW" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "RSW" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "RSW" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "RSW" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "RSW" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "RSW" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "RSW" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "RSW" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "RSW" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "RSW" & unique_carrier_name =="Republic Airlines"

* RUI 
tab unique_carrier_name year if origin == "RUI" & bank == 1

* RUT 
tab unique_carrier_name year if origin == "RUT" & bank == 1
tab year quarter if origin == "RUT" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200502) & origin == "RUT" & unique_carrier_name =="Colgan Air"


* RWI 
tab unique_carrier_name year if origin == "RWI" & bank == 1

* RXB 
tab unique_carrier_name year if origin == "RXB" & bank == 1


* SAA
tab unique_carrier_name year if origin == "SAA" & bank == 1

* SAC
tab unique_carrier_name year if origin == "SAC" & bank == 1
 
* SAD
tab unique_carrier_name year if origin == "SAD" & bank == 1
 
* SAF 1st Envoy11-4
tab unique_carrier_name year if origin == "SAF" & bank == 1
tab year quarter if origin == "SAF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SAF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SAF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAF" & unique_carrier_name =="Trans States Airlines"


* SAN 1st Mesa10-1
tab unique_carrier_name year if origin == "SAN" & bank == 1
tab year quarter if origin == "SAN" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "SAN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SAN" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "SAN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SAN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SAN" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "SAN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "SAN" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 199202, 199604) & origin == "SAN" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "SAN" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAN" & unique_carrier_name =="Envoy Air"

* SAT 1st Comair05-3
tab unique_carrier_name year if origin == "SAT" & bank == 1
tab year quarter if origin == "SAT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "SAT" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SAT" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SAT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SAT" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SAT" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SAT" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SAT" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SAT" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SAT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "SAT" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAT" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAT" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201001, 201304) & origin == "SAT" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAT" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAT" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SAT" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SAT" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "SAT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SAT" & unique_carrier_name =="Republic Airlines"

* SAV 1st Comair05-3
tab unique_carrier_name year if origin == "SAV" & bank == 1
tab year quarter if origin == "SAV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SAV" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SAV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SAV" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SAV" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "SAV" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SAV" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SAV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SAV" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "SAV" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SAV" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SAV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAV" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "SAV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SAV" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "SAV" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SAV" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAV" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SAV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "SAV" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SAV" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAV" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "SAV" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SAV" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SAV" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SAV" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SAV" & unique_carrier_name =="Republic Airlines"


* SAW
tab unique_carrier_name year if origin == "SAW" & bank == 1

* SBA 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "SBA" & bank == 1
tab year quarter if origin == "SBA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SBA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SBA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SBA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SBA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "SBA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SBA" & unique_carrier_name =="Envoy Air"

* SBD 
tab unique_carrier_name year if origin == "SBD" & bank == 1

* SBM 
tab unique_carrier_name year if origin == "SBM" & bank == 1

* SBN 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "SBN" & bank == 1
tab year quarter if origin == "SBN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SBN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SBN" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SBN" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SBN" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SBN" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SBN" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SBN" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SBN" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "SBN" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SBN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "SBN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SBN" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SBN" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SBN" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SBN" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SBN" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SBN" & unique_carrier_name =="Comair Inc."


* SBP 1st Mesa10-1
tab unique_carrier_name year if origin == "SBP" & bank == 1
tab year quarter if origin == "SBP" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SBP" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SBP" & unique_carrier_name =="SkyWest Airlines Inc."

* SBY 
tab unique_carrier_name year if origin == "SBY" & bank == 1
tab year quarter if origin == "SBY" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 200203, 200502) & origin == "SBY" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SBY" & unique_carrier_name =="Piedmont Airlines"

* SCC 
tab unique_carrier_name year if origin == "SCC" & bank == 1

* SCE 1st Comair05-3
tab unique_carrier_name year if origin == "SCE" & bank == 1
tab year quarter if origin == "SCE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SCE" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "SCE" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SCE" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SCE" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SCE" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SCE" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "SCE" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SCE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SCE" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "SCE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SCE" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SCE" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "SCE" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SCE" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SCE" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200504, 201001) & origin == "SCE" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SCE" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SCE" & unique_carrier_name =="Comair Inc."


* SCF 
tab unique_carrier_name year if origin == "SCF" & bank == 1

* SCH 
tab unique_carrier_name year if origin == "SCH" & bank == 1

* SCJ 
tab unique_carrier_name year if origin == "SCJ" & bank == 1

* SCK 
tab unique_carrier_name year if origin == "SCK" & bank == 1

* SCM 
tab unique_carrier_name year if origin == "SCM" & bank == 1

* SDF 1st Midway01-3
tab unique_carrier_name year if origin == "SDF" & bank == 1
tab year quarter if origin == "SDF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SDF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SDF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SDF" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "SDF" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SDF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SDF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "SDF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SDF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "SDF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SDF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SDF" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SDF" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SDF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SDF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SDF" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200503, 201502) & origin == "SDF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SDF" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SDF" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SDF" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SDF" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SDF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SDF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SDF" & unique_carrier_name =="Republic Airlines"

* SDM 
tab unique_carrier_name year if origin == "SDM" & bank == 1

* SDP 1st Peninsula17-3
tab unique_carrier_name year if origin == "SDP" & bank == 1
tab year quarter if origin == "SDP" & unique_carrier_name =="Peninsula Airways Inc."

* SDX 
tab unique_carrier_name year if origin == "SDX" & bank == 1

* SDY 
tab unique_carrier_name year if origin == "SDY" & bank == 1
tab year quarter if origin == "SDY" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "SDY" & unique_carrier_name =="Big Sky Airlines Inc."


* SEA 
tab unique_carrier_name year if origin == "SEA" & bank == 1
tab year quarter if origin == "SEA" & unique_carrier_name =="Markair Inc."
tab year quarter if origin == "SEA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SEA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 199202, 199604) & origin == "SEA" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 199502, 199803) & origin == "SEA" & unique_carrier_name =="Markair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SEA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SEA" & unique_carrier_name =="SkyWest Airlines Inc."

* SEE 
tab unique_carrier_name year if origin == "SEE" & bank == 1

* SEF 
tab unique_carrier_name year if origin == "SEF" & bank == 1

* SEG 
tab unique_carrier_name year if origin == "SEG" & bank == 1

* SER 
tab unique_carrier_name year if origin == "SER" & bank == 1

* SFB 
tab unique_carrier_name year if origin == "SFB" & bank == 1

* SFM 
tab unique_carrier_name year if origin == "SFM" & bank == 1

* SFO 1st Mesa10-1
tab unique_carrier_name year if origin == "SFO" & bank == 1
tab year quarter if origin == "SFO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SFO" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SFO" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SFO" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SFO" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SFO" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SFO" & unique_carrier_name =="SkyWest Airlines Inc."


* SFZ 
tab unique_carrier_name year if origin == "SFZ" & bank == 1

* SGF 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "SGF" & bank == 1
tab year quarter if origin == "SGF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SGF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SGF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SGF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SGF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SGF" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SGF" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SGF" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SGF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "SGF" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SGF" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SGF" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SGF" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SGF" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SGF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "SGF" & unique_carrier_name =="Comair Inc."


* SGH 
tab unique_carrier_name year if origin == "SGH" & bank == 1

* SGR 
tab unique_carrier_name year if origin == "SGR" & bank == 1

* SGU 
tab unique_carrier_name year if origin == "SGU" & bank == 1
tab year quarter if origin == "SGU" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SGU" & unique_carrier_name =="SkyWest Airlines Inc."

* SGY
tab unique_carrier_name year if origin == "SGY" & bank == 1

* SHD
tab unique_carrier_name year if origin == "SHD" & bank == 1
tab year quarter if origin == "SHD" & unique_carrier_name =="Colgan Air"

drop if inrange(new_year_quarter, 200203, 200504) & origin == "SHD" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SHD" & unique_carrier_name =="Colgan Air"

* SHG 
tab unique_carrier_name year if origin == "SHG" & bank == 1

* SHH 
tab unique_carrier_name year if origin == "SHH" & bank == 1

* SHR 
tab unique_carrier_name year if origin == "SHR" & bank == 1
tab year quarter if origin == "SHR" & unique_carrier_name =="Big Sky Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "SHR" & unique_carrier_name =="Big Sky Airlines Inc."

* SHV 1st Comair05-3
tab unique_carrier_name year if origin == "SHV" & bank == 1
tab year quarter if origin == "SHV" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "SHV" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SHV" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SHV" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SHV" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "SHV" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SHV" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SHV" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SHV" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SHV" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SHV" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200502) & origin == "SHV" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SHV" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SHV" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "SHV" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SHV" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SHV" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "SHV" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SHV" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SHV" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SHV" & unique_carrier_name =="Republic Airlines"

* SHX 
tab unique_carrier_name year if origin == "SHX" & bank == 1

* SIG 
tab unique_carrier_name year if origin == "SIG" & bank == 1

* SIT 
tab unique_carrier_name year if origin == "SIT" & bank == 1

* SJC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "SJC" & bank == 1
tab year quarter if origin == "SJC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SJC" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "SJC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SJC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SJC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SJC" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "SJC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200103, 200402) & origin == "SJC" & unique_carrier_name =="Midway Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SJC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200404, 200804) & origin == "SJC" & unique_carrier_name =="Aloha Airlines Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SJC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SJC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SJC" & unique_carrier_name =="Envoy Air"

* SJN 
tab unique_carrier_name year if origin == "SJN" & bank == 1

* SJT 1st Executive11-4, Envoy11-4
tab unique_carrier_name year if origin == "SJT" & bank == 1
tab year quarter if origin == "SJT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "SJT" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SJT" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "SJT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "SJT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SJT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SJT" & unique_carrier_name =="SkyWest Airlines Inc."

* SJU 1st Executive11-4
tab unique_carrier_name year if origin == "SJU" & bank == 1
tab year quarter if origin == "SJU" & unique_carrier_name =="Executive Airlines"

* SKA 
tab unique_carrier_name year if origin == "SKA" & bank == 1

* SKF 
tab unique_carrier_name year if origin == "SKF" & bank == 1

* SKJ 
tab unique_carrier_name year if origin == "SKJ" & bank == 1

* SKK 
tab unique_carrier_name year if origin == "SKK" & bank == 1

* SKW 
tab unique_carrier_name year if origin == "SKW" & bank == 1

* SLC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "SLC" & bank == 1
tab year quarter if origin == "SLC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SLC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SLC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SLC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SLC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SLC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SLC" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SLC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SLC" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "SLC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SLC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SLC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SLC" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SLC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SLC" & unique_carrier_name =="Republic Airlines"

* SLE 
tab unique_carrier_name year if origin == "SLE" & bank == 1
tab year quarter if origin == "SLE" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SLE" & unique_carrier_name =="SkyWest Airlines Inc."

* SLK 
tab unique_carrier_name year if origin == "SLK" & bank == 1

* SLN 
tab unique_carrier_name year if origin == "SLN" & bank == 1
tab year quarter if origin == "SLN" & unique_carrier_name =="Seaport Airlines, Inc."

drop if inrange(new_year_quarter, 201601, 201902) & origin == "SLN" & unique_carrier_name =="Seaport Airlines, Inc."


* SLQ 
tab unique_carrier_name year if origin == "SLQ" & bank == 1

* SLT 
tab unique_carrier_name year if origin == "SLT" & bank == 1

* SMF 1st Aloha04-4
tab unique_carrier_name year if origin == "SMF" & bank == 1
tab year quarter if origin == "SMF" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "SMF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SMF" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SMF" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SMF" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "SMF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "SMF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SMF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "SMF" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SMF" & unique_carrier_name =="Envoy Air"

* SMK 
tab unique_carrier_name year if origin == "SMK" & bank == 1

* SMN 
tab unique_carrier_name year if origin == "SMN" & bank == 1

* SMO 
tab unique_carrier_name year if origin == "SMO" & bank == 1

* SMX 
tab unique_carrier_name year if origin == "SMX" & bank == 1
tab year quarter if origin == "SMX" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SMX" & unique_carrier_name =="SkyWest Airlines Inc."

* SNA 1st Aloha04-4
tab unique_carrier_name year if origin == "SNA" & bank == 1
tab year quarter if origin == "SNA" & unique_carrier_name =="Aloha Airlines Inc."
tab year quarter if origin == "SNA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SNA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SNA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 201001, 201304) & origin == "SNA" & unique_carrier_name =="Mesa Airlines Inc."

* SNP 1st Peninsula17-3
tab unique_carrier_name year if origin == "SNP" & bank == 1
tab year quarter if origin == "SNP" & unique_carrier_name =="Peninsula Airways Inc."

* SNS 
tab unique_carrier_name year if origin == "SNS" & bank == 1

* SNY 
tab unique_carrier_name year if origin == "SNY" & bank == 1

* SOP 
tab unique_carrier_name year if origin == "SOP" & bank == 1

* SOV 
tab unique_carrier_name year if origin == "SOV" & bank == 1

* SOW 
tab unique_carrier_name year if origin == "SOW" & bank == 1

* SPB 
tab unique_carrier_name year if origin == "SPB" & bank == 1

* SPI 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "SPI" & bank == 1
tab year quarter if origin == "SPI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SPI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SPI" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "SPI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SPI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "SPI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SPI" & unique_carrier_name =="Trans States Airlines"

* SPN 
tab unique_carrier_name year if origin == "SPN" & bank == 1

* SPS 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "SPS" & bank == 1
tab year quarter if origin == "SPS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SPS" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "SPS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SPS" & unique_carrier_name =="SkyWest Airlines Inc."

* SQV 
tab unique_carrier_name year if origin == "SQV" & bank == 1

* SRQ 1st Comair05-3
tab unique_carrier_name year if origin == "SRQ" & bank == 1
tab year quarter if origin == "SRQ" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SRQ" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SRQ" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SRQ" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SRQ" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SRQ" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SRQ" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SRQ" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "SRQ" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SRQ" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SRQ" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 201001, 201304) & origin == "SRQ" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SRQ" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SRQ" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SRQ" & unique_carrier_name =="Republic Airlines"

* SRV 
tab unique_carrier_name year if origin == "SRV" & bank == 1

* SSB 
tab unique_carrier_name year if origin == "SSB" & bank == 1

* SSC
tab unique_carrier_name year if origin == "SSC" & bank == 1

* SSI 
tab unique_carrier_name year if origin == "SSI" & bank == 1

* STC 1st Mesaba05-4
tab unique_carrier_name year if origin == "STC" & bank == 1
tab year quarter if origin == "STC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "STC" & unique_carrier_name =="SkyWest Airlines Inc."

* STE 
tab unique_carrier_name year if origin == "STE" & bank == 1

* STF 
tab unique_carrier_name year if origin == "STF" & bank == 1

* STG 1st Peninsula17-3
tab unique_carrier_name year if origin == "STG" & bank == 1
tab year quarter if origin == "STG" & unique_carrier_name =="Peninsula Airways Inc."

* STJ 
tab unique_carrier_name year if origin == "STJ" & bank == 1

* STL 1st Trans State02-4
tab unique_carrier_name year if origin == "STL" & bank == 1
tab year quarter if origin == "STL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "STL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "STL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "STL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "STL" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "STL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "STL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "STL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "STL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "STL" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200101, 200503) & origin == "STL" & unique_carrier_name =="Regions Air, Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "STL" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "STL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "STL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "STL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "STL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "STL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "STL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "STL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "STL" & unique_carrier_name =="Republic Airlines"

* STP 
tab unique_carrier_name year if origin == "STP" & bank == 1

* STS 
tab unique_carrier_name year if origin == "STS" & bank == 1
tab year quarter if origin == "STS" & unique_carrier_name =="SkyWest Airlines Inc."

* STT 1st Executive11-4
tab unique_carrier_name year if origin == "STT" & bank == 1
tab year quarter if origin == "STT" & unique_carrier_name =="Executive Airlines"

* STX 1st Executive11-4
tab unique_carrier_name year if origin == "STX" & bank == 1
tab year quarter if origin == "STX" & unique_carrier_name =="Executive Airlines"

* SUA 
tab unique_carrier_name year if origin == "SUA" & bank == 1

* SUE 
tab unique_carrier_name year if origin == "SUE" & bank == 1

* SUN 
tab unique_carrier_name year if origin == "SUN" & bank == 1
tab year quarter if origin == "SUN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SUN" & unique_carrier_name =="SkyWest Airlines Inc."

* SUO 
tab unique_carrier_name year if origin == "SUO" & bank == 1

* SUS 1st Trans State02-4
tab unique_carrier_name year if origin == "SUS" & bank == 1
tab year quarter if origin == "SUS" & unique_carrier_name =="Trans States Airlines"

* SUU 
tab unique_carrier_name year if origin == "SUU" & bank == 1

* SUX 1st Mesaba05-4
tab unique_carrier_name year if origin == "SUX" & bank == 1
tab year quarter if origin == "SUX" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SUX" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SUX" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201104, 201603) & origin == "SUX" & unique_carrier_name =="Envoy Air"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "SUX" & unique_carrier_name =="Endeavor Air Inc."

* SVA
tab unique_carrier_name year if origin == "SVA" & bank == 1

* SVC 
tab unique_carrier_name year if origin == "SVC" & bank == 1

* SVH 
tab unique_carrier_name year if origin == "SVH" & bank == 1

* SVN 
tab unique_carrier_name year if origin == "SVN" & bank == 1

* SVS 
tab unique_carrier_name year if origin == "SVS" & bank == 1

* SVW 
tab unique_carrier_name year if origin == "SVW" & bank == 1

* SWD 
tab unique_carrier_name year if origin == "SWD" & bank == 1

* SWF 1st Comair05-3
tab unique_carrier_name year if origin == "SWF" & bank == 1
tab year quarter if origin == "SWF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SWF" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SWF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SWF" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "SWF" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "SWF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SWF" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200502) & origin == "SWF" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SWF" & unique_carrier_name =="Piedmont Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "SWF" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "SWF" & unique_carrier_name =="Comair Inc."


* SWO 1st Endeavor12-2
tab unique_carrier_name year if origin == "SWO" & bank == 1
tab year quarter if origin == "SWO" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SWO" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SWO" & unique_carrier_name =="Mesa Airlines Inc."

* SXP 
tab unique_carrier_name year if origin == "SXP" & bank == 1

* SXQ
tab unique_carrier_name year if origin == "SXQ" & bank == 1

* SYA 
tab unique_carrier_name year if origin == "SYA" & bank == 1

* SYB 
tab unique_carrier_name year if origin == "SYB" & bank == 1

* SYR 1st Trans State02-4
tab unique_carrier_name year if origin == "SYR" & bank == 1
tab year quarter if origin == "SYR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "SYR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "SYR" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "SYR" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "SYR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "SYR" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "SYR" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "SYR" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "SYR" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "SYR" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "SYR" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "SYR" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "SYR" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200504) & origin == "SYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SYR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "SYR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SYR" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "SYR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "SYR" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "SYR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "SYR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "SYR" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "SYR" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SYR" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "SYR" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "SYR" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "SYR" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "SYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "SYR" & unique_carrier_name =="Republic Airlines"

* SZL 
tab unique_carrier_name year if origin == "SZL" & bank == 1

* TAL 
tab unique_carrier_name year if origin == "TAL" & bank == 1

* TAV 
tab unique_carrier_name year if origin == "TAV" & bank == 1

* TBN 
tab unique_carrier_name year if origin == "TBN" & bank == 1
tab year quarter if origin == "TBN" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "TBN" & unique_carrier_name =="Regions Air, Inc."

* TCL 
tab unique_carrier_name year if origin == "TCL" & bank == 1
tab year quarter if origin == "TCL" & unique_carrier_name =="Endeavor Air Inc."

drop if inrange(new_year_quarter, 201202, 201601) & origin == "TCL" & unique_carrier_name =="Endeavor Air Inc."

* TCM 
tab unique_carrier_name year if origin == "TCM" & bank == 1

* TCT 
tab unique_carrier_name year if origin == "TCT" & bank == 1

* TDF 
tab unique_carrier_name year if origin == "TDF" & bank == 1

* TEB 
tab unique_carrier_name year if origin == "TEB" & bank == 1

* TEH 
tab unique_carrier_name year if origin == "TEH" & bank == 1

* TEK 
tab unique_carrier_name year if origin == "TEK" & bank == 1

* TEX 1st Mesa10-1
tab unique_carrier_name year if origin == "TEX" & bank == 1
tab year quarter if origin == "TEX" & unique_carrier_name =="Mesa Airlines Inc."

* THV 
tab unique_carrier_name year if origin == "THV" & bank == 1

* TIK
tab unique_carrier_name year if origin == "TIK" & bank == 1

* TIQ 
tab unique_carrier_name year if origin == "TIQ" & bank == 1

* TIW
tab unique_carrier_name year if origin == "TIW" & bank == 1
 
* TIX 
tab unique_carrier_name year if origin == "TIX" & bank == 1

* TKA 
tab unique_carrier_name year if origin == "TKA" & bank == 1

* TKE 
tab unique_carrier_name year if origin == "TKE" & bank == 1

* TKF 
tab unique_carrier_name year if origin == "TKF" & bank == 1

* TKI
tab unique_carrier_name year if origin == "TKI" & bank == 1

* TKJ 
tab unique_carrier_name year if origin == "TKJ" & bank == 1

* TKL 
tab unique_carrier_name year if origin == "TKL" & bank == 1

* TLA 
tab unique_carrier_name year if origin == "TLA" & bank == 1

* TLF 
tab unique_carrier_name year if origin == "TLF" & bank == 1

* TLH 1st Comair05-3
tab unique_carrier_name year if origin == "TLH" & bank == 1
tab year quarter if origin == "TLH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TLH" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TLH" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TLH" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TLH" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TLH" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TLH" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TLH" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "TLH" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "TLH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "TLH" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "TLH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TLH" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "TLH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TLH" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TLH" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "TLH" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TLH" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TLH" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201601) & origin == "TLH" & unique_carrier_name =="Executive Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TLH" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TLH" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TLH" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "TLH" & unique_carrier_name =="Republic Airlines"

* TLJ
tab unique_carrier_name year if origin == "TLJ" & bank == 1

* TLT 
tab unique_carrier_name year if origin == "TLT" & bank == 1

* TMB 
tab unique_carrier_name year if origin == "TMB" & bank == 1

* TNC
tab unique_carrier_name year if origin == "TNC" & bank == 1

* TNK 
tab unique_carrier_name year if origin == "TNK" & bank == 1

* TOG 
tab unique_carrier_name year if origin == "TOG" & bank == 1

* TOL 1st Trans State02-4
tab unique_carrier_name year if origin == "TOL" & bank == 1
tab year quarter if origin == "TOL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TOL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TOL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TOL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TOL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TOL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "TOL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "TOL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TOL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TOL" & unique_carrier_name =="Comair Inc."


* TPA 1st Midway01-3
tab unique_carrier_name year if origin == "TPA" & bank == 1
tab year quarter if origin == "TPA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TPA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TPA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TPA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TPA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TPA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TPA" & unique_carrier_name =="Midway Airlines Inc."
tab year quarter if origin == "TPA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TPA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "TPA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "TPA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "TPA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TPA" & unique_carrier_name =="PSA Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "TPA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TPA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TPA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TPA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TPA" & unique_carrier_name =="Comair Inc."


* TPH 
tab unique_carrier_name year if origin == "TPH" & bank == 1

* TPL 
tab unique_carrier_name year if origin == "TPL" & bank == 1

* TRI 1st Trans State, Air Wisconsin02-4
tab unique_carrier_name year if origin == "TRI" & bank == 1
tab year quarter if origin == "TRI" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TRI" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TRI" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TRI" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "TRI" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TRI" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "TRI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TRI" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "TRI" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TRI" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200101, 200503) & origin == "TRI" & unique_carrier_name =="Regions Air, Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "TRI" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "TRI" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TRI" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TRI" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TRI" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TRI" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TRI" & unique_carrier_name =="Comair Inc."

* TRM
tab unique_carrier_name year if origin == "TRM" & bank == 1

* TSG 
tab unique_carrier_name year if origin == "TSG" & bank == 1

* TSM 
tab unique_carrier_name year if origin == "TSM" & bank == 1

* TSS 
tab unique_carrier_name year if origin == "TSS" & bank == 1

* TTD 
tab unique_carrier_name year if origin == "TTD" & bank == 1

* TTN 
tab unique_carrier_name year if origin == "TTN" & bank == 1
tab year quarter if origin == "TTN" & unique_carrier_name =="Boston-Maine Airways"
tab year quarter if origin == "TTN" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TTN" & unique_carrier_name =="Eastwind Airlines Inc."

drop if inrange(new_year_quarter, 200801, 201004) & origin == "TTN" & unique_carrier_name =="Boston-Maine Airways"
drop if inrange(new_year_quarter, 200503, 201502) & origin == "TTN" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 199903, 200202) & origin == "TTN" & unique_carrier_name =="Eastwind Airlines Inc."



* TUL 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "TUL" & bank == 1
tab year quarter if origin == "TUL" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TUL" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "TUL" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TUL" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TUL" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TUL" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TUL" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TUL" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TUL" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "TUL" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TUL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "TUL" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TUL" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200503, 201502) & origin == "TUL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "TUL" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TUL" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TUL" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TUL" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TUL" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TUL" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201204, 201503) & origin == "TUL" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 201601, 202001) & origin == "TUL" & unique_carrier_name =="Republic Airlines"

* TUP 1st Mesaba05-4
tab unique_carrier_name year if origin == "TUP" & bank == 1
tab year quarter if origin == "TUP" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TUP" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "TUP" & unique_carrier_name =="Endeavor Air Inc."

* TUS 1st Mesa10-1
tab unique_carrier_name year if origin == "TUS" & bank == 1
tab year quarter if origin == "TUS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TUS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TUS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TUS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TUS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TUS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "TUS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TUS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TUS" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 201104, 201603) & origin == "TUS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TUS" & unique_carrier_name =="Endeavor Air Inc."


* TVC 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "TVC" & bank == 1
tab year quarter if origin == "TVC" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TVC" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TVC" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TVC" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TVC" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TVC" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TVC" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "TVC" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TVC" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 201601, 202001) & origin == "TVC" & unique_carrier_name =="Republic Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TVC" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TVC" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 200503, 201502) & origin == "TVC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "TVC" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TVC" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TVC" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TVC" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TVC" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TVC" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "TVC" & unique_carrier_name =="Republic Airlines"

* TVF 1st Mesaba05-4
tab unique_carrier_name year if origin == "TVF" & bank == 1
tab year quarter if origin == "TVF" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TVF" & unique_carrier_name =="Mesaba Airlines"

drop if inrange(new_year_quarter, 201202, 201601) & origin == "TVF" & unique_carrier_name =="Endeavor Air Inc."

* TVI 
tab unique_carrier_name year if origin == "TVI" & bank == 1

* TVL
tab unique_carrier_name year if origin == "TVL" & bank == 1
 
* TWA 
tab unique_carrier_name year if origin == "TWA" & bank == 1

* TWD 
tab unique_carrier_name year if origin == "TWD" & bank == 1

* TWE 
tab unique_carrier_name year if origin == "TWE" & bank == 1

* TWF 
tab unique_carrier_name year if origin == "TWF" & bank == 1
tab year quarter if origin == "TWF" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "TWF" & unique_carrier_name =="SkyWest Airlines Inc."

* TXK 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "TXK" & bank == 1
tab year quarter if origin == "TXK" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "TXK" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TXK" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "TXK" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "TXK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TXK" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TXK" & unique_carrier_name =="SkyWest Airlines Inc."

* TYE 
tab unique_carrier_name year if origin == "TYE" & bank == 1

* TYR 1st Executive, Envoy11-4
tab unique_carrier_name year if origin == "TYR" & bank == 1
tab year quarter if origin == "TYR" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "TYR" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TYR" & unique_carrier_name =="Executive Airlines"
tab year quarter if origin == "TYR" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "TYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TYR" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TYR" & unique_carrier_name =="SkyWest Airlines Inc."

* TYS 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "TYS" & bank == 1
tab year quarter if origin == "TYS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "TYS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "TYS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "TYS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "TYS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "TYS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "TYS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "TYS" & unique_carrier_name =="Piedmont Airlines"
tab year quarter if origin == "TYS" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "TYS" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "TYS" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200203, 200802) & origin == "TYS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TYS" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200203, 200502) & origin == "TYS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "TYS" & unique_carrier_name =="Piedmont Airlines"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TYS" & unique_carrier_name =="SkyWest Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "TYS" & unique_carrier_name =="Trans States Airlines"


drop if inrange(new_year_quarter, 200503, 201502) & origin == "TYS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "TYS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "TYS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TYS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "TYS" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "TYS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "TYS" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "TYS" & unique_carrier_name =="Republic Airlines"

* UAM 
tab unique_carrier_name year if origin == "UAM" & bank == 1

* UBF 
tab unique_carrier_name year if origin == "UBF" & bank == 1

* UCA 
tab unique_carrier_name year if origin == "UCA" & bank == 1

* UDD 
tab unique_carrier_name year if origin == "UDD" & bank == 1

* UES 
tab unique_carrier_name year if origin == "UES" & bank == 1

* UGB 
tab unique_carrier_name year if origin == "UGB" & bank == 1

* UGI 
tab unique_carrier_name year if origin == "UGI" & bank == 1

* UGN
tab unique_carrier_name year if origin == "UGN" & bank == 1

* UGS 
tab unique_carrier_name year if origin == "UGS" & bank == 1

* UIN 1st Air Wisconsin02-4
tab unique_carrier_name year if origin == "UIN" & bank == 1
tab year quarter if origin == "UIN" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "UIN" & unique_carrier_name =="Regions Air, Inc."
tab year quarter if origin == "UIN" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200101, 200503) & origin == "UIN" & unique_carrier_name =="Regions Air, Inc."


* UMB 
tab unique_carrier_name year if origin == "UMB" & bank == 1

* UMT 
tab unique_carrier_name year if origin == "UMT" & bank == 1

* UNK 
tab unique_carrier_name year if origin == "UNK" & bank == 1

* UOX 
tab unique_carrier_name year if origin == "UOX" & bank == 1

* USA 
tab unique_carrier_name year if origin == "USA" & bank == 1

* UST 
tab unique_carrier_name year if origin == "UST" & bank == 1

* UTM 
tab unique_carrier_name year if origin == "UTM" & bank == 1

* UTO 
tab unique_carrier_name year if origin == "UTO" & bank == 1

* UUK
tab unique_carrier_name year if origin == "UUK" & bank == 1

* UXA 
tab unique_carrier_name year if origin == "UXA" & bank == 1

* UXM 
tab unique_carrier_name year if origin == "UXM" & bank == 1

* UXO 
tab unique_carrier_name year if origin == "UXO" & bank == 1

* UXP 
tab unique_carrier_name year if origin == "UXP" & bank == 1

* UXR 
tab unique_carrier_name year if origin == "UXR" & bank == 1


* VAD 
tab unique_carrier_name year if origin == "VAD" & bank == 1

* VAK 
tab unique_carrier_name year if origin == "VAK" & bank == 1

* VBG 
tab unique_carrier_name year if origin == "VBG" & bank == 1

* VCT
tab unique_carrier_name year if origin == "VCT" & bank == 1
tab year quarter if origin == "VCT" & unique_carrier_name =="Colgan Air"
tab year quarter if origin == "VCT" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200203, 200504) & origin == "VCT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200403, 200802) & origin == "VCT" & unique_carrier_name =="Colgan Air"
drop if inrange(new_year_quarter, 200204, 200804) & origin == "VCT" & unique_carrier_name =="SkyWest Airlines Inc."

* VCV 
tab unique_carrier_name year if origin == "VCV" & bank == 1

* VDZ 
tab unique_carrier_name year if origin == "VDZ" & bank == 1

* VEE 
tab unique_carrier_name year if origin == "VEE" & bank == 1

* VEL 
tab unique_carrier_name year if origin == "VEL" & bank == 1
tab year quarter if origin == "VEL" & unique_carrier_name =="SkyWest Airlines Inc."

* VGC 
tab unique_carrier_name year if origin == "VGC" & bank == 1

* VGT 
tab unique_carrier_name year if origin == "VGT" & bank == 1

* VIK 
tab unique_carrier_name year if origin == "VIK" & bank == 1

* VIS 
tab unique_carrier_name year if origin == "VIS" & bank == 1
tab year quarter if origin == "VIS" & unique_carrier_name =="Air Midwest Inc."
tab year quarter if origin == "VIS" & unique_carrier_name =="Seaport Airlines, Inc."
tab year quarter if origin == "VIS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200802, 201101) & origin == "VIS" & unique_carrier_name =="Air Midwest Inc."
drop if inrange(new_year_quarter, 201601, 201902) & origin == "VIS" & unique_carrier_name =="Seaport Airlines, Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "VIS" & unique_carrier_name =="SkyWest Airlines Inc."

* VLD 
tab unique_carrier_name year if origin == "VLD" & bank == 1

* VNY 
tab unique_carrier_name year if origin == "VNY" & bank == 1

* VOK 
tab unique_carrier_name year if origin == "VOK" & bank == 1

* VPS 1st Comair05-3
tab unique_carrier_name year if origin == "VPS" & bank == 1
tab year quarter if origin == "VPS" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "VPS" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "VPS" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "VPS" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "VPS" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "VPS" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "VPS" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "VPS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "VPS" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200504, 201001) & origin == "VPS" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "VPS" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "VPS" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "VPS" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 201203, 201502) & origin == "VPS" & unique_carrier_name =="Comair Inc."


* VPZ 
tab unique_carrier_name year if origin == "VPZ" & bank == 1

* VQS 
tab unique_carrier_name year if origin == "VQS" & bank == 1

* VRB 
tab unique_carrier_name year if origin == "VRB" & bank == 1

* VUJ 
tab unique_carrier_name year if origin == "VUJ" & bank == 1

* VUO 
tab unique_carrier_name year if origin == "VUO" & bank == 1

* VWD 
tab unique_carrier_name year if origin == "VWD" & bank == 1

* VWE 
tab unique_carrier_name year if origin == "VWE" & bank == 1

* VWK 
tab unique_carrier_name year if origin == "VWK" & bank == 1

* VWN 
tab unique_carrier_name year if origin == "VWN" & bank == 1

* VWS 
tab unique_carrier_name year if origin == "VWS" & bank == 1

* VWZ 
tab unique_carrier_name year if origin == "VWZ" & bank == 1

* VZL
tab unique_carrier_name year if origin == "VZL" & bank == 1
 
* VZM 
tab unique_carrier_name year if origin == "VZM" & bank == 1

* VZN
tab unique_carrier_name year if origin == "VZN" & bank == 1
 
* VZO 
tab unique_carrier_name year if origin == "VZO" & bank == 1

* VZR 
tab unique_carrier_name year if origin == "VZR" & bank == 1

* VZY 
tab unique_carrier_name year if origin == "VZY" & bank == 1


* WAA 
tab unique_carrier_name year if origin == "WAA" & bank == 1

* WAR 
tab unique_carrier_name year if origin == "WAR" & bank == 1

* WBB 
tab unique_carrier_name year if origin == "WBB" & bank == 1

* WBQ 
tab unique_carrier_name year if origin == "WBQ" & bank == 1

* WCR 
tab unique_carrier_name year if origin == "WCR" & bank == 1

* WDB 
tab unique_carrier_name year if origin == "WDB" & bank == 1

* WDG 
tab unique_carrier_name year if origin == "WDG" & bank == 1

* WFB 
tab unique_carrier_name year if origin == "WFB" & bank == 1

* WGO 
tab unique_carrier_name year if origin == "WGO" & bank == 1

* WHD 
tab unique_carrier_name year if origin == "WHD" & bank == 1

* WJF 
tab unique_carrier_name year if origin == "WJF" & bank == 1

* WKK 
tab unique_carrier_name year if origin == "WKK" & bank == 1

* WLK 
tab unique_carrier_name year if origin == "WLK" & bank == 1

* WMK 
tab unique_carrier_name year if origin == "WMK" & bank == 1

* WMO 
tab unique_carrier_name year if origin == "WMO" & bank == 1

* WNA 
tab unique_carrier_name year if origin == "WNA" & bank == 1

* WOW 
tab unique_carrier_name year if origin == "WOW" & bank == 1

* WQJ 
tab unique_carrier_name year if origin == "WQJ" & bank == 1

* WQR
tab unique_carrier_name year if origin == "WQR" & bank == 1

* WQZ
tab unique_carrier_name year if origin == "WQZ" & bank == 1

* WRB 
tab unique_carrier_name year if origin == "WRB" & bank == 1

* WRG
tab unique_carrier_name year if origin == "WRG" & bank == 1

* WRI 
tab unique_carrier_name year if origin == "WRI" & bank == 1

* WRL 
tab unique_carrier_name year if origin == "WRL" & bank == 1

* WSG 
tab unique_carrier_name year if origin == "WSG" & bank == 1

* WSM 
tab unique_carrier_name year if origin == "WSM" & bank == 1

* WSN 
tab unique_carrier_name year if origin == "WSN" & bank == 1

* WST 
tab unique_carrier_name year if origin == "WST" & bank == 1

* WSX
tab unique_carrier_name year if origin == "WSX" & bank == 1
 
* WTK
tab unique_carrier_name year if origin == "WTK" & bank == 1

* WTL 
tab unique_carrier_name year if origin == "WTL" & bank == 1

* WVL
tab unique_carrier_name year if origin == "WVL" & bank == 1

* WWA 
tab unique_carrier_name year if origin == "WWA" & bank == 1

* WWD 
tab unique_carrier_name year if origin == "WWD" & bank == 1

* WWP
tab unique_carrier_name year if origin == "WWP" & bank == 1

* WWT 
tab unique_carrier_name year if origin == "WWT" & bank == 1

* WYB 
tab unique_carrier_name year if origin == "WYB" & bank == 1

* WYS 
tab unique_carrier_name year if origin == "WYS" & bank == 1

* XNA 1st Trans State02-4
tab unique_carrier_name year if origin == "XNA" & bank == 1
tab year quarter if origin == "XNA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
tab year quarter if origin == "XNA" & unique_carrier_name =="Comair Inc."
tab year quarter if origin == "XNA" & unique_carrier_name =="Endeavor Air Inc."
tab year quarter if origin == "XNA" & unique_carrier_name =="Envoy Air"
tab year quarter if origin == "XNA" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "XNA" & unique_carrier_name =="Mesaba Airlines"
tab year quarter if origin == "XNA" & unique_carrier_name =="PSA Airlines Inc."
tab year quarter if origin == "XNA" & unique_carrier_name =="Republic Airlines"
tab year quarter if origin == "XNA" & unique_carrier_name =="SkyWest Airlines Inc."
tab year quarter if origin == "XNA" & unique_carrier_name =="Trans States Airlines"

drop if inrange(new_year_quarter, 200204, 200804) & origin == "XNA" & unique_carrier_name =="Air Wisconsin Airlines Corp"
drop if inrange(new_year_quarter, 200203, 200802) & origin == "XNA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200403, 200802) & origin == "XNA" & unique_carrier_name =="PSA Airlines Inc."
drop if inrange(new_year_quarter, 200204, 200804) & origin == "XNA" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200503, 201502) & origin == "XNA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 200504, 201001) & origin == "XNA" & unique_carrier_name =="Mesaba Airlines"
drop if inrange(new_year_quarter, 201001, 201304) & origin == "XNA" & unique_carrier_name =="Mesa Airlines Inc."
drop if inrange(new_year_quarter, 201104, 201603) & origin == "XNA" & unique_carrier_name =="Envoy Air"
drop if inrange(new_year_quarter, 201104, 201603) & origin == "XNA" & unique_carrier_name =="Trans States Airlines"
drop if inrange(new_year_quarter, 201202, 201601) & origin == "XNA" & unique_carrier_name =="Endeavor Air Inc."
drop if inrange(new_year_quarter, 200503, 201001) & origin == "XNA" & unique_carrier_name =="Comair Inc."
drop if inrange(new_year_quarter, 201601, 202001) & origin == "XNA" & unique_carrier_name =="Republic Airlines"

* XWA 
tab unique_carrier_name year if origin == "XWA" & bank == 1

* XWC
tab unique_carrier_name year if origin == "XWC" & bank == 1

* XWS 
tab unique_carrier_name year if origin == "XWS" & bank == 1

* XXV 
tab unique_carrier_name year if origin == "XXV" & bank == 1

* XXX
tab unique_carrier_name year if origin == "XXX" & bank == 1

* YAK 
tab unique_carrier_name year if origin == "YAK" & bank == 1

* YIP 
tab unique_carrier_name year if origin == "YIP" & bank == 1

* YKM
tab unique_carrier_name year if origin == "YKM" & bank == 1
tab year quarter if origin == "YKM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "YKM" & unique_carrier_name =="SkyWest Airlines Inc."

* YKN 
tab unique_carrier_name year if origin == "YKN" & bank == 1

* YNG
tab unique_carrier_name year if origin == "YNG" & bank == 1
 
* YUM 1st Mesa10-1
tab unique_carrier_name year if origin == "YUM" & bank == 1
tab year quarter if origin == "YUM" & unique_carrier_name =="Mesa Airlines Inc."
tab year quarter if origin == "YUM" & unique_carrier_name =="SkyWest Airlines Inc."

drop if inrange(new_year_quarter, 200204, 200804) & origin == "YUM" & unique_carrier_name =="SkyWest Airlines Inc."

* ZNC 
tab unique_carrier_name year if origin == "ZNC" & bank == 1

* ZXF 
tab unique_carrier_name year if origin == "ZXF" & bank == 1

* ZXM 
tab unique_carrier_name year if origin == "ZXM" & bank == 1

* ZXU 
tab unique_carrier_name year if origin == "ZXU" & bank == 1

* ZZV 
tab unique_carrier_name year if origin == "ZZV" & bank == 1



