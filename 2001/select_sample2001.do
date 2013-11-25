

/* 2001 SIPP sample selection script */
/* selects core sample and merges topical datasets */

/* read http://www.census.gov/sipp/usrguide/sipp2001.pdf for general overview and structure */
/* look at http://www.census.gov/sipp/usrguide.html more up-to-date chapters */

** SIPP basics
**interviews conducted at 4 month intervals
**each interview is called a wave
**wave 1 is first interview


*** Some definitions regarding identication of sampling units

*** 1) household: obs with identical (ssuid, shhadid)
*** 2) families:  obs with identical (ssuid, shhadid,rfid)
*** 3) persons:   obs with identical (ssuid, epppnum)



** aim: 
** ==== 
              
** 1) from each wave, select subset of variables from Core Data to be used in analysis
** 2) for each wave where available, select subset of variables from Topical Data to be used in analysis
** 3) merge topical data into core dataset
** 4) save.

** topical modules index
** =====================

** sip01t2.dta: migration history. 

*	tprstate	state or country of previous home
*	eprevres	where the previous home was
*	tbrstate	state or country of birth
*	tmovyryr	year moved into current home
*	toutinyr	year moved into previous home
*	tmovest		year moved into this state
*	eprevten	type of tenure of the previous home
 
** sip01t3.dta: wealth. real estate, assets and liabilities, total net worth thhtnw
** doc at http://www.nber.org/sipp/2008/2008w4tm.pdf

*	thhtnw		total net worth recode
*	thhtwlth	total wealth recode
*	thhtheq		home equity recode
*	thhmortg	total debt owed on home
*	ehbuyyr 	year house was purchased
 	

** sip01t6.dta: wealth. real estate, assets and liabilities, total net worth thhtnw
** sip01t9.dta: wealth. real estate, assets and liabilities, total net worth thhtnw

** merge instructions:
** ===================

** Sort the core wave extract using SSUID (SUID), EENTAID (ENTRY), and EPPPNUM (PNUM) 
** as the sort keys. These three variables uniquely identify people in the core wave files. 
** If the core wave extract is in the person-month format, include SREFMON (REFMTH) 
** as the final sort key.

** Create an extract from the topical module file of interest. 
** Sort the topical module extract using SSUID (ID), EENTAID (ENTRY), 
** and EPPPNUM (PNUM) as the sort keys.


* prepare topical datasets
* for each of them sort in the right way

* merging topical into each wave loop
* given that the topical data is asked only once,
* those values are constant within each wave.

clear
cd ~/datasets/SIPP/2001/dta
set more off

** variable index is online at
** https://docs.google.com/spreadsheet/pub?key=0AnOrv_MIRexjdGZNNXZHb3ZXbmV5OXRJRFZTOE0yYnc&output=html

** switch to ; delimiter to enter this list
#delimit ;
local corevars ssuid
shhadid
srefmon
rhcalmn
errp
rhcalyr
tfipsst
tmovrflg
eoutcome
eppintvw
rhnf
tmetro
etenure
epubhse
tmthrnt
rfid
efrefper
rfnkids
wffinwgt
whfnwgt
tftotinc
epppnum
wpfinwgt
eenlevel
eeducate
eentaid
tage
esex
erace
eafnow
ems
epdjbthn
ersnowrk
east3e ;

** switch back;
#delimit cr

local wlthvars ssuid eentaid epppnum thhtnw thhtwlth thhtheq thhmortg ehbuyyr

tempfile tmp


foreach wave of numlist 1(1)9 {

	** open core(wave) dataset
	use `corevars' using sip01w`wave'.dta,clear

	** subset core data
	** ----------------

	** drop if non-interview
	drop if eppintvw > 2
	drop eppintvw

	** drop if not reference person?
	drop if errp>2
	** drop if age <15
	/*drop if tage < 15*/

	** sort in correct way
	sort ssuid eentaid epppnum srefmon

	** save as tmp
	save `tmp', replace

	** open migration history
	use sip01t2.dta,clear

	** merge required variables from mighist onto tmp 
	keep ssuid eentaid epppnum tprstate eprevres tbrstate tmovyryr toutinyr tmovest eprevten
	sort ssuid eentaid epppnum

	** merge m:1 because we have multiple observation per person (up to 4 per wave), but only
	** one entry per person on the topical file
	** alternatively could subset the core wave to reference month == 1 (or so) and just
    ** keep the first month (of 4)
	merge 1:m ssuid eentaid epppnum using `tmp', assert(master match) keep(match master)
	drop _merge

	** save tmp
	sort ssuid eentaid epppnum srefmon
	save `tmp', replace

	** open wealth
	use `wlthvars' using sip01t3.dta,clear
	sort ssuid eentaid epppnum

	** merge required variables from wealth4 onto tmp
	merge 1:m ssuid eentaid epppnum using `tmp', assert(master match) keep(match master)
	drop _merge
	
	** save tmp
	sort ssuid eentaid epppnum srefmon
	save `tmp', replace

	** open wealth
	use `wlthvars' using sip01t6.dta,clear
	sort ssuid eentaid epppnum

	** merge required variables with suffix _7 from wealth7 onto tmp
	merge 1:m ssuid eentaid epppnum using `tmp', assert(master match) keep(match master)
	drop _merge
	
	** save tmp
	sort ssuid eentaid epppnum srefmon
	save`tmp', replace

	** save 
	sort ssuid eentaid epppnum srefmon
	save core_and_topical/core_top`wave'.dta, replace

}

cd $root/2001/dta/core_and_topical
use core_top1.dta, clear

foreach wave of numlist 2(1)9 {

	append using core_top`wave'.dta

}

save core_top_2001.dta,replace










