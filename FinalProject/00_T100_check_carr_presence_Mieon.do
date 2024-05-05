** Date:Apr 9th 2024
** Author:Mieon Seong
** Purpose:Regional Airline Bankrupty sampling

 use "/Users/mieonseong/Dropbox/bankruptcy/DG_newfinal2/T100_carr_presence.dta"



**drop and redefine filing, disposal, shutdown
tab unique_carrier_name
gen filingYQ=.
gen disposedYQ=.
gen shutdownYQ=.
gen type=.
gen filingYQ_2nd=.
gen disposedYQ_2nd=.
gen shutdownYQ_2nd=.
gen type_2nd=.
gen filingYQ_3rd=.
gen disposedYQ_3rd=.
gen shutdownYQ_3rd=.
gen type_3rd=.


**** Air Midwest Inc. 
** Chapter 7.    5/14/2008
** shutdown by parent airline Mesa	 6/30/2008
replace filingYQ=tq(2008q2) if unique_carrier_name=="Air Midwest Inc."
replace shutdownYQ=tq(2008q2) if unique_carrier_name=="Air Midwest Inc."
replace type=2 if unique_carrier_name=="Air Midwest Inc."
* Since AirMidwest Inc.=Regional , Mesa Airline=Regional


*** Air Wisconsin Airlines Corp 
** subsidiary of UA; UA bankrupcy filed 12/9/2002, disposed 1/20/2006; AW left UA in April 2005, before case disposition; UA emerged  
** Chapter 11
replace filingYQ=tq(2002q4) if unique_carrier_name=="Air Wisconsin Airlines Corp"
replace disposedYQ=tq(2006q1) if unique_carrier_name=="Air Wisconsin Airlines Corp"
replace type=1 if unique_carrier_name=="Air Wisconsin Airlines Corp"
* Since UA=Major , Air Wisconsin Airlines Corp=Regional



*** AirTran Airways Corporation 
** Chapter 11.	acquired by Southwest Airlines on May 2, 2011; windown on Dec 28, 2014; still as inactive subsidiary
replace filingYQ=tq(2011q2) if unique_carrier_name=="AirTran Airways Corporation"
replace shutdownYQ=tq(2014q4) if unique_carrier_name=="AirTran Airways Corporation"
replace type=2 if unique_carrier_name=="AirTran Airways Corporation"
* Since Southwest Airline=LCC , AirTran Airways=LCC


*** Alaska Airlines Inc.
** code sharing:PenAir.		Chapter 11.		date filed: quarter==3 & year==2017

***Allegiant Air 
** Chapter 11
replace filingYQ=tq(2000q4) if unique_carrier_name=="Allegiant Air"
replace disposedYQ=tq(2002q1) if unique_carrier_name=="Allegiant Air"
replace type=1 if unique_carrier_name=="Allegiant Air"
* Since Allegiant Air=LCC , 


**American Airlines Inc. not emerged
** Chapter 11; filed 11/13/2011; disposed 09/12/2013
replace filingYQ=tq(2011q4) if unique_carrier_name=="American Airlines Inc."
replace disposedYQ=tq(2013q4) if unique_carrier_name=="American Airlines Inc." // 2013q3
replace type=1 if unique_carrier_name=="American Airlines Inc."

**Big Sky Airlines Inc.
** Chapter 7; filed 1/7/2008; grounded 3/8/2008
replace filingYQ=tq(2008q1) if unique_carrier_name=="Big Sky Airlines Inc."
replace shutdownYQ=tq(2008q1) if unique_carrier_name=="Big Sky Airlines Inc."
replace type=2 if unique_carrier_name=="Big Sky Airlines Inc."

** Boston-Maine Airways
** grounded 03/06/2008
replace shutdownYQ=tq(2008q1) if unique_carrier_name=="Boston-Maine Airways"
replace type=3 if unique_carrier_name=="Boston-Maine Airways"

** Colgan Air
** exclusive US carrier since 1999; US bankruptcy filed 8/11/2002 & 9/12/2004; disposed 3/18/2003 emerged & 9/16/2005 emerged
** Pinnacle: Chapter 11 on 4/1/2012
replace filingYQ=tq(2002q3) if unique_carrier_name=="Colgan Air"
replace disposedYQ=tq(2003q1) if unique_carrier_name=="Colgan Air"
replace type=1 if unique_carrier_name=="Colgan Air"

replace filingYQ_2nd=tq(2004q3) if unique_carrier_name=="Colgan Air"
replace disposedYQ_2nd=tq(2005q3) if unique_carrier_name=="Colgan Air"
replace type_2nd=1 if unique_carrier_name=="Colgan Air"

* aquired by Pinnacle and eventually phased out and replaced by Mesaba Air
replace shutdownYQ_3rd=tq(2012q4) if unique_carrier_name=="Colgan Air"
replace type_3rd=3 if unique_carrier_name=="Colgan Air"

**Comair Inc.
** Chapter 11
** subsidiary of Delta; DL bankrupty 9/14/2005; disposed 4/25/2007; emerged
replace filingYQ=tq(2005q3) if unique_carrier_name=="Comair Inc."
replace disposedYQ=tq(2007q2) if unique_carrier_name=="Comair Inc."
replace type=1 if unique_carrier_name=="Comair Inc."

* shut down 09/29/2012
replace shutdownYQ_2nd=tq(2012q3) if unique_carrier_name=="Comair Inc."
replace type_2nd=3 if unique_carrier_name=="Comair Inc."

***Delta Airlines/Delta Connection
**Chapter 11
*DL bankrupty 9/14/2005; disposed 4/25/2007; emerged
replace filingYQ=tq(2005q3) if unique_carrier_name=="Delta Air Lines Inc."
replace disposedYQ=tq(2007q2) if unique_carrier_name=="Delta Air Lines Inc."
replace type=1 if unique_carrier_name=="Delta Air Lines Inc."

*** Endeavor Air Inc.
** was Pinnacle air; bankruptcy 4/1/2012; disposed 4/17/2013; not emerged became sub of DL
** Chapter 11
replace filingYQ=tq(2012q2) if unique_carrier_name=="Endeavor Air Inc."
replace disposedYQ=tq(2013q2) if unique_carrier_name=="Endeavor Air Inc."
replace type=1 if unique_carrier_name=="Endeavor Air Inc."

*** Envoy Air
** was American Eagle, subsidiary of AA; bankruptcy 11/29/2011; disposed 12/11/2013; not emerged
** Chapter 11
replace filingYQ=tq(2011q4) if unique_carrier_name=="Envoy Air"
replace disposedYQ=tq(2013q4) if unique_carrier_name=="Envoy Air"
replace type=1 if unique_carrier_name=="Envoy Air"

**Executive Airlines 
** Chapter 11
replace filingYQ=tq(2011q4) if unique_carrier_name=="Executive Airlines"
replace shutdownYQ=tq(2013q2) if unique_carrier_name=="Executive Airlines"
replace type=2 if unique_carrier_name=="Executive Airlines"

**Frontier Airlines Inc.
*bankruptcy filed 4/10/2008; disposed 9/10/2009; not emerged
** Chapter 11.
replace filingYQ=tq(2008q2) if unique_carrier_name=="Frontier Airlines Inc."
replace disposedYQ=tq(2009q3) if unique_carrier_name=="Frontier Airlines Inc."
replace type=1 if unique_carrier_name=="Frontier Airlines Inc."

**Great Lakes Airlines
** only code sharing with united and frontier
replace shutdownYQ=tq(2018q1) if unique_carrier_name=="Great Lakes Airlines"
replace type=3 if unique_carrier_name=="Great Lakes Airlines"
** ceased operaiton on 3/26/2018 without filed for bankruptcy. certain segments continues to operate.

** Independence Air
**subsidiary of FLYi; bankrutcy declared 11/7/2005; disposed 3/15/2007; not emerged
** Chapter 11
** rename compass air 3/29/2006
replace filingYQ=tq(2005q4) if unique_carrier_name=="Independence Air"
replace disposedYQ=tq(2006q1) if unique_carrier_name=="Independence Air"
replace type=1 if unique_carrier_name=="Independence Air"
replace filingYQ=tq(2005q4) if unique_carrier_name=="Compass Airlines"
replace disposedYQ=tq(2006q1) if unique_carrier_name=="Compass Airlines"
replace type=1 if unique_carrier_name=="Compass Airlines"

**Mesa Airlines Inc.
** bankruptcy filed 1/5/2010; disposed 1/21/2011; emerged
** Chapter 11
replace filingYQ=tq(2010q1) if unique_carrier_name=="Mesa Airlines Inc."
replace disposedYQ=tq(2011q1) if unique_carrier_name=="Mesa Airlines Inc."
replace type=1 if unique_carrier_name=="Mesa Airlines Inc."

**Mesaba Airlines
** bankrutcy filed 10/13/2005; 4/24/2007 disposed; emerged
** Chapter 11
replace filingYQ=tq(2005q4) if unique_carrier_name=="Mesaba Airlines"
replace disposedYQ=tq(2007q2) if unique_carrier_name=="Mesaba Airlines"
replace type=1 if unique_carrier_name=="Mesaba Airlines"

**subsidiary of Pinnacle since july 2010; bankrutcy filed 4/1/2012; disposed 4/17/2013; not emerged
replace filingYQ_2nd=tq(2012q2) if unique_carrier_name=="Mesaba Airlines"
replace disposedYQ_2nd=tq(2013q2) if unique_carrier_name=="Mesaba Airlines"
replace type_2nd=1 if unique_carrier_name=="Mesaba Airlines"
** merged with Pinnacle
*replace shutdown_dq=1 if unique_carrier_name=="Mesaba Airlines" & quarter==1 & year==2012

**PSA Airlines Inc.
** subsidiary of US; US bankruptcy filed 8/11/2002 & 9/12/2004; disposed 3/18/2003 emerged & 9/16/2005 not emerged
** Chapter 11
replace filingYQ=tq(2002q3) if unique_carrier_name=="PSA Airlines Inc."
replace disposedYQ=tq(2003q1) if unique_carrier_name=="PSA Airlines Inc."
replace type=1 if unique_carrier_name=="PSA Airlines Inc."

replace filingYQ_2nd=tq(2004q3) if unique_carrier_name=="PSA Airlines Inc."
replace disposedYQ_2nd=tq(2005q3) if unique_carrier_name=="PSA Airlines Inc." // 2005q4
replace type_2nd=1 if unique_carrier_name=="PSA Airlines Inc."
** subsidiary of AA after AA bankruptcy in 2011

**Pacific Wings Airlines
replace shutdownYQ=tq(2013q2) if unique_carrier_name=="Pacific Wings Airlines"
replace type=3 if unique_carrier_name=="Pacific Wings Airlines"

**Peninsula Airways Inc.
**bankruptcy filed 8/7/2017; Chapter 11
replace filingYQ=tq(2017q3) if unique_carrier_name=="Peninsula Airways Inc."
replace disposedYQ=tq(2017q3) if unique_carrier_name=="Peninsula Airways Inc."
replace type=1 if unique_carrier_name=="Peninsula Airways Inc."

**Piedmont Airlines
** subsidiary of US; US bankruptcy filed 8/11/2002 & 9/12/2004; disposed 3/18/2003 emerged & 9/16/2005 not emerged
** Chapter 11
replace filingYQ=tq(2002q3) if unique_carrier_name=="Piedmont Airlines"
replace disposedYQ=tq(2003q1) if unique_carrier_name=="Piedmont Airlines"
replace type=1 if unique_carrier_name=="Piedmont Airlines"

replace filingYQ_2nd=tq(2004q3) if unique_carrier_name=="Piedmont Airlines"
replace disposedYQ_2nd=tq(2005q3) if unique_carrier_name=="Piedmont Airlines" //2005q4
replace type_2nd=1 if unique_carrier_name=="Piedmont Airlines"

**Regions Air, Inc.
**feed for TWA; bankruptcy filed 1/10/2001; disposed 6/14/2002; not emerged
replace filingYQ=tq(2001q1) if unique_carrier_name=="Regions Air, Inc."
replace disposedYQ=tq(2002q2) if unique_carrier_name=="Regions Air, Inc."
replace type=1 if unique_carrier_name=="Regions Air, Inc."

**feed for Midway Air; bankruptcy filed 8/13/2001; disposed 10/30/2003; not emerged
replace filingYQ_2nd=tq(2001q3) if unique_carrier_name=="Regions Air, Inc."
replace disposedYQ_2nd=tq(2002q4) if unique_carrier_name=="Regions Air, Inc."
replace type_2nd=1 if unique_carrier_name=="Regions Air, Inc."

**grounded before 03/19/2007
replace shutdownYQ=tq(2007q1) if unique_carrier_name=="Regions Air, Inc."
replace type=3 if unique_carrier_name=="Regions Air, Inc."

**Republic Airlines
**purchased frontier in bankruptcy; declared bankruptcy 2/25/2016; disposed 4/30/2017; not emerged
** Chapter 11
replace filingYQ=tq(2016q1) if unique_carrier_name=="Republic Airlines"
replace disposedYQ=tq(2017q2) if unique_carrier_name=="Republic Airlines"
replace type=1 if unique_carrier_name=="Republic Airlines"

**Seaport Airlines, Inc.
**filed for bankruptcy 2/5/2016; grounded 9/20/2016; not emerged
** Chapter 11
replace filingYQ=tq(2016q1) if unique_carrier_name=="Seaport Airlines, Inc."
replace shutdownYQ=tq(2016q3) if unique_carrier_name=="Seaport Airlines, Inc."
replace type=2 if unique_carrier_name=="Seaport Airlines, Inc."

**SkyWest Airlines Inc.
** operating flights for UA; UA bankrupcy filed 12/9/2002, disposed 1/20/2006; AW left UA in April 2005, before case disposition; UA emerged  
replace filingYQ=tq(2002q4) if unique_carrier_name=="SkyWest Airlines Inc."
replace disposedYQ=tq(2006q1) if unique_carrier_name=="SkyWest Airlines Inc."
replace type=1 if unique_carrier_name=="SkyWest Airlines Inc."

**Trans States Airlines
** fly for TWA; bankruptcy filed 1/10/2001; disposed 6/14/2002; not emerged
**operate as AA since 2001; AA bankrutcy times follow;
**operate as UA since 2003; UA bankruptcy times follow;
replace filingYQ=tq(2002q4) if unique_carrier_name=="Trans States Airlines"
replace disposedYQ=tq(2006q1) if unique_carrier_name=="Trans States Airlines"
replace type=1 if unique_carrier_name=="Trans States Airlines"

replace filingYQ_2nd=tq(2011q4) if unique_carrier_name=="Trans States Airlines"
replace disposedYQ_2nd=tq(2013q4) if unique_carrier_name=="Trans States Airlines"
replace type_2nd=1 if unique_carrier_name=="Trans States Airlines"

**Sun Country Airlines
** chapter 7; date filed 1/8/2002; convert 7 to 11 on 3/12/2002; disposed 4/15/2002; grounded 12/8/2001
** chapter 11; filed 10/6/2008; disposed 7/20/2011
replace shutdownYQ=tq(2001q4) if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"
replace type=3 if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"

replace filingYQ_2nd=tq(2002q1) if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"
replace disposedYQ_2nd=tq(2002q2) if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"
replace type_2nd=1 if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"

replace filingYQ_3rd=tq(2008q4) if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"
replace disposedYQ_3rd=tq(2011q3) if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"
replace type_3rd=1 if unique_carrier_name=="Sun Country Airlines d/b/a MN Airlines"


**Continental Airlines Inc.
** chapter 11; date filed 12/3/1990; disposed 4/27/1993; emerged
replace filingYQ=tq(1990q4) if unique_carrier_name=="Continental Air Lines Inc." 
replace disposedYQ=tq(1993q2) if unique_carrier_name=="Continental Air Lines Inc."
replace type=1 if unique_carrier_name=="Continental Air Lines Inc."


**Northwest Airlines
** chapter 11; date filed 9/14/2005; disposed 5/18/2007
replace filingYQ=tq(2005q3) if unique_carrier_name=="Northwest Airlines Inc."
replace disposedYQ=tq(2007q2) if unique_carrier_name=="Northwest Airlines Inc."
replace type=1 if unique_carrier_name=="Northwest Airlines Inc."


**USAir
** chapter 11; date filed 8/11/2002 & 9/12/2004; disposed 3/31/2003 & 9/27/2005
replace filingYQ=tq(2002q3) if unique_carrier_name=="US Airways Inc."
replace disposedYQ=tq(2003q1) if unique_carrier_name=="US Airways Inc."
replace type=1 if unique_carrier_name=="US Airways Inc."

replace filingYQ_2nd=tq(2004q3) if unique_carrier_name=="US Airways Inc."
replace disposedYQ_2nd=tq(2005q3) if unique_carrier_name=="US Airways Inc."
replace type_2nd=1 if unique_carrier_name=="US Airways Inc."


**United Airlines
**United Airlines	December 9, 2002	February 1, 2006
replace filingYQ=tq(2002q4) if unique_carrier_name=="United Air Lines Inc."
replace disposedYQ=tq(2006q1) if unique_carrier_name=="United Air Lines Inc."
replace type=1 if unique_carrier_name=="United Air Lines Inc."

**Trans World Airways Lic
** chapter 11; date filed 1/31/1992 & 6/30/1995 & 1/10/2001; disposed 11/3/1993 & 8/24/1995; convert 11 to 7 on 4/6/2001
replace filingYQ=tq(1992q1) if unique_carrier_name=="Trans World Airways LLC"
replace disposedYQ=tq(1993q4) if unique_carrier_name=="Trans World Airways LLC"
replace type=1 if unique_carrier_name=="Trans World Airways LLC"

replace filingYQ_2nd=tq(1995q2) if unique_carrier_name=="Trans World Airways LLC"
replace disposedYQ_2nd=tq(1995q3) if unique_carrier_name=="Trans World Airways LLC"
replace type_2nd=1 if unique_carrier_name=="Trans World Airways LLC"

replace filingYQ_3rd=tq(2001q1) if unique_carrier_name=="Trans World Airways LLC" 
replace shutdownYQ_3rd=tq(2001q4) if unique_carrier_name=="Trans World Airways LLC"
replace type_3rd=2 if unique_carrier_name=="Trans World Airways LLC"

**Air South Inc.
** bankruptcy filed 8/28/1997; grounded 8/28/1997
** chapter 11; convert to chapter 7 on 9/16/1997
replace filingYQ=tq(1997q3) if unique_carrier_name=="Air South Inc. (1)"
replace shutdownYQ=tq(1997q3) if unique_carrier_name=="Air South Inc. (1)"
replace type=2 if unique_carrier_name=="Air South Inc. (1)"

**Aloha Airlines Inc.
** chapter 11; bankruptcy filed 12/30/2004; disposed 2/17/2006; emerged
replace filingYQ=tq(2004q4) if unique_carrier_name=="Aloha Airlines Inc."
replace disposedYQ=tq(2006q1) if unique_carrier_name=="Aloha Airlines Inc."
replace type=1 if unique_carrier_name=="Aloha Airlines Inc."

**America West Airlines Inc.
** chapter 11; bankruptcy filed 6/27/1991; disposed 8/25/1994; emerged
** became US Airways in the second quarter of 2005; acquired by American Airlines in 2015
replace filingYQ=tq(1991q2) if unique_carrier_name=="America West Airlines Inc."
replace disposedYQ=tq(1994q3) if unique_carrier_name=="America West Airlines Inc."
replace type=1 if unique_carrier_name=="America West Airlines Inc."

**Ata Airlines d/b/a Ata.
** chapter 11; date filed 10/26/2004; disposed 2/28/2006; emerged
replace filingYQ=tq(2004q4) if unique_carrier_name=="ATA Airlines d/b/a ATA"
replace disposedYQ=tq(2006q1) if unique_carrier_name=="ATA Airlines d/b/a ATA"
replace type=1 if unique_carrier_name=="ATA Airlines d/b/a ATA"

**Business Express
** chapter 11; date filed 1/22/1996; disposed 4/17/1997; emerged
replace filingYQ=tq(1996q1) if unique_carrier_name=="Business Express"
replace disposedYQ=tq(1997q2) if unique_carrier_name=="Business Express"
replace type=1 if unique_carrier_name=="Business Express"

**Continental Airlines Inc.
** chapter 11; date filed 12/3/1990; disposed 4/27/1993; emerged
replace filingYQ=tq(1990q4) if unique_carrier_name=="Continental Air Lines Inc." 
replace disposedYQ=tq(1993q2) if unique_carrier_name=="Continental Air Lines Inc."
replace type=1 if unique_carrier_name=="Continental Air Lines Inc."

**Eastwind Airlines Inc.
** chapter 7; date filed 9/30/1999; grounded 9/8/1999
replace filingYQ=tq(1999q3) if unique_carrier_name=="Eastwind Airlines Inc."
replace shutdownYQ=tq(1999q3) if unique_carrier_name=="Eastwind Airlines Inc."
replace type=2 if unique_carrier_name=="Eastwind Airlines Inc."

**Grand Airways Inc.
** chapter 11; date filed 11/28/1995; converted from 11 to 7 1/4/1996; grounded 1/4/1996
replace filingYQ=tq(1995q4) if unique_carrier_name=="Grand Airways Inc."
replace shutdownYQ=tq(1996q1) if unique_carrier_name=="Grand Airways Inc."
replace type=2 if unique_carrier_name=="Grand Airways Inc."

**Hawaiian Airlines Inc.
** chapter 11; date filed 9/21/1993; disposed 9/12/1994; second filed 3/21/2003; disposed 6/2/2005
replace filingYQ=tq(1993q3) if unique_carrier_name=="Hawaiian Airlines Inc."
replace disposedYQ=tq(1994q3) if unique_carrier_name=="Hawaiian Airlines Inc."
replace type=1 if unique_carrier_name=="Hawaiian Airlines Inc."

replace filingYQ=tq(2003q1) if unique_carrier_name=="Hawaiian Airlines Inc."
replace disposedYQ=tq(2005q2) if unique_carrier_name=="Hawaiian Airlines Inc."
replace type=1 if unique_carrier_name=="Hawaiian Airlines Inc."

**Kiwi International
** chapter 11; date filed 9/30/1996 & 3/23/1999; convert 11 to 7 on 7/17/1997 & 8/27/1999; grounded 10/15/1996 & 3/24/1999
replace filingYQ=tq(1996q3) if unique_carrier_name=="Kiwi International"
replace shutdownYQ=tq(1996q4) if unique_carrier_name=="Kiwi International"
replace type=2 if unique_carrier_name=="Kiwi International"

replace filingYQ_2nd=tq(1999q1) if unique_carrier_name=="Kiwi International"
replace shutdownYQ_2nd=tq(1999q1) if unique_carrier_name=="Kiwi International"
replace type_2nd=2 if unique_carrier_name=="Kiwi International"

**Markair Inc.
** chapter 11; date filed 6/8/1992; disposed 3/31/1994; second filed 4/14/1995; convert 11 to 7 on 11/20/1995; grounded 10/24/1995
*replace br_filing_dq=1 if unique_carrier_name=="Markair Inc." & quarter==2 & year==1992
*replace br_disposed_dq=1 if unique_carrier_name=="Markair Inc." & quarter==1 & year==1994

*replace br_filing_dq=1 if unique_carrier_name=="Markair Inc." & quarter==2 & year==1995
*replace shutdown_dq=1 if unique_carrier_name=="Markair Inc." & quarter==4 & year==1995

replace filingYQ=tq(1992q2) if unique_carrier_name=="Markair Inc."
replace disposedYQ=tq(1994q1) if unique_carrier_name=="Markair Inc."
replace type=1 if unique_carrier_name=="Markair Inc."

replace filingYQ_2nd=tq(1995q2) if unique_carrier_name=="Markair Inc."
replace shutdownYQ_2nd=tq(1995q4) if unique_carrier_name=="Markair Inc."
replace type_2nd=2 if unique_carrier_name=="Markair Inc."

**Midway Airlines Inc.
** chapter 11; date filed 8/14/2001; convert 11 to 7 on 10/30/2003; grounded 9/11/2001
replace filingYQ=tq(2001q3) if unique_carrier_name=="Midway Airlines Inc."
replace shutdownYQ=tq(2001q3) if unique_carrier_name=="Midway Airlines Inc."
replace type=2 if unique_carrier_name=="Midway Airlines Inc."


**National Airlines
** chapter 11; date filed 12/6/2000; convert 11 to 7 on 11/6/2002; grounded 11/6/2002
replace filingYQ=tq(2000q4) if unique_carrier_name=="National Airlines"
replace shutdownYQ=tq(2002q4) if unique_carrier_name=="National Airlines"
replace type=2 if unique_carrier_name=="National Airlines"


**Northwest Airlines
** chapter 11; date filed 9/14/2005; disposed 5/18/2007
replace filingYQ=tq(2005q3) if unique_carrier_name=="Northwest Airlines Inc."
replace disposedYQ=tq(2007q2) if unique_carrier_name=="Northwest Airlines Inc."
replace type=1 if unique_carrier_name=="Northwest Airlines Inc."

**Pan American Airways Corp.
** chapter 11; date filed 2/26/1998; disposed 6/28/1998
replace filingYQ=tq(1998q1) if unique_carrier_name=="Pan American Airways Corp." 
replace disposedYQ=tq(1998q2) if unique_carrier_name=="Pan American Airways Corp."
replace type=1 if unique_carrier_name=="Pan American Airways Corp."

**Pro Air Inc.
** chapter 11; date filed 9/19/2000; convert 11 to 7 on 10/5/2001; grounded 9/19/2000
*replace br_filing_dq=1 if unique_carrier_name=="Pro Air Inc." & quarter==3 & year==2000
*replace shutdown_dq=1 if unique_carrier_name=="Pro Air Inc." & quarter==3 & year==2000
replace filingYQ=tq(2000q3) if unique_carrier_name=="Pro Air Inc."
replace shutdownYQ=tq(2000q3) if unique_carrier_name=="Pro Air Inc."
replace type=2 if unique_carrier_name=="Pro Air Inc."


**Tower Air Inc.
** chapter 11; date filed 2/29/2000; convert 11 to 7 on 12/7/2000; grounded 5/1/2000
*replace br_filing_dq=1 if unique_carrier_name=="Tower Air Inc." & quarter==1 & year==2000
*replace shutdown_dq=1 if unique_carrier_name=="Sun Country Airlines" & quarter==2 & year==2000
replace filingYQ=tq(2000q1) if unique_carrier_name=="Tower Air Inc."
replace shutdownYQ=tq(2000q2) if unique_carrier_name=="Tower Air Inc."
replace type=2 if unique_carrier_name=="Tower Air Inc."

**Trans World Airways Lic
** chapter 11; date filed 1/31/1992 & 6/30/1995 & 1/10/2001; disposed 11/3/1993 & 8/24/1995; convert 11 to 7 on 4/6/2001
replace filingYQ=tq(1992q1) if unique_carrier_name=="Trans World Airways LLC"
replace disposedYQ=tq(1993q4) if unique_carrier_name=="Trans World Airways LLC"
replace type=1 if unique_carrier_name=="Trans World Airways LLC"

replace filingYQ_2nd=tq(1995q2) if unique_carrier_name=="Trans World Airways LLC"
replace disposedYQ_2nd=tq(1995q3) if unique_carrier_name=="Trans World Airways LLC"
replace type_2nd=1 if unique_carrier_name=="Trans World Airways LLC"

replace filingYQ=tq(2001q1) if unique_carrier_name=="Trans World Airways LLC" 
replace shutdownYQ=tq(2001q4) if unique_carrier_name=="Trans World Airways LLC"
replace type=2 if unique_carrier_name=="Trans World Airways LLC"

**USAir
** chapter 11; date filed 8/11/2002 & 9/12/2004; disposed 3/31/2003 & 9/27/2005
replace filingYQ=tq(2002q3) if unique_carrier_name=="US Airways Inc."
replace disposedYQ=tq(2003q1) if unique_carrier_name=="US Airways Inc."
replace type=1 if unique_carrier_name=="US Airways Inc."

replace filingYQ_2nd=tq(2004q3) if unique_carrier_name=="US Airways Inc."
replace disposedYQ_2nd=tq(2005q3) if unique_carrier_name=="US Airways Inc."
replace type_2nd=1 if unique_carrier_name=="US Airways Inc."


**Vanguard Airlines Inc.
** chapter 11; date filed 7/30/2002; convert 11 to 7 on 12/19/2003; grounded 7/30/2002
*replace br_filing_dq=1 if unique_carrier_name=="Vanguard Airlines Inc." & quarter==3 & year==2002
*replace shutdown_dq=1 if unique_carrier_name=="Vanguard Airlines Inc." & quarter==3 & year==2002
replace filingYQ=tq(2002q3) if unique_carrier_name=="Vanguard Airlines Inc."
replace shutdownYQ=tq(2002q3) if unique_carrier_name=="Vanguard Airlines Inc."
replace type=2 if unique_carrier_name=="Vanguard Airlines Inc."

**Western Pacific Airlines
** chapter 11; date filed 10/6/1997; convert 11 to 7 on 7/6/1998; grounded 2/5/1998
*replace br_filing_dq=1 if unique_carrier_name=="Western Pacific Airlines" & quarter==4 & year==1997
*replace shutdown_dq=1 if unique_carrier_name=="Western Pacific Airlines" & quarter==1 & year==1998
replace filingYQ=tq(1997q4) if unique_carrier_name=="Western Pacific Airlines"
replace shutdownYQ=tq(1998q1) if unique_carrier_name=="Western Pacific Airlines"
replace type=2 if unique_carrier_name=="Western Pacific Airlines"

**Atlantic Coast Airlines
**reinvented as Independence Air.
**chapter 11; date filed 11/07/2005; disposed 06/18/2007
*replace filingYQ=tq(2005q4) if unique_carrier_name=="Atlantic Coast Airlines"
*replace disposedYQ=tq(2007q1) if unique_carrier_name=="Atlantic Coast Airlines"
*replace type=1 if unique_carrier_name=="Atlantic Coast Airlines"


**Atlantic Southeast Airlines
** merged into ExpressJet 12/31/2011


**CCAir
**ceased operations on 11/4/2002
*replace shutdown_dq=1 if unique_carrier_name=="CCAir" & quarter==4 & year==2002


**Direct Air
**chapter 11; date filed 03/16/2012; convert 11 to 7; grounded 3/13/2012 
*replace br_filing_dq=1 if unique_carrier_name=="Direct Air" & quarter==1 & year==2012 
*replace shutdown_dq=1 if unique_carrier_name=="Direct Air" & quarter==1 & year==2012


**GLO Airlines
**declared bankruptcy 4/27/2017
*replace br_filing_dq=1 if unique_carrier_name=="GLO Airlines" & quarter==2 & year==2017


**Harbor Airlines 
**grounded 05/11/2001
*replace shutdown_dq=1 if unique_carrier_name=="Harbor Airlines" & quarter==2 & year==2001


**ImagineAir
**suspend operation 5/2018


**New Mexico Airlines
** ceased operaiton in 2015


**Pacific Express
**chapter 11; date filed 02/02/1984; grounded 02/02/1984
*replace br_filing_dq=1 if unique_carrier_name=="Pacific Express" & quarter==1 & year==1984
*replace shutdown_dq=1 if unique_carrier_name=="Pacific Express" & quarter==1 & year==1984


**Ravn Alaska
**Era Aviation renamed as Corvus Airlines who currently do business as Ravn Alaska.
**Era filed for bankruptcy in 12/30/2005; acquired by Frontier Alaska Group 2/27/2009


**Elite Airways LLC
**subsidiary of DL; DL bankrupty 9/14/2005; disposed 4/25/2007
*replace br_filing_dq=1 if unique_carrier_name=="Elite Airways LLC" & quarter==3 & year==2005
*replace br_disposed_dq=1 if unique_carrier_name=="Elite Airways LLC" & quarter==2 & year==2007 


**Skybus Airlines
**chapter 11; filed around 04/08/2008; grounded 4/5/2008
*replace shutdown_dq=1 if unique_carrier_name=="Skybus Airlines" & quarter==2 & year==2008
replace filingYQ=tq(2008q2) if unique_carrier_name=="Skybus Airlines, Inc."
replace shutdownYQ=tq(2008q2) if unique_carrier_name=="Skybus Airlines, Inc."
replace type=2 if unique_carrier_name=="Skybus Airlines, Inc."


**StatesWest Airlines
**chapter 11; filed 12/16/1992; grounded 10/11/1993
*replace br_filing_dq=1 if unique_carrier_name=="StatesWest Airlines" & quarter==4 & year==1992
*replace shutdown_dq=1 if unique_carrier_name=="StatesWest Airlines" & quarter==4 & year==1993


**Sun Air Express
**bought by Southern Airways Express 3/7/2016
*replace br_disposed_dq=1 if unique_carrier_name=="Sun Air Express" & quarter==1 & year==2006 


**United Express


**Westward Airlines (Nebraska)
**ceased operations 7/25/2005
*replace shutdown_dq=1 if unique_carrier_name=="Westward Airlines" & quarter==3 & year==2005


**United Airlines
**United Airlines	December 9, 2002	February 1, 2006
replace filingYQ=tq(2002q4) if unique_carrier_name=="United Air Lines Inc."
replace disposedYQ=tq(2006q1) if unique_carrier_name=="United Air Lines Inc."
replace type=1 if unique_carrier_name=="United Air Lines Inc."


*******************************************************************
generate year = year(dofq(year_quarter))
generate quarter = quarter(dofq(year_quarter))



** Drop Major Airlines's 3 years after 1st shock (Filing ,Emergence, Shutdown)
 
* Alaska Airlines Inc. 2017q3
drop if unique_carrier_name == "Alaska Airlines Inc." & year == 2017 & quarter >= 3
drop if unique_carrier_name == "Alaska Airlines Inc." & year == 2018
drop if unique_carrier_name == "Alaska Airlines Inc." & year == 2019
drop if unique_carrier_name == "Alaska Airlines Inc." & year == 2020 & quarter <= 2


* American Airlines Inc. 2011q4, 2013q4
drop if unique_carrier_name == "American Airlines Inc." & year == 2011 & quarter >= 4
drop if unique_carrier_name == "American Airlines Inc." & year == 2012
drop if unique_carrier_name == "American Airlines Inc." & year == 2013
drop if unique_carrier_name == "American Airlines Inc." & year == 2014 & quarter <= 3

drop if unique_carrier_name == "American Airlines Inc." & year == 2013 & quarter >= 4
drop if unique_carrier_name == "American Airlines Inc." & year == 2014
drop if unique_carrier_name == "American Airlines Inc." & year == 2015
drop if unique_carrier_name == "American Airlines Inc." & year == 2016 & quarter <= 3


* Delta Air Lines Inc. 2005q3, 2007q2
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2005 & quarter >= 3
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2006
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2007
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2008 & quarter <= 2

drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2007 & quarter >= 2
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2008
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2009
drop if unique_carrier_name == "Delta Air Lines Inc." & year == 2010 & quarter <= 1

* Continental Airlines Inc. 1990q4, 1993q2
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1990 & quarter >= 4
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1991
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1992
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1993
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1994
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1995
drop if unique_carrier_name == "Continental Airlines Inc." & year == 1996 & quarter <= 1


* Hawaiian Airlines Inc. 1993q3, 1994q3 / 2003q1,2005q2
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1993 & quarter >= 3
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1994
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1995
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1996
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1994
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 1997 & quarter <= 2


drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2003 & quarter >= 1
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2004
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2005
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2006
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2007
drop if unique_carrier_name == "Hawaiian Airlines Inc." & year == 2008 & quarter <= 1


* National Airlines 2000q4~
* No Data


* Northwest Airlines Inc. 2005q3, 2007q2
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2005 & quarter >= 3
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2006
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2007
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2008
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2009
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2010 & quarter <= 1


* Pan American Airways Corp. 1998q1, 1998q2
drop if unique_carrier_name == "Pan American Airways Corp." & year == 1998 & quarter >= 1
drop if unique_carrier_name == "Pan American Airways Corp." & year == 1999
drop if unique_carrier_name == "Pan American Airways Corp." & year == 2000 
drop if unique_carrier_name == "Pan American Airways Corp." & year == 2001 & quarter <= 1



* Trans World Airways LLC 1992q1, 1993q4 / 1995q2, 1995q3 / 2001q1,2001q4
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1992 & quarter >= 1
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1993
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1994 
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1995
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1996 & quarter <= 3


drop if unique_carrier_name == "Trans World Airways LLC" & year == 1995 & quarter >= 2
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1996
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1997
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1998 & quarter <= 2

drop if unique_carrier_name == "Trans World Airways LLC" & year == 2001 & quarter >= 1
drop if unique_carrier_name == "Trans World Airways LLC" & year == 2002
drop if unique_carrier_name == "Trans World Airways LLC" & year == 2003 
drop if unique_carrier_name == "Trans World Airways LLC" & year == 2004 & quarter <= 3


* US Airways Inc. 2002q3, 2003q1 / 2004q3,2005q3
drop if unique_carrier_name == "US Airways Inc." & year == 2002 & quarter >= 3
drop if unique_carrier_name == "US Airways Inc." & year == 2003
drop if unique_carrier_name == "US Airways Inc." & year == 2004 
drop if unique_carrier_name == "US Airways Inc." & year == 2005

drop if unique_carrier_name == "US Airways Inc." & year == 2004 & quarter >= 3
drop if unique_carrier_name == "US Airways Inc." & year == 2005
drop if unique_carrier_name == "US Airways Inc." & year == 2006 
drop if unique_carrier_name == "US Airways Inc." & year == 2007 
drop if unique_carrier_name == "US Airways Inc." & year == 2008 & quarter <= 2


* United Air Lines Inc. 2002q4, 2006q1
drop if unique_carrier_name == "United Air Lines Inc." & year == 2002 & quarter >= 4
drop if unique_carrier_name == "United Air Lines Inc." & year == 2003
drop if unique_carrier_name == "United Air Lines Inc." & year == 2004
drop if unique_carrier_name == "United Air Lines Inc." & year == 2005
drop if unique_carrier_name == "United Air Lines Inc." & year == 2006
drop if unique_carrier_name == "United Air Lines Inc." & year == 2007
drop if unique_carrier_name == "United Air Lines Inc." & year == 2008


** Drop LCC's 3 years after 1st shock (Filing ,Emergence, Shutdown)
* AirTran Airways Corporation 2011q2, 2014q4
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2011 & quarter >= 2
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2012
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2013
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2014
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2015
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2015
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2016
drop if unique_carrier_name == "AirTran Airways Corporation" & year == 2017 & quarter <= 3


* Allegiant Air 2000q4, 2002q1
drop if unique_carrier_name == "Allegiant Air" & year == 2000 & quarter >= 4
drop if unique_carrier_name == "Allegiant Air" & year == 2001
drop if unique_carrier_name == "Allegiant Air" & year == 2002
drop if unique_carrier_name == "Allegiant Air" & year == 2003
drop if unique_carrier_name == "Allegiant Air" & year == 2004



* Frontier Airlines Inc. 2008q2, 2009q3
drop if unique_carrier_name == "Frontier Airlines Inc." & year == 2008 & quarter >= 2
drop if unique_carrier_name == "Frontier Airlines Inc." & year == 2009
drop if unique_carrier_name == "Frontier Airlines Inc." & year == 2010
drop if unique_carrier_name == "Frontier Airlines Inc." & year == 2011

drop if unique_carrier_name == "Frontier Airlines Inc." & year == 2012 & quarter <= 2


* Independence Air : rename compass air 3/29/2006. 2005q4,2006q1
drop if unique_carrier_name == "Independence Air" & year == 2005 & quarter >= 4
drop if unique_carrier_name == "Independence Air" & year == 2006
drop if unique_carrier_name == "Independence Air" & year == 2007
drop if unique_carrier_name == "Independence Air" & year == 2008

* compass air 3/29/2006. 2005q4,2006q1
drop if unique_carrier_name == "Compass Airlines" & year == 2005 & quarter >= 4
drop if unique_carrier_name == "Compass Airlines" & year == 2006
drop if unique_carrier_name == "Compass Airlines" & year == 2007
drop if unique_carrier_name == "Compass Airlines" & year == 2008


* Sun Country Airlines. 2001q4 / 2002q1, 2002q2 / 2008q4, 2011q3
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2001 & quarter >= 4
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2002
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2003
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2004 & quarter <= 3

drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2002 & quarter >= 1
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2003
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2004
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2005 & quarter <= 1

drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2008 & quarter >= 4
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2009
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2010
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2011
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2012
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2013
drop if unique_carrier_name == "Sun Country Airlines d/b/a MN Airlines" & year == 2014 & quarter <= 2


* Air South Inc. 1997q3,1997q3
drop if unique_carrier_name == "Air South Inc. (1)" & year == 1997 & quarter >= 3
drop if unique_carrier_name == "Air South Inc. (1)" & year == 1998	
drop if unique_carrier_name == "Air South Inc. (1)" & year == 1999	
drop if unique_carrier_name == "Air South Inc. (1)" & year == 2000 & quarter <= 2


* ATA Airlines d/b/a ATA 2004q4, 2006q1
drop if unique_carrier_name == "ATA Airlines d/b/a ATA" & year == 2004 & quarter >= 4
drop if unique_carrier_name == "ATA Airlines d/b/a ATA" & year == 2005
drop if unique_carrier_name == "ATA Airlines d/b/a ATA" & year == 2006
drop if unique_carrier_name == "ATA Airlines d/b/a ATA" & year == 2007
drop if unique_carrier_name == "ATA Airlines d/b/a ATA" & year == 2008


* Business Express 1996q1, 1997q2
drop if unique_carrier_name == "Business Express" & year == 1996 & quarter >= 1
drop if unique_carrier_name == "Business Express" & year == 1997	
drop if unique_carrier_name == "Business Express" & year == 1998
drop if unique_carrier_name == "Business Express" & year == 1999
drop if unique_carrier_name == "Business Express" & year == 2000 & quarter <= 1



* Pro Air Inc.  2000q3, 2000q3
drop if unique_carrier_name == "Pro Air Inc." & year == 2000 & quarter >= 3
drop if unique_carrier_name == "Pro Air Inc." & year == 2001
drop if unique_carrier_name == "Pro Air Inc." & year == 2002 
drop if unique_carrier_name == "Pro Air Inc." & year == 2003 & quarter <= 2


* Vanguard Airlines Inc. 2002q3, 2002q3
drop if unique_carrier_name == "Vanguard Airlines Inc." & year == 2002 & quarter >= 3
drop if unique_carrier_name == "Vanguard Airlines Inc." & year == 2003
drop if unique_carrier_name == "Vanguard Airlines Inc." & year == 2004
drop if unique_carrier_name == "Vanguard Airlines Inc." & year == 2005 & quarter <= 2


* Direct Air 2012q1
* No data


* Skybus Airlines, Inc. 2008q2, 2008q2
drop if unique_carrier_name == "Skybus Airlines, Inc." & year == 2008 & quarter >= 2
drop if unique_carrier_name == "Skybus Airlines, Inc." & year == 2009
drop if unique_carrier_name == "Skybus Airlines, Inc." & year == 2010
drop if unique_carrier_name == "Skybus Airlines, Inc." & year == 2011 & quarter <= 1



** Drop Neither Major nor LCC Airline's 3 years after 1st shock 
* Continental Air Lines Inc. 1990q4, 1993q2
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1990 & quarter >= 4
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1991
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1992
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1993
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1994
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1995
drop if unique_carrier_name == "Continental Air Lines Inc." & year == 1996 & quarter <= 1


* Northwest Airlines Inc. 2005q3, 2007q2
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2005 & quarter >= 3
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2006
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2007
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2008
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2009
drop if unique_carrier_name == "Northwest Airlines Inc." & year == 2010 & quarter <= 1


* US Airways Inc. 2002q3, 2003q1 / 2004q3,2005q3
drop if unique_carrier_name == "US Airways Inc." & year == 2002 & quarter >= 3
drop if unique_carrier_name == "US Airways Inc." & year == 2003
drop if unique_carrier_name == "US Airways Inc." & year == 2004
drop if unique_carrier_name == "US Airways Inc." & year == 2005

drop if unique_carrier_name == "US Airways Inc." & year == 2004 & quarter >= 3
drop if unique_carrier_name == "US Airways Inc." & year == 2005
drop if unique_carrier_name == "US Airways Inc." & year == 2006 
drop if unique_carrier_name == "US Airways Inc." & year == 2007
drop if unique_carrier_name == "US Airways Inc." & year == 2008 & quarter <= 2


* Trans World Airways LLC 1992q1,1993q4 / 1995q,1995q3 / 2001q1,2001q4
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1992 & quarter >= 1
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1993
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1994
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1995
drop if unique_carrier_name == "Trans World Airways LLC" & year == 1996 & quarter <= 3

drop if unique_carrier_name == "US Airways Inc." & year == 1995 & quarter >= 2
drop if unique_carrier_name == "US Airways Inc." & year == 1996
drop if unique_carrier_name == "US Airways Inc." & year == 1997
drop if unique_carrier_name == "US Airways Inc." & year == 1998 & quarter <= 2

drop if unique_carrier_name == "US Airways Inc." & year == 2001 & quarter >= 1
drop if unique_carrier_name == "US Airways Inc." & year == 2002
drop if unique_carrier_name == "US Airways Inc." & year == 2003
drop if unique_carrier_name == "US Airways Inc." & year == 2004 & quarter <= 3



* America West Airlines Inc. 1991q2, 1994q3
drop if unique_carrier_name == "America West Airlines Inc." & year == 1991 & quarter >= 2
drop if unique_carrier_name == "America West Airlines Inc." & year == 1992
drop if unique_carrier_name == "America West Airlines Inc." & year == 1993
drop if unique_carrier_name == "America West Airlines Inc." & year == 1994
drop if unique_carrier_name == "America West Airlines Inc." & year == 1995
drop if unique_carrier_name == "America West Airlines Inc." & year == 1996
drop if unique_carrier_name == "America West Airlines Inc." & year == 1997 & quarter <= 2


* Grand Airways Inc. 1995q4, 1996q1
drop if unique_carrier_name == "Grand Airways Inc." & year == 1995 & quarter >= 4
drop if unique_carrier_name == "Grand Airways Inc." & year == 1996
drop if unique_carrier_name == "Grand Airways Inc." & year == 1997
drop if unique_carrier_name == "Grand Airways Inc." & year == 1998

* Kiwi International 1996q3,1996q4 / 1999q1,1999q1
drop if unique_carrier_name == "Kiwi International" & year == 1996 & quarter >= 3
drop if unique_carrier_name == "Kiwi International" & year == 1997
drop if unique_carrier_name == "Kiwi International" & year == 1998 
drop if unique_carrier_name == "Kiwi International" & year == 1999 & quarter <= 3

drop if unique_carrier_name == "Kiwi International" & year == 1999 & quarter >= 1
drop if unique_carrier_name == "Kiwi International" & year == 2000
drop if unique_carrier_name == "Kiwi International" & year == 2001


* Tower Air Inc. 2000q1, 2000q2
drop if unique_carrier_name == "Tower Air Inc." & year == 2000 & quarter >= 1
drop if unique_carrier_name == "Tower Air Inc." & year == 2001
drop if unique_carrier_name == "Tower Air Inc." & year == 2002
drop if unique_carrier_name == "Tower Air Inc." & year == 2003 & quarter <= 1


* Western Pacific Airlines 1997q4, 1998q1
drop if unique_carrier_name == "Western Pacific Airlines" & year == 1997 & quarter >= 4
drop if unique_carrier_name == "Western Pacific Airlines" & year == 1998
drop if unique_carrier_name == "Western Pacific Airlines" & year == 1999
drop if unique_carrier_name == "Western Pacific Airlines" & year == 2000


* Elite Airways LLC 2005q3, 2007q2
drop if unique_carrier_name == "Elite Airways LLC" & year == 2005 & quarter >= 3
drop if unique_carrier_name == "Elite Airways LLC" & year == 2006
drop if unique_carrier_name == "Elite Airways LLC" & year == 2007
drop if unique_carrier_name == "Elite Airways LLC" & year == 2008
drop if unique_carrier_name == "Elite Airways LLC" & year == 2009
drop if unique_carrier_name == "Elite Airways LLC" & year == 2010 & quarter <= 1





