
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

;
label values spanel   spanel; 
label define spanel  
	2008        "Panel Year"                    
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
	1           "Male"                          
	2           "Female"                        
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
	1           "Yes"                           
	2           "No"                            
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
	-1          "Not in Universe"               
	9999        "Guardian not in household"     
;
label values rdesgpnt rdesgpnt;
label define rdesgpnt
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eeducate eeducate;
label define eeducate
	-1          "Not in Universe"               
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
;
label values sinthhid sinthhid;
label define sinthhid
	0           "Not In Universe"               
;
label values eacsunv  eacsunv;
label define eacsunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values ecskid01 ecskid0v;
label define ecskid0v
	-1          "Not in Universe"               
;
label values ecskid02 ecskid0k;
label define ecskid0k
	-1          "Not in Universe"               
;
label values ecskid03 ecskid0l;
label define ecskid0l
	-1          "Not in Universe"               
;
label values ecskid04 ecskid0m;
label define ecskid0m
	-1          "Not in Universe"               
;
label values ecskid05 ecskid0n;
label define ecskid0n
	-1          "Not in Universe"               
;
label values ecskid06 ecskid0o;
label define ecskid0o
	-1          "Not in Universe"               
;
label values ecskid07 ecskid0p;
label define ecskid0p
	-1          "Not in Universe"               
;
label values ecskid08 ecskid0q;
label define ecskid0q
	-1          "Not in Universe"               
;
label values ecskid09 ecskid0r;
label define ecskid0r
	-1          "Not in Universe"               
;
label values ecskid10 ecskid1v;
label define ecskid1v
	-1          "Not in Universe"               
;
label values eynoab01 eynoab0v;
label define eynoab0v
	-1          "Not in Universe"               
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
;
label values eynoab02 eynoab0k;
label define eynoab0k
	-1          "Not in Universe"               
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
;
label values eynoab03 eynoab0l;
label define eynoab0l
	-1          "Not in Universe"               
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
;
label values eynoab04 eynoab0m;
label define eynoab0m
	-1          "Not in Universe"               
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
;
label values eynoab05 eynoab0n;
label define eynoab0n
	-1          "Not in Universe"               
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
;
label values eynoab06 eynoab0o;
label define eynoab0o
	-1          "Not in Universe"               
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
;
label values eynoab07 eynoab0p;
label define eynoab0p
	-1          "Not in Universe"               
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
;
label values eynoab08 eynoab0q;
label define eynoab0q
	-1          "Not in Universe"               
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
;
label values eynoab09 eynoab0r;
label define eynoab0r
	-1          "Not in Universe"               
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
;
label values eynoab10 eynoab1v;
label define eynoab1v
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ecsflg01 ecsflg0g;
label define ecsflg0g
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg02 ecsflg0k;
label define ecsflg0k
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg03 ecsflg0l;
label define ecsflg0l
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg04 ecsflg0m;
label define ecsflg0m
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg05 ecsflg0n;
label define ecsflg0n
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg06 ecsflg0o;
label define ecsflg0o
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg07 ecsflg0p;
label define ecsflg0p
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg08 ecsflg0q;
label define ecsflg0q
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg09 ecsflg0r;
label define ecsflg0r
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
;
label values ecsflg10 ecsflg1g;
label define ecsflg1g
	-1          "Not in Universe"               
	1           "Covered by the most recent child"
	2           "Covered by some other child"   
	3           "Not covered by a child support"
	4           "Not eligible for supplement"   
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values tnumagr  tnumagr;
label define tnumagr 
	-1          "Not in Universe"               
	2           "Number of agreements"          
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
	-1          "Not in Universe"               
	1           "Voluntary written agreement"   
	2           "Court-ordered agreement"       
	3           "Other type of written agreement"
	4           "A non-written verbal agreement"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Child(ren) over the age limit" 
	2           "Other parent not working"      
	3           "Other parent in jail or"       
	4           "Payment suspended by court or" 
	5           "Other reason"                  
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
	-1          "Not in Universe"               
	1           "Directly from the other parent"
	2           "Through the court"             
	3           "Through the welfare or child"  
	4           "Some other method"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "All of the time"               
	2           "Most of the time"              
	3           "Some of the time"              
	4           "None of the time"              
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
	-1          "Not in Universe"               
	1           "All"                           
	2           "Most"                          
	3           "Some"                          
	4           "None"                          
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag12 ehthag1k;
label define ehthag1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag13 ehthag1l;
label define ehthag1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag14 ehthag1m;
label define ehthag1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag15 ehthag1n;
label define ehthag1n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehthag16 ehthag1o;
label define ehthag1o
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Joint legal and physical custody"
	2           "Joint legal with mother physical"
	3           "Joint Legal with father physical"
	4           "Mother legal and physical custody"
	5           "Father legal and physical custody"
	6           "Split custody"                 
	7           "Other custody arrangement"     
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values eamttm12 eamttm1k;
label define eamttm1k
	-1          "Not in Universe"               
;
label values eamttm13 eamttm1l;
label define eamttm1l
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Subject person"                
	2           "Other parent"                  
	3           "Both subject person and other" 
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Child(ren) over the age limit" 
	2           "Other parent not working"      
	3           "Other parent in jail or"       
	4           "Other reason"                  
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "All of the time"               
	2           "Most of the time"              
	3           "Some of the time"              
	4           "None of the time"              
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
	-1          "Not in Universe"               
	1           "All"                           
	2           "Most"                          
	3           "Some"                          
	4           "None"                          
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
	-1          "Not in Universe"               
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
	0           "None or not in universe"       
	1           "Data suppressed"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
	1           "Data suppressed"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag22 ehltag2k;
label define ehltag2k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag23 ehltag2l;
label define ehltag2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag24 ehltag2m;
label define ehltag2m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag25 ehltag2n;
label define ehltag2n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehltag26 ehltag2o;
label define ehltag2o
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Child(ren) Live with mother"   
	2           "Child(Ren) live With father"   
	3           "Child(ren) live with mother and"
	4           "None"                          
	5           "Other"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values eamttm22 eamttm2k;
label define eamttm2k
	-1          "Not in Universe"               
;
label values eamttm23 eamttm2l;
label define eamttm2l
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt102 edcrt10k;
label define edcrt10k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt103 edcrt10l;
label define edcrt10l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt104 edcrt10m;
label define edcrt10m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt105 edcrt10n;
label define edcrt10n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt106 edcrt10o;
label define edcrt10o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt107 edcrt10p;
label define edcrt10p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt108 edcrt10q;
label define edcrt10q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt109 edcrt10r;
label define edcrt10r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt110 edcrt11d;
label define edcrt11d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes101 edtes10d;
label define edtes10d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes102 edtes10k;
label define edtes10k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes103 edtes10l;
label define edtes10l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes104 edtes10m;
label define edtes10m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes105 edtes10n;
label define edtes10n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes106 edtes10o;
label define edtes10o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes107 edtes10p;
label define edtes10p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes108 edtes10q;
label define edtes10q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes109 edtes10r;
label define edtes10r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes110 edtes11d;
label define edtes11d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer101 edcer10d;
label define edcer10d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer102 edcer10k;
label define edcer10k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer103 edcer10l;
label define edcer10l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer104 edcer10m;
label define edcer10m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer105 edcer10n;
label define edcer10n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer106 edcer10o;
label define edcer10o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer107 edcer10p;
label define edcer10p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer108 edcer10q;
label define edcer10q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer109 edcer10r;
label define edcer10r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer110 edcer11d;
label define edcer11d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig101 edsig10d;
label define edsig10d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig102 edsig10k;
label define edsig10k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig103 edsig10l;
label define edsig10l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig104 edsig10m;
label define edsig10m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig105 edsig10n;
label define edsig10n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig106 edsig10o;
label define edsig10o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig107 edsig10p;
label define edsig10p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig108 edsig10q;
label define edsig10q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig109 edsig10r;
label define edsig10r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig110 edsig11d;
label define edsig11d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth101 edoth10d;
label define edoth10d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth102 edoth10k;
label define edoth10k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth103 edoth10l;
label define edoth10l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth104 edoth10m;
label define edoth10m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth105 edoth10n;
label define edoth10n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth106 edoth10o;
label define edoth10o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth107 edoth10p;
label define edoth10p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth108 edoth10q;
label define edoth10q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth109 edoth10r;
label define edoth10r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth110 edoth11d;
label define edoth11d
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt202 edcrt20k;
label define edcrt20k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt203 edcrt20l;
label define edcrt20l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt204 edcrt20m;
label define edcrt20m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt205 edcrt20n;
label define edcrt20n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt206 edcrt20o;
label define edcrt20o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt207 edcrt20p;
label define edcrt20p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt208 edcrt20q;
label define edcrt20q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt209 edcrt20r;
label define edcrt20r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt210 edcrt21d;
label define edcrt21d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes201 edtes20d;
label define edtes20d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes202 edtes20k;
label define edtes20k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes203 edtes20l;
label define edtes20l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes204 edtes20m;
label define edtes20m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes205 edtes20n;
label define edtes20n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes206 edtes20o;
label define edtes20o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes207 edtes20p;
label define edtes20p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes208 edtes20q;
label define edtes20q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes209 edtes20r;
label define edtes20r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes210 edtes21d;
label define edtes21d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer201 edcer20d;
label define edcer20d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer202 edcer20k;
label define edcer20k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer203 edcer20l;
label define edcer20l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer204 edcer20m;
label define edcer20m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer205 edcer20n;
label define edcer20n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer206 edcer20o;
label define edcer20o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer207 edcer20p;
label define edcer20p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer208 edcer20q;
label define edcer20q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer209 edcer20r;
label define edcer20r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer210 edcer21d;
label define edcer21d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig201 edsig20d;
label define edsig20d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig202 edsig20k;
label define edsig20k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig203 edsig20l;
label define edsig20l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig204 edsig20m;
label define edsig20m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig205 edsig20n;
label define edsig20n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig206 edsig20o;
label define edsig20o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig207 edsig20p;
label define edsig20p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig208 edsig20q;
label define edsig20q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig209 edsig20r;
label define edsig20r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig210 edsig21d;
label define edsig21d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth201 edoth20d;
label define edoth20d
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth202 edoth20k;
label define edoth20k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth203 edoth20l;
label define edoth20l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth204 edoth20m;
label define edoth20m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth205 edoth20n;
label define edoth20n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth206 edoth20o;
label define edoth20o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth207 edoth20p;
label define edoth20p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth208 edoth20q;
label define edoth20q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth209 edoth20r;
label define edoth20r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth210 edoth21d;
label define edoth21d
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr2 eynevwrk;
label define eynevwrk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr3 eynevwrl;
label define eynevwrl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr4 eynevwrm;
label define eynevwrm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr5 eynevwrn;
label define eynevwrn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr6 eynevwro;
label define eynevwro
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr7 eynevwrp;
label define eynevwrp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynevwr8 eynevwrq;
label define eynevwrq
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Subject person"                
	2           "Other parent"                  
	3           "Both subject person and other" 
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
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask2 etypaskl;
label define etypaskl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask3 etypaskm;
label define etypaskm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask4 etypaskn;
label define etypaskn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask5 etypasko;
label define etypasko
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask6 etypaskp;
label define etypaskp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etypask7 etypaskq;
label define etypaskq
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp2 etyphlpk;
label define etyphlpk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp3 etyphlpl;
label define etyphlpl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp4 etyphlpm;
label define etyphlpm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp5 etyphlpo;
label define etyphlpo
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp6 etyphlpp;
label define etyphlpp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etyphlp7 etyphlpq;
label define etyphlpq
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt302 edcrt30k;
label define edcrt30k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt303 edcrt30l;
label define edcrt30l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt304 edcrt30m;
label define edcrt30m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt305 edcrt30n;
label define edcrt30n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt306 edcrt30o;
label define edcrt30o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt307 edcrt30q;
label define edcrt30q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt308 edcrt30r;
label define edcrt30r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt309 edcrt30s;
label define edcrt30s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt310 edcrt31p;
label define edcrt31p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes301 edtes30p;
label define edtes30p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes302 edtes30k;
label define edtes30k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes303 edtes30l;
label define edtes30l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes304 edtes30m;
label define edtes30m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes305 edtes30n;
label define edtes30n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes306 edtes30o;
label define edtes30o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes307 edtes30q;
label define edtes30q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes308 edtes30r;
label define edtes30r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes309 edtes30s;
label define edtes30s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes310 edtes31p;
label define edtes31p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer301 edcer30p;
label define edcer30p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer302 edcer30k;
label define edcer30k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer303 edcer30l;
label define edcer30l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer304 edcer30m;
label define edcer30m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer305 edcer30n;
label define edcer30n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer306 edcer30o;
label define edcer30o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer307 edcer30q;
label define edcer30q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer308 edcer30r;
label define edcer30r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer309 edcer30s;
label define edcer30s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer310 edcer31p;
label define edcer31p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig301 edsig30p;
label define edsig30p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig302 edsig30k;
label define edsig30k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig303 edsig30l;
label define edsig30l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig304 edsig30m;
label define edsig30m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig305 edsig30n;
label define edsig30n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig306 edsig30o;
label define edsig30o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig307 edsig30q;
label define edsig30q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig308 edsig30r;
label define edsig30r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig309 edsig30s;
label define edsig30s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig310 edsig31p;
label define edsig31p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth301 edoth30p;
label define edoth30p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth302 edoth30k;
label define edoth30k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth303 edoth30l;
label define edoth30l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth304 edoth30m;
label define edoth30m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth305 edoth30n;
label define edoth30n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth306 edoth30o;
label define edoth30o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth307 edoth30q;
label define edoth30q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth308 edoth30r;
label define edoth30r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth309 edoth30s;
label define edoth30s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth310 edoth31p;
label define edoth31p
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt402 edcrt40k;
label define edcrt40k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt403 edcrt40l;
label define edcrt40l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt404 edcrt40m;
label define edcrt40m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt405 edcrt40n;
label define edcrt40n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt406 edcrt40o;
label define edcrt40o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt407 edcrt40q;
label define edcrt40q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt408 edcrt40r;
label define edcrt40r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt409 edcrt40s;
label define edcrt40s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcrt410 edcrt41p;
label define edcrt41p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes401 edtes40p;
label define edtes40p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes402 edtes40k;
label define edtes40k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes403 edtes40l;
label define edtes40l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes404 edtes40m;
label define edtes40m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes405 edtes40n;
label define edtes40n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes406 edtes40o;
label define edtes40o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes407 edtes40q;
label define edtes40q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes408 edtes40r;
label define edtes40r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes409 edtes40s;
label define edtes40s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edtes410 edtes41p;
label define edtes41p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer401 edcer40p;
label define edcer40p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer402 edcer40k;
label define edcer40k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer403 edcer40l;
label define edcer40l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer404 edcer40m;
label define edcer40m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer405 edcer40n;
label define edcer40n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer406 edcer40o;
label define edcer40o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer407 edcer40q;
label define edcer40q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer408 edcer40r;
label define edcer40r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer409 edcer40s;
label define edcer40s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edcer410 edcer41p;
label define edcer41p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig401 edsig40p;
label define edsig40p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig402 edsig40k;
label define edsig40k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig403 edsig40l;
label define edsig40l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig404 edsig40m;
label define edsig40m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig405 edsig40n;
label define edsig40n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig406 edsig40o;
label define edsig40o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig407 edsig40q;
label define edsig40q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig408 edsig40r;
label define edsig40r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig409 edsig40s;
label define edsig40s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edsig410 edsig41p;
label define edsig41p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth401 edoth40p;
label define edoth40p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth402 edoth40k;
label define edoth40k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth403 edoth40l;
label define edoth40l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth404 edoth40m;
label define edoth40m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth405 edoth40n;
label define edoth40n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth406 edoth40o;
label define edoth40o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth407 edoth40q;
label define edoth40q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth408 edoth40r;
label define edoth40r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth409 edoth40s;
label define edoth40s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values edoth410 edoth41p;
label define edoth41p
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag12 eynoag1k;
label define eynoag1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag13 eynoag1l;
label define eynoag1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag14 eynoag1m;
label define eynoag1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag15 eynoag1n;
label define eynoag1n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag16 eynoag1o;
label define eynoag1o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag17 eynoag1p;
label define eynoag1p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag18 eynoag1q;
label define eynoag1q
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values eamttm42 eamttm4k;
label define eamttm4k
	-1          "Not in Universe"               
;
label values eamttm43 eamttm4l;
label define eamttm4l
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag22 eynoag2k;
label define eynoag2k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag23 eynoag2l;
label define eynoag2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag24 eynoag2m;
label define eynoag2m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag25 eynoag2n;
label define eynoag2n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag26 eynoag2o;
label define eynoag2o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag27 eynoag2p;
label define eynoag2p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eynoag28 eynoag2q;
label define eynoag2q
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Same county or city"           
	2           "Same State (different county or"
	3           "Different State"               
	4           "Other parent now deceased"     
	5           "Other"                         
	6           "Unknown"                       
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values eamttm52 eamttm5k;
label define eamttm5k
	-1          "Not in Universe"               
;
label values eamttm53 eamttm5l;
label define eamttm5l
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values esupkdyn esupkdyn;
label define esupkdyn
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuptyp2 esuptypk;
label define esuptypk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuptyp3 esuptypl;
label define esuptypl
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Voluntary written agreement"   
	2           "Court-ordered agreement"       
	3           "Other type of written agreement"
	4           "Non-written agreement"         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asupamtc asupamtc;
label define asupamtc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupyrch esupyrch;
label define esupyrch
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Through employment related wage"
	2           "Directly to the other parent"  
	3           "Directly to the court"         
	4           "Directly to a child support agency"
	5           "By some other method"          
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt2 esuphltk;
label define esuphltk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt3 esuphltl;
label define esuphltl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt4 esuphltm;
label define esuphltm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt5 esuphltn;
label define esuphltn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values esuphlt6 esuphlto;
label define esuphlto
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Joint legal and physical custody"
	2           "Joint legal with mother physical"
	3           "Joint Legal with father physical"
	4           "Mother legal and physical custody"
	5           "Father legal and physical custody"
	6           "Split custody"                 
	7           "Other-specify"                 
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values esuptam2 esuptamk;
label define esuptamk
	-1          "Not in Universe"               
;
label values esuptam3 esuptaml;
label define esuptaml
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "None or not in universe"       
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
;
label values esuptma2 esuptmak;
label define esuptmak
	-1          "Not in Universe"               
;
label values esuptma3 esuptmal;
label define esuptmal
	-1          "Not in Universe"               
;
label values asuptma  asuptma;
label define asuptma 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esupotpy esupotpy;
label define esupotpy
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Parent"                        
	2           "Spouse"                        
	3           "Ex-spouse"                     
	4           "Child under 21"                
	5           "Child over 21"                 
	6           "Other relative"                
	7           "Not related"                   
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
	-1          "Not in Universe"               
	1           "Private home or apartment"     
	2           "Nursing home"                  
	3           "Someplace else"                
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Parent"                        
	2           "Spouse"                        
	3           "Ex-spouse"                     
	4           "Child under 21"                
	5           "Child over 21"                 
	6           "Other relative"                
	7           "Not related"                   
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
	-1          "Not in Universe"               
	1           "Private home or apartment"     
	2           "Nursing home"                  
	3           "Someplace else"                
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
	0           "Not In Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values ehstat   ehstat; 
label define ehstat  
	-1          "Not in Universe"               
	1           "Excellent"                     
	2           "Very Good"                     
	3           "Good"                          
	4           "Fair"                          
	5           "Poor"                          
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Person is Blind"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Person is deaf"                
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Son"                           
	2           "Daughter"                      
	3           "SPOUSE"                        
	4           "Parent"                        
	5           "Other relative"                
	6           "Friend or neighbor"            
	7           "Paid help"                     
	8           "Other nonrelative"             
	9           "Did not receive help"          
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "No one else helped"            
	2           "Son"                           
	3           "Daughter"                      
	4           "Spouse"                        
	5           "Parent"                        
	6           "Other relative"                
	7           "Friend or neighbor"            
	8           "Paid help"                     
	9           "Other nonrelative"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Less than 6 months"            
	2           "6 to 11 months"                
	3           "1 to 2 years"                  
	4           "3 to 5 years"                  
	5           "More than 5 years"             
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
	-1          "Not in Universe"               
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
label values tpayamt  tpayamt;
label define tpayamt 
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
	-1          "Not in Universe"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble(including ulcers,"
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
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
	24          "Speech Disorder"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values econdph1 econdpht;
label define econdpht
	-1          "Not in Universe"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
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
	24          "Speech Disorder"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values emotorv  emotorv;
label define emotorv 
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values amonth1  amonth1l;
label define amonth1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elast12m elast12m;
label define elast12m
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
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
	24          "Speech Disorder"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
;
label values emain2   emain2l;
label define emain2l 
	-1          "Not in Universe"               
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
	24          "Speech Disorder"               
	25          "Stiffness or deformity of the" 
	26          "Stomach trouble (including"    
	27          "Stroke"                        
	28          "Thyroid trouble or goiter"     
	29          "Tumor, cyst, or growth"        
	30          "Other"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
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
	-1          "Not in Universe"               
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
label values rdisab   rdisab; 
label define rdisab  
	-1          "Not in Universe"               
	1           "With a severe disability"      
	2           "With a non-severe disability"  
	3           "No disability"                 
;
label values epcdunv  epcdunv;
label define epcdunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values eddelay  eddelay;
label define eddelay 
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akdevdis akdevdis;
label define akdevdis
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
;
label values eadhd    eadhd;  
label define eadhd   
	-1          "Not in Universe"               
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
label values eotherdc eotherdc;
label define eotherdc
	-1          "Not in Universe"               
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
label values eadhdmed eadhdmed;
label define eadhdmed
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Person is Blind"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Person is deaf"                
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral Palsy"                
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
	20          "Paralysis of Any Kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
	23          "Other"                         
;
label values ekcond2  ekcond2l;
label define ekcond2l
	-1          "Not in universe or no second"  
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral Palsy"                
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
	20          "Paralysis of Any Kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
	23          "Other"                         
;
label values ekcond3  ekcond3l;
label define ekcond3l
	-1          "Not in universe or no third"   
	1           "Asthma"                        
	2           "Attention deficit hyperactivity"
	3           "Autism"                        
	4           "Blindness or vision problems"  
	5           "Cancer"                        
	6           "Cerebral Palsy"                
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
	20          "Paralysis of Any Kind"         
	21          "Speech problems"               
	22          "Tonsillitis or repeated ear"   
	23          "Other"                         
;
label values akcond   akcond; 
label define akcond  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekmotorv ekmotorv;
label define ekmotorv
	-1          "Not in Universe"               
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
label values rkdisab  rkdisab;
label define rkdisab 
	-1          "Not in Universe"               
	1           "With a severe disability"      
	2           "With a nonsevere disability"   
	3           "No disability"                 
;
label values eahbunv  eahbunv;
label define eahbunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values ehealpla ehealpla;
label define ehealpla
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahealpla ahealpla;
label define ahealpla
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enotplan enotplan;
label define enotplan
	-1          "Not in Universe"               
	1           "Ineligible"                    
	2           "Denied coverage"               
	3           "Chose not be covered"          
	4           "OTHER"                         
;
label values anotplan anotplan;
label define anotplan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enoelig1 enoelign;
label define enoelign
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoelig2 enoeligk;
label define enoeligk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoelig3 enoeligl;
label define enoeligl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoelig4 enoeligm;
label define enoeligm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values anoelig  anoelig;
label define anoelig 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edencove edencove;
label define edencove
	-1          "Not in Universe"               
	1           "Turned Down based on pre-existing"
	2           "Turned down based on age"      
	3           "Other"                         
;
label values adencove adencove;
label define adencove
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enocov1  enocov1l;
label define enocov1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov2  enocov2l;
label define enocov2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov3  enocov3l;
label define enocov3l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov4  enocov4l;
label define enocov4l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov5  enocov5l;
label define enocov5l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov6  enocov6l;
label define enocov6l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov7  enocov7l;
label define enocov7l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov8  enocov8l;
label define enocov8l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov9  enocov9l;
label define enocov9l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enocov10 enocov1e;
label define enocov1e
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values anocov   anocov; 
label define anocov  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoffemp1 eoffempv;
label define eoffempv
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoffemp2 eoffempk;
label define eoffempk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoffemp3 eoffempl;
label define eoffempl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoffemp4 eoffempm;
label define eoffempm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoffemp5 eoffempn;
label define eoffempn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoffemp  aoffemp;
label define aoffemp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewheheal ewheheal;
label define ewheheal
	-1          "Not in Universe"               
	1           "Spouse's group/employer plan"  
	2           "Other private group plan"      
	3           "An individually purchased policy"
	4           "Other health insurance"        
;
label values awheheal awheheal;
label define awheheal
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecovmemb ecovmemb;
label define ecovmemb
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acovmemb acovmemb;
label define acovmemb
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhocov1 ewhocovb;
label define ewhocovb
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhocov2 ewhocovk;
label define ewhocovk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhocov3 ewhocovl;
label define ewhocovl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhocov4 ewhocovm;
label define ewhocovm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhocov5 ewhocovn;
label define ewhocovn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awhocov  awhocov;
label define awhocov 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm01 echpnm0v;
label define echpnm0v
	-1          "Not in Universe"               
;
label values echcov01 echcov0v;
label define echcov0v
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov01 achcov0v;
label define achcov0v
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm02 echpnm0k;
label define echpnm0k
	-1          "Not in Universe"               
;
label values echcov02 echcov0k;
label define echcov0k
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov02 achcov0k;
label define achcov0k
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm03 echpnm0l;
label define echpnm0l
	-1          "Not in Universe"               
;
label values echcov03 echcov0l;
label define echcov0l
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov03 achcov0l;
label define achcov0l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm04 echpnm0m;
label define echpnm0m
	-1          "Not in Universe"               
;
label values echcov04 echcov0m;
label define echcov0m
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov04 achcov0m;
label define achcov0m
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm05 echpnm0n;
label define echpnm0n
	-1          "Not in Universe"               
;
label values echcov05 echcov0n;
label define echcov0n
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov05 achcov0n;
label define achcov0n
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm06 echpnm0o;
label define echpnm0o
	-1          "Not in Universe"               
;
label values echcov06 echcov0o;
label define echcov0o
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov06 achcov0o;
label define achcov0o
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echpnm07 echpnm0p;
label define echpnm0p
	-1          "Not in Universe"               
;
label values echcov07 echcov0p;
label define echcov0p
	-1          "Not in Universe"               
	1           "Child is covered by Medicaid"  
	2           "Child is covered by Medicare"  
	3           "Child is covered by other private"
	4           "Child is covered by the group" 
	5           "Too costly to obtain coverage for"
	6           "Plan did not cover pre-existing"
	7           "Child is in good health"       
	8           "Child is covered by the group" 
	9           "Other reason"                  
;
label values achcov07 achcov0p;
label define achcov0p
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtplan tamtplan;
label define tamtplan
	0           "None or not in universe"       
;
label values aamtplan aamtplan;
label define aamtplan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimplan etimplan;
label define etimplan
	-1          "Not in Universe"               
	1           "Weekly"                        
	2           "Every two weeks"               
	3           "Twice monthly"                 
	4           "Monthly"                       
	5           "Semi-annually"                 
	6           "Annually"                      
	7           "Other"                         
;
label values atimplan atimplan;
label define atimplan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etaxplan etaxplan;
label define etaxplan
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ataxplan ataxplan;
label define ataxplan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epreminc epreminc;
label define epreminc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apreminc apreminc;
label define apreminc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eleftpla eleftpla;
label define eleftpla
	-1          "Not in Universe"               
	1           "Until age 65 or Medicare"      
	2           "Less than 1 month"             
	3           "1 to 18 months"                
	4           "19 to 36 months"               
	5           "More than 36 months"           
	6           "For life"                      
;
label values aleftpla aleftpla;
label define aleftpla
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eplanmed eplanmed;
label define eplanmed
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aplanmed aplanmed;
label define aplanmed
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoppch1  eoppch1l;
label define eoppch1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoppch2  eoppch2l;
label define eoppch2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoppch3  eoppch3l;
label define eoppch3l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoppch4  eoppch4l;
label define eoppch4l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eoppch5  eoppch5l;
label define eoppch5l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoppch   aoppch; 
label define aoppch  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehashmo  ehashmo;
label define ehashmo 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahashmo  ahashmo;
label define ahashmo 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esigndoc esigndoc;
label define esigndoc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asigndoc asigndoc;
label define asigndoc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebookdoc ebookdoc;
label define ebookdoc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abookdoc abookdoc;
label define abookdoc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhoref  ewhoref;
label define ewhoref 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awhoref  awhoref;
label define awhoref 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoptions eoptions;
label define eoptions
	-1          "Not in Universe"               
	1           "Employer offers more than one" 
	2           "Respondent's plan is the only one"
;
label values aoptions aoptions;
label define aoptions
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echoice1 echoices;
label define echoices
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values achoice1 achoices;
label define achoices
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echoice2 echoicek;
label define echoicek
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values achoice2 achoicek;
label define achoicek
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eempmate eempmate;
label define eempmate
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aempmate aempmate;
label define aempmate
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ematcomp ematcomp;
label define ematcomp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amatcomp amatcomp;
label define amatcomp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econdnot econdnot;
label define econdnot
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acondnot acondnot;
label define acondnot
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eofflong eofflong;
label define eofflong
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aofflong aofflong;
label define aofflong
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecovlong ecovlong;
label define ecovlong
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acovlong acovlong;
label define acovlong
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eempcost eempcost;
label define eempcost
	-1          "Not in Universe"               
	1           "All"                           
	2           "Part"                          
	3           "None"                          
;
label values aempcost aempcost;
label define aempcost
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tamtlong tamtlong;
label define tamtlong
	0           "None or not in universe"       
;
label values aamtlong aamtlong;
label define aamtlong
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimeamt etimeamt;
label define etimeamt
	-1          "Not in Universe"               
	1           "Weekly"                        
	2           "Every two weeks"               
	3           "Twice monthly"                 
	4           "Monthly"                       
	5           "Semi-annually"                 
	6           "Annually"                      
	7           "Other"                         
;
label values atimeamt atimeamt;
label define atimeamt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eretheal eretheal;
label define eretheal
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aretheal aretheal;
label define aretheal
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eretcont eretcont;
label define eretcont
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aretcont aretcont;
label define aretcont
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eretpays eretpays;
label define eretpays
	-1          "Not in Universe"               
	1           "All"                           
	2           "Part"                          
	3           "None"                          
;
label values aretpays aretpays;
label define aretpays
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eretplan eretplan;
label define eretplan
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aretplan aretplan;
label define aretplan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhopln1 ewhoplnn;
label define ewhoplnn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhopln2 ewhoplnk;
label define ewhoplnk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhopln3 ewhoplnl;
label define ewhoplnl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhopln4 ewhoplnm;
label define ewhoplnm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhopln5 ewhoplno;
label define ewhoplno
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awhopln  awhopln;
label define awhopln 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epaidjob epaidjob;
label define epaidjob
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaidjob apaidjob;
label define apaidjob
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eformemp eformemp;
label define eformemp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aformemp aformemp;
label define aformemp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elastcov elastcov;
label define elastcov
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alastcov alastcov;
label define alastcov
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econleft econleft;
label define econleft
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aconleft aconleft;
label define aconleft
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econtret econtret;
label define econtret
	-1          "Not in Universe"               
	1           "COBRA"                         
	2           "Retiree health benefit"        
;
label values acontret acontret;
label define acontret
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhyno1  ewhyno1l;
label define ewhyno1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno2  ewhyno2l;
label define ewhyno2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno3  ewhyno3l;
label define ewhyno3l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno4  ewhyno4l;
label define ewhyno4l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno5  ewhyno5l;
label define ewhyno5l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno6  ewhyno6l;
label define ewhyno6l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno7  ewhyno7l;
label define ewhyno7l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno8  ewhyno8l;
label define ewhyno8l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno9  ewhyno9l;
label define ewhyno9l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno10 ewhyno1t;
label define ewhyno1t
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno11 ewhyno1k;
label define ewhyno1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno12 ewhyno1m;
label define ewhyno1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ewhyno13 ewhyno1n;
label define ewhyno1n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awhyno   awhyno; 
label define awhyno  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tleftjob tleftjob;
label define tleftjob
	-1          "Not in Universe"               
;
label values aleftjob aleftjob;
label define aleftjob
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eyearemp eyearemp;
label define eyearemp
	-1          "Not in Universe"               
;
label values ayearemp ayearemp;
label define ayearemp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnthemp emnthemp;
label define emnthemp
	-1          "Not in Universe"               
;
label values amnthemp amnthemp;
label define amnthemp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecovunio ecovunio;
label define ecovunio
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acovunio acovunio;
label define acovunio
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thbind   thbind; 
label define thbind  
	-1          "Not in Universe"               
	1           "Agriculture, forestry, fishing,"
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing"                 
	5           "Wholesale trade"               
	6           "Retail Trade"                  
	7           "Transportation and warehousing,"
	8           "Information"                   
	9           "Finance, insurance, real estate,"
	10          "Professional, scientific,"     
	11          "Educational Services, and Health"
	12          "Arts, entertainment, recreation,"
	13          "Other services (except public" 
	14          "Public administration"         
	15          "Active duty military"          
	9990        "Unable to code"                
;
label values thbocc   thbocc; 
label define thbocc  
	-1          "Not in Universe"               
	10          "Chief executives (11-1011)"    
	0020        "General and operations managers"
	0040        "Advertising and promotions"    
	0050        "Marketing and sales managers"  
	0060        "Public relations managers"     
	100         "Administrative services managers"
	0110        "Computer and information systems"
	0120        "Financial managers (11-3031)"  
	0130        "Human resources managers (11-3040)"
	0140        "Industrial production"         
	0150        "Purchasing managers (11-3061)" 
	160         "Transportation, storage, and"  
	200         "Farm, ranch, and other"        
	0210        "Farmers and ranchers (11-9012)"
	0220        "Construction managers (11-9021)"
	0230        "Education administrators (11-9030)"
	0300        "Engineering managers (11-9041)"
	0310        "Food service managers (11-9051)"
	0320        "Funeral directors (11-9061)"   
	0330        "Gaming managers (11-9071)"     
	0340        "Lodging managers (11-9081)"    
	0350        "Medical and health services"   
	0360        "Natural sciences managers"     
	0410        "Property, real estate, and"    
	0420        "Social and community service"  
	0430        "Managers, all other (11-9199)" 
	0500        "Agents and business managers of"
	0510        "Purchasing agents and buyers," 
	520         "Wholesale and retail buyers,"  
	0530        "Purchasing agents, except"     
	0540        "Claims adjusters, appraisers," 
	0560        "Compliance officers, except"   
	0600        "Cost estimators (13-1051)"     
	0620        "Human resources, training, and"
	0700        "Logisticians (13-1081)"        
	0710        "Management analysts (13-1111)" 
	0720        "Meeting and convention planners"
	0730        "Other business operations"     
	0800        "Accountants and auditors (13-2011)"
	0810        "Appraisers and assessors of real"
	0820        "Budget analysts (13-2031)"     
	0830        "Credit analysts (13-2041)"     
	840         "Financial analysts (13-2051)"  
	0850        "Personal financial advisors"   
	0860        "Insurance underwriters (13-2053)"
	0900        "Financial examiners (13-2061)" 
	0910        "Loan counselors and officers"  
	0930        "Tax examiners, collectors, and"
	0940        "Tax preparers (13-2082)"       
	0950        "Financial specialists, all other"
	1000        "Computer scientists and systems"
	1010        "Computer programmers (15-1021)"
	1020        "Computer software engineers"   
	1040        "Computer support specialists"  
	1060        "Database administrators (15-1061)"
	1100        "Network and computer systems"  
	1110        "Network systems and data"      
	1200        "Actuaries (15-2011)"           
	1210        "Mathematicians (15-2021)"      
	1220        "Operations research analysts"  
	1230        "Statisticians (15-2041)"       
	1240        "Miscellaneous mathematical"    
	1300        "Architects, except naval (17-1010)"
	1310        "Surveyors, cartographers, and" 
	1320        "Aerospace engineers (17-2011)" 
	1330        "Agricultural engineers (17-2021)"
	1340        "Biomedical engineers (17-2031)"
	1350        "Chemical engineers (17-2041)"  
	1360        "Civil engineers (17-2051)"     
	1400        "Computer hardware engineers"   
	1410        "Electrical and electronic"     
	1420        "Environmental engineers (17-2081)"
	1430        "Industrial engineers, including"
	1440        "Marine engineers and naval"    
	1450        "Materials engineers (17-2131)" 
	1460        "Mechanical engineers (17-2141)"
	1500        "Mining and geological engineers,"
	1510        "Nuclear engineers (17-2161)"   
	1520        "Petroleum engineers (17-2171)" 
	1530        "Engineers, all other (17-2199)"
	1540        "Drafters (17-3010)"            
	1550        "Engineering technicians, except"
	1560        "Surveying and mapping technicians"
	1600        "Agricultural and food scientists"
	1610        "Biological scientists (19-1020)"
	1640        "Conservation scientists and"   
	1650        "Medical scientists (19-1040)"  
	1700        "Astronomers and physicists"    
	1710        "Atmospheric and space scientists"
	1720        "Chemists and materials scientists"
	1740        "Environmental scientists and"  
	1760        "Physical scientists, all other"
	1800        "Economists (19-3011)"          
	1810        "Market and survey researchers" 
	1820        "Psychologists (19-3030)"       
	1830        "Sociologists (19-3041)"        
	1840        "Urban and regional planners"   
	1860        "Miscellaneous social scientists"
	1900        "Agricultural and food science" 
	1910        "Biological technicians (19-4021)"
	1920        "Chemical technicians (19-4031)"
	1930        "Geological and petroleum"      
	1940        "Nuclear technicians (19-4051)" 
	1960        "Other life, physical, and social"
	2000        "Counselors (21-1010)"          
	2010        "Social workers (21-1020)"      
	2020        "Miscellaneous community and"   
	2040        "Clergy (21-2011)"              
	2050        "Directors, religious activities"
	2060        "Religious workers, all other"  
	2100        "Lawyers (23-1011)"             
	2140        "Paralegals and legal assistants"
	2150        "Miscellaneous legal support"   
	2200        "Postsecondary teachers (25-1000)"
	2300        "Preschool and kindergarten"    
	2310        "Elementary and middle school"  
	2320        "Secondary school teachers"     
	2330        "Special education teachers"    
	2340        "Other teachers and instructors"
	2400        "Archivists, curators, and museum"
	2430        "Librarians (25-4021)"          
	2440        "Library technicians (25-4031)" 
	2540        "Teacher assistants (25-9041)"  
	2550        "Other education, training, and"
	2600        "Artists and related workers"   
	2630        "Designers (27-1020)"           
	2700        "Actors (27-2011)"              
	2710        "Producers and directors (27-2012)"
	2720        "Athletes, coaches, umpires, and"
	2740        "Dancers and choreographers"    
	2750        "Musicians, singers, and related"
	2760        "Entertainers and performers,"  
	2800        "Announcers (27-3010)"          
	2810        "News analysts, reporters and"  
	2820        "Public relations specialists"  
	2830        "Editors (27-3041)"             
	2840        "Technical writers (27-3042)"   
	2850        "Writers and authors (27-3043)" 
	2860        "Miscellaneous media and"       
	2900        "Broadcast and sound engineering"
	2910        "Photographers (27-4021)"       
	2920        "Television, video, and motion" 
	2960        "Media and communication equipment"
	3000        "Chiropractors (29-1011)"       
	3010        "Dentists (29-1020)"            
	3030        "Dietitians and nutritionists"  
	3040        "Optometrists (29-1041)"        
	3050        "Pharmacists (29-1051)"         
	3060        "Physicians and surgeons (29-1060)"
	3110        "Physician assistants (29-1071)"
	3120        "Podiatrists (29-1081)"         
	3130        "Registered nurses (29-1111)"   
	3140        "Audiologists (29-1121)"        
	3150        "Occupational therapists (29-1122)"
	3160        "Physical therapists (29-1123)" 
	3200        "Radiation therapists (29-1124)"
	3210        "Recreational therapists (29-1125)"
	3220        "Respiratory therapists (29-1126)"
	3230        "Speech-language pathologists"  
	3240        "Therapists, all other (29-1129)"
	3250        "Veterinarians (29-1131)"       
	3260        "Health diagnosing and treating"
	3300        "Clinical laboratory technologists"
	3310        "Dental hygienists (29-2021)"   
	3320        "Diagnostic related technologists"
	3400        "Emergency medical technicians and"
	3410        "Health diagnosing and treating"
	3500        "Licensed practical and licensed"
	3510        "Medical records and health"    
	3520        "Opticians, dispensing (29-2081)"
	3530        "Miscellaneous health"          
	3540        "Other healthcare practitioners"
	3600        "Nursing, psychiatric, and home"
	3610        "Occupational therapist assistants"
	3620        "Physical therapist assistants and"
	3630        "Massage therapists (31-9011)"  
	3640        "Dental assistants (31-9091)"   
	3650        "Medical assistants and other"  
	3700        "First-line supervisors/managers"
	3710        "First-line supervisors/managers"
	3720        "First-line supervisors/managers"
	3730        "Supervisors, protective service"
	3740        "Fire fighters (33-2011)"       
	3750        "Fire inspectors (33-2020)"     
	3800        "Bailiffs, correctional officers,"
	3820        "Detectives and criminal"       
	3830        "Fish and game wardens (33-3031)"
	3840        "Parking enforcement workers"   
	3850        "Police and sheriff's patrol"   
	3860        "Transit and railroad police"   
	3900        "Animal control workers (33-9011)"
	3910        "Private detectives and"        
	3920        "Security guards and gaming"    
	3940        "Crossing guards (33-9091)"     
	3950        "Lifeguards and other protective"
	4000        "Chefs and head cooks (35-1011)"
	4010        "First-line supervisors/managers"
	4020        "Cooks (35-2010)"               
	4030        "Food preparation workers (35-2021)"
	4040        "Bartenders (35-3011)"          
	4050        "Combined food preparation and" 
	4060        "Counter attendants, cafeteria,"
	4110        "Waiters and waitresses (35-3031)"
	4120        "Food servers, nonrestaurant"   
	4130        "Dining room and cafeteria"     
	4140        "Dishwashers (35-9021)"         
	4150        "Hosts and hostesses, restaurant,"
	4160        "Food preparation and serving"  
	4200        "First-line supervisors/managers"
	4210        "First-line supervisors/managers"
	4220        "Janitors and building cleaners"
	4230        "Maids and housekeeping cleaners"
	4240        "Pest control workers (37-2021)"
	4250        "Grounds maintenance workers"   
	4300        "First-line supervisors/managers"
	4320        "First-line supervisors/managers"
	4340        "Animal trainers (39-2011)"     
	4350        "Nonfarm animal caretakers"     
	4400        "Gaming services workers (39-3010)"
	4410        "Motion picture projectionists" 
	4420        "Ushers, lobby attendants, and" 
	4430        "Miscellaneous entertainment"   
	4460        "Funeral service workers (39-4000)"
	4500        "Barbers (39-5011)"             
	4510        "Hairdressers, hairstylists, and"
	4520        "Miscellaneous personal appearance"
	4530        "Baggage porters, bellhops, and"
	4540        "Tour and travel guides (39-6020)"
	4550        "Transportation attendants"     
	4600        "Child care workers (39-9011)"  
	4610        "Personal and home care aides"  
	4620        "Recreation and fitness workers"
	4640        "Residential advisors (39-9041)"
	4650        "Personal care and service"     
	4700        "First-line supervisors/managers"
	4710        "First-line supervisors/managers"
	4720        "Cashiers (41-2010)"            
	4740        "Counter and rental clerks"     
	4750        "Parts salespersons (41-2022)"  
	4760        "Retail salespersons (41-2031)" 
	4800        "Advertising sales agents (41-3011)"
	4810        "Insurance sales agents (41-3021)"
	4820        "Securities, commodities, and"  
	4830        "Travel agents (41-3041)"       
	4840        "Sales representatives, services,"
	4850        "Sales representatives, wholesale"
	4900        "Models, demonstrators, and"    
	4920        "Real estate brokers and sales" 
	4930        "Sales engineers (41-9031)"     
	4940        "Telemarketers (41-9041)"       
	4950        "Door-to-door sales workers, news"
	4960        "Sales and related workers, all"
	5000        "First-line supervisors/managers"
	5010        "Switchboard operators, including"
	5020        "Telephone operators (43-2021)" 
	5030        "Communications equipment"      
	5100        "Bill and account collectors"   
	5110        "Billing and posting clerks and"
	5120        "Bookkeeping, accounting, and"  
	5130        "Gaming cage workers (43-3041)" 
	5140        "Payroll and timekeeping clerks"
	5150        "Procurement clerks (43-3061)"  
	5160        "Tellers (43-3071)"             
	5200        "Brokerage clerks (43-4011)"    
	5210        "Correspondence clerks (43-4021)"
	5220        "Court, municipal, and license" 
	5230        "Credit authorizers, checkers, and"
	5240        "Customer service representatives"
	5250        "Eligibility interviewers,"     
	5260        "File Clerks (43-4071)"         
	5300        "Hotel, motel, and resort desk" 
	5310        "Interviewers, except eligibility"
	5320        "Library assistants, clerical"  
	5330        "Loan interviewers and clerks"  
	5340        "New accounts clerks (43-4141)" 
	5350        "Order clerks (43-4151)"        
	5360        "Human resources assistants,"   
	5400        "Receptionists and information" 
	5410        "Reservation and transportation"
	5420        "Information and record clerks,"
	5500        "Cargo and freight agents (43-5011)"
	5510        "Couriers and messengers (43-5021)"
	5520        "Dispatchers (43-5030)"         
	5530        "Meter readers, utilities (43-5041)"
	5540        "Postal service clerks (43-5051)"
	5550        "Postal service mail carriers"  
	5560        "Postal service mail sorters,"  
	5600        "Production, planning, and"     
	5610        "Shipping, receiving, and traffic"
	5620        "Stock clerks and order fillers"
	5630        "Weighers, measurers, checkers,"
	5700        "Secretaries and administrative"
	5800        "Computer operators (43-9011)"  
	5810        "Data entry keyers (43-9021)"   
	5820        "Word processors and typists"   
	5830        "Desktop publishers (43-9031)"  
	5840        "Insurance claims and policy"   
	5850        "Mail clerks and mail machine"  
	5860        "Office clerks, general (43-9061)"
	5900        "Office machine operators, except"
	5910        "Proofreaders and copy markers" 
	5920        "Statistical assistants (43-9111)"
	5930        "Office and administrative support"
	6000        "First-line supervisors/managers"
	6010        "Agricultural inspectors (45-2011)"
	6020        "Animal breeders (45-2021)"     
	6040        "Graders and sorters, agricultural"
	6050        "Miscellaneous agricultural"    
	6100        "Fishers and related fishing"   
	6110        "Hunters and trappers (45-3021)"
	6120        "Forest and conservation workers"
	6130        "Logging workers (45-4020)"     
	6200        "First-line supervisors/managers"
	6210        "Boilermakers (47-2011)"        
	6220        "Brickmasons, blockmasons, and" 
	6230        "Carpenters (47-2031)"          
	6240        "Carpet, floor, and tile"       
	6250        "Cement masons, concrete"       
	6260        "Construction laborers (47-2061)"
	6300        "Paving, surfacing, and tamping"
	6310        "Pile-driver operators (47-2072)"
	6320        "Operating engineers and other" 
	6330        "Drywall installers, ceiling tile"
	6350        "Electricians (47-2111)"        
	6360        "Glaziers (47-2121)"            
	6400        "Insulation workers (47-2130)"  
	6420        "Painters, construction and"    
	6430        "Paperhangers (47-2142)"        
	6440        "Pipelayers, plumbers,"         
	6460        "Plasterers and stucco masons"  
	6500        "Reinforcing iron and rebar"    
	6510        "Roofers (47-2181)"             
	6520        "Sheet metal workers (47-2211)" 
	6530        "Structural iron and steel workers"
	6600        "Helpers, construction trades"  
	6660        "Construction and building"     
	6700        "Elevator installers and repairers"
	6710        "Fence erectors (47-4031)"      
	6720        "Hazardous materials removal"   
	6730        "Highway maintenance workers"   
	6740        "Rail-track laying and maintenance"
	6750        "Septic tank servicers and sewer"
	6760        "Miscellaneous construction and"
	6800        "Derrick, rotary drill, and"    
	6820        "Earth drillers, except oil and"
	6830        "Explosives workers, ordnance"  
	6840        "Mining machine operators (47-5040)"
	6910        "Roof bolters, mining (47-5061)"
	6920        "Roustabouts, oil and gas (47-5071)"
	6930        "Helpers--extraction workers"   
	6940        "Other extraction workers (47-50XX)"
	7000        "First-line supervisors/managers"
	7010        "Computer, automated teller, and"
	7020        "Radio and telecommunications"  
	7030        "Avionics technicians (49-2091)"
	7040        "Electric motor, power tool, and"
	7050        "Electrical and electronics"    
	7100        "Electrical and electronics"    
	7110        "Electronic equipment installers"
	7120        "Electronic home entertainment" 
	7130        "Security and fire alarm systems"
	7140        "Aircraft mechanics and service"
	7150        "Automotive body and related"   
	7160        "Automotive glass installers and"
	7200        "Automotive service technicians"
	7210        "Bus and truck mechanics and"   
	7220        "Heavy vehicle and mobile"      
	7240        "Small engine mechanics (49-3050)"
	7260        "Miscellaneous vehicle and mobile"
	7300        "Control and valve installers and"
	7310        "Heating, air conditioning, and"
	7320        "Home appliance repairers (49-9031)"
	7330        "Industrial and refractory"     
	7340        "Maintenance and repair workers,"
	7350        "Maintenance workers, machinery"
	7360        "Millwrights (49-9044)"         
	7410        "Electrical power-line installers"
	7420        "Telecommunications line"       
	7430        "Precision instrument and"      
	7510        "Coin, vending, and amusement"  
	7520        "Commercial divers (49-9092)"   
	7540        "Locksmiths and safe repairers" 
	7550        "Manufactured building and mobile"
	7560        "Riggers (49-9096)"             
	7600        "Signal and track switch repairers"
	7610        "Helpers--installation,"        
	7620        "Other installation, maintenance,"
	7700        "First-line supervisors/managers"
	7710        "Aircraft structure, surfaces," 
	7720        "Electrical, electronics, and"  
	7730        "Engine and other machine"      
	7740        "Structural metal fabricators and"
	7750        "Miscellaneous assemblers and"  
	7800        "Bakers (51-3011)"              
	7810        "Butchers and other meat, poultry,"
	7830        "Food and tobacco roasting,"    
	7840        "Food batchmakers (51-3092)"    
	7850        "Food cooking machine operators"
	7900        "Computer control programmers and"
	7920        "Extruding and drawing machine" 
	7930        "Forging machine setters,"      
	7940        "Rolling machine setters,"      
	7950        "Cutting, punching, and press"  
	7960        "Drilling and boring machine tool"
	8000        "Grinding, lapping, polishing, and"
	8010        "Lathe and turning machine tool"
	8020        "Milling and planing machine"   
	8030        "Machinists (51-4041)"          
	8040        "Metal furnace and kiln operators"
	8060        "Model makers and patternmakers,"
	8100        "Molders and molding machine"   
	8120        "Multiple machine tool setters,"
	8130        "Tool and die makers (51-4111)" 
	8140        "Welding, soldering, and brazing"
	8150        "Heat treating equipment setters,"
	8160        "Lay-out workers, metal and"    
	8200        "Plating and coating machine"   
	8210        "Tool grinders, filers, and"    
	8220        "Metalworkers and plastic workers,"
	8230        "Bookbinders and bindery workers"
	8240        "Job printers (51-5021)"        
	8250        "Prepress technicians and workers"
	8260        "Printing machine operators"    
	8300        "Laundry and dry-cleaning workers"
	8310        "Pressers, textile, garment, and"
	8320        "Sewing machine operators (51-6031)"
	8330        "Shoe and leather workers and"  
	8340        "Shoe machine operators and"    
	8350        "Tailors, dressmakers, and sewers"
	8360        "Textile bleaching and dyeing"  
	8400        "Textile cutting machine setters,"
	8410        "Textile knitting and weaving"  
	8420        "Textile winding, twisting, and"
	8430        "Extruding and forming machine" 
	8440        "Fabric and apparel patternmakers"
	8450        "Upholsterers (51-6093)"        
	8460        "Textile, apparel, and furnishings"
	8500        "Cabinetmakers and bench"       
	8510        "Furniture finishers (51-7021)" 
	8520        "Model makers and patternmakers,"
	8530        "Sawing machine setters,"       
	8540        "Woodworking machine setters,"  
	8550        "Woodworkers, all other (51-7099)"
	8600        "Power plant operators,"        
	8610        "Stationary engineers and boiler"
	8620        "Water and liquid waste treatment"
	8630        "Miscellaneous plant and system"
	8640        "Chemical processing machine"   
	8650        "Crushing, grinding, polishing,"
	8710        "Cutting workers (51-9030)"     
	8720        "Extruding, forming, pressing, and"
	8730        "Furnace, kiln, oven, drier, and"
	8740        "Inspectors, testers, sorters," 
	8750        "Jewelers and precious stone and"
	8760        "Medical, dental, and ophthalmic"
	8800        "Packaging and filling machine" 
	8810        "Painting workers (51-9120)"    
	8830        "Photographic process workers and"
	8840        "Semiconductor processors (51-9141)"
	8850        "Cementing and gluing machine"  
	8860        "Cleaning, washing, and metal"  
	8900        "Cooling and freezing equipment"
	8910        "Etchers and engravers (51-9194)"
	8920        "Molders, shapers, and casters,"
	8930        "Paper goods machine setters,"  
	8940        "Tire builders (51-9197)"       
	8950        "Helpers--production workers"   
	8960        "Production workers, all other" 
	9000        "Supervisors, transportation and"
	9030        "Aircraft pilots and flight"    
	9040        "Air traffic controllers and"   
	9110        "Ambulance drivers and attendants,"
	9120        "Bus drivers (53-3020)"         
	9130        "Driver/sales workers and truck"
	9140        "Taxi drivers and chauffeurs"   
	9150        "Motor vehicle operators, all"  
	9200        "Locomotive engineers and"      
	9230        "Railroad brake, signal, and"   
	9240        "Railroad conductors and"       
	9260        "Subway, streetcar, and other rail"
	9300        "Sailors and marine oilers"     
	9310        "Ship and boat captains and"    
	9330        "Ship engineers (53-5031)"      
	9340        "Bridge and lock tenders (53-6011)"
	9350        "Parking lot attendants (53-6021)"
	9360        "Service station attendants"    
	9410        "Transportation inspectors"     
	9420        "Other transportation workers"  
	9500        "Conveyor operators and tenders"
	9510        "Crane and tower operators"     
	9520        "Dredge, excavating, and loading"
	9560        "Hoist and winch operators"     
	9600        "Industrial truck and tractor"  
	9610        "Cleaners of vehicles and"      
	9620        "Laborers and freight, stock, and"
	9630        "Machine feeders and offbearers"
	9640        "Packers and packagers, hand"   
	9650        "Pumping station operators"     
	9720        "Refuse and recyclable material"
	9730        "Shuttle car operators (53-7111)"
	9740        "Tank car, truck, and ship loaders"
	9750        "Material moving workers, all"  
	9840        "Persons whose current labor force"
	9990        "Unable to code"                
;
label values eempljob eempljob;
label define eempljob
	-1          "Not in Universe"               
	1           "A Government organization"     
	2           "A Private, For Profit, Company"
	3           "A Non-Profit Organization,"    
	4           "A family business or farm"     
;
label values aempljob aempljob;
label define aempljob
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egovrnmt egovrnmt;
label define egovrnmt
	-1          "Not in Universe"               
	1           "Federal (civilian only)"       
	2           "State"                         
	3           "Local (county, city, township)"
	4           "Armed Forces (active duty only)"
;
label values agovrnmt agovrnmt;
label define agovrnmt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eemptype eemptype;
label define eemptype
	-1          "Not in Universe"               
	1           "Manufacturing"                 
	2           "Wholesale trade"               
	3           "Retail trade"                  
	4           "Service"                       
	5           "Something else"                
;
label values aemptype aemptype;
label define aemptype
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tendsala tendsala;
label define tendsala
	0           "None or not in universe"       
;
label values aendsala aendsala;
label define aendsala
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values temploca temploca;
label define temploca
	-1          "Not in Universe"               
	1           "Less than 25 employees"        
	2           "25 - 99 employees"             
	3           "100+ employees"                
;
label values aemploca aemploca;
label define aemploca
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efewer20 efewer2a;
label define efewer2a
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afewer20 afewer2a;
label define afewer2a
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eexmedic eexmedic;
label define eexmedic
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aexmedic aexmedic;
label define aexmedic
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epostmed epostmed;
label define epostmed
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apostmed apostmed;
label define apostmed
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eawbunv  eawbunv;
label define eawbunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values radwash  radwash;
label define radwash 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "Not in home, but one is provided"
	3           "No, no washing machine"        
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "Not in home, but one is provided"
	3           "No, no clothes dryer"          
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no dishwasher"             
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no refrigerator"           
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no food freezer"           
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No color television"           
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no stove"                  
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no microwave"              
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no VCR or DVD (or other video"
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no air conditioning"       
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no personal computer"      
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No, no cell phone or mobile phone"
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
	-1          "Not in Universe"               
	1           "Yes, phone in home"            
	2           "No phone in home, but can be"  
	3           "No phone in home, but can be"  
	4           "No phone in home, but can be"  
	5           "No, cannot be reached by telephone"
;
label values aadphon  aadphon;
label define aadphon 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tahroom  tahroom;
label define tahroom 
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahleak  eahleak;
label define eahleak 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahwind  eahwind;
label define eahwind 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahwire  eahwire;
label define eahwire 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahplum  eahplum;
label define eahplum 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahcrac  eahcrac;
label define eahcrac 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eahhole  eahhole;
label define eahhole 
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Stayed in our home at certain" 
	2           "Did not stay in home."         
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
	-1          "Not in Universe"               
	1           "Has taken someone with."       
	2           "Did not take someone with."    
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
	-1          "Not in Universe"               
	1           "Carried anything to protect self."
	2           "Did not carry anything."       
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
	-1          "Not in Universe"               
	1           "Very safe"                     
	2           "Somewhat safe"                 
	3           "Somewhat unsafe"               
	4           "Very unsafe"                   
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
	-1          "Not in Universe"               
	1           "Very safe"                     
	2           "Somewhat safe"                 
	3           "Somewhat unsafe"               
	4           "Very unsafe"                   
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
	-1          "Not in Universe"               
	1           "Has dog to keep home safe from"
	2           "Has dog, not to keep home safe"
	3           "Does not have dog"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanstrt  eanstrt;
label define eanstrt 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eantrsh  eantrsh;
label define eantrsh 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanaban  eanaban;
label define eanaban 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanind   eanind; 
label define eanind  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eanodor  eanodor;
label define eanodor 
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
	5           "Haven't lived here long enough to"
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Not sure because you do not use"
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
	-1          "Not in Universe"               
	1           "Very satisfied"                
	2           "Somewhat satisfied"            
	3           "Somewhat dissatisfied"         
	4           "Very dissatisfied"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabrhlp2 rabrhlpk;
label define rabrhlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabrhlp3 rabrhlpl;
label define rabrhlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabrhlp4 rabrhlpm;
label define rabrhlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabrhlp5 rabrhlpn;
label define rabrhlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
;
label values rabehlp2 rabehlpk;
label define rabehlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
;
label values rabehlp3 rabehlpl;
label define rabehlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
;
label values rabehlp4 rabehlpm;
label define rabehlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
;
label values rabehlp5 rabehlpn;
label define rabehlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not  received from this"  
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabghlp2 rabghlpk;
label define rabghlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabghlp3 rabghlpl;
label define rabghlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabghlp4 rabghlpm;
label define rabghlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabghlp5 rabghlpn;
label define rabghlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabchlp2 rabchlpk;
label define rabchlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabchlp3 rabchlpl;
label define rabchlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabchlp4 rabchlpm;
label define rabchlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabchlp5 rabchlpn;
label define rabchlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabphlp2 rabphlpk;
label define rabphlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabphlp3 rabphlpl;
label define rabphlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabphlp4 rabphlpm;
label define rabphlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabphlp5 rabphlpo;
label define rabphlpo
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabdhlp2 rabdhlpk;
label define rabdhlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabdhlp3 rabdhlpl;
label define rabdhlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabdhlp4 rabdhlpm;
label define rabdhlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabdhlp5 rabdhlpn;
label define rabdhlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabthlp2 rabthlpk;
label define rabthlpk
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabthlp3 rabthlpl;
label define rabthlpl
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabthlp4 rabthlpm;
label define rabthlpm
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
;
label values rabthlp5 rabthlpn;
label define rabthlpn
	-1          "Not in Universe"               
	1           "Help received from this source"
	2           "Help not received from this source"
	3           "No help received from any source"
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
	-1          "Not in Universe"               
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
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
	-1          "Not in Universe"               
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
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
	-1          "Not in Universe"               
	1           "All of the help needed"        
	2           "Most of the help needed"       
	3           "Very little of the help needed"
	4           "No help"                       
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
	-1          "Not in Universe"               
	1           "Enough of the kinds of food we"
	2           "Enough but not always the kinds"
	3           "Sometimes not enough to eat"   
	4           "Often not enough to eat"       
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
	-1          "Not in Universe"               
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
;
label values eafdm2   eafdm2l;
label define eafdm2l 
	-1          "Not in Universe"               
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
;
label values eafdm3   eafdm3l;
label define eafdm3l 
	-1          "Not in Universe"               
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
;
label values eafdm4   eafdm4l;
label define eafdm4l 
	-1          "Not in Universe"               
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
;
label values eafdm5   eafdm5l;
label define eafdm5l 
	-1          "Not in Universe"               
	1           "Yes, did not have enough to eat -"
	2           "No, enough to eat"             
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
	-1          "Not in Universe"               
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
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
	-1          "Not in Universe"               
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
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
	-1          "Not in Universe"               
	1           "Often true"                    
	2           "Sometimes true"                
	3           "Never true"                    
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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

#delimit cr
desc,short

sort ssuid shhadid eentaid epppnum swave srotaton 
saveold `dta_name' , replace



** Copyright 2013 shared by the National Bureau of Economic Research and Jean Roth ;

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
