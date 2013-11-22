
clear
cap log close
local dat_name "../dat/`2'.dat"

** The following line should contain the path to your output '.dta' file 

local dta_name "../dta/`1'.dta"

** The following line should contain the path to the data dictionary file 

local dct_name "`1'.dct"


** The line below does NOT need to be changed 

quietly infile using "`dct_name'", using("`dat_name'") clear

**  Decimal places have been made explict in the dictionary file.
**  Stata resolves a missing value of -1 / # of decimal places as a missing value.

**Everything below this point, aside from the final save, are value labels

#delimit ;

label values spanel   spanel; 
label define spanel  
	2004        "Panel Year"                    
;
label values tfipsst  tfipsst;
label define tfipsst 
	1           "Alabama"                       
	2           "Alaska"                        
	4           "Arizona"                       
	5           "Arkansas"                      
	6           "California"                    
	8           "Colorado"                      
	9           "Connecticut"                   
	10          "Delaware"                      
	11          "DC"                            
	12          "Florida"                       
	13          "Georgia"                       
	15          "Hawaii"                        
	16          "Idaho"                         
	17          "Illinois"                      
	18          "Indiana"                       
	19          "Iowa"                          
	20          "Kansas"                        
	21          "Kentucky"                      
	22          "Louisiana"                     
	23          "Maine"                         
	24          "Maryland"                      
	25          "Massachusetts"                 
	26          "Michigan"                      
	27          "Minnesota"                     
	28          "Mississippi"                   
	29          "Missouri"                      
	30          "Montana"                       
	31          "Nebraska"                      
	32          "Nevada"                        
	33          "New Hampshire"                 
	34          "New Jersey"                    
	35          "New Mexico"                    
	36          "New York"                      
	37          "North Carolina"                
	38          "North Dakota"                  
	39          "Ohio"                          
	40          "Oklahoma"                      
	41          "Oregon"                        
	42          "Pennsylvania"                  
	44          "Rhode Island"                  
	45          "South Carolina"                
	46          "South Dakota"                  
	47          "Tennessee"                     
	48          "Texas"                         
	49          "Utah"                          
	50          "Vermont"                       
	51          "Virginia"                      
	53          "Washington"                    
	54          "West Virginia"                 
	55          "Wisconsin"                     
	56          "Wyoming"                       
;
label values eoutcome eoutcome;
label define eoutcome
	201         "Completed interview"           
	203         "Compl. partial- missing data; no"
	207         "Complete partial - TYPE-Z; no" 
	213         "TYPE-A, language problem"      
	216         "TYPE-A, no one home (noh)"     
	217         "TYPE-A, temporarily absent (ta)"
	218         "TYPE-A, hh refused"            
	219         "TYPE-A, other occupied (specify)"
	234         "TYPE-B, entire hh institut. or"
	248         "TYPE-C, other (specify)"       
	249         "TYPE-C, sample adjustment"     
	250         "TYPE-C, hh deceased"           
	251         "TYPE-C, moved out of country"  
	252         "TYPE-C, living in armed forces"
	253         "TYPE-C, on active duty in Armed"
	254         "TYPE-C, no one over age 15 years"
	255         "TYPE-C, no Wave 1 persons"     
	260         "TYPE-D, moved address unknown" 
	261         "TYPE-D, moved within U.S. but" 
	262         "TYPE-C, merged with another SIPP"
	270         "TYPE-C, mover, no longer located"
	271         "TYPE-C, mover, new address"    
	280         "TYPE-D, mover, no longer located"
;
label values rfid2    rfid2l; 
label define rfid2l  
	-1          "Not in Universe"               
;
label values epopstat epopstat;
label define epopstat
	1           "Adult (15 years of age or older)"
	2           "Child (Under 15 years of age)" 
;
label values eppintvw eppintvw;
label define eppintvw
	1           "Interview (self)"              
	2           "Interview (proxy)"             
	3           "Noninterview - Type Z"         
	4           "Noninterview - pseudo Type Z." 
	5           "Children under 15 during"      
;
label values eppmis4  eppmis4l;
label define eppmis4l
	1           "Interview"                     
	2           "Non-interview"                 
;
label values esex     esex;   
label define esex    
	1           "MALE"                          
	2           "FEMALE"                        
;
label values erace    erace;  
label define erace   
	1           "White alone"                   
	2           "Black alone"                   
	3           "Asian alone"                   
	4           "Residual"                      
;
label values eorigin  eorigin;
label define eorigin 
	2           "No"                            
	1           "Yes"                           
;
label values wpfinwgt wpfinwgt;
label define wpfinwgt
	0           "0000:999999.9999 .Final person weight"
;
label values errp     errp;   
label define errp    
	1           "Reference person with related" 
	2           "Reference Person without related"
	3           "Spouse of reference person"    
	4           "Child of reference person"     
	5           "Grandchild of reference person"
	6           "Parent of reference person"    
	7           "Brother/sister of reference person"
	8           "Other relative of reference person"
	9           "Foster child of reference person"
	10          "Unmarried partner of reference"
	11          "Housemate/roommate"            
	12          "Roomer/boarder"                
	13          "Other non-relative of reference"
;
label values tage     tage;   
label define tage    
	0           "Less than 1 full year old"     
;
label values ems      ems;    
label define ems     
	1           "Married, spouse present"       
	2           "Married, spouse absent"        
	3           "Widowed"                       
	4           "Divorced"                      
	5           "Separated"                     
	6           "Never Married"                 
;
label values epnspous epnspous;
label define epnspous
	9999        "Spouse not in household or person"
;
label values epnmom   epnmom; 
label define epnmom  
	9999        "No mother in household"        
;
label values epndad   epndad; 
label define epndad  
	9999        "No father in household"        
;
label values epnguard epnguard;
label define epnguard
	9999        "Guardian not in household"     
	-1          "Not in Universe"               
;
label values rdesgpnt rdesgpnt;
label define rdesgpnt
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eeducate eeducate;
label define eeducate
	31          "Less Than 1st Grade"           
	32          "1st, 2nd, 3rd or 4th grade"    
	33          "5th Or 6th Grade"              
	34          "7th Or 8th Grade"              
	35          "9th Grade"                     
	36          "10th Grade"                    
	37          "11th Grade"                    
	38          "12th grade, no diploma"        
	39          "High School Graduate - (diploma"
	40          "Some college, but no degree"   
	41          "Diploma or certificate from a" 
	43          "Associate (2-yr) college degree"
	44          "Bachelor's degree (for example:"
	45          "Master's degree (For example: MA,"
	46          "Professional School degree (for"
	47          "Doctorate degree (for example:"
	-1          "Not in Universe"               
;
label values sinthhid sinthhid;
label define sinthhid
	0           "Not In Universe"               
;
label values earcunv  earcunv;
label define earcunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values ecurafdc ecurafdc;
label define ecurafdc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acurafdc acurafdc;
label define acurafdc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eevrgard eevrgard;
label define eevrgard
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avergard avergard;
label define avergard
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaplafdc eaplafdc;
label define eaplafdc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaplafdc aaplafdc;
label define aaplafdc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ercvafdc ercvafdc;
label define ercvafdc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arcvafdc arcvafdc;
label define arcvafdc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tafdcsty tafdcsty;
label define tafdcsty
	-1          "Not in Universe"               
;
label values aafdcsty aafdcsty;
label define aafdcsty
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tafdcly  tafdcly;
label define tafdcly 
	-1          "Not in Universe"               
;
label values aafdcly  aafdcly;
label define aafdcly 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tafdctim tafdctim;
label define tafdctim
	1           "One time on ADFC/TANF"         
	2           "Two times on ADFC/TANF"        
	3           "Three or more times on ADFC/TANF"
	-1          "Not in Universe"               
;
label values aafdctim aafdctim;
label define aafdctim
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecurssi  ecurssi;
label define ecurssi 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acurssi  acurssi;
label define acurssi 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaplssi  eaplssi;
label define eaplssi 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaplssi  aaplssi;
label define aaplssi 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erecvssi erecvssi;
label define erecvssi
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arecvssi arecvssi;
label define arecvssi
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tssistry tssistry;
label define tssistry
	-1          "Not in Universe"               
;
label values assistry assistry;
label define assistry
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tssily   tssily; 
label define tssily  
	-1          "Not in Universe"               
;
label values assily   assily; 
label define assily  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecurfs   ecurfs; 
label define ecurfs  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acurfs   acurfs; 
label define acurfs  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaplfs   eaplfs; 
label define eaplfs  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaplfs   aaplfs; 
label define aaplfs  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erecvfs  erecvfs;
label define erecvfs 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arecvfs  arecvfs;
label define arecvfs 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfsstryr tfsstryr;
label define tfsstryr
	-1          "Not in Universe"               
;
label values afsstryr afsstryr;
label define afsstryr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfsly    tfsly;  
label define tfsly   
	-1          "Not in Universe"               
;
label values afsly    afsly;  
label define afsly   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfstimes tfstimes;
label define tfstimes
	1           "One time on food stamps"       
	2           "Two times on food stamps"      
	3           "Three or more times on food stamps"
	-1          "Not in Universe"               
;
label values afstimes afstimes;
label define afstimes
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaemunv  eaemunv;
label define eaemunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values ewk1bfor ewk1bfor;
label define ewk1bfor
	1           "Working at another job/business"
	2           "Not working at another"        
	-1          "Not in Universe"               
;
label values awk1bfor awk1bfor;
label define awk1bfor
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values twk1lsjb twk1lsjb;
label define twk1lsjb
	0           "Never worked at another"       
	-1          "Not in Universe"               
;
label values awk1lsjb awk1lsjb;
label define awk1lsjb
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tlstwrky tlstwrky;
label define tlstwrky
	0           "Never worked"                  
	-1          "Not in Universe"               
;
label values alstwrky alstwrky;
label define alstwrky
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tprvjbyr tprvjbyr;
label define tprvjbyr
	0           "Never worked at another"       
	-1          "Not in Universe"               
;
label values aprvjbyr aprvjbyr;
label define aprvjbyr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfrmryr  tfrmryr;
label define tfrmryr 
	-1          "Not in Universe"               
;
label values afrmryr  afrmryr;
label define afrmryr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tmakmnyr tmakmnyr;
label define tmakmnyr
	0           "Never worked 6 straight months"
	-1          "Not in Universe"               
;
label values amakmnyr amakmnyr;
label define amakmnyr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eno6all1 eno6allr;
label define eno6allr
	1           "Taking care of a minor child"  
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all2 eno6allk;
label define eno6allk
	1           "Taking care of an elderly family"
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all3 eno6alll;
label define eno6alll
	1           "Taking care of a disabled but" 
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all4 eno6allm;
label define eno6allm
	1           "Other family or home"          
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all5 eno6alln;
label define eno6alln
	1           "Own illness or disability"     
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all6 eno6allo;
label define eno6allo
	1           "Could not find work"           
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all7 eno6allp;
label define eno6allp
	1           "Did not want to work"          
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all8 eno6allq;
label define eno6allq
	1           "Going to school"               
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values eno6all9 eno6alls;
label define eno6alls
	1           "Other reason"                  
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values ano6all  ano6all;
label define ano6all 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnreson emnreson;
label define emnreson
	1           "Taking care of a minor child"  
	2           "Taking care of an elderly family"
	3           "Taking care of a disabled but" 
	4           "Other family or home"          
	5           "Own illness or disability"     
	6           "Could not find work"           
	7           "Did not want to work"          
	8           "Going to school"               
	9           "Other"                         
	-1          "Not in Universe"               
;
label values amnreson amnreson;
label define amnreson
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eanyoff  eanyoff;
label define eanyoff 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aanyoff  aanyoff;
label define aanyoff 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehowmany ehowmany;
label define ehowmany
	-1          "Not in Universe"               
;
label values ahowmany ahowmany;
label define ahowmany
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimeoff etimeoff;
label define etimeoff
	-1          "Not in Universe"               
;
label values atimeoff atimeoff;
label define atimeoff
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewrk35hr ewrk35hr;
label define ewrk35hr
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awrk35hr awrk35hr;
label define awrk35hr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoff6mtn eoff6mtn;
label define eoff6mtn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoff6mtn aoff6mtn;
label define aoff6mtn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothtime eothtime;
label define eothtime
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothtime aothtime;
label define aothtime
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecntothr ecntothr;
label define ecntothr
	-1          "Not in Universe"               
;
label values acntothr acntothr;
label define acntothr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tnowrkfr tnowrkfr;
label define tnowrkfr
	-1          "Not in Universe"               
;
label values anowrkfr anowrkfr;
label define anowrkfr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tnowrkto tnowrkto;
label define tnowrkto
	-1          "Not in Universe"               
;
label values anowrkto anowrkto;
label define anowrkto
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfstyrfr tfstyrfr;
label define tfstyrfr
	-1          "Not in Universe"               
;
label values afstyrfr afstyrfr;
label define afstyrfr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tfstyrto tfstyrto;
label define tfstyrto
	-1          "Not in Universe"               
;
label values afstyrto afstyrto;
label define afstyrto
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enwall1  enwall1l;
label define enwall1l
	1           "Taking care of a minor child"  
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values enwall2  enwall2l;
label define enwall2l
	1           "Taking care of an elderly family"
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values enwall3  enwall3l;
label define enwall3l
	1           "Taking care of a disabled but" 
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values anwall   anwall; 
label define anwall  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enwresn  enwresn;
label define enwresn 
	1           "A  minor  child"               
	2           "An elderly family member"      
	3           "A disabled but non-elderly family"
	-1          "Not in Universe"               
;
label values anwresn  anwresn;
label define anwresn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efstall1 efstalln;
label define efstalln
	1           "A  minor  child"               
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values efstall2 efstallk;
label define efstallk
	1           "An elderly family member"      
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values efstall3 efstalll;
label define efstalll
	1           "A disabled but non-elderly family"
	-1          "Not in Universe"               
	0           "Not applicable"                
;
label values afstall  afstall;
label define afstall 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efrstrsn efrstrsn;
label define efrstrsn
	1           "A minor  child"                
	2           "An elderly family member"      
	3           "A disabled but non-elderly family"
	-1          "Not in Universe"               
;
label values afrstrsn afrstrsn;
label define afrstrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;

#delimit cr
saveold `dta_name' , replace


** Copyright 2010 shared by the National Bureau of Economic Research and Jean Roth ;

** National Bureau of Economic Research. ;
** 1050 Massachusetts Avenue ;
** Cambridge, MA 02138 ;
** jroth@nber.org ;

** This program and all programs referenced in it are free software. You ;
** can redistribute the program or modify it under the terms of the GNU ;
** General Public License as published by the Free Software Foundation; 
** either version 2 of the License, or (at your option) any later version. ;

** This program is distributed in the hope that it will be useful, ;
** but WITHOUT ANY WARRANTY, without even the implied warranty of ;
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the ;
** GNU General Public License for more details. ;

** You should have received a copy of the GNU General Public License ;
** along with this program, if not, write to the Free Software ;
** Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA. ;
