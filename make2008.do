
** construct dta files form raw data
** =================================

** Loop over all 2008 SIPP panel do files as supplied by NBER
** note that the do files of each wave have have been adapted
** to work with this script.

** if you downloaded my git repository, you have got a folder 2008/
** that contains all modified NBER do files.

** if for some reason you don't want to use those,
** you must MANUALLY change the NBER scripts so that they take 
** an input argument. In particular, you must ERASE everything above the
** commented line:

** The line below does NOT need to be changed

** with this:

/*clear*/
/*cap log close*/
/*local dat_name "../dat/`2'.dat"*/

/*** The following line should contain the path to your output '.dta' file */

/*local dta_name "../dta/`1'.dta"*/

/*** The following line should contain the path to the data dictionary file */

/*local dct_name "`1'.dct"*/

** https://github.com/floswald/SippData

** copyright NBER. see the original file in do_NBER

clear
set more off
global root "~/datasets/SIPP"
global progs "~/git/SippData/2008"

** go into current year's dictionary directory
cd "$root/2008/dct"


forvalues i = 1(1)13  {

	** if core data does not exist, make it
	capture confirm file "../dta/sippl08puw`i'.dta"
	if _rc!=0 {
		
		display "doing core wave `i'"
		do $progs/sippl08puw`i'.do sippl08puw`i' l08puw`i'
	} 

	if `i' < 12 {

		** if topical module data does not exist, make it
		capture confirm file "../dta/sippp08putm`i'.dta"
		if _rc!=0 {
			
		display "doing topical wave `i'"
			do $progs/sippp08putm`i'.do sippp08putm`i' p08putm`i'
		} 
	}
	** make longitudinal weight
	do $progs/sipplgtwgt2008w7.do
}


