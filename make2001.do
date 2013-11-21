
** construct dta files form raw data
** =================================

** Loop over all 2001 SIPP panel do files as supplied by NBER
** note that the do files of each wave have have been adapted
** to work with this script.

clear
cd ~/datasets/SIPP/2001/do


forvalues i = 1(1)9  {

	** if core data does not exist, make it
	capture confirm file "../dta/sippl01puw`i'.dta"
	if _rc!=0 {
		
		display "doing core wave `i'"
		do sip01w`i'.do sip01w`i' l01puw`i'

	} 


	** if topical module data does not exist, make it
	capture confirm file "../dta/sippp01putm`i'.dta"
	if _rc!=0 {
		
		display "doing topical wave `i'"
		do sip01t`i'.do sip01t`i' p01putm`i'
	}
}


