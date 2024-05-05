

* Type1
gen be_filing = 0
gen af_filing_be_emer = 0
gen af_emer = 0

* Type2
gen af_filing_be_shut = 0
gen af_shut = 0

* Type3
gen be_shut =0


*****Type 1
* Mesa 2010q1, 2011q1
replace af_filing_be_emer = 1 if origin == "ABQ" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "ABQ" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "BFL" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "BFL" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "CPR" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "CPR" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "ELP'" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "ELP" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "FAY" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "FAY" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "FLG" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "FLG" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "LBB" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "LBB" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "LGB" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "LGB" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "MRY" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "MRY" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "OAJ" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "OAJ" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "PSP" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "PSP" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "SAN" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "SAN" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "SBP" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "SBP" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "SFO" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "SFO" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "TEX" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "TEX" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "TUS" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "TUS" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)

replace af_filing_be_emer = 1 if origin == "YUM" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201001 & new_year_quarter < 201101)
replace af_emer = 1 if origin == "YUM" & unique_carrier_name == "Mesa Airlines Inc." & (new_year_quarter >= 201101 & new_year_quarter < 201401)




* Envoy 2011q4, 2013q4
replace af_filing_be_emer = 1 if origin == "ABI" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "ABI" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "ACT" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "ACT" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "AMA" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "AMA" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "BRO" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "BRO" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "CLL" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "CLL" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "CRP" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "CRP" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "CSG" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "CSG" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "DAL" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "DAL" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "FWH" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "FWH" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "GNV" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "GNV" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "GRI" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "GRI" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "GGG" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "GGG" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "GRK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "GRK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "LAW" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "LAW" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "LCH" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "LCH" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "LRD" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "LRD" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "MAF" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "MAF" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "MFE" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "MFE" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "MHK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "MHK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "ROW" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "ROW" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "SAF" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "SAF" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "SPS" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "SPS" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "SJT" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "SJT" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "TXK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "TXK" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)

replace af_filing_be_emer = 1 if origin == "TYR" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201104 & new_year_quarter < 201304)
replace af_emer = 1 if origin == "TYR" & unique_carrier_name == "Envoy Air" & (new_year_quarter >= 201304 & new_year_quarter < 201604)



* Mesaba 2005q4, 2007q2
replace af_filing_be_emer = 1 if origin == "ABR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ABR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "APN" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "APN" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "AEX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "AEX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ALO" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ALO" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ATY" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ATY" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "BJI" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "BJI" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "BRD" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "BRD" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CHO" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CHO" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CIU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CIU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CMX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CMX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "DBQ" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "DBQ" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "DLH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "DLH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "DVL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "DVL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "EAU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "EAU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ESC" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ESC" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "FOD" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "FOD" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "GFK" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "GFK" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "GLH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "GLH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "GTR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "GTR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "INL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "INL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "JMS" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "JMS" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "LBE" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "LBE" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "LFT" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "LFT" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "LSE" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "LSE" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MKG" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MKG" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MCW" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MCW" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MLU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MLU" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MQT" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MQT" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MSL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MSL" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PAH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PAH" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PIB" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PIB" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PIR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PIR" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PLN" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PLN" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "RHI" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "RHI" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "RST" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "RST" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "STC" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "STC" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SUX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SUX" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "TUP" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "TUP" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "TVF" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200504 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "TVF" & unique_carrier_name == "Mesaba Airlines" & (new_year_quarter >= 200702 & new_year_quarter < 201002)



* Comair 2005q3, 2007q2

replace af_filing_be_emer = 1 if origin == "MSY" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MSY" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MGM" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MGM" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ABE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ABE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ACK" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ACK" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "AGS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "AGS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "AUS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "AUS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "AVL" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "AVL" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "AVP" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "AVP" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "BGR" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "BGR" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "BTR" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "BTR" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "BTV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "BTV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CAE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CAE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CHA" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CHA" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CKB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CKB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "CLT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "CLT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "DAB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "DAB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "DFW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "DFW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "EYW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "EYW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "FNT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "FNT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "GPT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "GPT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "HOU" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "HOU" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "HPN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "HPN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "HSV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "HSV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "HTS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "HTS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "HVN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "HVN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "IAH" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "IAH" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ILM" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ILM" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "ISP" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "ISP" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "JFK" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "JFK" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MCN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MCN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MDT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MDT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MDW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MDW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MIA" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MIA" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MLB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MLB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MHT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MHT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "MOB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "MOB" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PBI" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PBI" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PFN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PFN" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PHF" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PHF" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PHX" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PHX" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "PNS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "PNS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "RSW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "RSW" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SAT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SAT" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SAV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SAV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SCE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SCE" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SHV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SHV" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SRQ" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SRQ" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "SWF" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "SWF" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "TLH" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "TLH" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)

replace af_filing_be_emer = 1 if origin == "VPS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200503 & new_year_quarter < 200702)
replace af_emer = 1 if origin == "VPS" & unique_carrier_name == "Comair Inc." & (new_year_quarter >= 200702 & new_year_quarter < 201002)



* Peninsula Airways Inc. 2017q3, 2017q3
replace af_filing_be_emer = 1 if origin == "AKN" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "AKN" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "ANC" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "ANC" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "CDB" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "CDB" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "CEC" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "CEC" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "DLG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "DLG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "DUT" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "DUT" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "MCG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "MCG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "PBG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "PBG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "PQI" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "PQI" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "SDP" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "SDP" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "SNP" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "SNP" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)

replace af_filing_be_emer = 1 if origin == "STG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter == 201703) 
replace af_emer = 1 if origin == "STG" & unique_carrier_name == "Peninsula Airways Inc." & (new_year_quarter >= 201703 & new_year_quarter < 202003)


* Trans States Airlines 02 2002q4, 2006q1
replace af_filing_be_emer = 1 if origin == "ERI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ERI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ACY" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ACY" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ALB" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ALB" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ATL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ATL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BMI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BMI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BNA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BNA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BUF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BUF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BWI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BWI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CAK" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CAK" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CID" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CID" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CGI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CGI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CLE" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CLE" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CMH" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CMH" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CMI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CMI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "COD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "COD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "COU" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "COU" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CRW" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CRW" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CVG" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CVG" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DEC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DEC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DSM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DSM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DTW" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DTW" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ELM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ELM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "EVV" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "EVV" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FSM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FSM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FWA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FWA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GRR" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GRR" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GSO" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GSO" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GSP" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GSP" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ITH" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ITH" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "JLN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "JLN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MEM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MEM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MKE" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MKE" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MLI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MLI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MSN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MSN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ORD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ORD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ORF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ORF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "RIC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "RIC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ROA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ROA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ROC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ROC" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PIA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PIA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PIT" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PIT" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PVD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PVD" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PWM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PWM" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SBN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SBN" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SGF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SGF" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SPI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SPI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "STL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "STL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SUS" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SUS" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SYR" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SYR" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TRI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TRI" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TOL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TOL" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "XNA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "XNA" & unique_carrier_name == "Trans States Airlines" & (new_year_quarter >= 200601 & new_year_quarter < 200901)


* Aloha Airlines Inc. 
replace af_filing_be_emer = 1 if origin == "BOI" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BOI" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BUR" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BUR" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "HNL" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "HNL" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ITO" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ITO" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "KOA" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "KOA" & unique_carrier_name == "Aloha Airlines Inc." & new_year_quarter >= 200601

replace af_filing_be_emer = 1 if origin == "LIH" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LIH" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LNY" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LNY" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "OAK" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "OAK" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "OGG" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "OGG" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ONT" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ONT" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PPG" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PPG" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "RNO" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "RNO" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SMF" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SMF" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SNA" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200404 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SNA" & unique_carrier_name == "Aloha Airlines Inc." & (new_year_quarter >= 200601 & new_year_quarter < 200901)


* Air Wisconsin Airlines Corp 2002q4, 2006q1
replace af_filing_be_emer = 1 if origin == "ASE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ASE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ATL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ATL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ATW" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ATW" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BIL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BIL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BIS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BIS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BMI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BMI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BNA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BNA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "BZN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "BZN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CID" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CID" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "COS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "COS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CRW" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CRW" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CVG" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CVG" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CWA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CWA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "CYS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "CYS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DAY" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DAY" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DEN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DEN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "DRO" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "DRO" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "EGE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "EGE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "EUG" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "EUG" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FAR" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FAR" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FAT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FAT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FSD" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FSD" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "FWA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "FWA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GJT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GJT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GRB" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GRB" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "GUC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "GUC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "HDN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "HDN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ICT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ICT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "JAC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "JAC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "JAN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "JAN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "JLN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "JLN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LAN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LAN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LAS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LAS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LAX" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LAX" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LEX" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LEX" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LIT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LIT" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "LNK" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "LNK" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MBS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MBS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MCI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MCI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MEM" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MEM" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MKE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MKE" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MLI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MLI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MSN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MSN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MSO" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MSO" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MSP" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MSP" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "MTJ" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "MTJ" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "OKC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "OKC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "OMA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "OMA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "ORD" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "ORD" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PIA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PIA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "PSC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "PSC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "RAP" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "RAP" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SBA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SBA" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SBN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SBN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SGF" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SGF" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SJC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SJC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SLC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SLC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "SPI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "SPI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TRI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TRI" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TUL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TUL" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TVC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TVC" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "TYS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "TYS" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)

replace af_filing_be_emer = 1 if origin == "UIN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200204 & new_year_quarter < 200601)
replace af_emer = 1 if origin == "UIN" & unique_carrier_name == "Air Wisconsin Airlines Corp" & (new_year_quarter >= 200601 & new_year_quarter < 200901)


* Endeavor Air Inc. 2012q2, 2013q2
replace af_filing_be_emer = 1 if origin == "ECP" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "ECP" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "GEG" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "GEG" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "GTF" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "GTF" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "HIB" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "HIB" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "IDA" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "IDA" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "IMT" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "IMT" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "MOT" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "MOT" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "MVY" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "MVY" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_emer = 1 if origin == "SWO" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201202 & new_year_quarter < 201302)
replace af_emer = 1 if origin == "SWO" & unique_carrier_name == "Endeavor Air Inc." & (new_year_quarter >= 201302 & new_year_quarter < 201602)





***** Type 2
* Executive Airlines
replace af_filing_be_shut = 1 if origin == "ACT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "ACT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "GGG" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "GGG" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "GRK" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "GRK" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "LAW" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "LAW" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "SJU" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "SJU" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "SJT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "SJT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "SPS" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "SPS" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "STT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "STT" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "STX" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "STX" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "TXK" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "TXK" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)

replace af_filing_be_shut = 1 if origin == "TYR" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201104 & new_year_quarter < 201302)
replace af_shut = 1 if origin == "TYR" & unique_carrier_name == "Executive Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201602)


* Midway Airlines Inc.
replace af_filing_be_shut = 1 if origin == "BDL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "BDL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "BHM" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "BHM" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "BOS" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "BOS" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "CHS" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "CHS" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "DCA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "DCA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "EWR" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "EWR" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "FLL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "FLL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "IND" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "IND" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "JAX" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "JAX" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "LGA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "LGA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "MCO" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "MCO" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "MYR" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "MYR" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "PHL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "PHL" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "RDU" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "RDU" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "SDF" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "SDF" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

replace af_filing_be_shut = 1 if origin == "TPA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter == 200103)
replace af_shut = 1 if origin == "TPA" & unique_carrier_name == "Midway Airlines Inc." & (new_year_quarter >= 200103 & new_year_quarter < 200403)

* Seaport Airlines, Inc.
replace af_filing_be_shut = 1 if origin == "ELD" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "ELD" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)

replace af_filing_be_shut = 1 if origin == "HOT" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "HOT" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)

replace af_filing_be_shut = 1 if origin == "HRO" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "HRO" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)

replace af_filing_be_shut = 1 if origin == "OTH" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "OTH" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)

replace af_filing_be_shut = 1 if origin == "PDT" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "PDT" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)

replace af_filing_be_shut = 1 if origin == "PDX" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201601 & new_year_quarter < 201603)
replace af_shut = 1 if origin == "PDX" & unique_carrier_name == "Seaport Airlines, Inc." & (new_year_quarter >= 201603 & new_year_quarter < 201903)


*Type3
replace af_shut = 1 if origin == "CNM" & unique_carrier_name == "Pacific Wings Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201603)

replace af_shut = 1 if origin == "MUE" & unique_carrier_name == "Pacific Wings Airlines" & (new_year_quarter >= 201302 & new_year_quarter < 201603)






