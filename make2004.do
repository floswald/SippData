
** construct dta files form raw data
** =================================

** Loop over all 2004 SIPP panel do files as supplied by NBER
** note that the do files of each wave have have been adapted
** to work with this script.

clear
set more off
cd ~/datasets/SIPP/2004/do


forvalues i = 1(1)12  {

	** if core data does not exist, make it
	capture confirm file "../dta/sippl04puw`i'.dta"
	if _rc!=0 {

		display "doing core wave `i'"
		
		do sip04w`i'.do sip04w`i' l04puw`i'

	} 

	if `i' < 9 {


		** if topical module data does not exist, make it
		capture confirm file "../dta/sippp04putm`i'.dta"
		if _rc!=0 {
			
		display "doing topical wave `i'"
			do sip04t`i'.do sip04t`i' p04putm`i'
		} 
	}
}


