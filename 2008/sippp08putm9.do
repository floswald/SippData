l
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
label values eaicunv  eaicunv;
label define eaicunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values epvdcare epvdcare;
label define epvdcare
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apvdcare apvdcare;
label define apvdcare
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecarehhm ecarehhm;
label define ecarehhm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acarehhm acarehhm;
label define acarehhm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tcarenum tcarenum;
label define tcarenum
	-1          "Not in Universe"               
;
label values acarenum acarenum;
label define acarenum
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehhm1    ehhm1l; 
label define ehhm1l  
	-1          "Not in Universe"               
	9999        "Unknown person number"         
;
label values ahhm1    ahhm1l; 
label define ahhm1l  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erelt01  erelt01l;
label define erelt01l
	-1          "Not in Universe"               
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
;
label values arelt01  arelt01l;
label define arelt01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyrst01  tyrst01l;
label define tyrst01l
	-1          "Not in Universe"               
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 years of care provided"      
	7           "7 years of care provided"      
	8           "8 to 9 years of care provided" 
	9           "10 to 14 years of care provided"
	10          "15 to 19 years of care provided"
	11          "20 to 29 years of care provided"
	12          "30+ years of care provided"    
;
label values ayrst01  ayrst01l;
label define ayrst01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadlt01  eadlt01l;
label define eadlt01l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadlt01  aadlt01l;
label define aadlt01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedt01  emedt01l;
label define emedt01l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedt01  amedt01l;
label define amedt01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnyt01  emnyt01l;
label define emnyt01l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amnyt01  amnyt01l;
label define amnyt01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoutt01  eoutt01l;
label define eoutt01l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoutt01  aoutt01l;
label define aoutt01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothlp01 eothlp0m;
label define eothlp0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothlp01 aothlp0m;
label define aothlp0m
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst01  thrst01l;
label define thrst01l
	-1          "Not in Universe"               
	1           "1 to 2 hours of care provided" 
	2           "3 hours of care provided"      
	3           "4 hours of care provided"      
	4           "5 hours of care provided"      
	5           "6 to 7 hours of care provided" 
	6           "8 hours of care provided"      
	7           "9 to 11 hours of care provided"
	8           "12 to 14 hours of care provided"
	9           "15 to 19 hours of care provided"
	10          "20 to 24 hours of care provided"
	11          "25 to 29 hours of care provided"
	12          "30 to 39 hours of care provided"
	13          "40 to 49 hours of care provided"
	14          "50 to 59 hours of care provided"
	15          "60 to 79 hours of care provided"
	16          "80 to 89 hours of care provided"
	17          "90 to 119 hours of care provided"
	18          "120 to 159 hours of care provided"
	19          "160+ hours of care provided"   
;
label values ahrst01  ahrst01l;
label define ahrst01l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eopt01   eopt01l;
label define eopt01l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aopt01   aopt01l;
label define aopt01l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst02  thrst02l;
label define thrst02l
	-1          "Not in Universe"               
	1           "1 to 2 hours of unpaid care"   
	2           "3 hours of unpaid care provided"
	3           "4 hours of unpaid care provided"
	4           "5 to 6 hours of unpaid care"   
	5           "7 to 8 hours of unpaid care"   
	6           "9 to 10 hours of unpaid care"  
	7           "11 to 14 hours of unpaid care" 
	8           "15 to 19 hours of unpaid care" 
	9           "20 to 29 hours of unpaid care" 
	10          "30 to 39 hours of unpaid care" 
	11          "40 to 59 hours of unpaid care" 
	12          "60 to 69 hours of unpaid care" 
	13          "70 to 99 hours of unpaid care" 
	14          "100 to 149 hours of unpaid care"
	15          "150+ hours of unpaid care provided"
;
label values ahrst02  ahrst02l;
label define ahrst02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehct01   ehct01l;
label define ehct01l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahct01   ahct01l;
label define ahct01l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst03  thrst03l;
label define thrst03l
	-1          "Not in Universe"               
	1           "1 hour of professional care"   
	2           "2 hours of professional care"  
	3           "3 hours of professional care"  
	4           "4 hours of professional care"  
	5           "5 hours of professional care"  
	6           "6 hours of professional care"  
	7           "7 to 10 hours of professional" 
	8           "11 to 14 hours of professional"
	9           "15 to 19 hours of professional"
	10          "20 to 24 hours of professional"
	11          "25 to 39 hours of professional"
	12          "40 to 59 hours of professional"
	13          "60+ hours of professional care"
;
label values ahrst03  ahrst03l;
label define ahrst03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehhm2    ehhm2l; 
label define ehhm2l  
	-1          "Not in Universe"               
	9999        "Unknown person number"         
;
label values ahhm2    ahhm2l; 
label define ahhm2l  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erelt02  erelt02l;
label define erelt02l
	-1          "Not in Universe"               
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
;
label values arelt02  arelt02l;
label define arelt02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyrst02  tyrst02l;
label define tyrst02l
	-1          "Not in Universe"               
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 years of care provided"      
	7           "7 years of care provided"      
	8           "8 to 9 years of care provided" 
	9           "10 to 13 years of care provided"
	10          "14 to 29 years of care provided"
	11          "30+ years of care provided"    
;
label values ayrst02  ayrst02l;
label define ayrst02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadlt02  eadlt02l;
label define eadlt02l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadlt02  aadlt02l;
label define aadlt02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedt02  emedt02l;
label define emedt02l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedt02  amedt02l;
label define amedt02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnyt02  emnyt02l;
label define emnyt02l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amnyt02  amnyt02l;
label define amnyt02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoutt02  eoutt02l;
label define eoutt02l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoutt02  aoutt02l;
label define aoutt02l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothlp02 eothlp0k;
label define eothlp0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothlp02 aothlp0k;
label define aothlp0k
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst04  thrst04l;
label define thrst04l
	-1          "Not in Universe"               
	1           "1 hour of care provided"       
	2           "2 to 3 hours of care provided" 
	3           "4 hours of care provided"      
	4           "5 hours of care provided"      
	5           "6 to 7 hours of care provided" 
	6           "8 to 10 hours of care provided"
	7           "11 to 14 hours of care provided"
	8           "15 to 20 hours of care provided"
	9           "21 to 39 hours of care provided"
	10          "40 to 59 hours of care provided"
	11          "60 to 99 hours of care provided"
	12          "100 to 149 hours of care provided"
	13          "150+ hours of care provided"   
;
label values ahrst04  ahrst04l;
label define ahrst04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eopt02   eopt02l;
label define eopt02l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aopt02   aopt02l;
label define aopt02l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imutation"           
	3           "Logical imputation (derivation)"
;
label values thrst05  thrst05l;
label define thrst05l
	-1          "Not in Universe"               
	1           "1 to 2 hours of unpaid care"   
	2           "3 to 5 hours of unpaid care"   
	3           "6 to 10 hours of unpaid care"  
	4           "11 to 39 hours of unpaid care" 
	5           "40 to 99 hours of unpaid care" 
	6           "100+ hours of unpaid care provided"
;
label values ahrst05  ahrst05l;
label define ahrst05l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehct02   ehct02l;
label define ehct02l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahct02   ahct02l;
label define ahct02l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst06  thrst06l;
label define thrst06l
	-1          "Not in Universe"               
	1           "1 to 5 hours of professional care"
	2           "6 to 19 hours of professional" 
	3           "20+ hours of professional care"
;
label values ahrst06  ahrst06l;
label define ahrst06l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecarenhm ecarenhm;
label define ecarenhm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acarenhm acarenhm;
label define acarenhm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tnumnhm  tnumnhm;
label define tnumnhm 
	-1          "Not in Universe"               
;
label values anumnhm  anumnhm;
label define anumnhm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erelt03  erelt03l;
label define erelt03l
	-1          "Not in Universe"               
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
;
label values arelt03  arelt03l;
label define arelt03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyrst03  tyrst03l;
label define tyrst03l
	-1          "Not in Universe"               
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 8 years of care provided" 
	7           "9 to 10 years of care provided"
	8           "11 to 19 years of care provided"
	9           "20+ years of care provided"    
;
label values ayrst03  ayrst03l;
label define ayrst03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eresof3  eresof3l;
label define eresof3l
	-1          "Not in Universe"               
	1           "House or apartment"            
	2           "Care facility"                 
	3           "Other"                         
;
label values aresof3  aresof3l;
label define aresof3l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadlt03  eadlt03l;
label define eadlt03l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadlt03  aadlt03l;
label define aadlt03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedt03  emedt03l;
label define emedt03l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedt03  amedt03l;
label define amedt03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnyt03  emnyt03l;
label define emnyt03l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amnyt03  amnyt03l;
label define amnyt03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoutt03  eoutt03l;
label define eoutt03l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoutt03  aoutt03l;
label define aoutt03l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothlp03 eothlp0l;
label define eothlp0l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothlp03 aothlp0l;
label define aothlp0l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst07  thrst07l;
label define thrst07l
	-1          "Not in Universe"               
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 hours of care provided"      
	7           "7 to 8 hours of care provided" 
	8           "9 to 10 hours of care provided"
	9           "11 to 15  hours of care provided"
	10          "16 to 20 hours of care provided"
	11          "21 to 30 hours of care provided"
	12          "31 to 40 hours of care provided"
	13          "41+ hours of care provided"    
;
label values ahrst07  ahrst07l;
label define ahrst07l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eopt03   eopt03l;
label define eopt03l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aopt03   aopt03l;
label define aopt03l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst08  thrst08l;
label define thrst08l
	-1          "Not in Universe"               
	1           "1 hour of unpaid care provided"
	2           "2 hours of unpaid care provided"
	3           "3 hours of unpaid care provided"
	4           "4 hours of unpaid care provided"
	5           "5 hours of unpaid care provided"
	6           "6 to 7 hours of unpaid care"   
	7           "8 to 9 hours of unpaid care"   
	8           "10 hours of unpaid care provided"
	9           "11 to 14 hours of unpaid care" 
	10          "15 to 19 hours of unpaid care" 
	11          "20 to 23 hours of unpaid care" 
	12          "24 to 29 hours of unpaid care" 
	13          "30 to 39 hours of unpaid care" 
	14          "40 to 49 hours of unpaid care" 
	15          "50 to 89 hours of unpaid care" 
	16          "90 to 149 hours of unpaid care"
	17          "150+ hours of unpaid care provided"
;
label values ahrst08  ahrst08l;
label define ahrst08l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecompt03 ecompt0m;
label define ecompt0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acompt03 acompt0m;
label define acompt0m
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehct03   ehct03l;
label define ehct03l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahct03   ahct03l;
label define ahct03l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst09  thrst09l;
label define thrst09l
	-1          "Not in Universe"               
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 hours of care provided"      
	7           "7 to 8 hours of care provided" 
	8           "9 to 10 hours of care provided"
	9           "11 to 15 hours of care provided"
	10          "16 to 20 hours of care provided"
	11          "21 to 39 hours of care provided"
	12          "40 to 79 hours of care provided"
	13          "80 to 139 hours of care provided"
	14          "140 to 159 hours of care provided"
	15          "160+ hours of care provided"   
;
label values ahrst09  ahrst09l;
label define ahrst09l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erelt04  erelt04l;
label define erelt04l
	-1          "Not in Universe"               
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
;
label values arelt04  arelt04l;
label define arelt04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyrst04  tyrst04l;
label define tyrst04l
	-1          "Not in Universe"               
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 9 years of care provided" 
	7           "10 to 19 years of care provided"
	8           "20+ years of care provided"    
;
label values ayrst04  ayrst04l;
label define ayrst04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eresof4  eresof4l;
label define eresof4l
	-1          "Not in Universe"               
	1           "House or apartment"            
	2           "Care facility"                 
	3           "Other"                         
;
label values aresof4  aresof4l;
label define aresof4l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eadlt04  eadlt04l;
label define eadlt04l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aadlt04  aadlt04l;
label define aadlt04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emedt04  emedt04l;
label define emedt04l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amedt04  amedt04l;
label define amedt04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emnyt04  emnyt04l;
label define emnyt04l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amnyt04  amnyt04l;
label define amnyt04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eoutt04  eoutt04l;
label define eoutt04l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoutt04  aoutt04l;
label define aoutt04l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothlp04 eothlp0n;
label define eothlp0n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothlp04 aothlp0n;
label define aothlp0n
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst10  thrst10l;
label define thrst10l
	-1          "Not in Universe"               
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 hours of care provided"      
	7           "7 to 9 hours of care provided" 
	8           "10 hours of care provided"     
	9           "11 to 19 hours of care provided"
	10          "20 to 39 hours of care provided"
	11          "40+ hours of care provided"    
;
label values ahrst10  ahrst10l;
label define ahrst10l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eopt04   eopt04l;
label define eopt04l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aopt04   aopt04l;
label define aopt04l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst11  thrst11l;
label define thrst11l
	-1          "Not in Universe"               
	1           "1 hour of unpaid care provided"
	2           "2 hours of unpaid care provided"
	3           "3 hours of unpaid care provided"
	4           "4 hours of unpaid care provided"
	5           "5 hours of unpaid care provided"
	6           "6 hours of unpaid care provided"
	7           "7 to 9 hours of unpaid care"   
	8           "10 to 19 hours of unpaid care" 
	9           "20 to 29 hours of unpaid care" 
	10          "30 to 49 hours of unpaid care" 
	11          "50 to 79 hours of unpaid care" 
	12          "80 to 119 hours of unpaid care"
	13          "120+ hours of unpaid care provided"
;
label values ahrst11  ahrst11l;
label define ahrst11l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecompt04 ecompt0k;
label define ecompt0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acompt04 acompt0k;
label define acompt0k
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehct04   ehct04l;
label define ehct04l 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahct04   ahct04l;
label define ahct04l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrst12  thrst12l;
label define thrst12l
	-1          "Not in Universe"               
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 to 7 hours of care provided" 
	6           "8 to 9 hours of care provided" 
	7           "10 to 14 hours of care provided"
	8           "15 to 19 hours of care provided"
	9           "20 to 29 hours of care provided"
	10          "30 to 39 hours of care provided"
	11          "40 to 149 hours of care provided"
	12          "150+ hours of care provided"   
;
label values ahrst12  ahrst12l;
label define ahrst12l
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



** Copyright 2012 shared by the National Bureau of Economic Research and Jean Roth ;

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
