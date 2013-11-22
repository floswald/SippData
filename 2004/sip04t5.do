
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
label values easeunv  easeunv;
label define easeunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values renrold  renrold;
label define renrold 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aenrold  aenrold;
label define aenrold 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rflptime rflptime;
label define rflptime
	2           "Part Time"                     
	1           "Full Time"                     
	-1          "Not in Universe"               
;
label values aflptime aflptime;
label define aflptime
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egrlevel egrlevel;
label define egrlevel
	10          "Enrolled in college, but not"  
	9           "Vocational, technical or business"
	8           "College year 6+ (Second year or"
	7           "College year 5 (first year"    
	6           "College year 4 (senior)"       
	5           "College year 3 (junior)"       
	4           "College year 2 (sophomore)"    
	3           "College year 1 (freshman)"     
	2           "High school grades 9-12"       
	1           "Elementary grades 1-8"         
	-1          "Not in Universe"               
;
label values agrlevel agrlevel;
label define agrlevel
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values riostate riostate;
label define riostate
	2           "In-state student"              
	1           "Out-of-state student"          
	-1          "Not in Universe"               
;
label values aiostate aiostate;
label define aiostate
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epubpriv epubpriv;
label define epubpriv
	2           "Private"                       
	1           "Public"                        
	-1          "Not in Universe"               
;
label values apubpriv apubpriv;
label define apubpriv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rdegree  rdegree;
label define rdegree 
	8           "Enrolled in college, but not"  
	7           "Other license, diploma, or"    
	6           "Professional (MD, DDS, DVM, Law,"
	5           "Doctorate"                     
	4           "Master's"                      
	3           "Bachelor's"                    
	2           "Associate degree - general arts"
	1           "Associate Degree - Occupational"
	-1          "Not in Universe"               
;
label values adegree  adegree;
label define adegree 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efield   efield; 
label define efield  
	17          "No major"                      
	16          "Other"                         
	15          "Vocational - technical studies"
	14          "Social sciences"               
	13          "Physical or earth science"     
	12          "Mathematics or statistics"     
	11          "Liberal arts or humanities"    
	10          "Law"                           
	9           "Home Economics"                
	8           "Health, nursing, medical"      
	7           "English or journalism"         
	6           "Engineering"                   
	5           "Education"                     
	4           "Computer science"              
	3           "Business, commerce, accounting,"
	2           "Biological science"            
	1           "Agriculture or forestry"       
	-1          "Not in Universe"               
;
label values afield   afield; 
label define afield  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ttuition ttuition;
label define ttuition
	25000       "$25,000+"                      
	22000       "$19,000 - 24,999"              
	17000       "$15,000 - 18,999"              
	13000       "$11,000 - 14,999"              
	9500        "$8,000 - 10,999"               
	7500        "$7,000 -  7,999"               
	6500        "$6,000 -  6,999"               
	5500        "$5,000 -  5,999"               
	4500        "$4,000 -  4,999"               
	0           "None or not in universe"       
;
label values atuition atuition;
label define atuition
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rfullcst rfullcst;
label define rfullcst
	2           "No, lowered cost"              
	1           "Yes, full cost"                
	-1          "Not in Universe"               
;
label values afullcst afullcst;
label define afullcst
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtasst tamtasst;
label define tamtasst
	0           "None or not in universe"       
;
label values aamtasst aamtasst;
label define aamtasst
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tothcost tothcost;
label define tothcost
	0           "None or not in universe"       
;
label values aothcost aothcost;
label define aothcost
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rlwpar   rlwpar; 
label define rlwpar  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alwpar   alwpar; 
label define alwpar  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tcstrmb  tcstrmb;
label define tcstrmb 
	0           "None or not in universe"       
;
label values acstrmb  acstrmb;
label define acstrmb 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tcsttran tcsttran;
label define tcsttran
	0           "None or not in universe"       
;
label values acsttran acsttran;
label define acsttran
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values redaid01 redaid0n;
label define redaid0n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid02 redaid0k;
label define redaid0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid03 redaid0l;
label define redaid0l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid04 redaid0m;
label define redaid0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid05 redaid0o;
label define redaid0o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid06 redaid0p;
label define redaid0p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid07 redaid0q;
label define redaid0q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid08 redaid0r;
label define redaid0r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid09 redaid0s;
label define redaid0s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid10 redaid1n;
label define redaid1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values redaid11 redaid1k;
label define redaid1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aedaid   aedaid; 
label define aedaid  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tedamt01 tedamt0d;
label define tedamt0d
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt02 tedamt0k;
label define tedamt0k
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt03 tedamt0l;
label define tedamt0l
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt04 tedamt0m;
label define tedamt0m
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt05 tedamt0n;
label define tedamt0n
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt06 tedamt0o;
label define tedamt0o
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt07 tedamt0p;
label define tedamt0p
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt08 tedamt0q;
label define tedamt0q
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt09 tedamt0r;
label define tedamt0r
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt10 tedamt1d;
label define tedamt1d
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values tedamt11 tedamt1k;
label define tedamt1k
	0           "Not In Universe"               
	-2          "Don't Know"                    
	-3          "Refused"                       
	-4          "Received, but no amount given" 
;
label values ttotamt  ttotamt;
label define ttotamt 
	25000       "$25,000+"                      
	22000       "$19,000 - 24,999"              
	17000       "$15,000 - 18,999"              
	13000       "$11,000 - 14,999"              
	10000       "$9,000 - 10,999"               
	8000        "$7,000 -  8,999"               
	6500        "$6,000 -  6,999"               
	5500        "$5,000 -  5,999"               
	4500        "$4,000 -  4,999"               
	0           "None or not in universe"       
;
label values atotamt  atotamt;
label define atotamt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edpntax  edpntax;
label define edpntax 
	0           "Suppressed"                    
;
label values adpntax  adpntax;
label define adpntax 
	0           "Suppressed"                    
;
label values eloansgn eloansgn;
label define eloansgn
	3           "Both the student and someone else"
	2           "Someone else signed"           
	1           "No, only self-signed"          
	-1          "Not in Universe"               
;
label values aloansgn aloansgn;
label define aloansgn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelsign erelsign;
label define erelsign
	3           "Someone else"                  
	2           "Spouse"                        
	1           "Parent or guardian"            
	-1          "Not in Universe"               
;
label values arelsign arelsign;
label define arelsign
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erlcosgn erlcosgn;
label define erlcosgn
	3           "Someone else"                  
	2           "Spouse"                        
	1           "Parent or guardian"            
	-1          "Not in Universe"               
;
label values arlcosgn arlcosgn;
label define arlcosgn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tselfamt tselfamt;
label define tselfamt
	0           "None or not in universe"       
;
label values aselfamt aselfamt;
label define aselfamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eempreq  eempreq;
label define eempreq 
	4           "No, some other reason or not"  
	3           "Yes, requirement for"          
	2           "Yes, Requirement for RETRAINING"
	1           "Yes, requirement for MAINTAINING"
	-1          "Not in Universe"               
;
label values aempreq  aempreq;
label define aempreq 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eempgrd  eempgrd;
label define eempgrd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aempgrd  aempgrd;
label define aempgrd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eempoblg eempoblg;
label define eempoblg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aempoblg aempoblg;
label define aempoblg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eemptime eemptime;
label define eemptime
	0           "Less than 1 month"             
	-1          "Not in Universe"               
;
label values aemptime aemptime;
label define aemptime
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eemprelt eemprelt;
label define eemprelt
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aemprelt aemprelt;
label define aemprelt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewrkhrs  ewrkhrs;
label define ewrkhrs 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awrkhrs  awrkhrs;
label define awrkhrs 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epdtimcl epdtimcl;
label define epdtimcl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apdtimcl apdtimcl;
label define apdtimcl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacsunv  eacsunv;
label define eacsunv 
	1           "In universe"                   
	-1          "Not in Universe"               
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
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab02 eynoab0k;
label define eynoab0k
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab03 eynoab0l;
label define eynoab0l
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab04 eynoab0m;
label define eynoab0m
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab05 eynoab0n;
label define eynoab0n
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab06 eynoab0o;
label define eynoab0o
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab07 eynoab0p;
label define eynoab0p
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab08 eynoab0q;
label define eynoab0q
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab09 eynoab0r;
label define eynoab0r
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values eynoab10 eynoab1v;
label define eynoab1v
	10          "Other"                         
	9           "Child was adopted by a single" 
	8           "Other parent is no longer"     
	7           "Other parent legally terminated"
	6           "Other Parent lives elsewhere"  
	5           "Don't know where child's other"
	4           "Don't want contact with child's"
	3           "Parents are separated/divorced"
	2           "Both parents live in the household"
	1           "Other parent has died"         
	-1          "Not in Universe"               
;
label values aynoab   aynoab; 
label define aynoab  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values recrdflg recrdflg;
label define recrdflg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ecsflg01 ecsflg0g;
label define ecsflg0g
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg02 ecsflg0k;
label define ecsflg0k
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg03 ecsflg0l;
label define ecsflg0l
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg04 ecsflg0m;
label define ecsflg0m
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg05 ecsflg0n;
label define ecsflg0n
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg06 ecsflg0o;
label define ecsflg0o
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg07 ecsflg0p;
label define ecsflg0p
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg08 ecsflg0q;
label define ecsflg0q
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg09 ecsflg0r;
label define ecsflg0r
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values ecsflg10 ecsflg1g;
label define ecsflg1g
	4           "Not eligible for supplement"   
	3           "Not covered by a child support"
	2           "Covered by some other child"   
	1           "Covered by the most recent child"
	-1          "Not in Universe"               
;
label values acsflg   acsflg; 
label define acsflg  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ranyagre ranyagre;
label define ranyagre
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values tnumagr  tnumagr;
label define tnumagr 
	2           "Number of agreements"          
	-1          "Not in Universe"               
;
label values anumagr  anumagr;
label define anumagr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etypeagr etypeagr;
label define etypeagr
	4           "A non-written verbal agreement"
	3           "Other type of written agreement"
	2           "Court-ordered agreement"       
	1           "Voluntary written agreement"   
	-1          "Not in Universe"               
;
label values atypeagr atypeagr;
label define atypeagr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efirsyr1 efirsyrr;
label define efirsyrr
	-1          "Not in Universe"               
;
label values afirsyr1 afirsyrr;
label define afirsyrr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtag11 tamtag1r;
label define tamtag1r
	0           "None or not in universe"       
;
label values eamtag12 eamtag1r;
label define eamtag1r
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aamtag11 aamtag1r;
label define aamtag1r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eevrchg1 eevrchgr;
label define eevrchgr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aevrchg1 aevrchgr;
label define aevrchgr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eyrchng1 eyrchngr;
label define eyrchngr
	-1          "Not in Universe"               
;
label values ayrchng1 ayrchngr;
label define ayrchngr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtcg11 tamtcg1r;
label define tamtcg1r
	0           "None or not in universe"       
;
label values eamtcg12 eamtcg1r;
label define eamtcg1r
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aamtcg11 aamtcg1r;
label define aamtcg1r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhochgd ewhochgd;
label define ewhochgd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhochgd awhochgd;
label define awhochgd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaydue1 epaydued;
label define epaydued
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydue1 apaydued;
label define apaydued
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eynodue1 eynodued;
label define eynodued
	5           "Other reason"                  
	4           "Payment suspended by court or" 
	3           "Other parent in jail or"       
	2           "Other parent not working"      
	1           "Child(ren) over the age limit" 
	-1          "Not in Universe"               
;
label values aynodue1 aynodued;
label define aynodued
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtsup1 tamtsupd;
label define tamtsupd
	0           "None or not in universe"       
;
label values aamtsup1 aamtsupd;
label define aamtsupd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehowrec1 ehowrecd;
label define ehowrecd
	4           "Some other method"             
	3           "Through the welfare or child"  
	2           "Through the court"             
	1           "Directly from the other parent"
	-1          "Not in Universe"               
;
label values ahowrec1 ahowrecd;
label define ahowrecd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tactrec1 tactrecd;
label define tactrecd
	0           "None or not in universe"       
;
label values aactrec1 aactrecd;
label define aactrecd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eallpay1 eallpayd;
label define eallpayd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aallpay1 aallpayd;
label define aallpayd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaytim1 epaytimd;
label define epaytimd
	4           "None of the time"              
	3           "Some of the time"              
	2           "Most of the time"              
	1           "All of the time"               
	-1          "Not in Universe"               
;
label values apaytim1 apaytimd;
label define apaytimd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayful1 epayfuld;
label define epayfuld
	4           "None"                          
	3           "Some"                          
	2           "Most"                          
	1           "All"                           
	-1          "Not in Universe"               
;
label values apayful1 apayfuld;
label define apayfuld
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eduback1 edubackd;
label define edubackd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aduback1 adubackd;
label define adubackd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tdolbac1 tdolbacd;
label define tdolbacd
	0           "Not In Universe"               
;
label values adolbac1 adolbacd;
label define adolbacd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebacowe1 ebacowed;
label define ebacowed
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abacowe1 abacowed;
label define abacowed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtowe1 tamtowed;
label define tamtowed
	0           "Not In Universe"               
;
label values aamtowe1 aamtowed;
label define aamtowed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tbacrec1 tbacrecd;
label define tbacrecd
	0           "Not In Universe"               
;
label values abacrec1 abacrecd;
label define abacrecd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehthag11 ehthag1d;
label define ehthag1d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehthag12 ehthag1k;
label define ehthag1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehthag13 ehthag1l;
label define ehthag1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehthag14 ehthag1m;
label define ehthag1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehthag15 ehthag1n;
label define ehthag1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehthag16 ehthag1o;
label define ehthag1o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahthag11 ahthag1d;
label define ahthag1d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecustag1 ecustagd;
label define ecustagd
	7           "Other custody arrangement"     
	6           "Split custody"                 
	5           "Father legal and physical custody"
	4           "Mother legal and physical custody"
	3           "Joint Legal with father physical"
	2           "Joint legal with mother physical"
	1           "Joint legal and physical custody"
	-1          "Not in Universe"               
;
label values acustag1 acustagd;
label define acustagd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values espentm1 espentmd;
label define espentmd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspentm1 aspentmd;
label define aspentmd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esametm1 esametmd;
label define esametmd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asametm1 asametmd;
label define asametmd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewherlv1 ewherlvd;
label define ewherlvd
	6           "Unknown"                       
	5           "Other"                         
	4           "Other parent now deceased"     
	3           "Different State"               
	2           "Same State (different county or"
	1           "Same county or city"           
	-1          "Not in Universe"               
;
label values awherlv1 awherlvd;
label define awherlvd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estagre1 estagred;
label define estagred
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astagre1 astagred;
label define astagred
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhomov1 ewhomovd;
label define ewhomovd
	3           "Both subject person and other" 
	2           "Other parent"                  
	1           "Subject person"                
	-1          "Not in Universe"               
;
label values awhomov1 awhomovd;
label define awhomovd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efirsyr2 efirsyrd;
label define efirsyrd
	-1          "Not in Universe"               
;
label values afirsyr2 afirsyrd;
label define afirsyrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtag21 tamtag2d;
label define tamtag2d
	0           "None or not in universe"       
;
label values eamtag22 eamtag2d;
label define eamtag2d
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aamtag21 aamtag2d;
label define aamtag2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eevrchg2 eevrchgd;
label define eevrchgd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aevrchg2 aevrchgd;
label define aevrchgd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eyrchng2 eyrchngd;
label define eyrchngd
	-1          "Not in Universe"               
;
label values ayrchng2 ayrchngd;
label define ayrchngd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtcg21 tamtcg2d;
label define tamtcg2d
	0           "None or not in universe"       
;
label values eamtcg22 eamtcg2d;
label define eamtcg2d
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aamtcg21 aamtcg2d;
label define aamtcg2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaydue2 epayduek;
label define epayduek
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydue2 apayduek;
label define apayduek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eynodue2 eynoduek;
label define eynoduek
	5           "Other reason"                  
	4           "Payment suspended by court or" 
	3           "Other parent in jail or"       
	2           "Other parent not working"      
	1           "Child(ren) over the age limit" 
	-1          "Not in Universe"               
;
label values aynodue2 aynoduek;
label define aynoduek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtsup2 tamtsupk;
label define tamtsupk
	0           "None or not in universe"       
;
label values aamtsup2 aamtsupk;
label define aamtsupk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tactrec2 tactreck;
label define tactreck
	0           "None or not in universe"       
;
label values aactrec2 aactreck;
label define aactreck
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eallpay2 eallpayk;
label define eallpayk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aallpay2 aallpayk;
label define aallpayk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaytim2 epaytimk;
label define epaytimk
	4           "None of the time"              
	3           "Some of the time"              
	2           "Most of the time"              
	1           "All of the time"               
	-1          "Not in Universe"               
;
label values apaytim2 apaytimk;
label define apaytimk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayful2 epayfulk;
label define epayfulk
	4           "None"                          
	3           "Some"                          
	2           "Most"                          
	1           "All"                           
	-1          "Not in Universe"               
;
label values apayful2 apayfulk;
label define apayfulk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eduback2 edubackk;
label define edubackk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aduback2 adubackk;
label define adubackk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tdolbac2 tdolback;
label define tdolback
	1           "Data suppressed"               
	0           "Not In Universe"               
;
label values adolbac2 adolback;
label define adolback
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebacowe2 ebacowek;
label define ebacowek
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abacowe2 abacowek;
label define abacowek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtowe2 tamtowek;
label define tamtowek
	0           "None or not in universe"       
;
label values aamtowe2 aamtowek;
label define aamtowek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tbacrec2 tbacreck;
label define tbacreck
	0           "Not In Universe"               
;
label values abacrec2 abacreck;
label define abacreck
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehltag21 ehltag2d;
label define ehltag2d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehltag22 ehltag2k;
label define ehltag2k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehltag23 ehltag2l;
label define ehltag2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehltag24 ehltag2m;
label define ehltag2m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehltag25 ehltag2n;
label define ehltag2n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehltag26 ehltag2o;
label define ehltag2o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahltag21 ahltag2d;
label define ahltag2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecustag2 ecustagk;
label define ecustagk
	5           "Other"                         
	4           "None"                          
	3           "Child(ren) live with mother and"
	2           "Child(Ren) live With father"   
	1           "Child(ren) Live with mother"   
	-1          "Not in Universe"               
;
label values acustag2 acustagk;
label define acustagk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values espentm2 espentmk;
label define espentmk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspentm2 aspentmk;
label define aspentmk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esametm2 esametmk;
label define esametmk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asametm2 asametmk;
label define asametmk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edcrt101 edcrt10d;
label define edcrt10d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt102 edcrt10k;
label define edcrt10k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt103 edcrt10l;
label define edcrt10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt104 edcrt10m;
label define edcrt10m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt105 edcrt10n;
label define edcrt10n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt106 edcrt10o;
label define edcrt10o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt107 edcrt10p;
label define edcrt10p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt108 edcrt10q;
label define edcrt10q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt109 edcrt10r;
label define edcrt10r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt110 edcrt11d;
label define edcrt11d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes101 edtes10d;
label define edtes10d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes102 edtes10k;
label define edtes10k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes103 edtes10l;
label define edtes10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes104 edtes10m;
label define edtes10m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes105 edtes10n;
label define edtes10n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes106 edtes10o;
label define edtes10o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes107 edtes10p;
label define edtes10p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes108 edtes10q;
label define edtes10q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes109 edtes10r;
label define edtes10r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes110 edtes11d;
label define edtes11d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer101 edcer10d;
label define edcer10d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer102 edcer10k;
label define edcer10k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer103 edcer10l;
label define edcer10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer104 edcer10m;
label define edcer10m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer105 edcer10n;
label define edcer10n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer106 edcer10o;
label define edcer10o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer107 edcer10p;
label define edcer10p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer108 edcer10q;
label define edcer10q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer109 edcer10r;
label define edcer10r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer110 edcer11d;
label define edcer11d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig101 edsig10d;
label define edsig10d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig102 edsig10k;
label define edsig10k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig103 edsig10l;
label define edsig10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig104 edsig10m;
label define edsig10m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig105 edsig10n;
label define edsig10n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig106 edsig10o;
label define edsig10o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig107 edsig10p;
label define edsig10p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig108 edsig10q;
label define edsig10q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig109 edsig10r;
label define edsig10r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig110 edsig11d;
label define edsig11d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth101 edoth10d;
label define edoth10d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth102 edoth10k;
label define edoth10k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth103 edoth10l;
label define edoth10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth104 edoth10m;
label define edoth10m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth105 edoth10n;
label define edoth10n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth106 edoth10o;
label define edoth10o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth107 edoth10p;
label define edoth10p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth108 edoth10q;
label define edoth10q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth109 edoth10r;
label define edoth10r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth110 edoth11d;
label define edoth11d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adid101  adid101l;
label define adid101l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar1   edmar1l;
label define edmar1l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar1   admar1l;
label define admar1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edcrt201 edcrt20d;
label define edcrt20d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt202 edcrt20k;
label define edcrt20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt203 edcrt20l;
label define edcrt20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt204 edcrt20m;
label define edcrt20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt205 edcrt20n;
label define edcrt20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt206 edcrt20o;
label define edcrt20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt207 edcrt20p;
label define edcrt20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt208 edcrt20q;
label define edcrt20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt209 edcrt20r;
label define edcrt20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt210 edcrt21d;
label define edcrt21d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes201 edtes20d;
label define edtes20d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes202 edtes20k;
label define edtes20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes203 edtes20l;
label define edtes20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes204 edtes20m;
label define edtes20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes205 edtes20n;
label define edtes20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes206 edtes20o;
label define edtes20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes207 edtes20p;
label define edtes20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes208 edtes20q;
label define edtes20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes209 edtes20r;
label define edtes20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes210 edtes21d;
label define edtes21d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer201 edcer20d;
label define edcer20d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer202 edcer20k;
label define edcer20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer203 edcer20l;
label define edcer20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer204 edcer20m;
label define edcer20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer205 edcer20n;
label define edcer20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer206 edcer20o;
label define edcer20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer207 edcer20p;
label define edcer20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer208 edcer20q;
label define edcer20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer209 edcer20r;
label define edcer20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer210 edcer21d;
label define edcer21d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig201 edsig20d;
label define edsig20d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig202 edsig20k;
label define edsig20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig203 edsig20l;
label define edsig20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig204 edsig20m;
label define edsig20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig205 edsig20n;
label define edsig20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig206 edsig20o;
label define edsig20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig207 edsig20p;
label define edsig20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig208 edsig20q;
label define edsig20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig209 edsig20r;
label define edsig20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig210 edsig21d;
label define edsig21d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth201 edoth20d;
label define edoth20d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth202 edoth20k;
label define edoth20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth203 edoth20l;
label define edoth20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth204 edoth20m;
label define edoth20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth205 edoth20n;
label define edoth20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth206 edoth20o;
label define edoth20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth207 edoth20p;
label define edoth20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth208 edoth20q;
label define edoth20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth209 edoth20r;
label define edoth20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth210 edoth21d;
label define edoth21d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adid201  adid201l;
label define adid201l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eynevwr1 eynevwrd;
label define eynevwrd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr2 eynevwrk;
label define eynevwrk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr3 eynevwrl;
label define eynevwrl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr4 eynevwrm;
label define eynevwrm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr5 eynevwrn;
label define eynevwrn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr6 eynevwro;
label define eynevwro
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr7 eynevwrp;
label define eynevwrp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynevwr8 eynevwrq;
label define eynevwrq
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aynevwr1 aynevwrd;
label define aynevwrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewherlv2 ewherlvk;
label define ewherlvk
	6           "Unknown"                       
	5           "Other"                         
	4           "Other parent now deceased"     
	3           "Different State"               
	2           "Same State (different county or"
	1           "Same county or city"           
	-1          "Not in Universe"               
;
label values awherlv2 awherlvk;
label define awherlvk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estagre2 estagrek;
label define estagrek
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astagre2 astagrek;
label define astagrek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhomov2 ewhomovk;
label define ewhomovk
	3           "Both subject person and other" 
	2           "Other parent"                  
	1           "Subject person"                
	-1          "Not in Universe"               
;
label values awhomov2 awhomovk;
label define awhomovk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtag31 tamtag3d;
label define tamtag3d
	0           "None or not in universe"       
;
label values eamtag32 eamtag3d;
label define eamtag3d
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aamtag31 aamtag3d;
label define aamtag3d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tactrec3 tactrecl;
label define tactrecl
	0           "None or not in universe"       
;
label values aactrec3 aactrecl;
label define aactrecl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epubsupp epubsupp;
label define epubsupp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apubsupp apubsupp;
label define apubsupp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elastask elastask;
label define elastask
	-1          "Not in Universe"               
;
label values alastask alastask;
label define alastask
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etypask1 etypaskk;
label define etypaskk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask2 etypaskl;
label define etypaskl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask3 etypaskm;
label define etypaskm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask4 etypaskn;
label define etypaskn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask5 etypasko;
label define etypasko
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask6 etypaskp;
label define etypaskp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etypask7 etypaskq;
label define etypaskq
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atypask  atypask;
label define atypask 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehelpsyn ehelpsyn;
label define ehelpsyn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahelpsyn ahelpsyn;
label define ahelpsyn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etyphlp1 etyphlpn;
label define etyphlpn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp2 etyphlpk;
label define etyphlpk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp3 etyphlpl;
label define etyphlpl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp4 etyphlpm;
label define etyphlpm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp5 etyphlpo;
label define etyphlpo
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp6 etyphlpp;
label define etyphlpp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values etyphlp7 etyphlpq;
label define etyphlpq
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atyphlp  atyphlp;
label define atyphlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edcrt301 edcrt30p;
label define edcrt30p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt302 edcrt30k;
label define edcrt30k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt303 edcrt30l;
label define edcrt30l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt304 edcrt30m;
label define edcrt30m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt305 edcrt30n;
label define edcrt30n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt306 edcrt30o;
label define edcrt30o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt307 edcrt30q;
label define edcrt30q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt308 edcrt30r;
label define edcrt30r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt309 edcrt30s;
label define edcrt30s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt310 edcrt31p;
label define edcrt31p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes301 edtes30p;
label define edtes30p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes302 edtes30k;
label define edtes30k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes303 edtes30l;
label define edtes30l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes304 edtes30m;
label define edtes30m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes305 edtes30n;
label define edtes30n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes306 edtes30o;
label define edtes30o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes307 edtes30q;
label define edtes30q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes308 edtes30r;
label define edtes30r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes309 edtes30s;
label define edtes30s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes310 edtes31p;
label define edtes31p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer301 edcer30p;
label define edcer30p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer302 edcer30k;
label define edcer30k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer303 edcer30l;
label define edcer30l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer304 edcer30m;
label define edcer30m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer305 edcer30n;
label define edcer30n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer306 edcer30o;
label define edcer30o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer307 edcer30q;
label define edcer30q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer308 edcer30r;
label define edcer30r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer309 edcer30s;
label define edcer30s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer310 edcer31p;
label define edcer31p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig301 edsig30p;
label define edsig30p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig302 edsig30k;
label define edsig30k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig303 edsig30l;
label define edsig30l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig304 edsig30m;
label define edsig30m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig305 edsig30n;
label define edsig30n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig306 edsig30o;
label define edsig30o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig307 edsig30q;
label define edsig30q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig308 edsig30r;
label define edsig30r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig309 edsig30s;
label define edsig30s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig310 edsig31p;
label define edsig31p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth301 edoth30p;
label define edoth30p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth302 edoth30k;
label define edoth30k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth303 edoth30l;
label define edoth30l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth304 edoth30m;
label define edoth30m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth305 edoth30n;
label define edoth30n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth306 edoth30o;
label define edoth30o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth307 edoth30q;
label define edoth30q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth308 edoth30r;
label define edoth30r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth309 edoth30s;
label define edoth30s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth310 edoth31p;
label define edoth31p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adid301  adid301l;
label define adid301l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar201 edmar20p;
label define edmar20p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar201 admar20p;
label define admar20p
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar202 edmar20k;
label define edmar20k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar202 admar20k;
label define admar20k
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar203 edmar20l;
label define edmar20l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar203 admar20l;
label define admar20l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar204 edmar20m;
label define edmar20m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar204 admar20m;
label define admar20m
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar205 edmar20n;
label define edmar20n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar205 admar20n;
label define admar20n
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar206 edmar20o;
label define edmar20o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar206 admar20o;
label define admar20o
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar207 edmar20q;
label define edmar20q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar207 admar20q;
label define admar20q
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar208 edmar20r;
label define edmar20r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar208 admar20r;
label define admar20r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar209 edmar20s;
label define edmar20s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar209 admar20s;
label define admar20s
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edmar210 edmar21p;
label define edmar21p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values admar210 admar21p;
label define admar21p
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame01  esame01l;
label define esame01l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame01  asame01l;
label define asame01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame02  esame02l;
label define esame02l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame02  asame02l;
label define asame02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame03  esame03l;
label define esame03l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame03  asame03l;
label define asame03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame04  esame04l;
label define esame04l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame04  asame04l;
label define asame04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame05  esame05l;
label define esame05l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame05  asame05l;
label define asame05l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame06  esame06l;
label define esame06l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame06  asame06l;
label define asame06l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame07  esame07l;
label define esame07l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame07  asame07l;
label define asame07l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame08  esame08l;
label define esame08l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame08  asame08l;
label define asame08l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame09  esame09l;
label define esame09l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame09  asame09l;
label define asame09l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esame10  esame10l;
label define esame10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asame10  asame10l;
label define asame10l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edcrt401 edcrt40p;
label define edcrt40p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt402 edcrt40k;
label define edcrt40k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt403 edcrt40l;
label define edcrt40l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt404 edcrt40m;
label define edcrt40m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt405 edcrt40n;
label define edcrt40n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt406 edcrt40o;
label define edcrt40o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt407 edcrt40q;
label define edcrt40q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt408 edcrt40r;
label define edcrt40r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt409 edcrt40s;
label define edcrt40s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcrt410 edcrt41p;
label define edcrt41p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes401 edtes40p;
label define edtes40p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes402 edtes40k;
label define edtes40k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes403 edtes40l;
label define edtes40l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes404 edtes40m;
label define edtes40m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes405 edtes40n;
label define edtes40n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes406 edtes40o;
label define edtes40o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes407 edtes40q;
label define edtes40q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes408 edtes40r;
label define edtes40r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes409 edtes40s;
label define edtes40s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edtes410 edtes41p;
label define edtes41p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer401 edcer40p;
label define edcer40p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer402 edcer40k;
label define edcer40k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer403 edcer40l;
label define edcer40l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer404 edcer40m;
label define edcer40m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer405 edcer40n;
label define edcer40n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer406 edcer40o;
label define edcer40o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer407 edcer40q;
label define edcer40q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer408 edcer40r;
label define edcer40r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer409 edcer40s;
label define edcer40s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edcer410 edcer41p;
label define edcer41p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig401 edsig40p;
label define edsig40p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig402 edsig40k;
label define edsig40k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig403 edsig40l;
label define edsig40l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig404 edsig40m;
label define edsig40m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig405 edsig40n;
label define edsig40n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig406 edsig40o;
label define edsig40o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig407 edsig40q;
label define edsig40q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig408 edsig40r;
label define edsig40r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig409 edsig40s;
label define edsig40s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edsig410 edsig41p;
label define edsig41p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth401 edoth40p;
label define edoth40p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth402 edoth40k;
label define edoth40k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth403 edoth40l;
label define edoth40l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth404 edoth40m;
label define edoth40m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth405 edoth40n;
label define edoth40n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth406 edoth40o;
label define edoth40o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth407 edoth40q;
label define edoth40q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth408 edoth40r;
label define edoth40r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth409 edoth40s;
label define edoth40s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values edoth410 edoth41p;
label define edoth41p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adid401  adid401l;
label define adid401l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid402  adid402l;
label define adid402l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid403  adid403l;
label define adid403l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid404  adid404l;
label define adid404l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid405  adid405l;
label define adid405l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid406  adid406l;
label define adid406l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid407  adid407l;
label define adid407l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid408  adid408l;
label define adid408l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid409  adid409l;
label define adid409l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values adid410  adid410l;
label define adid410l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esamepar esamepar;
label define esamepar
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asamepar asamepar;
label define asamepar
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eynoag11 eynoag1r;
label define eynoag1r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag12 eynoag1k;
label define eynoag1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag13 eynoag1l;
label define eynoag1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag14 eynoag1m;
label define eynoag1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag15 eynoag1n;
label define eynoag1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag16 eynoag1o;
label define eynoag1o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag17 eynoag1p;
label define eynoag1p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag18 eynoag1q;
label define eynoag1q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aynoag11 aynoag1r;
label define aynoag1r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewherlv3 ewherlvr;
label define ewherlvr
	6           "Unknown"                       
	5           "Other"                         
	4           "Other parent now deceased"     
	3           "Different State"               
	2           "Same State (different county or"
	1           "Same county or city"           
	-1          "Not in Universe"               
;
label values awherlv3 awherlvr;
label define awherlvr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evisagr1 evisagrr;
label define evisagrr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values avisagr1 avisagrr;
label define avisagrr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eynoag21 eynoag2r;
label define eynoag2r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag22 eynoag2k;
label define eynoag2k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag23 eynoag2l;
label define eynoag2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag24 eynoag2m;
label define eynoag2m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag25 eynoag2n;
label define eynoag2n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag26 eynoag2o;
label define eynoag2o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag27 eynoag2p;
label define eynoag2p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eynoag28 eynoag2q;
label define eynoag2q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aynoag21 aynoag2r;
label define aynoag2r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewherlv4 ewherlvl;
label define ewherlvl
	6           "Unknown"                       
	5           "Other"                         
	4           "Other parent now deceased"     
	3           "Different State"               
	2           "Same State (different county or"
	1           "Same county or city"           
	-1          "Not in Universe"               
;
label values awherlv4 awherlvl;
label define awherlvl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evisagr2 evisagrk;
label define evisagrk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values avisagr2 avisagrk;
label define avisagrk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrecv epayrecv;
label define epayrecv
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrecv apayrecv;
label define apayrecv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tactrec4 tactrecv;
label define tactrecv
	0           "None or not in universe"       
;
label values aactrec4 aactrecv;
label define aactrecv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothitem eothitem;
label define eothitem
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothitem aothitem;
label define aothitem
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eagencol eagencol;
label define eagencol
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aagencol aagencol;
label define aagencol
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eagenall eagenall;
label define eagenall
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aagenall aagenall;
label define aagenall
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtagen tamtagen;
label define tamtagen
	0           "Not In Universe"               
;
label values aamtagen aamtagen;
label define aamtagen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values easnunv  easnunv;
label define easnunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values esupkdyn esupkdyn;
label define esupkdyn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupkdyn asupkdyn;
label define asupkdyn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esuptyp1 esuptypn;
label define esuptypn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuptyp2 esuptypk;
label define esuptypk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuptyp3 esuptypl;
label define esuptypl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asuptyp  asuptyp;
label define asuptyp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupnkid tsupnkid;
label define tsupnkid
	-1          "Not in Universe"               
;
label values asupnkid asupnkid;
label define asupnkid
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupltad tsupltad;
label define tsupltad
	-1          "Not in Universe"               
;
label values asupltad asupltad;
label define asupltad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupagrm esupagrm;
label define esupagrm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupagrm asupagrm;
label define asupagrm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupnagr tsupnagr;
label define tsupnagr
	-1          "Not in Universe"               
;
label values asupnagr asupnagr;
label define asupnagr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupagty esupagty;
label define esupagty
	4           "Non-written agreement"         
	3           "Other type of written agreement"
	2           "Court-ordered agreement"       
	1           "Voluntary written agreement"   
	-1          "Not in Universe"               
;
label values asupagty asupagty;
label define asupagty
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupagyr esupagyr;
label define esupagyr
	-1          "Not in Universe"               
;
label values asupagyr asupagyr;
label define asupagyr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupamtc esupamtc;
label define esupamtc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupamtc asupamtc;
label define asupamtc
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupyrch esupyrch;
label define esupyrch
	-1          "Not in Universe"               
;
label values asupyrch asupyrch;
label define asupyrch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupchag esupchag;
label define esupchag
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupchag asupchag;
label define asupchag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupstlp esupstlp;
label define esupstlp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupstlp asupstlp;
label define asupstlp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupampd tsupampd;
label define tsupampd
	0           "None or not in universe"       
;
label values asupampd asupampd;
label define asupampd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esuphopy esuphopy;
label define esuphopy
	5           "By some other method"          
	4           "Directly to a child support agency"
	3           "Directly to the court"         
	2           "Directly to the other parent"  
	1           "Through employment related wage"
	-1          "Not in Universe"               
;
label values asuphopy asuphopy;
label define asuphopy
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esuphlt1 esuphlty;
label define esuphlty
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuphlt2 esuphltk;
label define esuphltk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuphlt3 esuphltl;
label define esuphltl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuphlt4 esuphltm;
label define esuphltm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuphlt5 esuphltn;
label define esuphltn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values esuphlt6 esuphlto;
label define esuphlto
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asuphlt  asuphlt;
label define asuphlt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupcust esupcust;
label define esupcust
	7           "Other-specify"                 
	6           "Split custody"                 
	5           "Father legal and physical custody"
	4           "Mother legal and physical custody"
	3           "Joint Legal with father physical"
	2           "Joint legal with mother physical"
	1           "Joint legal and physical custody"
	-1          "Not in Universe"               
;
label values asupcust asupcust;
label define asupcust
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupsptm esupsptm;
label define esupsptm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupsptm asupsptm;
label define asupsptm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotha esupotha;
label define esupotha
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupotha asupotha;
label define asupotha
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupamal tsupamal;
label define tsupamal
	0           "None or not in universe"       
;
label values asupamal asupamal;
label define asupamal
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupwoag esupwoag;
label define esupwoag
	0           "Suppressed"                    
;
label values asupwoag asupwoag;
label define asupwoag
	0           "Suppressed"                    
;
label values tsupamad tsupamad;
label define tsupamad
	0           "Not In Universe"               
;
label values asupamad asupamad;
label define asupamad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotpy esupotpy;
label define esupotpy
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asupotpy asupotpy;
label define asupotpy
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupotnp tsupotnp;
label define tsupotnp
	-1          "Not in Universe"               
;
label values asupotnp asupotnp;
label define asupotnp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotre esupotre;
label define esupotre
	7           "Not related"                   
	6           "Other relative"                
	5           "Child over 21"                 
	4           "Child under 21"                
	3           "Ex-spouse"                     
	2           "Spouse"                        
	1           "Parent"                        
	-1          "Not in Universe"               
;
label values asupotre asupotre;
label define asupotre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotlv esupotlv;
label define esupotlv
	3           "Someplace else"                
	2           "Nursing home"                  
	1           "Private home or apartment"     
	-1          "Not in Universe"               
;
label values asupotlv asupotlv;
label define asupotlv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupotam tsupotam;
label define tsupotam
	0           "Not In Universe"               
;
label values asupotam asupotam;
label define asupotam
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotrl esupotrl;
label define esupotrl
	7           "Not related"                   
	6           "Other relative"                
	5           "Child over 21"                 
	4           "Child under 21"                
	3           "Ex-spouse"                     
	2           "Spouse"                        
	1           "Parent"                        
	-1          "Not in Universe"               
;
label values asupotrl asupotrl;
label define asupotrl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esupotli esupotli;
label define esupotli
	3           "Someplace else"                
	2           "Nursing home"                  
	1           "Private home or apartment"     
	-1          "Not in Universe"               
;
label values asupotli asupotli;
label define asupotli
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupotpa tsupotpa;
label define tsupotpa
	0           "Not In Universe"               
;
label values asupotpa asupotpa;
label define asupotpa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tsupotnt tsupotnt;
label define tsupotnt
	0           "Not In Universe"               
;
label values asupotnt asupotnt;
label define asupotnt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaadunv  eaadunv;
label define eaadunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values ehstat   ehstat; 
label define ehstat  
	5           "Poor"                          
	4           "Fair"                          
	3           "Good"                          
	2           "Very Good"                     
	1           "Excellent"                     
	-1          "Not in Universe"               
;
label values ahstat   ahstat; 
label define ahstat  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecane    ecane;  
label define ecane   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acane    acane;  
label define acane   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewchair  ewchair;
label define ewchair 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awchair  awchair;
label define awchair 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehearaid ehearaid;
label define ehearaid
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahearaid ahearaid;
label define ahearaid
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecane6   ecane6l;
label define ecane6l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acane6   acane6l;
label define acane6l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eseedif  eseedif;
label define eseedif 
	3           "Person is Blind"               
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aseedif  aseedif;
label define aseedif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eseenot  eseenot;
label define eseenot 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aseenot  aseenot;
label define aseenot 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eheardif eheardif;
label define eheardif
	3           "Person is deaf"                
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aheardif aheardif;
label define aheardif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehearnot ehearnot;
label define ehearnot
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahearnot ahearnot;
label define ahearnot
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values espeechd espeechd;
label define espeechd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspeechd aspeechd;
label define aspeechd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values espeechc espeechc;
label define espeechc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspeechc aspeechc;
label define aspeechc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edif10   edif10l;
label define edif10l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adif10   adif10l;
label define adif10l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecant10  ecant10l;
label define ecant10l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acant10  acant10l;
label define acant10l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edif25   edif25l;
label define edif25l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adif25   adif25l;
label define adif25l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecant25  ecant25l;
label define ecant25l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acant25  acant25l;
label define acant25l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epushd   epushd; 
label define epushd  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apushd   apushd; 
label define apushd  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epushc   epushc; 
label define epushc  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apushc   apushc; 
label define apushc  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estandd  estandd;
label define estandd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astandd  astandd;
label define astandd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esitd    esitd;  
label define esitd   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asitd    asitd;  
label define asitd   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estoopd  estoopd;
label define estoopd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astoopd  astoopd;
label define astoopd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ereachd  ereachd;
label define ereachd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values areachd  areachd;
label define areachd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egraspd  egraspd;
label define egraspd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values agraspd  agraspd;
label define agraspd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egraspc  egraspc;
label define egraspc 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values agraspc  agraspc;
label define agraspc 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estairsd estairsd;
label define estairsd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astairsd astairsd;
label define astairsd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estairsc estairsc;
label define estairsc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values astairsc astairsc;
label define astairsc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewalkd   ewalkd; 
label define ewalkd  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awalkd   awalkd; 
label define awalkd  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewalkc   ewalkc; 
label define ewalkc  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awalkc   awalkc; 
label define awalkc  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eteled   eteled; 
label define eteled  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ateled   ateled; 
label define ateled  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etelec   etelec; 
label define etelec  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atelec   atelec; 
label define atelec  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eindif   eindif; 
label define eindif  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aindif   aindif; 
label define aindif  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoutdif  eoutdif;
label define eoutdif 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoutdif  aoutdif;
label define aoutdif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebeddif  ebeddif;
label define ebeddif 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abeddif  abeddif;
label define abeddif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebathdif ebathdif;
label define ebathdif
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abathdif abathdif;
label define abathdif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edressd  edressd;
label define edressd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adressd  adressd;
label define adressd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewalk2d  ewalk2d;
label define ewalk2d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awalk2d  awalk2d;
label define awalk2d 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eeatdif  eeatdif;
label define eeatdif 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aeatdif  aeatdif;
label define aeatdif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etoiletd etoiletd;
label define etoiletd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atoiletd atoiletd;
label define atoiletd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emoneyd  emoneyd;
label define emoneyd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amoneyd  amoneyd;
label define amoneyd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emealsd  emealsd;
label define emealsd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amealsd  amealsd;
label define amealsd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehworkd  ehworkd;
label define ehworkd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahworkd  ahworkd;
label define ahworkd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedd    emedd;  
label define emedd   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedd    amedd;  
label define amedd   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values einhelp  einhelp;
label define einhelp 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ainhelp  ainhelp;
label define ainhelp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eouthelp eouthelp;
label define eouthelp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aouthelp aouthelp;
label define aouthelp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebedhelp ebedhelp;
label define ebedhelp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abedhelp abedhelp;
label define abedhelp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebathh   ebathh; 
label define ebathh  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abathh   abathh; 
label define abathh  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edressh  edressh;
label define edressh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adressh  adressh;
label define adressh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewalk2h  ewalk2h;
label define ewalk2h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awalk2h  awalk2h;
label define awalk2h 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eeathelp eeathelp;
label define eeathelp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aeathelp aeathelp;
label define aeathelp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etoileth etoileth;
label define etoileth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atoileth atoileth;
label define atoileth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emoneyh  emoneyh;
label define emoneyh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amoneyh  amoneyh;
label define amoneyh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emealsh  emealsh;
label define emealsh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amealsh  amealsh;
label define amealsh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehworkh  ehworkh;
label define ehworkh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahworkh  ahworkh;
label define ahworkh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedh    emedh;  
label define emedh   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedh    amedh;  
label define amedh   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehelper1 ehelperh;
label define ehelperh
	9           "Did not receive help"          
	8           "Other nonrelative"             
	7           "Paid help"                     
	6           "Friend or neighbor"            
	5           "Other relative"                
	4           "Parent"                        
	3           "SPOUSE"                        
	2           "Daughter"                      
	1           "Son"                           
	-1          "Not in Universe"               
;
label values ahelper1 ahelperh;
label define ahelperh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehhmemb1 ehhmembh;
label define ehhmembh
	-3          "Not a household member"        
	-1          "Not in Universe"               
;
label values ahhmemb1 ahhmembh;
label define ahhmembh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehelper2 ehelperk;
label define ehelperk
	9           "Other nonrelative"             
	8           "Paid help"                     
	7           "Friend or neighbor"            
	6           "Other relative"                
	5           "Parent"                        
	4           "Spouse"                        
	3           "Daughter"                      
	2           "Son"                           
	1           "No one else helped"            
	-1          "Not in Universe"               
;
label values ahelper2 ahelperk;
label define ahelperk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehhmemb2 ehhmembk;
label define ehhmembk
	-3          "Not a household member"        
	-1          "Not in Universe"               
;
label values ahhmemb2 ahhmembk;
label define ahhmembk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehowlong ehowlong;
label define ehowlong
	5           "More than 5 years"             
	4           "3 to 5 years"                  
	3           "1 to 2 years"                  
	2           "6 to 11 months"                
	1           "Less than 6 months"            
	-1          "Not in Universe"               
;
label values ahowlong ahowlong;
label define ahowlong
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelp epayhelp;
label define epayhelp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelp apayhelp;
label define apayhelp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayamt  epayamt;
label define epayamt 
	0           "None or not in universe"       
;
label values apayamt  apayamt;
label define apayamt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econd1   econd1l;
label define econd1l 
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble(including ulcers,"
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in Universe"               
;
label values acond1   acond1l;
label define acond1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econd2   econd2l;
label define econd2l 
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no second"  
;
label values econd3   econd3l;
label define econd3l 
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no third"   
;
label values econdph1 econdpht;
label define econdpht
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in Universe"               
;
label values acondph1 acondpht;
label define acondpht
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econdph2 econdphk;
label define econdphk
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no second"  
;
label values econdph3 econdphl;
label define econdphl
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no third"   
;
label values emotorv  emotorv;
label define emotorv 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amotorv  amotorv;
label define amotorv 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emain1   emain1l;
label define emain1l 
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in Universe"               
;
label values amain1   amain1l;
label define amain1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tyear1   tyear1l;
label define tyear1l 
	-1          "Not in Universe"               
;
label values ayear1   ayear1l;
label define ayear1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emonth1  emonth1l;
label define emonth1l
	-1          "Not in Universe"               
;
label values amonth1  amonth1l;
label define amonth1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehad5m   ehad5m; 
label define ehad5m  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elast12m elast12m;
label define elast12m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alast12m alast12m;
label define alast12m
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eldis    eldis;  
label define eldis   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aldis    aldis;  
label define aldis   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emr      emr;    
label define emr     
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amr      amr;    
label define amr     
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edevdis  edevdis;
label define edevdis 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adevdis  adevdis;
label define adevdis 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealz     ealz;   
label define ealz    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalz     aalz;   
label define aalz    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eotherm  eotherm;
label define eotherm 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aotherm  aotherm;
label define aotherm 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eanxious eanxious;
label define eanxious
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aanxious aanxious;
label define aanxious
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esocial  esocial;
label define esocial 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asocial  asocial;
label define asocial 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ectrate  ectrate;
label define ectrate 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values actrate  actrate;
label define actrate 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecope    ecope;  
label define ecope   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acope    acope;  
label define acope   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintrfer eintrfer;
label define eintrfer
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintrfer aintrfer;
label define aintrfer
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ejobdif  ejobdif;
label define ejobdif 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ajobdif  ajobdif;
label define ajobdif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ejobcant ejobcant;
label define ejobcant
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ajobcant ajobcant;
label define ajobcant
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehwrkdif ehwrkdif;
label define ehwrkdif
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahwrkdif ahwrkdif;
label define ahwrkdif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehwrkno  ehwrkno;
label define ehwrkno 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahwrkno  ahwrkno;
label define ahwrkno 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econdw1  econdw1l;
label define econdw1l
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in Universe"               
;
label values acondw1  acondw1l;
label define acondw1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econdw2  econdw2l;
label define econdw2l
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no second"  
;
label values econdw3  econdw3l;
label define econdw3l
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in universe or no third"   
;
label values emain2   emain2l;
label define emain2l 
	30          "Other"                         
	29          "Tumor, cyst, or growth"        
	28          "Thyroid trouble or goiter"     
	27          "Stroke"                        
	26          "Stomach trouble (including"    
	25          "Stiffness or deformity of the" 
	24          "Speech Disorder"               
	23          "Senility/Dementia/Alzheimer's" 
	22          "Paralysis of any kind"         
	21          "Missing legs, feet, arms, hands,"
	20          "Mental retardation"            
	19          "Mental or emotional problem or"
	18          "Lung or respiratory problems"  
	17          "Learning disability"           
	16          "Kidney problems"               
	15          "High blood pressure"           
	14          "Hernia or rupture"             
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Epilepsy"                      
	10          "Diabetes"                      
	9           "Deafness or hearing problems"  
	8           "Cerebral palsy"                
	7           "Cancer"                        
	6           "Broken bone/fracture"          
	5           "Blindness or vision problems"  
	4           "Back or spine problems (including"
	3           "Arthritis or rheumatism"       
	2           "AIDS or AIDS Related Condition"
	1           "Alcohol or drug problem or"    
	-1          "Not in Universe"               
;
label values amain2   amain2l;
label define amain2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapplyss eapplyss;
label define eapplyss
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aapplyss aapplyss;
label define aapplyss
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecompute ecompute;
label define ecompute
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acompute acompute;
label define acompute
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecmphome ecmphome;
label define ecmphome
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acmphome acmphome;
label define acmphome
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecmpwork ecmpwork;
label define ecmpwork
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acmpwork acmpwork;
label define acmpwork
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecmpschl ecmpschl;
label define ecmpschl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acmpschl acmpschl;
label define acmpschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintrnet eintrnet;
label define eintrnet
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintrnet aintrnet;
label define aintrnet
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values einthome einthome;
label define einthome
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ainthome ainthome;
label define ainthome
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintwork eintwork;
label define eintwork
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintwork aintwork;
label define aintwork
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintschl eintschl;
label define eintschl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintschl aintschl;
label define aintschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintlibr eintlibr;
label define eintlibr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintlibr aintlibr;
label define aintlibr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintccen eintccen;
label define eintccen
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintccen aintccen;
label define aintccen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintsome eintsome;
label define eintsome
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintsome aintsome;
label define aintsome
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintothr eintothr;
label define eintothr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintothr aintothr;
label define aintothr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eicourse eicourse;
label define eicourse
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aicourse aicourse;
label define aicourse
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eihealth eihealth;
label define eihealth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aihealth aihealth;
label define aihealth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eigovern eigovern;
label define eigovern
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aigovern aigovern;
label define aigovern
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eisrchjb eisrchjb;
label define eisrchjb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aisrchjb aisrchjb;
label define aisrchjb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ronline  ronline;
label define ronline 
	2           "No or has no computer and does"
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aonline  aonline;
label define aonline 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintstil eintstil;
label define eintstil
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aintstil aintstil;
label define aintstil
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epcdunv  epcdunv;
label define epcdunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values eddelay  eddelay;
label define eddelay 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values addelay  addelay;
label define addelay 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values earmleg  earmleg;
label define earmleg 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aarmleg  aarmleg;
label define aarmleg 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erunplay erunplay;
label define erunplay
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arunplay arunplay;
label define arunplay
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eskoolwk eskoolwk;
label define eskoolwk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values askoolwk askoolwk;
label define askoolwk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values especed  especed;
label define especed 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspeced  aspeced;
label define aspeced 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values espednow espednow;
label define espednow
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspednow aspednow;
label define aspednow
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elerndis elerndis;
label define elerndis
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alerndis alerndis;
label define alerndis
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekmr     ekmr;   
label define ekmr    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akmr     akmr;   
label define akmr    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekdevdis ekdevdis;
label define ekdevdis
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akdevdis akdevdis;
label define akdevdis
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadhd    eadhd;  
label define eadhd   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadhd    aadhd;  
label define aadhd   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eotherdc eotherdc;
label define eotherdc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aotherdc aotherdc;
label define aotherdc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadhdmed eadhdmed;
label define eadhdmed
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadhdmed aadhdmed;
label define aadhdmed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekcane   ekcane; 
label define ekcane  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akcane   akcane; 
label define akcane  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekwchair ekwchair;
label define ekwchair
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akwchair akwchair;
label define akwchair
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekhearad ekhearad;
label define ekhearad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akhearad akhearad;
label define akhearad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekcane6  ekcane6l;
label define ekcane6l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akcane6  akcane6l;
label define akcane6l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekseedif ekseedif;
label define ekseedif
	3           "Person is Blind"               
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akseedif akseedif;
label define akseedif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekseenot ekseenot;
label define ekseenot
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akseenot akseenot;
label define akseenot
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekheardf ekheardf;
label define ekheardf
	3           "Person is deaf"                
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akheardf akheardf;
label define akheardf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekhearnt ekhearnt;
label define ekhearnt
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akhearnt akhearnt;
label define akhearnt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekspechd ekspechd;
label define ekspechd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akspechd akspechd;
label define akspechd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekspechc ekspechc;
label define ekspechc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akspechc akspechc;
label define akspechc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esports  esports;
label define esports 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asports  asports;
label define asports 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekindif  ekindif;
label define ekindif 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akindif  akindif;
label define akindif 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekinhelp ekinhelp;
label define ekinhelp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akinhelp akinhelp;
label define akinhelp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekbeddif ekbeddif;
label define ekbeddif
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akbeddif akbeddif;
label define akbeddif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekbedhlp ekbedhlp;
label define ekbedhlp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akbedhlp akbedhlp;
label define akbedhlp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekbathdf ekbathdf;
label define ekbathdf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akbathdf akbathdf;
label define akbathdf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekbathh  ekbathh;
label define ekbathh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akbathh  akbathh;
label define akbathh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekdressd ekdressd;
label define ekdressd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akdressd akdressd;
label define akdressd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekdressh ekdressh;
label define ekdressh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akdressh akdressh;
label define akdressh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekeatdif ekeatdif;
label define ekeatdif
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akeatdif akeatdif;
label define akeatdif
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekeathlp ekeathlp;
label define ekeathlp
	2           "No"                            
	1           "Yes"                           
	-1          "None or not in universe"       
;
label values akeathlp akeathlp;
label define akeathlp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ektoiltd ektoiltd;
label define ektoiltd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aktoiltd aktoiltd;
label define aktoiltd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ektoilth ektoilth;
label define ektoilth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aktoilth aktoilth;
label define aktoilth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eksocial eksocial;
label define eksocial
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aksocial aksocial;
label define aksocial
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekcond1  ekcond1l;
label define ekcond1l
	23          "Other"                         
	22          "Tonsillitis or repeated ear"   
	21          "Speech problems"               
	20          "Paralysis of Any Kind"         
	19          "Missing legs, feet, arms, hands,"
	18          "Mental retardation"            
	17          "Mental or emotional problem or"
	16          "Learning disability"           
	15          "Impairment or deformity of arm,"
	14          "Impairment or deformity of back,"
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Hay fever or other respiratory"
	10          "Epilepsy or seizure disorder"  
	9           "Drug or alcohol problem or"    
	8           "Diabetes"                      
	7           "Deafness or hearing problems"  
	6           "Cerebral Palsy"                
	5           "Cancer"                        
	4           "Blindness or vision problems"  
	3           "Autism"                        
	2           "Attention deficit hyperactivity"
	1           "Asthma"                        
	-1          "Not in Universe"               
;
label values akcond1  akcond1l;
label define akcond1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekcond2  ekcond2l;
label define ekcond2l
	22          "Tonsillitis or repeated ear"   
	21          "Speech problems"               
	20          "Paralysis of Any Kind"         
	19          "Missing legs, feet, arms, hands,"
	18          "Mental retardation"            
	17          "Mental or emotional problem or"
	16          "Learning disability"           
	15          "Impairment or deformity of arm,"
	14          "Impairment or deformity of back,"
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Hay fever or other respiratory"
	10          "Epilepsy or seizure disorder"  
	9           "Drug or alcohol problem or"    
	8           "Diabetes"                      
	7           "Deafness or hearing problems"  
	6           "Cerebral Palsy"                
	5           "Cancer"                        
	4           "Blindness or vision problems"  
	3           "Autism"                        
	2           "Attention deficit hyperactivity"
	1           "Asthma"                        
	-1          "Not in universe or no second"  
;
label values ekcond3  ekcond3l;
label define ekcond3l
	22          "Tonsillitis or repeated ear"   
	21          "Speech problems"               
	20          "Paralysis of Any Kind"         
	19          "Missing legs, feet, arms, hands,"
	18          "Mental retardation"            
	17          "Mental or emotional problem or"
	16          "Learning disability"           
	15          "Impairment or deformity of arm,"
	14          "Impairment or deformity of back,"
	13          "Heart trouble"                 
	12          "Head or spinal cord injury"    
	11          "Hay fever or other respiratory"
	10          "Epilepsy or seizure disorder"  
	9           "Drug or alcohol problem or"    
	8           "Diabetes"                      
	7           "Deafness or hearing problems"  
	6           "Cerebral Palsy"                
	5           "Cancer"                        
	4           "Blindness or vision problems"  
	3           "Autism"                        
	2           "Attention deficit hyperactivity"
	1           "Asthma"                        
	-1          "Not in universe or no third"   
;
label values ekmotorv ekmotorv;
label define ekmotorv
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akmotorv akmotorv;
label define akmotorv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahbunv  eahbunv;
label define eahbunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values ehealpla ehealpla;
label define ehealpla
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahealpla ahealpla;
label define ahealpla
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enotplan enotplan;
label define enotplan
	4           "OTHER"                         
	3           "Chose not be covered"          
	2           "Denied coverage"               
	1           "Ineligible"                    
	-1          "Not in Universe"               
;
label values anotplan anotplan;
label define anotplan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoelig1 enoelign;
label define enoelign
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoelig2 enoeligk;
label define enoeligk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoelig3 enoeligl;
label define enoeligl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoelig4 enoeligm;
label define enoeligm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoelig  anoelig;
label define anoelig 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edencove edencove;
label define edencove
	3           "Other"                         
	2           "Turned down based on age"      
	1           "Turned Down based on pre-existing"
	-1          "Not in Universe"               
;
label values adencove adencove;
label define adencove
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enocov1  enocov1l;
label define enocov1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov2  enocov2l;
label define enocov2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov3  enocov3l;
label define enocov3l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov4  enocov4l;
label define enocov4l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov5  enocov5l;
label define enocov5l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov6  enocov6l;
label define enocov6l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov7  enocov7l;
label define enocov7l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov8  enocov8l;
label define enocov8l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov9  enocov9l;
label define enocov9l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enocov10 enocov1e;
label define enocov1e
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anocov   anocov; 
label define anocov  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoffemp1 eoffempv;
label define eoffempv
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoffemp2 eoffempk;
label define eoffempk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoffemp3 eoffempl;
label define eoffempl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoffemp4 eoffempm;
label define eoffempm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoffemp5 eoffempn;
label define eoffempn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoffemp  aoffemp;
label define aoffemp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheheal ewheheal;
label define ewheheal
	4           "Other health insurance"        
	3           "An individually purchased policy"
	2           "Other private group plan"      
	1           "Spouse's group/employer plan"  
	-1          "Not in Universe"               
;
label values awheheal awheheal;
label define awheheal
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecovmemb ecovmemb;
label define ecovmemb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acovmemb acovmemb;
label define acovmemb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhocov1 ewhocovb;
label define ewhocovb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhocov2 ewhocovk;
label define ewhocovk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhocov3 ewhocovl;
label define ewhocovl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhocov4 ewhocovm;
label define ewhocovm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhocov5 ewhocovn;
label define ewhocovn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhocov  awhocov;
label define awhocov 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm01 echpnm0v;
label define echpnm0v
	-1          "Not in Universe"               
;
label values echcov01 echcov0v;
label define echcov0v
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov01 achcov0v;
label define achcov0v
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm02 echpnm0k;
label define echpnm0k
	-1          "Not in Universe"               
;
label values echcov02 echcov0k;
label define echcov0k
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov02 achcov0k;
label define achcov0k
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm03 echpnm0l;
label define echpnm0l
	-1          "Not in Universe"               
;
label values echcov03 echcov0l;
label define echcov0l
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov03 achcov0l;
label define achcov0l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm04 echpnm0m;
label define echpnm0m
	-1          "Not in Universe"               
;
label values echcov04 echcov0m;
label define echcov0m
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov04 achcov0m;
label define achcov0m
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm05 echpnm0n;
label define echpnm0n
	-1          "Not in Universe"               
;
label values echcov05 echcov0n;
label define echcov0n
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov05 achcov0n;
label define achcov0n
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm06 echpnm0o;
label define echpnm0o
	-1          "Not in Universe"               
;
label values echcov06 echcov0o;
label define echcov0o
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov06 achcov0o;
label define achcov0o
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echpnm07 echpnm0p;
label define echpnm0p
	-1          "Not in Universe"               
;
label values echcov07 echcov0p;
label define echcov0p
	9           "Other reason"                  
	8           "Child is covered by the group" 
	7           "Child is in good health"       
	6           "Plan did not cover pre-existing"
	5           "Too costly to obtain coverage for"
	4           "Child is covered by the group" 
	3           "Child is covered by other private"
	2           "Child is covered by Medicare"  
	1           "Child is covered by Medicaid"  
	-1          "Not in Universe"               
;
label values achcov07 achcov0p;
label define achcov0p
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtplan tamtplan;
label define tamtplan
	0           "None or not in universe"       
;
label values aamtplan aamtplan;
label define aamtplan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etimplan etimplan;
label define etimplan
	7           "Other"                         
	6           "Annually"                      
	5           "Semi-annually"                 
	4           "Monthly"                       
	3           "Twice monthly"                 
	2           "Every two weeks"               
	1           "Weekly"                        
	-1          "Not in Universe"               
;
label values atimplan atimplan;
label define atimplan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etaxplan etaxplan;
label define etaxplan
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ataxplan ataxplan;
label define ataxplan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epreminc epreminc;
label define epreminc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apreminc apreminc;
label define apreminc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eleftpla eleftpla;
label define eleftpla
	6           "For life"                      
	5           "More than 36 months"           
	4           "19 to 36 months"               
	3           "1 to 18 months"                
	2           "Less than 1 month"             
	1           "Until age 65 or Medicare"      
	-1          "Not in Universe"               
;
label values aleftpla aleftpla;
label define aleftpla
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eplanmed eplanmed;
label define eplanmed
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aplanmed aplanmed;
label define aplanmed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoppch1  eoppch1l;
label define eoppch1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoppch2  eoppch2l;
label define eoppch2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoppch3  eoppch3l;
label define eoppch3l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoppch4  eoppch4l;
label define eoppch4l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eoppch5  eoppch5l;
label define eoppch5l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoppch   aoppch; 
label define aoppch  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehashmo  ehashmo;
label define ehashmo 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahashmo  ahashmo;
label define ahashmo 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esigndoc esigndoc;
label define esigndoc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asigndoc asigndoc;
label define asigndoc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebookdoc ebookdoc;
label define ebookdoc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abookdoc abookdoc;
label define abookdoc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhoref  ewhoref;
label define ewhoref 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhoref  awhoref;
label define awhoref 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoptions eoptions;
label define eoptions
	2           "Respondent's plan is the only one"
	1           "Employer offers more than one" 
	-1          "Not in Universe"               
;
label values aoptions aoptions;
label define aoptions
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echoice1 echoices;
label define echoices
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values achoice1 achoices;
label define achoices
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echoice2 echoicek;
label define echoicek
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values achoice2 achoicek;
label define achoicek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eempmate eempmate;
label define eempmate
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aempmate aempmate;
label define aempmate
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ematcomp ematcomp;
label define ematcomp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amatcomp amatcomp;
label define amatcomp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econdnot econdnot;
label define econdnot
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acondnot acondnot;
label define acondnot
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eofflong eofflong;
label define eofflong
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aofflong aofflong;
label define aofflong
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecovlong ecovlong;
label define ecovlong
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acovlong acovlong;
label define acovlong
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eempcost eempcost;
label define eempcost
	3           "None"                          
	2           "Part"                          
	1           "All"                           
	-1          "Not in Universe"               
;
label values aempcost aempcost;
label define aempcost
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtlong tamtlong;
label define tamtlong
	0           "None or not in universe"       
;
label values aamtlong aamtlong;
label define aamtlong
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etimeamt etimeamt;
label define etimeamt
	7           "Other"                         
	6           "Annually"                      
	5           "Semi-annually"                 
	4           "Monthly"                       
	3           "Twice monthly"                 
	2           "Every two weeks"               
	1           "Weekly"                        
	-1          "Not in Universe"               
;
label values atimeamt atimeamt;
label define atimeamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eretheal eretheal;
label define eretheal
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aretheal aretheal;
label define aretheal
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eretcont eretcont;
label define eretcont
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aretcont aretcont;
label define aretcont
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eretpays eretpays;
label define eretpays
	3           "None"                          
	2           "Part"                          
	1           "All"                           
	-1          "Not in Universe"               
;
label values aretpays aretpays;
label define aretpays
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eretplan eretplan;
label define eretplan
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aretplan aretplan;
label define aretplan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopln1 ewhoplnn;
label define ewhoplnn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopln2 ewhoplnk;
label define ewhoplnk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopln3 ewhoplnl;
label define ewhoplnl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopln4 ewhoplnm;
label define ewhoplnm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopln5 ewhoplno;
label define ewhoplno
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopln  awhopln;
label define awhopln 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaidjob epaidjob;
label define epaidjob
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaidjob apaidjob;
label define apaidjob
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eformemp eformemp;
label define eformemp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aformemp aformemp;
label define aformemp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elastcov elastcov;
label define elastcov
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alastcov alastcov;
label define alastcov
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econleft econleft;
label define econleft
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aconleft aconleft;
label define aconleft
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values econtret econtret;
label define econtret
	2           "Retiree health benefit"        
	1           "COBRA"                         
	-1          "Not in Universe"               
;
label values acontret acontret;
label define acontret
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhyno1  ewhyno1l;
label define ewhyno1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno2  ewhyno2l;
label define ewhyno2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno3  ewhyno3l;
label define ewhyno3l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno4  ewhyno4l;
label define ewhyno4l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno5  ewhyno5l;
label define ewhyno5l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno6  ewhyno6l;
label define ewhyno6l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno7  ewhyno7l;
label define ewhyno7l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno8  ewhyno8l;
label define ewhyno8l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno9  ewhyno9l;
label define ewhyno9l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno10 ewhyno1t;
label define ewhyno1t
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno11 ewhyno1k;
label define ewhyno1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno12 ewhyno1m;
label define ewhyno1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhyno13 ewhyno1n;
label define ewhyno1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhyno   awhyno; 
label define awhyno  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tleftjob tleftjob;
label define tleftjob
	-1          "Not in Universe"               
;
label values aleftjob aleftjob;
label define aleftjob
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eyearemp eyearemp;
label define eyearemp
	-1          "Not in Universe"               
;
label values ayearemp ayearemp;
label define ayearemp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emnthemp emnthemp;
label define emnthemp
	-1          "Not in Universe"               
;
label values amnthemp amnthemp;
label define amnthemp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecovunio ecovunio;
label define ecovunio
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acovunio acovunio;
label define acovunio
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thbind   thbind; 
label define thbind  
	9990        "Unable to code"                
	15          "Active duty military"          
	14          "Public administration"         
	13          "Other services (except public" 
	12          "Arts, entertainment, recreation,"
	11          "Educational, health and social"
	10          "Professional, scientific,"     
	9           "Finance, insurance, real estate,"
	8           "Information"                   
	7           "Transportation, warehousing, and"
	6           "Retail Trade"                  
	5           "Wholesale trade"               
	4           "Manufacturing"                 
	3           "Construction"                  
	2           "Mining"                        
	1           "Agriculture, forestry, fishing,"
	-1          "Not in Universe"               
;
label values thbocc   thbocc; 
label define thbocc  
	9990        "Unable to code"                
	9840        "Persons whose current labor force"
	9750        "Material moving workers, all"  
	9740        "Tank car, truck, and ship loaders"
	9730        "Shuttle car operators (53-7111)"
	9720        "Refuse and recyclable material"
	9650        "Pumping station operators"     
	9640        "Packers and packagers, hand"   
	9630        "Machine feeders and offbearers"
	9620        "Laborers and freight, stock, and"
	9610        "Cleaners of vehicles and"      
	9600        "Industrial truck and tractor"  
	9560        "Hoist and winch operators"     
	9520        "Dredge, excavating, and loading"
	9510        "Crane and tower operators"     
	9500        "Conveyor operators and tenders"
	9420        "Other transportation workers"  
	9410        "Transportation inspectors"     
	9360        "Service station attendants"    
	9350        "Parking lot attendants (53-6021)"
	9340        "Bridge and lock tenders (53-6011)"
	9330        "Ship engineers (53-5031)"      
	9310        "Ship and boat captains and"    
	9300        "Sailors and marine oilers"     
	9260        "Subway, streetcar, and other rail"
	9240        "Railroad conductors and"       
	9230        "Railroad brake, signal, and"   
	9200        "Locomotive engineers and"      
	9150        "Motor vehicle operators, all"  
	9140        "Taxi drivers and chauffeurs"   
	9130        "Driver/sales workers and truck"
	9120        "Bus drivers (53-3020)"         
	9110        "Ambulance drivers and attendants,"
	9040        "Air traffic controllers and"   
	9030        "Aircraft pilots and flight"    
	9000        "Supervisors, transportation and"
	8960        "Production workers, all other" 
	8950        "Helpers--production workers"   
	8940        "Tire builders (51-9197)"       
	8930        "Paper goods machine setters,"  
	8920        "Molders, shapers, and casters,"
	8910        "Etchers and engravers (51-9194)"
	8900        "Cooling and freezing equipment"
	8860        "Cleaning, washing, and metal"  
	8850        "Cementing and gluing machine"  
	8840        "Semiconductor processors (51-9141)"
	8830        "Photographic process workers and"
	8810        "Painting workers (51-9120)"    
	8800        "Packaging and filling machine" 
	8760        "Medical, dental, and ophthalmic"
	8750        "Jewelers and precious stone and"
	8740        "Inspectors, testers, sorters," 
	8730        "Furnace, kiln, oven, drier, and"
	8720        "Extruding, forming, pressing, and"
	8710        "Cutting workers (51-9030)"     
	8650        "Crushing, grinding, polishing,"
	8640        "Chemical processing machine"   
	8630        "Miscellaneous plant and system"
	8620        "Water and liquid waste treatment"
	8610        "Stationary engineers and boiler"
	8600        "Power plant operators,"        
	8550        "Woodworkers, all other (51-7099)"
	8540        "Woodworking machine setters,"  
	8530        "Sawing machine setters,"       
	8520        "Model makers and patternmakers,"
	8510        "Furniture finishers (51-7021)" 
	8500        "Cabinetmakers and bench"       
	8460        "Textile, apparel, and furnishings"
	8450        "Upholsterers (51-6093)"        
	8440        "Fabric and apparel patternmakers"
	8430        "Extruding and forming machine" 
	8420        "Textile winding, twisting, and"
	8410        "Textile knitting and weaving"  
	8400        "Textile cutting machine setters,"
	8360        "Textile bleaching and dyeing"  
	8350        "Tailors, dressmakers, and sewers"
	8340        "Shoe machine operators and"    
	8330        "Shoe and leather workers and"  
	8320        "Sewing machine operators (51-6031)"
	8310        "Pressers, textile, garment, and"
	8300        "Laundry and dry-cleaning workers"
	8260        "Printing machine operators"    
	8250        "Prepress technicians and workers"
	8240        "Job printers (51-5021)"        
	8230        "Bookbinders and bindery workers"
	8220        "Metalworkers and plastic workers,"
	8210        "Tool grinders, filers, and"    
	8200        "Plating and coating machine"   
	8160        "Lay-out workers, metal and"    
	8150        "Heat treating equipment setters,"
	8140        "Welding, soldering, and brazing"
	8130        "Tool and die makers (51-4111)" 
	8120        "Multiple machine tool setters,"
	8100        "Molders and molding machine"   
	8060        "Model makers and patternmakers,"
	8040        "Metal furnace and kiln operators"
	8030        "Machinists (51-4041)"          
	8020        "Milling and planing machine"   
	8010        "Lathe and turning machine tool"
	8000        "Grinding, lapping, polishing, and"
	7960        "Drilling and boring machine tool"
	7950        "Cutting, punching, and press"  
	7940        "Rolling machine setters,"      
	7930        "Forging machine setters,"      
	7920        "Extruding and drawing machine" 
	7900        "Computer control programmers and"
	7850        "Food cooking machine operators"
	7840        "Food batchmakers (51-3092)"    
	7830        "Food and tobacco roasting,"    
	7810        "Butchers and other meat, poultry,"
	7800        "Bakers (51-3011)"              
	7750        "Miscellaneous assemblers and"  
	7740        "Structural metal fabricators and"
	7730        "Engine and other machine"      
	7720        "Electrical, electronics, and"  
	7710        "Aircraft structure, surfaces," 
	7700        "First-line supervisors/managers"
	7620        "Other installation, maintenance,"
	7610        "Helpers--installation,"        
	7600        "Signal and track switch repairers"
	7560        "Riggers (49-9096)"             
	7550        "Manufactured building and mobile"
	7540        "Locksmiths and safe repairers" 
	7520        "Commercial divers (49-9092)"   
	7510        "Coin, vending, and amusement"  
	7430        "Precision instrument and"      
	7420        "Telecommunications line"       
	7410        "Electrical power-line installers"
	7360        "Millwrights (49-9044)"         
	7350        "Maintenance workers, machinery"
	7340        "Maintenance and repair workers,"
	7330        "Industrial and refractory"     
	7320        "Home appliance repairers (49-9031)"
	7310        "Heating, air conditioning, and"
	7300        "Control and valve installers and"
	7260        "Miscellaneous vehicle and mobile"
	7240        "Small engine mechanics (49-3050)"
	7220        "Heavy vehicle and mobile"      
	7210        "Bus and truck mechanics and"   
	7200        "Automotive service technicians"
	7160        "Automotive glass installers and"
	7150        "Automotive body and related"   
	7140        "Aircraft mechanics and service"
	7130        "Security and fire alarm systems"
	7120        "Electronic home entertainment" 
	7110        "Electronic equipment installers"
	7100        "Electrical and electronics"    
	7050        "Electrical and electronics"    
	7040        "Electric motor, power tool, and"
	7030        "Avionics technicians (49-2091)"
	7020        "Radio and telecommunications"  
	7010        "Computer, automated teller, and"
	7000        "First-line supervisors/managers"
	6940        "Other extraction workers (47-50XX)"
	6930        "Helpers--extraction workers"   
	6920        "Roustabouts, oil and gas (47-5071)"
	6910        "Roof bolters, mining (47-5061)"
	6840        "Mining machine operators (47-5040)"
	6830        "Explosives workers, ordnance"  
	6820        "Earth drillers, except oil and"
	6800        "Derrick, rotary drill, and"    
	6760        "Miscellaneous construction and"
	6750        "Septic tank servicers and sewer"
	6740        "Rail-track laying and maintenance"
	6730        "Highway maintenance workers"   
	6720        "Hazardous materials removal"   
	6710        "Fence erectors (47-4031)"      
	6700        "Elevator installers and repairers"
	6660        "Construction and building"     
	6600        "Helpers, construction trades"  
	6530        "Structural iron and steel workers"
	6520        "Sheet metal workers (47-2211)" 
	6510        "Roofers (47-2181)"             
	6500        "Reinforcing iron and rebar"    
	6460        "Plasterers and stucco masons"  
	6440        "Pipelayers, plumbers,"         
	6430        "Paperhangers (47-2142)"        
	6420        "Painters, construction and"    
	6400        "Insulation workers (47-2130)"  
	6360        "Glaziers (47-2121)"            
	6350        "Electricians (47-2111)"        
	6330        "Drywall installers, ceiling tile"
	6320        "Operating engineers and other" 
	6310        "Pile-driver operators (47-2072)"
	6300        "Paving, surfacing, and tamping"
	6260        "Construction laborers (47-2061)"
	6250        "Cement masons, concrete"       
	6240        "Carpet, floor, and tile"       
	6230        "Carpenters (47-2031)"          
	6220        "Brickmasons, blockmasons, and" 
	6210        "Boilermakers (47-2011)"        
	6200        "First-line supervisors/managers"
	6130        "Logging workers (45-4020)"     
	6120        "Forest and conservation workers"
	6110        "Hunters and trappers (45-3021)"
	6100        "Fishers and related fishing"   
	6050        "Miscellaneous agricultural"    
	6040        "Graders and sorters, agricultural"
	6020        "Animal breeders (45-2021)"     
	6010        "Agricultural inspectors (45-2011)"
	6000        "First-line supervisors/managers"
	5930        "Office and administrative support"
	5920        "Statistical assistants (43-9111)"
	5910        "Proofreaders and copy markers" 
	5900        "Office machine operators, except"
	5860        "Office clerks, general (43-9061)"
	5850        "Mail clerks and mail machine"  
	5840        "Insurance claims and policy"   
	5830        "Desktop publishers (43-9031)"  
	5820        "Word processors and typists"   
	5810        "Data entry keyers (43-9021)"   
	5800        "Computer operators (43-9011)"  
	5700        "Secretaries and administrative"
	5630        "Weighers, measurers, checkers,"
	5620        "Stock clerks and order fillers"
	5610        "Shipping, receiving, and traffic"
	5600        "Production, planning, and"     
	5560        "Postal service mail sorters,"  
	5550        "Postal service mail carriers"  
	5540        "Postal service clerks (43-5051)"
	5530        "Meter readers, utilities (43-5041)"
	5520        "Dispatchers (43-5030)"         
	5510        "Couriers and messengers (43-5021)"
	5500        "Cargo and freight agents (43-5011)"
	5420        "Information and record clerks,"
	5410        "Reservation and transportation"
	5400        "Receptionists and information" 
	5360        "Human resources assistants,"   
	5350        "Order clerks (43-4151)"        
	5340        "New accounts clerks (43-4141)" 
	5330        "Loan interviewers and clerks"  
	5320        "Library assistants, clerical"  
	5310        "Interviewers, except eligibility"
	5300        "Hotel, motel, and resort desk" 
	5260        "File Clerks (43-4071)"         
	5250        "Eligibility interviewers,"     
	5240        "Customer service representatives"
	5230        "Credit authorizers, checkers, and"
	5220        "Court, municipal, and license" 
	5210        "Correspondence clerks (43-4021)"
	5200        "Brokerage clerks (43-4011)"    
	5160        "Tellers (43-3071)"             
	5150        "Procurement clerks (43-3061)"  
	5140        "Payroll and timekeeping clerks"
	5130        "Gaming cage workers (43-3041)" 
	5120        "Bookkeeping, accounting, and"  
	5110        "Billing and posting clerks and"
	5100        "Bill and account collectors"   
	5030        "Communications equipment"      
	5020        "Telephone operators (43-2021)" 
	5010        "Switchboard operators, including"
	5000        "First-line supervisors/managers"
	4960        "Sales and related workers, all"
	4950        "Door-to-door sales workers, news"
	4940        "Telemarketers (41-9041)"       
	4930        "Sales engineers (41-9031)"     
	4920        "Real estate brokers and sales" 
	4900        "Models, demonstrators, and"    
	4850        "Sales representatives, wholesale"
	4840        "Sales representatives, services,"
	4830        "Travel agents (41-3041)"       
	4820        "Securities, commodities, and"  
	4810        "Insurance sales agents (41-3021)"
	4800        "Advertising sales agents (41-3011)"
	4760        "Retail salespersons (41-2031)" 
	4750        "Parts salespersons (41-2022)"  
	4740        "Counter and rental clerks"     
	4720        "Cashiers (41-2010)"            
	4710        "First-line supervisors/managers"
	4700        "First-line supervisors/managers"
	4650        "Personal care and service"     
	4640        "Residential advisors (39-9041)"
	4620        "Recreation and fitness workers"
	4610        "Personal and home care aides"  
	4600        "Child care workers (39-9011)"  
	4550        "Transportation attendants"     
	4540        "Tour and travel guides (39-6020)"
	4530        "Baggage porters, bellhops, and"
	4520        "Miscellaneous personal appearance"
	4510        "Hairdressers, hairstylists, and"
	4500        "Barbers (39-5011)"             
	4460        "Funeral service workers (39-4000)"
	4430        "Miscellaneous entertainment"   
	4420        "Ushers, lobby attendants, and" 
	4410        "Motion picture projectionists" 
	4400        "Gaming services workers (39-3010)"
	4350        "Nonfarm animal caretakers"     
	4340        "Animal trainers (39-2011)"     
	4320        "First-line supervisors/managers"
	4300        "First-line supervisors/managers"
	4250        "Grounds maintenance workers"   
	4240        "Pest control workers (37-2021)"
	4230        "Maids and housekeeping cleaners"
	4220        "Janitors and building cleaners"
	4210        "First-line supervisors/managers"
	4200        "First-line supervisors/managers"
	4160        "Food preparation and serving"  
	4150        "Hosts and hostesses, restaurant,"
	4140        "Dishwashers (35-9021)"         
	4130        "Dining room and cafeteria"     
	4120        "Food servers, nonrestaurant"   
	4110        "Waiters and waitresses (35-3031)"
	4060        "Counter attendants, cafeteria,"
	4050        "Combined food preparation and" 
	4040        "Bartenders (35-3011)"          
	4030        "Food preparation workers (35-2021)"
	4020        "Cooks (35-2010)"               
	4010        "First-line supervisors/managers"
	4000        "Chefs and head cooks (35-1011)"
	3950        "Lifeguards and other protective"
	3940        "Crossing guards (33-9091)"     
	3920        "Security guards and gaming"    
	3910        "Private detectives and"        
	3900        "Animal control workers (33-9011)"
	3860        "Transit and railroad police"   
	3850        "Police and sheriff's patrol"   
	3840        "Parking enforcement workers"   
	3830        "Fish and game wardens (33-3031)"
	3820        "Detectives and criminal"       
	3800        "Bailiffs, correctional officers,"
	3750        "Fire inspectors (33-2020)"     
	3740        "Fire fighters (33-2011)"       
	3730        "Supervisors, protective service"
	3720        "First-line supervisors/managers"
	3710        "First-line supervisors/managers"
	3700        "First-line supervisors/managers"
	3650        "Medical assistants and other"  
	3640        "Dental assistants (31-9091)"   
	3630        "Massage therapists (31-9011)"  
	3620        "Physical therapist assistants and"
	3610        "Occupational therapist assistants"
	3600        "Nursing, psychiatric, and home"
	3540        "Other healthcare practitioners"
	3530        "Miscellaneous health"          
	3520        "Opticians, dispensing (29-2081)"
	3510        "Medical records and health"    
	3500        "Licensed practical and licensed"
	3410        "Health diagnosing and treating"
	3400        "Emergency medical technicians and"
	3320        "Diagnostic related technologists"
	3310        "Dental hygienists (29-2021)"   
	3300        "Clinical laboratory technologists"
	3260        "Health diagnosing and treating"
	3250        "Veterinarians (29-1131)"       
	3240        "Therapists, all other (29-1129)"
	3230        "Speech-language pathologists"  
	3220        "Respiratory therapists (29-1126)"
	3210        "Recreational therapists (29-1125)"
	3200        "Radiation therapists (29-1124)"
	3160        "Physical therapists (29-1123)" 
	3150        "Occupational therapists (29-1122)"
	3140        "Audiologists (29-1121)"        
	3130        "Registered nurses (29-1111)"   
	3120        "Podiatrists (29-1081)"         
	3110        "Physician assistants (29-1071)"
	3060        "Physicians and surgeons (29-1060)"
	3050        "Pharmacists (29-1051)"         
	3040        "Optometrists (29-1041)"        
	3030        "Dietitians and nutritionists"  
	3010        "Dentists (29-1020)"            
	3000        "Chiropractors (29-1011)"       
	2960        "Media and communication equipment"
	2920        "Television, video, and motion" 
	2910        "Photographers (27-4021)"       
	2900        "Broadcast and sound engineering"
	2860        "Miscellaneous media and"       
	2850        "Writers and authors (27-3043)" 
	2840        "Technical writers (27-3042)"   
	2830        "Editors (27-3041)"             
	2820        "Public relations specialists"  
	2810        "News analysts, reporters and"  
	2800        "Announcers (27-3010)"          
	2760        "Entertainers and performers,"  
	2750        "Musicians, singers, and related"
	2740        "Dancers and choreographers"    
	2720        "Athletes, coaches, umpires, and"
	2710        "Producers and directors (27-2012)"
	2700        "Actors (27-2011)"              
	2630        "Designers (27-1020)"           
	2600        "Artists and related workers"   
	2550        "Other education, training, and"
	2540        "Teacher assistants (25-9041)"  
	2440        "Library technicians (25-4031)" 
	2430        "Librarians (25-4021)"          
	2400        "Archivists, curators, and museum"
	2340        "Other teachers and instructors"
	2330        "Special education teachers"    
	2320        "Secondary school teachers"     
	2310        "Elementary and middle school"  
	2300        "Preschool and kindergarten"    
	2200        "Postsecondary teachers (25-1000)"
	2150        "Miscellaneous legal support"   
	2140        "Paralegals and legal assistants"
	2100        "Lawyers (23-1011)"             
	2060        "Religious workers, all other"  
	2050        "Directors, religious activities"
	2040        "Clergy (21-2011)"              
	2020        "Miscellaneous community and"   
	2010        "Social workers (21-1020)"      
	2000        "Counselors (21-1010)"          
	1960        "Other life, physical, and social"
	1940        "Nuclear technicians (19-4051)" 
	1930        "Geological and petroleum"      
	1920        "Chemical technicians (19-4031)"
	1910        "Biological technicians (19-4021)"
	1900        "Agricultural and food science" 
	1860        "Miscellaneous social scientists"
	1840        "Urban and regional planners"   
	1830        "Sociologists (19-3041)"        
	1820        "Psychologists (19-3030)"       
	1810        "Market and survey researchers" 
	1800        "Economists (19-3011)"          
	1760        "Physical scientists, all other"
	1740        "Environmental scientists and"  
	1720        "Chemists and materials scientists"
	1710        "Atmospheric and space scientists"
	1700        "Astronomers and physicists"    
	1650        "Medical scientists (19-1040)"  
	1640        "Conservation scientists and"   
	1610        "Biological scientists (19-1020)"
	1600        "Agricultural and food scientists"
	1560        "Surveying and mapping technicians"
	1550        "Engineering technicians, except"
	1540        "Drafters (17-3010)"            
	1530        "Engineers, all other (17-2199)"
	1520        "Petroleum engineers (17-2171)" 
	1510        "Nuclear engineers (17-2161)"   
	1500        "Mining and geological engineers,"
	1460        "Mechanical engineers (17-2141)"
	1450        "Materials engineers (17-2131)" 
	1440        "Marine engineers and naval"    
	1430        "Industrial engineers, including"
	1420        "Environmental engineers (17-2081)"
	1410        "Electrical and electronic"     
	1400        "Computer hardware engineers"   
	1360        "Civil engineers (17-2051)"     
	1350        "Chemical engineers (17-2041)"  
	1340        "Biomedical engineers (17-2031)"
	1330        "Agricultural engineers (17-2021)"
	1320        "Aerospace engineers (17-2011)" 
	1310        "Surveyors, cartographers, and" 
	1300        "Architects, except naval (17-1010)"
	1240        "Miscellaneous mathematical"    
	1230        "Statisticians (15-2041)"       
	1220        "Operations research analysts"  
	1210        "Mathematicians (15-2021)"      
	1200        "Actuaries (15-2011)"           
	1110        "Network systems and data"      
	1100        "Network and computer systems"  
	1060        "Database administrators (15-1061)"
	1040        "Computer support specialists"  
	1020        "Computer software engineers"   
	1010        "Computer programmers (15-1021)"
	1000        "Computer scientists and systems"
	0950        "Financial specialists, all other"
	0940        "Tax preparers (13-2082)"       
	0930        "Tax examiners, collectors, and"
	0910        "Loan counselors and officers"  
	0900        "Financial examiners (13-2061)" 
	0860        "Insurance underwriters (13-2053)"
	0850        "Personal financial advisors"   
	840         "Financial analysts (13-2051)"  
	0830        "Credit analysts (13-2041)"     
	0820        "Budget analysts (13-2031)"     
	0810        "Appraisers and assessors of real"
	0800        "Accountants and auditors (13-2011)"
	0730        "Other business operations"     
	0720        "Meeting and convention planners"
	0710        "Management analysts (13-1111)" 
	0700        "Logisticians (13-1081)"        
	0620        "Human resources, training, and"
	0600        "Cost estimators (13-1051)"     
	0560        "Compliance officers, except"   
	0540        "Claims adjusters, appraisers," 
	0530        "Purchasing agents, except"     
	520         "Wholesale and retail buyers,"  
	0510        "Purchasing agents and buyers," 
	0500        "Agents and business managers of"
	0430        "Managers, all other (11-9199)" 
	0420        "Social and community service"  
	0410        "Property, real estate, and"    
	0360        "Natural sciences managers"     
	0350        "Medical and health services"   
	0340        "Lodging managers (11-9081)"    
	0330        "Gaming managers (11-9071)"     
	0320        "Funeral directors (11-9061)"   
	0310        "Food service managers (11-9051)"
	0300        "Engineering managers (11-9041)"
	0230        "Education administrators (11-9030)"
	0220        "Construction managers (11-9021)"
	0210        "Farmers and ranchers (11-9012)"
	200         "Farm, ranch, and other"        
	160         "Transportation, storage, and"  
	0150        "Purchasing managers (11-3061)" 
	0140        "Industrial production"         
	0130        "Human resources managers (11-3040)"
	0120        "Financial managers (11-3031)"  
	0110        "Computer and information systems"
	100         "Administrative services managers"
	0060        "Public relations managers"     
	0050        "Marketing and sales managers"  
	0040        "Advertising and promotions"    
	0020        "General and operations managers"
	10          "Chief executives (11-1011)"    
	-1          "Not in Universe"               
;
label values eempljob eempljob;
label define eempljob
	4           "A family business or farm"     
	3           "A Non-Profit Organization,"    
	2           "A Private, For Profit, Company"
	1           "A Government organization"     
	-1          "Not in Universe"               
;
label values aempljob aempljob;
label define aempljob
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egovrnmt egovrnmt;
label define egovrnmt
	4           "Armed Forces (active duty only)"
	3           "Local (county, city, township)"
	2           "State"                         
	1           "Federal (civilian only)"       
	-1          "Not in Universe"               
;
label values agovrnmt agovrnmt;
label define agovrnmt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eemptype eemptype;
label define eemptype
	5           "Something else"                
	4           "Service"                       
	3           "Retail trade"                  
	2           "Wholesale trade"               
	1           "Manufacturing"                 
	-1          "Not in Universe"               
;
label values aemptype aemptype;
label define aemptype
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tendsala tendsala;
label define tendsala
	0           "None or not in universe"       
;
label values aendsala aendsala;
label define aendsala
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values temploca temploca;
label define temploca
	3           "100+ employees"                
	2           "25 - 99 employees"             
	1           "Less than 25 employees"        
	-1          "Not in Universe"               
;
label values aemploca aemploca;
label define aemploca
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efewer20 efewer2a;
label define efewer2a
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values afewer20 afewer2a;
label define afewer2a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eexmedic eexmedic;
label define eexmedic
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aexmedic aexmedic;
label define aexmedic
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epostmed epostmed;
label define epostmed
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apostmed apostmed;
label define apostmed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eawbunv  eawbunv;
label define eawbunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values radwash  radwash;
label define radwash 
	3           "No, no washing machine"        
	2           "Not in home, but one is provided"
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadwash  aadwash;
label define aadwash 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values raddryr  raddryr;
label define raddryr 
	3           "No, no clothes dryer"          
	2           "Not in home, but one is provided"
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaddryr  aaddryr;
label define aaddryr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaddish  eaddish;
label define eaddish 
	2           "No, no dishwasher"             
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaddish  aaddish;
label define aaddish 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadrefr  eadrefr;
label define eadrefr 
	2           "No, no refrigerator"           
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadrefr  aadrefr;
label define aadrefr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadfrz   eadfrz; 
label define eadfrz  
	2           "No, no food freezer"           
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadfrz   aadfrz; 
label define aadfrz  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadtelv  eadtelv;
label define eadtelv 
	2           "No color television"           
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadtelv  aadtelv;
label define aadtelv 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadstov  eadstov;
label define eadstov 
	2           "No, no stove"                  
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadstov  aadstov;
label define aadstov 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadmicr  eadmicr;
label define eadmicr 
	2           "No, no microwave"              
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadmicr  aadmicr;
label define aadmicr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadvcr   eadvcr; 
label define eadvcr  
	2           "No, no VCR or DVD (or other video"
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadvcr   aadvcr; 
label define aadvcr  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadair   eadair; 
label define eadair  
	2           "No, no air conditioning"       
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadair   aadair; 
label define aadair  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadcomp  eadcomp;
label define eadcomp 
	2           "No, no personal computer"      
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadcomp  aadcomp;
label define aadcomp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadcell  eadcell;
label define eadcell 
	2           "No, no cell phone or mobile phone"
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadcell  aadcell;
label define aadcell 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values radphon  radphon;
label define radphon 
	5           "No, cannot be reached by telephone"
	4           "No phone in home, but can be"  
	3           "No phone in home, but can be"  
	2           "No phone in home, but can be"  
	1           "Yes, phone in home"            
	-1          "Not in Universe"               
;
label values aadphon  aadphon;
label define aadphon 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tahroom  tahroom;
label define tahroom 
	-1          "Not in Universe"               
;
label values aahroom  aahroom;
label define aahroom 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahpest  eahpest;
label define eahpest 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahleak  eahleak;
label define eahleak 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahwind  eahwind;
label define eahwind 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahwire  eahwire;
label define eahwire 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahplum  eahplum;
label define eahplum 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahcrac  eahcrac;
label define eahcrac 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eahhole  eahhole;
label define eahhole 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aahouse  aahouse;
label define aahouse 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahrepr  eahrepr;
label define eahrepr 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahrepr  aahrepr;
label define aahrepr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahspac  eahspac;
label define eahspac 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahspac  aahspac;
label define aahspac 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahfurn  eahfurn;
label define eahfurn 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahfurn  aahfurn;
label define aahfurn 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahwarm  eahwarm;
label define eahwarm 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahwarm  aahwarm;
label define aahwarm 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahcool  eahcool;
label define eahcool 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahcool  aahcool;
label define aahcool 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahpriv  eahpriv;
label define eahpriv 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahpriv  aahpriv;
label define aahpriv 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahsat   eahsat; 
label define eahsat  
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aahsat   aahsat; 
label define aahsat  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rahmove  rahmove;
label define rahmove 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aahmove  aahmove;
label define aahmove 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacwalk  eacwalk;
label define eacwalk 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aacwalk  aacwalk;
label define aacwalk 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacstay  eacstay;
label define eacstay 
	2           "Did not stay in home."         
	1           "Stayed in our home at certain" 
	-1          "Not in Universe"               
;
label values aacstay  aacstay;
label define aacstay 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacwith  eacwith;
label define eacwith 
	2           "Did not take someone with."    
	1           "Has taken someone with."       
	-1          "Not in Universe"               
;
label values aacwith  aacwith;
label define aacwith 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacarry  eacarry;
label define eacarry 
	2           "Did not carry anything."       
	1           "Carried anything to protect self."
	-1          "Not in Universe"               
;
label values aacarry  aacarry;
label define aacarry 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacnsaf  eacnsaf;
label define eacnsaf 
	4           "Very unsafe"                   
	3           "Somewhat unsafe"               
	2           "Somewhat safe"                 
	1           "Very safe"                     
	-1          "Not in Universe"               
;
label values aacnsaf  aacnsaf;
label define aacnsaf 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eachsaf  eachsaf;
label define eachsaf 
	4           "Very unsafe"                   
	3           "Somewhat unsafe"               
	2           "Somewhat safe"                 
	1           "Very safe"                     
	-1          "Not in Universe"               
;
label values aachsaf  aachsaf;
label define aachsaf 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values racwdog  racwdog;
label define racwdog 
	3           "Does not have dog"             
	2           "Has dog, not to keep home safe"
	1           "Has dog to keep home safe from"
	-1          "Not in Universe"               
;
label values aacwdog  aacwdog;
label define aacwdog 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eacalrm  eacalrm;
label define eacalrm 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aacalrm  aacalrm;
label define aacalrm 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values racmove  racmove;
label define racmove 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aacmove  aacmove;
label define aacmove 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eantraf  eantraf;
label define eantraf 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eanstrt  eanstrt;
label define eanstrt 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eantrsh  eantrsh;
label define eantrsh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eanaban  eanaban;
label define eanaban 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eanind   eanind; 
label define eanind  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eanodor  eanodor;
label define eanodor 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aancond  aancond;
label define aancond 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eanghbr  eanghbr;
label define eanghbr 
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aanghbr  aanghbr;
label define aanghbr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eansat   eansat; 
label define eansat  
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aansat   aansat; 
label define aansat  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ranmove  ranmove;
label define ranmove 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aanmove  aanmove;
label define aanmove 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapschl  eapschl;
label define eapschl 
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aapschl  aapschl;
label define aapschl 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eappriv  eappriv;
label define eappriv 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aappriv  aappriv;
label define aappriv 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapmagn  eapmagn;
label define eapmagn 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aapmagn  aapmagn;
label define aapmagn 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eappubs  eappubs;
label define eappubs 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aappubs  aappubs;
label define aappubs 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaphoms  eaphoms;
label define eaphoms 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaphoms  aaphoms;
label define aaphoms 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapnosc  eapnosc;
label define eapnosc 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aapnosc  aapnosc;
label define aapnosc 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapdiff  eapdiff;
label define eapdiff 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aapdiff  aapdiff;
label define aapdiff 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaphosp  eaphosp;
label define eaphosp 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aaphosp  aaphosp;
label define aaphosp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapolic  eapolic;
label define eapolic 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aapolic  aapolic;
label define aapolic 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapfire  eapfire;
label define eapfire 
	5           "Haven't lived here long enough to"
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aapfire  aapfire;
label define aapfire 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaptran  eaptran;
label define eaptran 
	3           "Not sure because you do not use"
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaptran  aaptran;
label define aaptran 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapsat   eapsat; 
label define eapsat  
	4           "Very dissatisfied"             
	3           "Somewhat dissatisfied"         
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	-1          "Not in Universe"               
;
label values aapsat   aapsat; 
label define aapsat  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rapmove  rapmove;
label define rapmove 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aapmove  aapmove;
label define aapmove 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabmeet  eabmeet;
label define eabmeet 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabmeet  aabmeet;
label define aabmeet 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabrent  eabrent;
label define eabrent 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabrent  aabrent;
label define aabrent 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabrhlp1 rabrhlpt;
label define rabrhlpt
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabrhlp2 rabrhlpk;
label define rabrhlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabrhlp3 rabrhlpl;
label define rabrhlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabrhlp4 rabrhlpm;
label define rabrhlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabrhlp5 rabrhlpn;
label define rabrhlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabrhlp  aabrhlp;
label define aabrhlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabevct  eabevct;
label define eabevct 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabevct  aabevct;
label define aabevct 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabehlp1 rabehlpt;
label define rabehlpt
	3           "No help received from any source"
	2           "Help not  received from this"  
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabehlp2 rabehlpk;
label define rabehlpk
	3           "No help received from any source"
	2           "Help not  received from this"  
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabehlp3 rabehlpl;
label define rabehlpl
	3           "No help received from any source"
	2           "Help not  received from this"  
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabehlp4 rabehlpm;
label define rabehlpm
	3           "No help received from any source"
	2           "Help not  received from this"  
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabehlp5 rabehlpn;
label define rabehlpn
	3           "No help received from any source"
	2           "Help not  received from this"  
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabehlp  aabehlp;
label define aabehlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabgas   eabgas; 
label define eabgas  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabgas   aabgas; 
label define aabgas  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabghlp1 rabghlps;
label define rabghlps
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabghlp2 rabghlpk;
label define rabghlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabghlp3 rabghlpl;
label define rabghlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabghlp4 rabghlpm;
label define rabghlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabghlp5 rabghlpn;
label define rabghlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabghlp  aabghlp;
label define aabghlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabcut   eabcut; 
label define eabcut  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabcut   aabcut; 
label define aabcut  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabchlp1 rabchlpt;
label define rabchlpt
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabchlp2 rabchlpk;
label define rabchlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabchlp3 rabchlpl;
label define rabchlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabchlp4 rabchlpm;
label define rabchlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabchlp5 rabchlpn;
label define rabchlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabchlp  aabchlp;
label define aabchlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabphon  eabphon;
label define eabphon 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabphon  aabphon;
label define aabphon 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabphlp1 rabphlpn;
label define rabphlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabphlp2 rabphlpk;
label define rabphlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabphlp3 rabphlpl;
label define rabphlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabphlp4 rabphlpm;
label define rabphlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabphlp5 rabphlpo;
label define rabphlpo
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabphlp  aabphlp;
label define aabphlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabdoct  eabdoct;
label define eabdoct 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabdoct  aabdoct;
label define aabdoct 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabdhlp1 rabdhlpt;
label define rabdhlpt
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabdhlp2 rabdhlpk;
label define rabdhlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabdhlp3 rabdhlpl;
label define rabdhlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabdhlp4 rabdhlpm;
label define rabdhlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabdhlp5 rabdhlpn;
label define rabdhlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabdhlp  aabdhlp;
label define aabdhlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eabdent  eabdent;
label define eabdent 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aabdent  aabdent;
label define aabdent 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rabthlp1 rabthlpt;
label define rabthlpt
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabthlp2 rabthlpk;
label define rabthlpk
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabthlp3 rabthlpl;
label define rabthlpl
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabthlp4 rabthlpm;
label define rabthlpm
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values rabthlp5 rabthlpn;
label define rabthlpn
	3           "No help received from any source"
	2           "Help not received from this source"
	1           "Help received from this source"
	-1          "Not in Universe"               
;
label values aabthlp  aabthlp;
label define aabthlp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahlpfm  eahlpfm;
label define eahlpfm 
	4           "No help"                       
	3           "Very little of the help needed"
	2           "Most of the help needed"       
	1           "All of the help needed"        
	-1          "Not in Universe"               
;
label values aahlpfm  aahlpfm;
label define aahlpfm 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahlpfr  eahlpfr;
label define eahlpfr 
	4           "No help"                       
	3           "Very little of the help needed"
	2           "Most of the help needed"       
	1           "All of the help needed"        
	-1          "Not in Universe"               
;
label values aahlpfr  aahlpfr;
label define aahlpfr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eahlpag  eahlpag;
label define eahlpag 
	4           "No help"                       
	3           "Very little of the help needed"
	2           "Most of the help needed"       
	1           "All of the help needed"        
	-1          "Not in Universe"               
;
label values aahlpag  aahlpag;
label define aahlpag 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafood1  eafood1l;
label define eafood1l
	4           "Often not enough to eat"       
	3           "Sometimes not enough to eat"   
	2           "Enough but not always the kinds"
	1           "Enough of the kinds of food we"
	-1          "Not in Universe"               
;
label values aafood1  aafood1l;
label define aafood1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafdm1   eafdm1l;
label define eafdm1l 
	2           "No, enough to eat"             
	1           "Yes, did not have enough to eat -"
	-1          "Not in Universe"               
;
label values eafdm2   eafdm2l;
label define eafdm2l 
	2           "No, enough to eat"             
	1           "Yes, did not have enough to eat -"
	-1          "Not in Universe"               
;
label values eafdm3   eafdm3l;
label define eafdm3l 
	2           "No, enough to eat"             
	1           "Yes, did not have enough to eat -"
	-1          "Not in Universe"               
;
label values eafdm4   eafdm4l;
label define eafdm4l 
	2           "No, enough to eat"             
	1           "Yes, did not have enough to eat -"
	-1          "Not in Universe"               
;
label values eafdm5   eafdm5l;
label define eafdm5l 
	2           "No, enough to eat"             
	1           "Yes, did not have enough to eat -"
	-1          "Not in Universe"               
;
label values aafdm    aafdm;  
label define aafdm   
	3           "Logical imputation (derivation)}"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eaflast  eaflast;
label define eaflast 
	3           "Never true"                    
	2           "Sometimes true"                
	1           "Often true"                    
	-1          "Not in Universe"               
;
label values aaflast  aaflast;
label define aaflast 
	3           "Logical imputation (derivation)}"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafbaln  eafbaln;
label define eafbaln 
	3           "Never true"                    
	2           "Sometimes true"                
	1           "Often true"                    
	-1          "Not in Universe"               
;
label values aafbaln  aafbaln;
label define aafbaln 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafchld  eafchld;
label define eafchld 
	3           "Never true"                    
	2           "Sometimes true"                
	1           "Often true"                    
	-1          "Not in Universe"               
;
label values aafchld  aafchld;
label define aafchld 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafskip  eafskip;
label define eafskip 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aafskip  aafskip;
label define aafskip 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafless  eafless;
label define eafless 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aafless  aafless;
label define aafless 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eafday   eafday; 
label define eafday  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aafday   aafday; 
label define aafday  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
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
