
** construct dta files form raw data
** =================================

** Loop over all 2008 SIPP panel do files as supplied by NBER
** note that the do files of each wave have have been adapted
** to work with this script.

clear
set more off
cd ~/datasets/SIPP/2008/do


forvalues i = 1(1)13  {

	** if core data does not exist, make it
	capture confirm file "../dta/sippl08puw`i'.dta"
	if _rc!=0 {
		
		display "doing core wave `i'"
		do sippl08puw`i'.do sippl08puw`i' l08puw`i'
	} 

	if `i' < 12 {

		** if topical module data does not exist, make it
		capture confirm file "../dta/sippp08putm`i'.dta"
		if _rc!=0 {
			
		display "doing topical wave `i'"
			do sippp08putm`i'.do sippp08putm`i' p08putm`i'
		} 
	}
}


