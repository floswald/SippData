
clear
cap log close
local dat_name "../dat/`2'.dat"

** The following line should contain the path to your output '.dta' file 

local dta_name "../dta/`1'.dta"

** The following line should contain the path to the data dictionary file 

local dct_name "`1'.dct"

/* The line below does NOT need to be changed */

quietly infile using "`dct_name'", using("`dat_name'") clear

/*------------------------------------------------

  Decimal places have been made explict in the dictionary file.
  Stata resolves a missing value of -1 / # of decimal places as a missing value.

 -----------------------------------------------*/

*Everything below this point, aside from the final save, are value labels

#delimit ;

;
label values spanel   spanel; 
label define spanel  
	1996        "Panel Year"                    
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
	39          "Ohio"                          
	40          "Oklahoma"                      
	41          "Oregon"                        
	42          "Pennsylvania"                  
	44          "Rhode Island"                  
	45          "South Carolina"                
	47          "Tennessee"                     
	48          "Texas"                         
	49          "Utah"                          
	51          "Virginia"                      
	53          "Washington"                    
	54          "West Virginia"                 
	55          "Wisconsin"                     
	61          "Maine, Vermont"                
	62          "North Dakota, South Dakota,"   
;
label values sinthhid sinthhid;
label define sinthhid
	0           "Not in universe"               
;
label values eoutcome eoutcome;
label define eoutcome
	201         "Completed interview"           
	203         "Compl. partial- missing data; no"
	207         "Complete partial - TYPE-Z; no" 
	213         "TYPE-A, language problem"      
	215         "TYPE-A, insufficient partial"  
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
	261         "TYPE-D, moved w/in U.S. but"   
	262         "Merged with another SIPP household"
	270         "Mover, no longer located in same"
	271         "Mover, new address located in" 
	280         "Newly spawned case outside fr's"
;
label values rfid2    rfid2l; 
label define rfid2l  
	0           "Member of related subfamily"   
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
	4           "Nonintrvw - pseudo Type Z.  Left"
	5           "Children under 15 during"      
;
label values eppmis4  eppmis4l;
label define eppmis4l
	1           "Interview"                     
	2           "Non-interview"                 
;
label values esex     esex;   
label define esex    
	1           "Male"                          
	2           "Female"                        
;
label values erace    erace;  
label define erace   
	1           "White"                         
	2           "Black"                         
	3           "American Indian, Aleut, or Eskimo"
	4           "Asian or Pacific Islander"     
;
label values eorigin  eorigin;
label define eorigin 
	1           "Canadian"                      
	10          "Polish"                        
	11          "Russian"                       
	12          "Scandinavian"                  
	13          "Scotch-Irish"                  
	14          "Scottish"                      
	15          "Slovak"                        
	16          "Welsh"                         
	17          "Other European"                
	2           "Dutch"                         
	20          "Mexican"                       
	21          "Mexican-American"              
	22          "Chicano"                       
	23          "Puerto Rican"                  
	24          "Cuban"                         
	25          "Central American"              
	26          "South American"                
	27          "Dominican Republic"            
	28          "Other Hispanic"                
	3           "English"                       
	30          "African-American or Afro-American"
	31          "American Indian, Eskimo, or Aleut"
	32          "Arab"                          
	33          "Asian"                         
	34          "Pacific Islander"              
	35          "West Indian"                   
	39          "Another group not listed"      
	4           "French"                        
	40          "American"                      
	5           "French-Canadian"               
	6           "German"                        
	7           "Hungarian"                     
	8           "Irish"                         
	9           "Italian"                       
;
label values wpfinwgt wpfinwgt;
label define wpfinwgt
	0           "0000:999999.9999 .Final person weight"
;
label values errp     errp;   
label define errp    
	1           "Reference person w/ rel. persons"
	10          "Unmarried partner of reference"
	11          "Housemate/roommate"            
	12          "Roomer/boarder"                
	13          "Other non-relative of reference"
	2           "Reference Person w/out rel."   
	3           "Spouse of reference person"    
	4           "Child of reference person"     
	5           "Grandchild of reference person"
	6           "Parent of reference person"    
	7           "Brother/sister of reference person"
	8           "Other relative of reference person"
	9           "Foster child of reference person"
;
label values tage     tage;   
label define tage    
	0           "Less than 1 full year old"     
;
label values ems      ems;    
label define ems     
	1           "Married, spouse present"       
	2           "Married, Spouse absent"        
	3           "Widowed"                       
	4           "Divorced"                      
	5           "Separated"                     
	6           "Never Married"                 
;
label values epnspous epnspous;
label define epnspous
	9999        "Spouse not in hhld or person not"
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
	-1          "Not in universe"               
	9999        "Guardian not in household"     
;
label values rdesgpnt rdesgpnt;
label define rdesgpnt
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eeducate eeducate;
label define eeducate
	-1          "Not in universe"               
	31          "Less than 1st grade"           
	32          "1st, 2nd, 3rd or 4th grade"    
	33          "5th or 6th grade"              
	34          "7th or 8th grade"              
	35          "9th grade"                     
	36          "10th grade"                    
	37          "11th grade"                    
	38          "12th grade"                    
	39          "High school graduate - high"   
	40          "Some college but no degree"    
	41          "Diploma or certificate from a" 
	42          "Associate degree in college -" 
	43          "Associate Degree in college -" 
	44          "Bachelors degree (For example:"
	45          "Master's degree (For example: MA,"
	46          "Professional School Degree (For"
	47          "Doctorate degree (For example:"
;
label values eacsunv  eacsunv;
label define eacsunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values ecskid01 ecskid0v;
label define ecskid0v
	-1          "Not in universe"               
;
label values ecskid02 ecskid0k;
label define ecskid0k
	-1          "Not in universe"               
;
label values ecskid03 ecskid0l;
label define ecskid0l
	-1          "Not in universe"               
;
label values ecskid04 ecskid0m;
label define ecskid0m
	-1          "Not in universe"               
;
label values ecskid05 ecskid0n;
label define ecskid0n
	-1          "Not in universe"               
;
label values ecskid06 ecskid0o;
label define ecskid0o
	-1          "Not in universe"               
;
label values ecskid07 ecskid0p;
label define ecskid0p
	-1          "Not in universe"               
;
label values ecskid08 ecskid0q;
label define ecskid0q
	-1          "Not in universe"               
;
label values ecskid09 ecskid0r;
label define ecskid0r
	-1          "Not in universe"               
;
label values ecskid10 ecskid1v;
label define ecskid1v
	-1          "Not in universe"               
;
label values eynoab01 eynoab0v;
label define eynoab0v
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other Parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab02 eynoab0k;
label define eynoab0k
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab03 eynoab0l;
label define eynoab0l
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab04 eynoab0m;
label define eynoab0m
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab05 eynoab0n;
label define eynoab0n
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab06 eynoab0o;
label define eynoab0o
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab07 eynoab0p;
label define eynoab0p
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab08 eynoab0q;
label define eynoab0q
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab09 eynoab0r;
label define eynoab0r
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values eynoab10 eynoab1v;
label define eynoab1v
	1           "Other parent has died"         
	2           "Both parents live in the household"
	3           "Parents are separated/divorced"
	4           "Don't want contact with child's"
	5           "Don't know where child's other"
	6           "Other parent lives elsewhere"  
	7           "Other parent legally terminated"
	8           "Other parent is no longer"     
	9           "Child was adopted by a single" 
	10          "Other"                         
	-1          "Not in universe"               
;
label values aynoab   aynoab; 
label define aynoab  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values recrdflg recrdflg;
label define recrdflg
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ecsflg01 ecsflg0g;
label define ecsflg0g
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg02 ecsflg0k;
label define ecsflg0k
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg03 ecsflg0l;
label define ecsflg0l
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg04 ecsflg0m;
label define ecsflg0m
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg05 ecsflg0n;
label define ecsflg0n
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg06 ecsflg0o;
label define ecsflg0o
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg07 ecsflg0p;
label define ecsflg0p
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg08 ecsflg0q;
label define ecsflg0q
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg09 ecsflg0r;
label define ecsflg0r
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values ecsflg10 ecsflg1g;
label define ecsflg1g
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
	-1          "Not in universe"               
;
label values acsflg   acsflg; 
label define acsflg  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ranyagre ranyagre;
label define ranyagre
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values tnumagr  tnumagr;
label define tnumagr 
	-1          "Not in universe"               
;
label values anumagr  anumagr;
label define anumagr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etypeagr etypeagr;
label define etypeagr
	1           "Voluntary written agreement"   
	2           "Court-ordered agreement"       
	3           "Other type of written agreement"
	4           "A non-written verbal agreement"
	-1          "Not in universe"               
;
label values atypeagr atypeagr;
label define atypeagr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efirsyr1 efirsyrr;
label define efirsyrr
	-1          "Not in universe"               
;
label values afirsyr1 afirsyrr;
label define afirsyrr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtag11 tamtag1r;
label define tamtag1r
	0           "None or not in universe"       
;
label values eamtag12 eamtag1r;
label define eamtag1r
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aamtag11 aamtag1r;
label define aamtag1r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eevrchg1 eevrchgr;
label define eevrchgr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aevrchg1 aevrchgr;
label define aevrchgr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eyrchng1 eyrchngr;
label define eyrchngr
	-1          "Not in universe"               
;
label values ayrchng1 ayrchngr;
label define ayrchngr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtcg11 tamtcg1r;
label define tamtcg1r
	0           "None or not in universe"       
;
label values eamtcg12 eamtcg1r;
label define eamtcg1r
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aamtcg11 aamtcg1r;
label define aamtcg1r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhochgd ewhochgd;
label define ewhochgd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awhochgd awhochgd;
label define awhochgd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epaydue1 epaydued;
label define epaydued
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaydue1 apaydued;
label define apaydued
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eynodue1 eynodued;
label define eynodued
	1           "Child(ren) over the age limit" 
	2           "Other parent not working"      
	3           "Other parent in jail or"       
	4           "Payment suspended by court or" 
	5           "Other reason"                  
	-1          "Not in universe"               
;
label values aynodue1 aynodued;
label define aynodued
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtsup1 tamtsupd;
label define tamtsupd
	0           "None or not in universe"       
;
label values aamtsup1 aamtsupd;
label define aamtsupd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehowrec1 ehowrecd;
label define ehowrecd
	1           "Directly from the other parent"
	2           "Through the court"             
	3           "Through the welfare or child"  
	4           "Some other method"             
	-1          "Not in universe"               
;
label values ahowrec1 ahowrecd;
label define ahowrecd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tactrec1 tactrecd;
label define tactrecd
	0           "None or not in universe"       
;
label values aactrec1 aactrecd;
label define aactrecd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eallpay1 eallpayd;
label define eallpayd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aallpay1 aallpayd;
label define aallpayd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epaytim1 epaytimd;
label define epaytimd
	1           "All of the time"               
	2           "Most of the time"              
	3           "Some of the time"              
	4           "None of the time"              
	-1          "Not in universe"               
;
label values apaytim1 apaytimd;
label define apaytimd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epayful1 epayfuld;
label define epayfuld
	1           "All"                           
	2           "Most"                          
	3           "Some"                          
	4           "None"                          
	-1          "Not in universe"               
;
label values apayful1 apayfuld;
label define apayfuld
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eduback1 edubackd;
label define edubackd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aduback1 adubackd;
label define adubackd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tdolbac1 tdolbacd;
label define tdolbacd
	0           "Not in universe"               
;
label values adolbac1 adolbacd;
label define adolbacd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebacowe1 ebacowed;
label define ebacowed
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abacowe1 abacowed;
label define abacowed
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtowe1 tamtowed;
label define tamtowed
	0           "Not in universe"               
;
label values aamtowe1 aamtowed;
label define aamtowed
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbacrec1 tbacrecd;
label define tbacrecd
	0           "Not in universe"               
;
label values abacrec1 abacrecd;
label define abacrecd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehthag11 ehthag1d;
label define ehthag1d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag12 ehthag1k;
label define ehthag1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag13 ehthag1l;
label define ehthag1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag14 ehthag1m;
label define ehthag1m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag15 ehthag1n;
label define ehthag1n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag16 ehthag1o;
label define ehthag1o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahthag11 ahthag1d;
label define ahthag1d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecustag1 ecustagd;
label define ecustagd
	1           "Joint legal and physical custody"
	2           "Joint legal with mother physical"
	3           "Joint Legal with father physical"
	4           "Mother legal and physical custody"
	5           "Father legal and physical custody"
	6           "Split custody"                 
	7           "Other custody arrangement"     
	-1          "Not in universe"               
;
label values acustag1 acustagd;
label define acustagd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values espentm1 espentmd;
label define espentmd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspentm1 aspentmd;
label define aspentmd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esametm1 esametmd;
label define esametmd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asametm1 asametmd;
label define asametmd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eamttm11 eamttm1d;
label define eamttm1d
	-1          "Not in universe"               
;
label values eamttm12 eamttm1k;
label define eamttm1k
	-1          "Not in universe"               
;
label values eamttm13 eamttm1l;
label define eamttm1l
	-1          "Not in universe"               
;
label values aamttm11 aamttm1d;
label define aamttm1d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewherlv1 ewherlvd;
label define ewherlvd
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
	-1          "Not in universe"               
;
label values awherlv1 awherlvd;
label define awherlvd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estagre1 estagred;
label define estagred
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astagre1 astagred;
label define astagred
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhomov1 ewhomovd;
label define ewhomovd
	1           "Subject person"                
	2           "Other parent"                  
	3           "Both subject person and other" 
	-1          "Not in universe"               
;
label values awhomov1 awhomovd;
label define awhomovd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efirsyr2 efirsyrd;
label define efirsyrd
	-1          "Not in universe"               
;
label values afirsyr2 afirsyrd;
label define afirsyrd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtag21 tamtag2d;
label define tamtag2d
	0           "None or not in universe"       
;
label values eamtag22 eamtag2d;
label define eamtag2d
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aamtag21 aamtag2d;
label define aamtag2d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eevrchg2 eevrchgd;
label define eevrchgd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aevrchg2 aevrchgd;
label define aevrchgd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eyrchng2 eyrchngd;
label define eyrchngd
	-1          "Not in universe"               
;
label values ayrchng2 ayrchngd;
label define ayrchngd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtcg21 tamtcg2d;
label define tamtcg2d
	0           "None or not in universe"       
;
label values eamtcg22 eamtcg2d;
label define eamtcg2d
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aamtcg21 aamtcg2d;
label define aamtcg2d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epaydue2 epayduek;
label define epayduek
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaydue2 apayduek;
label define apayduek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eynodue2 eynoduek;
label define eynoduek
	1           "Child(ren) over the age limit" 
	2           "Other parent not working"      
	3           "Other parent in jail or"       
	4           "Payment suspended by court or" 
	5           "Other reason"                  
	-1          "Not in universe"               
;
label values aynodue2 aynoduek;
label define aynoduek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtsup2 tamtsupk;
label define tamtsupk
	0           "None or not in universe"       
;
label values aamtsup2 aamtsupk;
label define aamtsupk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tactrec2 tactreck;
label define tactreck
	0           "None or not in universe"       
;
label values aactrec2 aactreck;
label define aactreck
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eallpay2 eallpayk;
label define eallpayk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aallpay2 aallpayk;
label define aallpayk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epaytim2 epaytimk;
label define epaytimk
	1           "All of the time"               
	2           "Most of the time"              
	3           "Some of the time"              
	4           "None of the time"              
	-1          "Not in universe"               
;
label values apaytim2 apaytimk;
label define apaytimk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epayful2 epayfulk;
label define epayfulk
	1           "All"                           
	2           "Most"                          
	3           "Some"                          
	4           "None"                          
	-1          "Not in universe"               
;
label values apayful2 apayfulk;
label define apayfulk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eduback2 edubackk;
label define edubackk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aduback2 adubackk;
label define adubackk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tdolbac2 tdolback;
label define tdolback
	1           "Data suppressed"               
	0           "Not in universe"               
;
label values adolbac2 adolback;
label define adolback
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebacowe2 ebacowek;
label define ebacowek
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abacowe2 abacowek;
label define abacowek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtowe2 tamtowek;
label define tamtowek
	0           "None or not in universe"       
;
label values aamtowe2 aamtowek;
label define aamtowek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbacrec2 tbacreck;
label define tbacreck
	0           "Not in universe"               
;
label values abacrec2 abacreck;
label define abacreck
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehltag21 ehltag2d;
label define ehltag2d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag22 ehltag2k;
label define ehltag2k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag23 ehltag2l;
label define ehltag2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag24 ehltag2m;
label define ehltag2m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag25 ehltag2n;
label define ehltag2n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag26 ehltag2o;
label define ehltag2o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahltag21 ahltag2d;
label define ahltag2d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecustag2 ecustagk;
label define ecustagk
	1           "Child(ren) Live with mother"   
	2           "Child(ren) live With father"   
	3           "Child(ren) live with mother and"
	4           "None"                          
	5           "Other"                         
	-1          "Not in universe"               
;
label values acustag2 acustagk;
label define acustagk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values espentm2 espentmk;
label define espentmk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspentm2 aspentmk;
label define aspentmk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esametm2 esametmk;
label define esametmk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asametm2 asametmk;
label define asametmk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eamttm21 eamttm2d;
label define eamttm2d
	-1          "Not in universe"               
;
label values eamttm22 eamttm2k;
label define eamttm2k
	-1          "Not in universe"               
;
label values eamttm23 eamttm2l;
label define eamttm2l
	-1          "Not in universe"               
;
label values aamttm21 aamttm2d;
label define aamttm2d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edcrt101 edcrt10d;
label define edcrt10d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt102 edcrt10k;
label define edcrt10k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt103 edcrt10l;
label define edcrt10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt104 edcrt10m;
label define edcrt10m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt105 edcrt10n;
label define edcrt10n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt106 edcrt10o;
label define edcrt10o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt107 edcrt10p;
label define edcrt10p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt108 edcrt10q;
label define edcrt10q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt109 edcrt10r;
label define edcrt10r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt110 edcrt11d;
label define edcrt11d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes101 edtes10d;
label define edtes10d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes102 edtes10k;
label define edtes10k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes103 edtes10l;
label define edtes10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes104 edtes10m;
label define edtes10m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes105 edtes10n;
label define edtes10n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes106 edtes10o;
label define edtes10o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes107 edtes10p;
label define edtes10p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes108 edtes10q;
label define edtes10q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes109 edtes10r;
label define edtes10r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes110 edtes11d;
label define edtes11d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer101 edcer10d;
label define edcer10d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer102 edcer10k;
label define edcer10k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer103 edcer10l;
label define edcer10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer104 edcer10m;
label define edcer10m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer105 edcer10n;
label define edcer10n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer106 edcer10o;
label define edcer10o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer107 edcer10p;
label define edcer10p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer108 edcer10q;
label define edcer10q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer109 edcer10r;
label define edcer10r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer110 edcer11d;
label define edcer11d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig101 edsig10d;
label define edsig10d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig102 edsig10k;
label define edsig10k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig103 edsig10l;
label define edsig10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig104 edsig10m;
label define edsig10m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig105 edsig10n;
label define edsig10n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig106 edsig10o;
label define edsig10o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig107 edsig10p;
label define edsig10p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig108 edsig10q;
label define edsig10q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig109 edsig10r;
label define edsig10r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig110 edsig11d;
label define edsig11d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth101 edoth10d;
label define edoth10d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth102 edoth10k;
label define edoth10k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth103 edoth10l;
label define edoth10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth104 edoth10m;
label define edoth10m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth105 edoth10n;
label define edoth10n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth106 edoth10o;
label define edoth10o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth107 edoth10p;
label define edoth10p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth108 edoth10q;
label define edoth10q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth109 edoth10r;
label define edoth10r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth110 edoth11d;
label define edoth11d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adid101  adid101l;
label define adid101l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar1   edmar1l;
label define edmar1l 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar1   admar1l;
label define admar1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edcrt201 edcrt20d;
label define edcrt20d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt202 edcrt20k;
label define edcrt20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt203 edcrt20l;
label define edcrt20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt204 edcrt20m;
label define edcrt20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt205 edcrt20n;
label define edcrt20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt206 edcrt20o;
label define edcrt20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt207 edcrt20p;
label define edcrt20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt208 edcrt20q;
label define edcrt20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt209 edcrt20r;
label define edcrt20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt210 edcrt21d;
label define edcrt21d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes201 edtes20d;
label define edtes20d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes202 edtes20k;
label define edtes20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes203 edtes20l;
label define edtes20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes204 edtes20m;
label define edtes20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes205 edtes20n;
label define edtes20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes206 edtes20o;
label define edtes20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes207 edtes20p;
label define edtes20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes208 edtes20q;
label define edtes20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes209 edtes20r;
label define edtes20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes210 edtes21d;
label define edtes21d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer201 edcer20d;
label define edcer20d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer202 edcer20k;
label define edcer20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer203 edcer20l;
label define edcer20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer204 edcer20m;
label define edcer20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer205 edcer20n;
label define edcer20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer206 edcer20o;
label define edcer20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer207 edcer20p;
label define edcer20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer208 edcer20q;
label define edcer20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer209 edcer20r;
label define edcer20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer210 edcer21d;
label define edcer21d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig201 edsig20d;
label define edsig20d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig202 edsig20k;
label define edsig20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig203 edsig20l;
label define edsig20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig204 edsig20m;
label define edsig20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig205 edsig20n;
label define edsig20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig206 edsig20o;
label define edsig20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig207 edsig20p;
label define edsig20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig208 edsig20q;
label define edsig20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig209 edsig20r;
label define edsig20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig210 edsig21d;
label define edsig21d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth201 edoth20d;
label define edoth20d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth202 edoth20k;
label define edoth20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth203 edoth20l;
label define edoth20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth204 edoth20m;
label define edoth20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth205 edoth20n;
label define edoth20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth206 edoth20o;
label define edoth20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth207 edoth20p;
label define edoth20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth208 edoth20q;
label define edoth20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth209 edoth20r;
label define edoth20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth210 edoth21d;
label define edoth21d
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adid201  adid201l;
label define adid201l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eynevwr1 eynevwrd;
label define eynevwrd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr2 eynevwrk;
label define eynevwrk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr3 eynevwrl;
label define eynevwrl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr4 eynevwrm;
label define eynevwrm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr5 eynevwrn;
label define eynevwrn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr6 eynevwro;
label define eynevwro
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr7 eynevwrp;
label define eynevwrp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr8 eynevwrq;
label define eynevwrq
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aynevwr1 aynevwrd;
label define aynevwrd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewherlv2 ewherlvk;
label define ewherlvk
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
	-1          "Not in universe"               
;
label values awherlv2 awherlvk;
label define awherlvk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estagre2 estagrek;
label define estagrek
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astagre2 astagrek;
label define astagrek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhomov2 ewhomovk;
label define ewhomovk
	1           "Subject person"                
	2           "Other parent"                  
	3           "Both subject person and other" 
	-1          "Not in universe"               
;
label values awhomov2 awhomovk;
label define awhomovk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtag31 tamtag3d;
label define tamtag3d
	0           "None or not in universe"       
;
label values eamtag32 eamtag3d;
label define eamtag3d
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aamtag31 aamtag3d;
label define aamtag3d
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tactrec3 tactrecl;
label define tactrecl
	0           "None or not in universe"       
;
label values aactrec3 aactrecl;
label define aactrecl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epubsupp epubsupp;
label define epubsupp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apubsupp apubsupp;
label define apubsupp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elastask elastask;
label define elastask
	-1          "Not in universe"               
;
label values alastask alastask;
label define alastask
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etypask1 etypaskk;
label define etypaskk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask2 etypaskl;
label define etypaskl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask3 etypaskm;
label define etypaskm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask4 etypaskn;
label define etypaskn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask5 etypasko;
label define etypasko
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask6 etypaskp;
label define etypaskp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask7 etypaskq;
label define etypaskq
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atypask  atypask;
label define atypask 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehelpsyn ehelpsyn;
label define ehelpsyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahelpsyn ahelpsyn;
label define ahelpsyn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etyphlp1 etyphlpn;
label define etyphlpn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp2 etyphlpk;
label define etyphlpk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp3 etyphlpl;
label define etyphlpl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp4 etyphlpm;
label define etyphlpm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp5 etyphlpo;
label define etyphlpo
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp6 etyphlpp;
label define etyphlpp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp7 etyphlpq;
label define etyphlpq
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atyphlp  atyphlp;
label define atyphlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edcrt301 edcrt30p;
label define edcrt30p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt302 edcrt30k;
label define edcrt30k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt303 edcrt30l;
label define edcrt30l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt304 edcrt30m;
label define edcrt30m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt305 edcrt30n;
label define edcrt30n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt306 edcrt30o;
label define edcrt30o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt307 edcrt30q;
label define edcrt30q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt308 edcrt30r;
label define edcrt30r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt309 edcrt30s;
label define edcrt30s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt310 edcrt31p;
label define edcrt31p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes301 edtes30p;
label define edtes30p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes302 edtes30k;
label define edtes30k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes303 edtes30l;
label define edtes30l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes304 edtes30m;
label define edtes30m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes305 edtes30n;
label define edtes30n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes306 edtes30o;
label define edtes30o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes307 edtes30q;
label define edtes30q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes308 edtes30r;
label define edtes30r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes309 edtes30s;
label define edtes30s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes310 edtes31p;
label define edtes31p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer301 edcer30p;
label define edcer30p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer302 edcer30k;
label define edcer30k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer303 edcer30l;
label define edcer30l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer304 edcer30m;
label define edcer30m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer305 edcer30n;
label define edcer30n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer306 edcer30o;
label define edcer30o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer307 edcer30q;
label define edcer30q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer308 edcer30r;
label define edcer30r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer309 edcer30s;
label define edcer30s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer310 edcer31p;
label define edcer31p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig301 edsig30p;
label define edsig30p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig302 edsig30k;
label define edsig30k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig303 edsig30l;
label define edsig30l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig304 edsig30m;
label define edsig30m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig305 edsig30n;
label define edsig30n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig306 edsig30o;
label define edsig30o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig307 edsig30q;
label define edsig30q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig308 edsig30r;
label define edsig30r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig309 edsig30s;
label define edsig30s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig310 edsig31p;
label define edsig31p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth301 edoth30p;
label define edoth30p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth302 edoth30k;
label define edoth30k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth303 edoth30l;
label define edoth30l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth304 edoth30m;
label define edoth30m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth305 edoth30n;
label define edoth30n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth306 edoth30o;
label define edoth30o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth307 edoth30q;
label define edoth30q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth308 edoth30r;
label define edoth30r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth309 edoth30s;
label define edoth30s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth310 edoth31p;
label define edoth31p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adid301  adid301l;
label define adid301l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar201 edmar20p;
label define edmar20p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar201 admar20p;
label define admar20p
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar202 edmar20k;
label define edmar20k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar202 admar20k;
label define admar20k
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar203 edmar20l;
label define edmar20l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar203 admar20l;
label define admar20l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar204 edmar20m;
label define edmar20m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar204 admar20m;
label define admar20m
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar205 edmar20n;
label define edmar20n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar205 admar20n;
label define admar20n
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar206 edmar20o;
label define edmar20o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar206 admar20o;
label define admar20o
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar207 edmar20q;
label define edmar20q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar207 admar20q;
label define admar20q
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar208 edmar20r;
label define edmar20r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar208 admar20r;
label define admar20r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar209 edmar20s;
label define edmar20s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar209 admar20s;
label define admar20s
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edmar210 edmar21p;
label define edmar21p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values admar210 admar21p;
label define admar21p
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame01  esame01l;
label define esame01l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame01  asame01l;
label define asame01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame02  esame02l;
label define esame02l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame02  asame02l;
label define asame02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame03  esame03l;
label define esame03l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame03  asame03l;
label define asame03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame04  esame04l;
label define esame04l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame04  asame04l;
label define asame04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame05  esame05l;
label define esame05l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame05  asame05l;
label define asame05l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame06  esame06l;
label define esame06l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame06  asame06l;
label define asame06l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame07  esame07l;
label define esame07l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame07  asame07l;
label define asame07l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame08  esame08l;
label define esame08l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame08  asame08l;
label define asame08l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame09  esame09l;
label define esame09l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame09  asame09l;
label define asame09l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esame10  esame10l;
label define esame10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asame10  asame10l;
label define asame10l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edcrt401 edcrt40p;
label define edcrt40p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt402 edcrt40k;
label define edcrt40k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt403 edcrt40l;
label define edcrt40l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt404 edcrt40m;
label define edcrt40m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt405 edcrt40n;
label define edcrt40n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt406 edcrt40o;
label define edcrt40o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt407 edcrt40q;
label define edcrt40q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt408 edcrt40r;
label define edcrt40r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt409 edcrt40s;
label define edcrt40s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt410 edcrt41p;
label define edcrt41p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes401 edtes40p;
label define edtes40p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes402 edtes40k;
label define edtes40k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes403 edtes40l;
label define edtes40l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes404 edtes40m;
label define edtes40m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes405 edtes40n;
label define edtes40n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes406 edtes40o;
label define edtes40o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes407 edtes40q;
label define edtes40q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes408 edtes40r;
label define edtes40r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes409 edtes40s;
label define edtes40s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes410 edtes41p;
label define edtes41p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer401 edcer40p;
label define edcer40p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer402 edcer40k;
label define edcer40k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer403 edcer40l;
label define edcer40l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer404 edcer40m;
label define edcer40m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer405 edcer40n;
label define edcer40n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer406 edcer40o;
label define edcer40o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer407 edcer40q;
label define edcer40q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer408 edcer40r;
label define edcer40r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer409 edcer40s;
label define edcer40s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer410 edcer41p;
label define edcer41p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig401 edsig40p;
label define edsig40p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig402 edsig40k;
label define edsig40k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig403 edsig40l;
label define edsig40l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig404 edsig40m;
label define edsig40m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig405 edsig40n;
label define edsig40n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig406 edsig40o;
label define edsig40o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig407 edsig40q;
label define edsig40q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig408 edsig40r;
label define edsig40r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig409 edsig40s;
label define edsig40s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig410 edsig41p;
label define edsig41p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth401 edoth40p;
label define edoth40p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth402 edoth40k;
label define edoth40k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth403 edoth40l;
label define edoth40l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth404 edoth40m;
label define edoth40m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth405 edoth40n;
label define edoth40n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth406 edoth40o;
label define edoth40o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth407 edoth40q;
label define edoth40q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth408 edoth40r;
label define edoth40r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth409 edoth40s;
label define edoth40s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth410 edoth41p;
label define edoth41p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adid401  adid401l;
label define adid401l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid402  adid402l;
label define adid402l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid403  adid403l;
label define adid403l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid404  adid404l;
label define adid404l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid405  adid405l;
label define adid405l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid406  adid406l;
label define adid406l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid407  adid407l;
label define adid407l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid408  adid408l;
label define adid408l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid409  adid409l;
label define adid409l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values adid410  adid410l;
label define adid410l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esamepar esamepar;
label define esamepar
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asamepar asamepar;
label define asamepar
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eynoag11 eynoag1r;
label define eynoag1r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag12 eynoag1k;
label define eynoag1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag13 eynoag1l;
label define eynoag1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag14 eynoag1m;
label define eynoag1m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag15 eynoag1n;
label define eynoag1n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag16 eynoag1o;
label define eynoag1o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag17 eynoag1p;
label define eynoag1p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag18 eynoag1q;
label define eynoag1q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aynoag11 aynoag1r;
label define aynoag1r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewherlv3 ewherlvr;
label define ewherlvr
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
	-1          "Not in universe"               
;
label values awherlv3 awherlvr;
label define awherlvr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values evisagr1 evisagrr;
label define evisagrr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avisagr1 avisagrr;
label define avisagrr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eamttm41 eamttm4r;
label define eamttm4r
	-1          "Not in universe"               
;
label values eamttm42 eamttm4k;
label define eamttm4k
	-1          "Not in universe"               
;
label values eamttm43 eamttm4l;
label define eamttm4l
	-1          "Not in universe"               
;
label values aamttm41 aamttm4r;
label define aamttm4r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eynoag21 eynoag2r;
label define eynoag2r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag22 eynoag2k;
label define eynoag2k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag23 eynoag2l;
label define eynoag2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag24 eynoag2m;
label define eynoag2m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag25 eynoag2n;
label define eynoag2n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag26 eynoag2o;
label define eynoag2o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag27 eynoag2p;
label define eynoag2p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag28 eynoag2q;
label define eynoag2q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aynoag21 aynoag2r;
label define aynoag2r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewherlv4 ewherlvl;
label define ewherlvl
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
	-1          "Not in universe"               
;
label values awherlv4 awherlvl;
label define awherlvl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values evisagr2 evisagrk;
label define evisagrk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avisagr2 avisagrk;
label define avisagrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eamttm51 eamttm5r;
label define eamttm5r
	-1          "Not in universe"               
;
label values eamttm52 eamttm5k;
label define eamttm5k
	-1          "Not in universe"               
;
label values eamttm53 eamttm5l;
label define eamttm5l
	-1          "Not in universe"               
;
label values aamttm51 aamttm5r;
label define aamttm5r
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epayrecv epayrecv;
label define epayrecv
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apayrecv apayrecv;
label define apayrecv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tactrec4 tactrecv;
label define tactrecv
	0           "None or not in universe"       
;
label values aactrec4 aactrecv;
label define aactrecv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothitem eothitem;
label define eothitem
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothitem aothitem;
label define aothitem
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eagencol eagencol;
label define eagencol
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aagencol aagencol;
label define aagencol
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eagenall eagenall;
label define eagenall
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aagenall aagenall;
label define aagenall
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtagen tamtagen;
label define tamtagen
	0           "Not in universe"               
;
label values aamtagen aamtagen;
label define aamtagen
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values easnunv  easnunv;
label define easnunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values esupkdyn esupkdyn;
label define esupkdyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupkdyn asupkdyn;
label define asupkdyn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuptyp1 esuptypn;
label define esuptypn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuptyp2 esuptypk;
label define esuptypk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuptyp3 esuptypl;
label define esuptypl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asuptyp  asuptyp;
label define asuptyp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupnkid tsupnkid;
label define tsupnkid
	-1          "Not in universe"               
;
label values asupnkid asupnkid;
label define asupnkid
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupltad tsupltad;
label define tsupltad
	-1          "Not in universe"               
;
label values asupltad asupltad;
label define asupltad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupagrm esupagrm;
label define esupagrm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupagrm asupagrm;
label define asupagrm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupnagr tsupnagr;
label define tsupnagr
	-1          "Not in universe"               
;
label values asupnagr asupnagr;
label define asupnagr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupagty esupagty;
label define esupagty
	1           "Voluntary written agreement"   
	2           "Court-ordered agreement"       
	3           "Other type of written agreement"
	4           "Non-written agreement"         
	-1          "Not in universe"               
;
label values asupagty asupagty;
label define asupagty
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupagyr esupagyr;
label define esupagyr
	-1          "Not in universe"               
;
label values asupagyr asupagyr;
label define asupagyr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupamtc esupamtc;
label define esupamtc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupamtc asupamtc;
label define asupamtc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
;
label values esupyrch esupyrch;
label define esupyrch
	-1          "Not in universe"               
;
label values asupyrch asupyrch;
label define asupyrch
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupchag esupchag;
label define esupchag
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupchag asupchag;
label define asupchag
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupstlp esupstlp;
label define esupstlp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupstlp asupstlp;
label define asupstlp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupampd tsupampd;
label define tsupampd
	0           "None or Not in universe"       
;
label values asupampd asupampd;
label define asupampd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuphopy esuphopy;
label define esuphopy
	1           "Through employment related wage"
	2           "Directly to the other parent?" 
	3           "Directly to The Court?"        
	4           "Directly to a child support"   
	5           "By some other method?"         
	-1          "Not in universe"               
;
label values asuphopy asuphopy;
label define asuphopy
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuphlt1 esuphlty;
label define esuphlty
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt2 esuphltk;
label define esuphltk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt3 esuphltl;
label define esuphltl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt4 esuphltm;
label define esuphltm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt5 esuphltn;
label define esuphltn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt6 esuphlto;
label define esuphlto
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asuphlt  asuphlt;
label define asuphlt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupcust esupcust;
label define esupcust
	1           "Joint legal and physical custody"
	2           "Joint Legal with mother physical"
	3           "Joint legal with father physical"
	4           "Mother legal and physical custody"
	5           "Father legal and physical custody"
	6           "Split custody"                 
	7           "Other-Specify"                 
	-1          "Not in universe"               
;
label values asupcust asupcust;
label define asupcust
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupsptm esupsptm;
label define esupsptm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupsptm asupsptm;
label define asupsptm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuptam1 esuptamm;
label define esuptamm
	-1          "Not in universe"               
;
label values esuptam2 esuptamk;
label define esuptamk
	-1          "Not in universe"               
;
label values esuptam3 esuptaml;
label define esuptaml
	-1          "Not in universe"               
;
label values asuptam  asuptam;
label define asuptam 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotha esupotha;
label define esupotha
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupotha asupotha;
label define asupotha
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupamal tsupamal;
label define tsupamal
	0           "None or Not in universe"       
;
label values asupamal asupamal;
label define asupamal
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupwoag esupwoag;
label define esupwoag
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupwoag asupwoag;
label define asupwoag
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupamad tsupamad;
label define tsupamad
	0           "None or Not in universe"       
;
label values asupamad asupamad;
label define asupamad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuptma1 esuptmad;
label define esuptmad
	-1          "Not in universe"               
;
label values asuptma1 asuptmad;
label define asuptmad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuptma2 esuptmak;
label define esuptmak
	-1          "Not in universe"               
;
label values asuptma2 asuptmak;
label define asuptmak
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esuptma3 esuptmal;
label define esuptmal
	-1          "Not in universe"               
;
label values asuptma3 asuptmal;
label define asuptmal
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotpy esupotpy;
label define esupotpy
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupotpy asupotpy;
label define asupotpy
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupotnp tsupotnp;
label define tsupotnp
	-1          "Not in universe"               
;
label values asupotnp asupotnp;
label define asupotnp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotre esupotre;
label define esupotre
	1           "Parent"                        
	2           "Spouse"                        
	3           "Ex-spouse"                     
	4           "Child under 21"                
	5           "Child over 21"                 
	6           "Other relative"                
	7           "Not related"                   
	-1          "Not in universe"               
;
label values asupotre asupotre;
label define asupotre
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotlv esupotlv;
label define esupotlv
	1           "Private home or apartment"     
	2           "Nursing home"                  
	3           "Someplace else"                
	-1          "Not in universe"               
;
label values asupotlv asupotlv;
label define asupotlv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupotam tsupotam;
label define tsupotam
	0           "None or not in universe"       
;
label values asupotam asupotam;
label define asupotam
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotrl esupotrl;
label define esupotrl
	1           "Parent"                        
	2           "Spouse"                        
	3           "Ex-spouse"                     
	4           "Child under 21"                
	5           "Child over 21"                 
	6           "Other relative"                
	7           "Not related"                   
	-1          "Not in universe"               
;
label values asupotrl asupotrl;
label define asupotrl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotli esupotli;
label define esupotli
	1           "Private home or apartment"     
	2           "Nursing home"                  
	3           "Someplace else"                
	-1          "Not in universe"               
;
label values asupotli asupotli;
label define asupotli
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupotpa tsupotpa;
label define tsupotpa
	0           "None or not in universe"       
;
label values asupotpa asupotpa;
label define asupotpa
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tsupotnt tsupotnt;
label define tsupotnt
	0           "None or not in universe"       
;
label values asupotnt asupotnt;
label define asupotnt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaadunv  eaadunv;
label define eaadunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values ehstat   ehstat; 
label define ehstat  
	1           "Excellent"                     
	2           "Very good"                     
	3           "Good"                          
	4           "Fair"                          
	5           "Poor"                          
	-1          "Not in universe"               
;
label values ahstat   ahstat; 
label define ahstat  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecane    ecane;  
label define ecane   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acane    acane;  
label define acane   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewchair  ewchair;
label define ewchair 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awchair  awchair;
label define awchair 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehearaid ehearaid;
label define ehearaid
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahearaid ahearaid;
label define ahearaid
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecane6   ecane6l;
label define ecane6l 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acane6   acane6l;
label define acane6l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eseedif  eseedif;
label define eseedif 
	3           "Person is Blind"               
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aseedif  aseedif;
label define aseedif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eseenot  eseenot;
label define eseenot 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aseenot  aseenot;
label define aseenot 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eheardif eheardif;
label define eheardif
	3           "Person is deaf"                
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aheardif aheardif;
label define aheardif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehearnot ehearnot;
label define ehearnot
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahearnot ahearnot;
label define ahearnot
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values espeechd espeechd;
label define espeechd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspeechd aspeechd;
label define aspeechd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values espeechc espeechc;
label define espeechc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspeechc aspeechc;
label define aspeechc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edif10   edif10l;
label define edif10l 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adif10   adif10l;
label define adif10l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecant10  ecant10l;
label define ecant10l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acant10  acant10l;
label define acant10l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edif25   edif25l;
label define edif25l 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adif25   adif25l;
label define adif25l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecant25  ecant25l;
label define ecant25l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acant25  acant25l;
label define acant25l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epushd   epushd; 
label define epushd  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apushd   apushd; 
label define apushd  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epushc   epushc; 
label define epushc  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apushc   apushc; 
label define apushc  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estandd  estandd;
label define estandd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astandd  astandd;
label define astandd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esitd    esitd;  
label define esitd   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asitd    asitd;  
label define asitd   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estoopd  estoopd;
label define estoopd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astoopd  astoopd;
label define astoopd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ereachd  ereachd;
label define ereachd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values areachd  areachd;
label define areachd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egraspd  egraspd;
label define egraspd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agraspd  agraspd;
label define agraspd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egraspc  egraspc;
label define egraspc 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agraspc  agraspc;
label define agraspc 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estairsd estairsd;
label define estairsd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astairsd astairsd;
label define astairsd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estairsc estairsc;
label define estairsc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astairsc astairsc;
label define astairsc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewalkd   ewalkd; 
label define ewalkd  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awalkd   awalkd; 
label define awalkd  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewalkc   ewalkc; 
label define ewalkc  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awalkc   awalkc; 
label define awalkc  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eteled   eteled; 
label define eteled  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ateled   ateled; 
label define ateled  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etelec   etelec; 
label define etelec  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atelec   atelec; 
label define atelec  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eindif   eindif; 
label define eindif  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aindif   aindif; 
label define aindif  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoutdif  eoutdif;
label define eoutdif 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoutdif  aoutdif;
label define aoutdif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebeddif  ebeddif;
label define ebeddif 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abeddif  abeddif;
label define abeddif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebathdif ebathdif;
label define ebathdif
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abathdif abathdif;
label define abathdif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edressd  edressd;
label define edressd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adressd  adressd;
label define adressd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewalk2d  ewalk2d;
label define ewalk2d 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awalk2d  awalk2d;
label define awalk2d 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eeatdif  eeatdif;
label define eeatdif 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aeatdif  aeatdif;
label define aeatdif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etoiletd etoiletd;
label define etoiletd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atoiletd atoiletd;
label define atoiletd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emoneyd  emoneyd;
label define emoneyd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amoneyd  amoneyd;
label define amoneyd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emealsd  emealsd;
label define emealsd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amealsd  amealsd;
label define amealsd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehworkd  ehworkd;
label define ehworkd 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahworkd  ahworkd;
label define ahworkd 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedd    emedd;  
label define emedd   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedd    amedd;  
label define amedd   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values einhelp  einhelp;
label define einhelp 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ainhelp  ainhelp;
label define ainhelp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eouthelp eouthelp;
label define eouthelp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aouthelp aouthelp;
label define aouthelp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebedhelp ebedhelp;
label define ebedhelp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abedhelp abedhelp;
label define abedhelp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebathh   ebathh; 
label define ebathh  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abathh   abathh; 
label define abathh  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edressh  edressh;
label define edressh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adressh  adressh;
label define adressh 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewalk2h  ewalk2h;
label define ewalk2h 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awalk2h  awalk2h;
label define awalk2h 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eeathelp eeathelp;
label define eeathelp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aeathelp aeathelp;
label define aeathelp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etoileth etoileth;
label define etoileth
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atoileth atoileth;
label define atoileth
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emoneyh  emoneyh;
label define emoneyh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amoneyh  amoneyh;
label define amoneyh 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emealsh  emealsh;
label define emealsh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amealsh  amealsh;
label define amealsh 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehworkh  ehworkh;
label define ehworkh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahworkh  ahworkh;
label define ahworkh 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedh    emedh;  
label define emedh   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedh    amedh;  
label define amedh   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehelper1 ehelperh;
label define ehelperh
	1           "Son"                           
	2           "Daughter"                      
	3           "Spouse"                        
	4           "Parent"                        
	5           "Other relative"                
	6           "Friend or neighbor"            
	7           "Paid help"                     
	8           "Other nonrelative"             
	9           "Did not receive help"          
	-1          "Not in universe"               
;
label values ahelper1 ahelperh;
label define ahelperh
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehhmemb1 ehhmembh;
label define ehhmembh
	-3          "Not a household member"        
	-1          "Not in universe"               
;
label values ahhmemb1 ahhmembh;
label define ahhmembh
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehelper2 ehelperk;
label define ehelperk
	1           "No one else helped"            
	2           "Son"                           
	3           "Daughter"                      
	4           "Spouse"                        
	5           "Parent"                        
	6           "Other relative"                
	7           "Friend or neighbor"            
	8           "Paid help"                     
	9           "Other nonrelative"             
	-1          "Not in universe"               
;
label values ahelper2 ahelperk;
label define ahelperk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehhmemb2 ehhmembk;
label define ehhmembk
	-3          "Not a household member"        
	-1          "Not in universe"               
;
label values ahhmemb2 ahhmembk;
label define ahhmembk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehowlong ehowlong;
label define ehowlong
	1           "Less than 6 months"            
	2           "6 to 11 months"                
	3           "1 to 2 years"                  
	4           "3 to 5 years"                  
	5           "More than 5 years"             
	-1          "Not in universe"               
;
label values ahowlong ahowlong;
label define ahowlong
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epayhelp epayhelp;
label define epayhelp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apayhelp apayhelp;
label define apayhelp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epayamt  epayamt;
label define epayamt 
	0           "None or not in universe"       
;
label values apayamt  apayamt;
label define apayamt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econd1   econd1l;
label define econd1l 
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble(including ulcers,"
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
	-1          "Not in universe"               
;
label values acond1   acond1l;
label define acond1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econd2   econd2l;
label define econd2l 
	-1          "Not in universe or no second"  
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values econd3   econd3l;
label define econd3l 
	-1          "Not in universe or no third"   
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values econdph1 econdpht;
label define econdpht
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
	-1          "Not in universe"               
;
label values acondph1 acondpht;
label define acondpht
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econdph2 econdphk;
label define econdphk
	-1          "Not in universe or no second"  
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values econdph3 econdphl;
label define econdphl
	-1          "Not in universe or no third"   
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values emotorv  emotorv;
label define emotorv 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amotorv  amotorv;
label define amotorv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emain1   emain1l;
label define emain1l 
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
	-1          "Not in universe"               
;
label values amain1   amain1l;
label define amain1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyear1   tyear1l;
label define tyear1l 
	-1          "Not in universe"               
;
label values ayear1   ayear1l;
label define ayear1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emonth1  emonth1l;
label define emonth1l
	-1          "Not in universe"               
;
label values amonth1  amonth1l;
label define amonth1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehad5m   ehad5m; 
label define ehad5m  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elast12m elast12m;
label define elast12m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alast12m alast12m;
label define alast12m
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eldis    eldis;  
label define eldis   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aldis    aldis;  
label define aldis   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emr      emr;    
label define emr     
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amr      amr;    
label define amr     
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edevdis  edevdis;
label define edevdis 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adevdis  adevdis;
label define adevdis 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ealz     ealz;   
label define ealz    
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aalz     aalz;   
label define aalz    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eotherm  eotherm;
label define eotherm 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aotherm  aotherm;
label define aotherm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eanxious eanxious;
label define eanxious
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aanxious aanxious;
label define aanxious
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esocial  esocial;
label define esocial 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asocial  asocial;
label define asocial 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ectrate  ectrate;
label define ectrate 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values actrate  actrate;
label define actrate 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecope    ecope;  
label define ecope   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acope    acope;  
label define acope   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintrfer eintrfer;
label define eintrfer
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintrfer aintrfer;
label define aintrfer
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejobdif  ejobdif;
label define ejobdif 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajobdif  ajobdif;
label define ajobdif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejobcant ejobcant;
label define ejobcant
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajobcant ajobcant;
label define ajobcant
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehwrkdif ehwrkdif;
label define ehwrkdif
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahwrkdif ahwrkdif;
label define ahwrkdif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehwrkno  ehwrkno;
label define ehwrkno 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahwrkno  ahwrkno;
label define ahwrkno 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econdw1  econdw1l;
label define econdw1l
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
	-1          "Not in universe"               
;
label values acondw1  acondw1l;
label define acondw1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econdw2  econdw2l;
label define econdw2l
	-1          "Not in universe or no second"  
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values econdw3  econdw3l;
label define econdw3l
	-1          "Not in universe or no third"   
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values emain2   emain2l;
label define emain2l 
	1           "Alcohol or drug problem or"    
	2           "AIDS or AIDS Related Condition"
	3           "Arthritis or rheumatism"       
	4           "Back or spine problems (including"
	5           "Blindness or vision problems"  
	6           "Broken bone/fracture"          
	7           "Cancer"                        
	8           "Cerebral palsy"                
	9           "Deafness or hearing problems"  
	10          "Diabetes"                      
	11          "Epilepsy"                      
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Hernia or rupture"             
	15          "High blood pressure"           
	16          "Kidney problems"               
	17          "Learning disability"           
	18          "Lung or respiratory problems"  
	19          "Mental or emotional problem or"
	20          "Mental retardation"            
	21          "Missing legs, feet, arms, hands,"
	22          "Paralysis of any kind"         
	23          "Senility/Dementia/Alzheimer's" 
	24          "Speech disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
	-1          "Not in universe"               
;
label values amain2   amain2l;
label define amain2l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapplyss eapplyss;
label define eapplyss
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aapplyss aapplyss;
label define aapplyss
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecompute ecompute;
label define ecompute
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acompute acompute;
label define acompute
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecmphome ecmphome;
label define ecmphome
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acmphome acmphome;
label define acmphome
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecmpwork ecmpwork;
label define ecmpwork
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acmpwork acmpwork;
label define acmpwork
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecmpschl ecmpschl;
label define ecmpschl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acmpschl acmpschl;
label define acmpschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintrnet eintrnet;
label define eintrnet
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintrnet aintrnet;
label define aintrnet
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values einthome einthome;
label define einthome
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ainthome ainthome;
label define ainthome
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintwork eintwork;
label define eintwork
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintwork aintwork;
label define aintwork
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintschl eintschl;
label define eintschl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintschl aintschl;
label define aintschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintlibr eintlibr;
label define eintlibr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintlibr aintlibr;
label define aintlibr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintccen eintccen;
label define eintccen
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintccen aintccen;
label define aintccen
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintsome eintsome;
label define eintsome
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintsome aintsome;
label define aintsome
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintothr eintothr;
label define eintothr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintothr aintothr;
label define aintothr
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eicourse eicourse;
label define eicourse
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aicourse aicourse;
label define aicourse
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eihealth eihealth;
label define eihealth
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aihealth aihealth;
label define aihealth
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eigovern eigovern;
label define eigovern
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aigovern aigovern;
label define aigovern
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eisrchjb eisrchjb;
label define eisrchjb
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aisrchjb aisrchjb;
label define aisrchjb
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ronline  ronline;
label define ronline 
	2           "No, or has no Internet connection"
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aonline  aonline;
label define aonline 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintstil eintstil;
label define eintstil
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aintstil aintstil;
label define aintstil
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epcdunv  epcdunv;
label define epcdunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values eddelay  eddelay;
label define eddelay 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values addelay  addelay;
label define addelay 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values earmleg  earmleg;
label define earmleg 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aarmleg  aarmleg;
label define aarmleg 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erunplay erunplay;
label define erunplay
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arunplay arunplay;
label define arunplay
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eskoolwk eskoolwk;
label define eskoolwk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values askoolwk askoolwk;
label define askoolwk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values especed  especed;
label define especed 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspeced  aspeced;
label define aspeced 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values espednow espednow;
label define espednow
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspednow aspednow;
label define aspednow
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elerndis elerndis;
label define elerndis
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alerndis alerndis;
label define alerndis
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekmr     ekmr;   
label define ekmr    
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akmr     akmr;   
label define akmr    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekdevdis ekdevdis;
label define ekdevdis
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akdevdis akdevdis;
label define akdevdis
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
;
label values eotherdc eotherdc;
label define eotherdc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aotherdc aotherdc;
label define aotherdc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadhd    eadhd;  
label define eadhd   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadhd    aadhd;  
label define aadhd   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadhdmed eadhdmed;
label define eadhdmed
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadhdmed aadhdmed;
label define aadhdmed
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekcane   ekcane; 
label define ekcane  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akcane   akcane; 
label define akcane  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekwchair ekwchair;
label define ekwchair
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akwchair akwchair;
label define akwchair
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekhearad ekhearad;
label define ekhearad
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akhearad akhearad;
label define akhearad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekcane6  ekcane6l;
label define ekcane6l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akcane6  akcane6l;
label define akcane6l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekseedif ekseedif;
label define ekseedif
	3           "Person is blind"               
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akseedif akseedif;
label define akseedif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekseenot ekseenot;
label define ekseenot
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akseenot akseenot;
label define akseenot
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekheardf ekheardf;
label define ekheardf
	3           "Person is Deaf"                
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akheardf akheardf;
label define akheardf
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekhearnt ekhearnt;
label define ekhearnt
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akhearnt akhearnt;
label define akhearnt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekspechd ekspechd;
label define ekspechd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akspechd akspechd;
label define akspechd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekspechc ekspechc;
label define ekspechc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akspechc akspechc;
label define akspechc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esports  esports;
label define esports 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asports  asports;
label define asports 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekindif  ekindif;
label define ekindif 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akindif  akindif;
label define akindif 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekinhelp ekinhelp;
label define ekinhelp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akinhelp akinhelp;
label define akinhelp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekbeddif ekbeddif;
label define ekbeddif
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akbeddif akbeddif;
label define akbeddif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekbedhlp ekbedhlp;
label define ekbedhlp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akbedhlp akbedhlp;
label define akbedhlp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekbathdf ekbathdf;
label define ekbathdf
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akbathdf akbathdf;
label define akbathdf
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekbathh  ekbathh;
label define ekbathh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akbathh  akbathh;
label define akbathh 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekdressd ekdressd;
label define ekdressd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akdressd akdressd;
label define akdressd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekdressh ekdressh;
label define ekdressh
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akdressh akdressh;
label define akdressh
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekeatdif ekeatdif;
label define ekeatdif
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akeatdif akeatdif;
label define akeatdif
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekeathlp ekeathlp;
label define ekeathlp
	-1          "None or not in universe"       
	1           "Yes"                           
	2           "No"                            
;
label values akeathlp akeathlp;
label define akeathlp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ektoiltd ektoiltd;
label define ektoiltd
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aktoiltd aktoiltd;
label define aktoiltd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ektoilth ektoilth;
label define ektoilth
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aktoilth aktoilth;
label define aktoilth
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eksocial eksocial;
label define eksocial
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aksocial aksocial;
label define aksocial
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekcond1  ekcond1l;
label define ekcond1l
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral palsy"                
	7           "Deafness or hearing problems"  
	8           "Diabetes"                      
	9           "Drug or alcohol problem or"    
	10          "Epilepsy or seizure disorder"  
	11          "Hay fever or other respiratory"
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Impairment or deformity of back,"
	15          "Impairment or deformity of arm,"
	16          "Learning disability"           
	17          "Mental or emotional problem or"
	18          "Mental retardation"            
	19          "Missing legs, feet, arms, hands,"
	20          "Paralysis of any kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
	23          "Other"                         
	-1          "Not in universe"               
;
label values akcond1  akcond1l;
label define akcond1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekcond2  ekcond2l;
label define ekcond2l
	-1          "Not in universe or no second"  
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral palsy"                
	7           "Deafness or hearing problems"  
	8           "Diabetes"                      
	9           "Drug or alcohol problem or"    
	10          "Epilepsy or seizure disorder"  
	11          "Hay fever or other respiratory"
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Impairment or deformity of back,"
	15          "Impairment or deformity of arm,"
	16          "Learning disability"           
	17          "Mental or emotional problem or"
	18          "Mental retardation"            
	19          "Missing legs, feet, arms, hands,"
	20          "Paralysis of any kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
;
label values ekcond3  ekcond3l;
label define ekcond3l
	-1          "Not in universe or no third"   
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral palsy"                
	7           "Deafness or hearing problems"  
	8           "Diabetes"                      
	9           "Drug or alcohol problem or"    
	10          "Epilepsy or seizure disorder"  
	11          "Hay fever or other respiratory"
	12          "Head or spinal cord injury"    
	13          "Heart trouble"                 
	14          "Impairment or deformity of back,"
	15          "Impairment or deformity of arm,"
	16          "Learning disability"           
	17          "Mental or emotional problem or"
	18          "Mental retardation"            
	19          "Missing legs, feet, arms, hands,"
	20          "Paralysis of any kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
;
label values ekmotorv ekmotorv;
label define ekmotorv
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akmotorv akmotorv;
label define akmotorv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eawbunv  eawbunv;
label define eawbunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values radwash  radwash;
label define radwash 
	2           "Not in home, but one is provided"
	3           "No, no washing machine"        
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadwash  aadwash;
label define aadwash 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values raddryr  raddryr;
label define raddryr 
	2           "Not in home, but one is provided"
	3           "No, no clothes dryer"          
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aaddryr  aaddryr;
label define aaddryr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaddish  eaddish;
label define eaddish 
	2           "No, no dishwasher"             
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aaddish  aaddish;
label define aaddish 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadrefr  eadrefr;
label define eadrefr 
	2           "No, no refrigerator"           
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadrefr  aadrefr;
label define aadrefr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadfrz   eadfrz; 
label define eadfrz  
	2           "No, no food freezer"           
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadfrz   aadfrz; 
label define aadfrz  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadtelv  eadtelv;
label define eadtelv 
	2           "No, no television"             
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadtelv  aadtelv;
label define aadtelv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadstov  eadstov;
label define eadstov 
	2           "No, no stove"                  
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadstov  aadstov;
label define aadstov 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadmicr  eadmicr;
label define eadmicr 
	2           "No, no microwave"              
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadmicr  aadmicr;
label define aadmicr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadvcr   eadvcr; 
label define eadvcr  
	2           "No, no videocassette recorder" 
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadvcr   aadvcr; 
label define aadvcr  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadair   eadair; 
label define eadair  
	2           "No, no air conditioning"       
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadair   aadair; 
label define aadair  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadcomp  eadcomp;
label define eadcomp 
	2           "No, no personal computer"      
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadcomp  aadcomp;
label define aadcomp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadcell  eadcell;
label define eadcell 
	2           "No, no cell phone"             
	-1          "Not in universe"               
	1           "Yes"                           
;
label values aadcell  aadcell;
label define aadcell 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values radphon  radphon;
label define radphon 
	1           "Yes, phone in home"            
	2           "No phone in home, but can be"  
	3           "No phone in home, but can be"  
	4           "No phone in home, but can be"  
	5           "No, cannot be reached by telephone"
	-1          "Not in universe"               
;
label values aadphon  aadphon;
label define aadphon 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahroom  eahroom;
label define eahroom 
	20          "Twenty or more rooms"          
	-1          "Not in universe"               
;
label values aahroom  aahroom;
label define aahroom 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahpest  eahpest;
label define eahpest 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahleak  eahleak;
label define eahleak 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahwind  eahwind;
label define eahwind 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahwire  eahwire;
label define eahwire 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahplum  eahplum;
label define eahplum 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahcrac  eahcrac;
label define eahcrac 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahhole  eahhole;
label define eahhole 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aahouse  aahouse;
label define aahouse 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahrepr  eahrepr;
label define eahrepr 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahrepr  aahrepr;
label define aahrepr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahspac  eahspac;
label define eahspac 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahspac  aahspac;
label define aahspac 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahfurn  eahfurn;
label define eahfurn 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahfurn  aahfurn;
label define aahfurn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahwarm  eahwarm;
label define eahwarm 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahwarm  aahwarm;
label define aahwarm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahcool  eahcool;
label define eahcool 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahcool  aahcool;
label define aahcool 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahpriv  eahpriv;
label define eahpriv 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aahpriv  aahpriv;
label define aahpriv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahsat   eahsat; 
label define eahsat  
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	-1          "Not in universe"               
;
label values aahsat   aahsat; 
label define aahsat  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rahmove  rahmove;
label define rahmove 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aahmove  aahmove;
label define aahmove 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacwalk  eacwalk;
label define eacwalk 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aacwalk  aacwalk;
label define aacwalk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacstay  eacstay;
label define eacstay 
	1           "Stayed in our home at certain" 
	2           "Did not stay in home."         
	-1          "Not in universe"               
;
label values aacstay  aacstay;
label define aacstay 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacwith  eacwith;
label define eacwith 
	1           "Has taken someone with."       
	2           "Did not take someone with."    
	-1          "Not in universe"               
;
label values aacwith  aacwith;
label define aacwith 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacarry  eacarry;
label define eacarry 
	1           "Carried anything to protect self."
	2           "Did not carry anything."       
	-1          "Not in universe"               
;
label values aacarry  aacarry;
label define aacarry 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacnsaf  eacnsaf;
label define eacnsaf 
	1           "Very safe"                     
	2           "Somewhat safe"                 
	3           "Somewhat unsafe"               
	4           "Very unsafe"                   
	-1          "Not in universe"               
;
label values aacnsaf  aacnsaf;
label define aacnsaf 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eachsaf  eachsaf;
label define eachsaf 
	1           "Very safe"                     
	2           "Somewhat safe"                 
	3           "Somewhat unsafe"               
	4           "Very unsafe"                   
	-1          "Not in universe"               
;
label values aachsaf  aachsaf;
label define aachsaf 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values racwdog  racwdog;
label define racwdog 
	1           "Has dog to keep home safe from"
	2           "Has dog, not to keep home safe"
	3           "Does not have dog"             
	-1          "Not in universe"               
;
label values aacwdog  aacwdog;
label define aacwdog 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eacalrm  eacalrm;
label define eacalrm 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aacalrm  aacalrm;
label define aacalrm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values racmove  racmove;
label define racmove 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aacmove  aacmove;
label define aacmove 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eantraf  eantraf;
label define eantraf 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanstrt  eanstrt;
label define eanstrt 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eantrsh  eantrsh;
label define eantrsh 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanaban  eanaban;
label define eanaban 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanind   eanind; 
label define eanind  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanodor  eanodor;
label define eanodor 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aancond  aancond;
label define aancond 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eanghbr  eanghbr;
label define eanghbr 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	-1          "Not in universe"               
;
label values aanghbr  aanghbr;
label define aanghbr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eansat   eansat; 
label define eansat  
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	-1          "Not in universe"               
;
label values aansat   aansat; 
label define aansat  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ranmove  ranmove;
label define ranmove 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aanmove  aanmove;
label define aanmove 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapschl  eapschl;
label define eapschl 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	-1          "Not in universe"               
;
label values aapschl  aapschl;
label define aapschl 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eappriv  eappriv;
label define eappriv 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aappriv  aappriv;
label define aappriv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapmagn  eapmagn;
label define eapmagn 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aapmagn  aapmagn;
label define aapmagn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eappubs  eappubs;
label define eappubs 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aappubs  aappubs;
label define aappubs 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaphoms  eaphoms;
label define eaphoms 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaphoms  aaphoms;
label define aaphoms 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapnosc  eapnosc;
label define eapnosc 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aapnosc  aapnosc;
label define aapnosc 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapdiff  eapdiff;
label define eapdiff 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aapdiff  aapdiff;
label define aapdiff 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaphosp  eaphosp;
label define eaphosp 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aaphosp  aaphosp;
label define aaphosp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapolic  eapolic;
label define eapolic 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aapolic  aapolic;
label define aapolic 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapfire  eapfire;
label define eapfire 
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
	-1          "Not in universe"               
;
label values aapfire  aapfire;
label define aapfire 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eaptran  eaptran;
label define eaptran 
	3           "Not sure because you do not use"
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaptran  aaptran;
label define aaptran 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eapsat   eapsat; 
label define eapsat  
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	-1          "Not in universe"               
;
label values aapsat   aapsat; 
label define aapsat  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rapmove  rapmove;
label define rapmove 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aapmove  aapmove;
label define aapmove 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabmeet  eabmeet;
label define eabmeet 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabmeet  aabmeet;
label define aabmeet 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabrent  eabrent;
label define eabrent 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabrent  aabrent;
label define aabrent 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabrhlp1 rabrhlpt;
label define rabrhlpt
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabrhlp2 rabrhlpk;
label define rabrhlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabrhlp3 rabrhlpl;
label define rabrhlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabrhlp4 rabrhlpm;
label define rabrhlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabrhlp5 rabrhlpn;
label define rabrhlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabrhlp  aabrhlp;
label define aabrhlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabevct  eabevct;
label define eabevct 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabevct  aabevct;
label define aabevct 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabehlp1 rabehlpt;
label define rabehlpt
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabehlp2 rabehlpk;
label define rabehlpk
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabehlp3 rabehlpl;
label define rabehlpl
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabehlp4 rabehlpm;
label define rabehlpm
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabehlp5 rabehlpn;
label define rabehlpn
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabehlp  aabehlp;
label define aabehlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabgas   eabgas; 
label define eabgas  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabgas   aabgas; 
label define aabgas  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabghlp1 rabghlps;
label define rabghlps
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabghlp2 rabghlpk;
label define rabghlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabghlp3 rabghlpl;
label define rabghlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabghlp4 rabghlpm;
label define rabghlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabghlp5 rabghlpn;
label define rabghlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabghlp  aabghlp;
label define aabghlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabcut   eabcut; 
label define eabcut  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabcut   aabcut; 
label define aabcut  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabchlp1 rabchlpt;
label define rabchlpt
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabchlp2 rabchlpk;
label define rabchlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabchlp3 rabchlpl;
label define rabchlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabchlp4 rabchlpm;
label define rabchlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabchlp5 rabchlpn;
label define rabchlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabchlp  aabchlp;
label define aabchlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabphon  eabphon;
label define eabphon 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabphon  aabphon;
label define aabphon 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabphlp1 rabphlpn;
label define rabphlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabphlp2 rabphlpk;
label define rabphlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabphlp3 rabphlpl;
label define rabphlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabphlp4 rabphlpm;
label define rabphlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabphlp5 rabphlpo;
label define rabphlpo
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabphlp  aabphlp;
label define aabphlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabdoct  eabdoct;
label define eabdoct 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabdoct  aabdoct;
label define aabdoct 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabdhlp1 rabdhlpt;
label define rabdhlpt
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabdhlp2 rabdhlpk;
label define rabdhlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabdhlp3 rabdhlpl;
label define rabdhlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabdhlp4 rabdhlpm;
label define rabdhlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabdhlp5 rabdhlpn;
label define rabdhlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabdhlp  aabdhlp;
label define aabdhlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eabdent  eabdent;
label define eabdent 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aabdent  aabdent;
label define aabdent 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rabthlp1 rabthlpt;
label define rabthlpt
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabthlp2 rabthlpk;
label define rabthlpk
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabthlp3 rabthlpl;
label define rabthlpl
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabthlp4 rabthlpm;
label define rabthlpm
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values rabthlp5 rabthlpn;
label define rabthlpn
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
	-1          "Not in universe"               
;
label values aabthlp  aabthlp;
label define aabthlp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahlpfm  eahlpfm;
label define eahlpfm 
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
	-1          "Not in universe"               
;
label values aahlpfm  aahlpfm;
label define aahlpfm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahlpfr  eahlpfr;
label define eahlpfr 
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
	-1          "Not in universe"               
;
label values aahlpfr  aahlpfr;
label define aahlpfr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eahlpag  eahlpag;
label define eahlpag 
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
	-1          "Not in universe"               
;
label values aahlpag  aahlpag;
label define aahlpag 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafood1  eafood1l;
label define eafood1l
	1           "Enough of the kinds of food we"
	2           "Enough but not always the kinds"
	3           "Sometimes not enough to eat"   
	4           "Often not enough to eat"       
	-1          "Not in universe"               
;
label values aafood1  aafood1l;
label define aafood1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafdm1   eafdm1l;
label define eafdm1l 
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
	-1          "Not in universe"               
;
label values eafdm2   eafdm2l;
label define eafdm2l 
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
	-1          "Not in universe"               
;
label values eafdm3   eafdm3l;
label define eafdm3l 
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
	-1          "Not in universe"               
;
label values eafdm4   eafdm4l;
label define eafdm4l 
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
	-1          "Not in universe"               
;
label values eafdm5   eafdm5l;
label define eafdm5l 
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
	-1          "Not in universe"               
;
label values aafdm    aafdm;  
label define aafdm   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)}"
;
label values eaflast  eaflast;
label define eaflast 
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
	-1          "Not in universe"               
;
label values aaflast  aaflast;
label define aaflast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)}"
;
label values eafbaln  eafbaln;
label define eafbaln 
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
	-1          "Not in universe"               
;
label values aafbaln  aafbaln;
label define aafbaln 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafchld  eafchld;
label define eafchld 
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
	-1          "Not in universe"               
;
label values aafchld  aafchld;
label define aafchld 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafskip  eafskip;
label define eafskip 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafskip  aafskip;
label define aafskip 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafless  eafless;
label define eafless 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafless  aafless;
label define aafless 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eafday   eafday; 
label define eafday  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafday   aafday; 
label define aafday  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epluunv  epluunv;
label define epluunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values elngspk  elngspk;
label define elngspk 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alngspk  alngspk;
label define alngspk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Determined from non-coded response"
;
label values tlnguage tlnguage;
label define tlnguage
	1           "Spanish"                       
	2           "French (Creole)"               
	3           "German"                        
	4           "Slavic Languages"              
	5           "Other Indo-European Languages" 
	6           "Chinese"                       
	7           "Tagalog, Pilipino"             
	8           "Vietnamese"                    
	9           "Other Asian"                   
	10          "Other And Unspecified Languages"
	-1          "Not in universe"               
;
label values alnguage alnguage;
label define alnguage
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Determined from non-coded response"
	5           "Taken from value given by other"
;
label values elngabil elngabil;
label define elngabil
	1           "Very well"                     
	2           "Well"                          
	3           "Not well"                      
	4           "Not at all"                    
	-1          "Not in universe"               
;
label values alngabil alngabil;
label define alngabil
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rlngisol rlngisol;
label define rlngisol
	1           "In linguistically isolated"    
	2           "Not in linguistically isolated"
	-1          "Not in universe"               
;

#delimit cr
save `dta_name' , replace

/*
Copyright 2006 shared by the National Bureau of Economic Research and Jean Roth

National Bureau of Economic Research.
1050 Massachusetts Avenue
Cambridge, MA 02138
jroth@nber.org

This program and all programs referenced in it are free software. You
can redistribute the program or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
USA.
*/
