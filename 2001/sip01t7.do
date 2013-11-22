
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
label values eaicunv  eaicunv;
label define eaicunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values epvdcare epvdcare;
label define epvdcare
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
label values tnumhhm  tnumhhm;
label define tnumhhm 
	-1          "Not in universe"               
;
label values anumhhm  anumhhm;
label define anumhhm 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehhm1    ehhm1l; 
label define ehhm1l  
	9999        "Unknown person number"         
	-1          "Not in universe"               
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
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
	-1          "Not in universe"               
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
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 7 years of care provided" 
	7           "8 to 9 years of care provided" 
	8           "10 years of care provided"     
	9           "11 to 12 years of care provided"
	10          "13 to 15 years of care provided"
	11          "16 to 20 years of care provided"
	12          "21+ years of care provided"    
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 2 hours of care provided" 
	2           "3 to 4 hours of care provided" 
	3           "5 to 6 hours of care provided" 
	4           "7 to 9 hours of care provided" 
	5           "10 to 11 hours of care provided"
	6           "12 to 14 hours of care provided"
	7           "15 to 18 hours of care provided"
	8           "19 to 20 hours of care provided"
	9           "21 to 24 hours of care provided"
	10          "25 to 29 hours of care provided"
	11          "30 to 39 hours of care provided"
	12          "40 to 41 hours of care provided"
	13          "42 to 50 hours of care provided"
	14          "51 to 60 hours of care provided"
	15          "61 to 79 hours of care provided"
	16          "80 to 89 hours of care provided"
	17          "90 to 100 hours of care provided"
	18          "101 to 120 hours of care provided"
	19          "121+ hours of care provided"   
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of unpaid care provided"
	2           "2 hours of unpaid care provided"
	3           "3 to 4 hours of unpaid care"   
	4           "5 hours of unpaid care provided"
	5           "6 hours of unpaid care provided"
	6           "7 to 8 hours of unpaid care"   
	7           "9 to 10 hours of unpaid care"  
	8           "11 to 19 hours of unpaid care" 
	9           "20 hours of unpaid care provided"
	10          "21 to 25 hours of unpaid care" 
	11          "26 to 29 hours of unpaid care" 
	12          "30 to 39 hours of unpaid care" 
	13          "40 to 41 hours of unpaid care" 
	14          "42 to 50 hours of unpaid care" 
	15          "51 to 60 hours of unpaid care" 
	16          "61 to 80 hours of unpaid care" 
	17          "81 to 100 hours of unpaid care"
	18          "101+ hours of unpaid care provided"
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of professional care"   
	2           "2 hours of professional care"  
	3           "3 hours of professional care"  
	4           "4 hours of professional care"  
	5           "5 hours of professional care"  
	6           "6 hours of professional care"  
	7           "7 hours of professional care"  
	8           "8 to 9 hours of professional care"
	9           "10 hours of professional care" 
	10          "11 to 15 hours of professional"
	11          "16 to 19 hours of professional"
	12          "20 to 22 hours of professional"
	13          "23 to 26 hours of professional"
	14          "27 to 33 hours of professional"
	15          "34 to 40 hours of professional"
	16          "41 to 84 hours of professional"
	17          "85+ hours of professional care"
	-1          "Not in universe"               
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
	9999        "Unknown person number"         
	-1          "Not in universe"               
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
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
	-1          "Not in universe"               
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
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 10 years of care provided"
	7           "11 to 14 years of care provided"
	8           "15 to 19 years of care provided"
	9           "20+ years of care provided"    
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 3 hours of care provided" 
	2           "4 to 9 hours of care provided" 
	3           "10 to 14 hours of care provided"
	4           "15 to 18 hours of care provided"
	5           "19 to 20 hours of care provided"
	6           "21 to 29 hours of care provided"
	7           "30 to 39 hours of care provided"
	8           "40 to 44 hours of care provided"
	9           "45 to 59 hours of care provided"
	10          "60 to 63 hours of care provided"
	11          "64 to 89 hours of care provided"
	12          "90 to 99 hours of care provided"
	13          "100+ hours of care provided"   
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 2 hours of unpaid care"   
	2           "3 to 9 hours of unpaid care"   
	3           "10 to 14 hours of unpaid care" 
	4           "15 to 39 hours of unpaid care" 
	5           "40+ hours of unpaid care provided"
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 2 hours of professional care"
	2           "3 to 14 hours of professional" 
	3           "15+ hours of professional care"
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
	-1          "Not in universe"               
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
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 7 years of care provided" 
	7           "8 to 10 years of care provided"
	8           "11 to 19 years of care provided"
	9           "20+ years of care provided"    
	-1          "Not in universe"               
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
	1           "House or apartment"            
	2           "Care facility"                 
	3           "Other"                         
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 to 7 hours of care provided" 
	7           "8 to 9 hours of care provided" 
	8           "10 to 11 hours of care provided"
	9           "12 to 14  hours of care provided"
	10          "15 to 18 hours of care provided"
	11          "19 to 20 hours of care provided"
	12          "21 to 25 hours of care provided"
	13          "26 to 35 hours of care provided"
	14          "36 to 69 hours of care provided"
	15          "70+ hours of care provided"    
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of unpaid care provided"
	2           "2 hours of unpaid care provided"
	3           "3 to 4 hours of unpaid care"   
	4           "5 hours of unpaid care provided"
	5           "6 to 7 hours of unpaid care"   
	6           "8 to 9 hours of unpaid care"   
	7           "10 hours of unpaid care provided"
	8           "11 to 13 hours of unpaid care" 
	9           "14 to 18 hours of unpaid care" 
	10          "19 to 20 hours of unpaid care" 
	11          "21 to 27 hours of unpaid care" 
	12          "28 to 39 hours of unpaid care" 
	13          "40 to 44 hours of unpaid care" 
	14          "45 to 60 hours of unpaid care" 
	15          "61 to 80 hours of unpaid care" 
	16          "81 to 100 hours of unpaid care"
	17          "101+ hours of unpaid care provided"
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 hours of care provided"      
	7           "7 to 9 hours of care provided" 
	8           "10 to 11 hours of care provided"
	9           "12 to 17 hours of care provided"
	10          "18 to 20 hours of care provided"
	11          "21 to 24 hours of care provided"
	12          "25 to 30 hours of care provided"
	13          "31 to 40 hours of care provided"
	14          "41 to 99 hours of care provided"
	15          "100+ hours of care provided"   
	-1          "Not in universe"               
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
	1           "Spouse"                        
	2           "Partner"                       
	3           "Child"                         
	4           "Grandchild"                    
	5           "Parent"                        
	6           "Brother/sister"                
	7           "Other relative"                
	8           "Nonrelative"                   
	9           "Relationship not identified"   
	-1          "Not in universe"               
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
	0           "Less than 1 year of care provided"
	1           "1 year of care provided"       
	2           "2 years of care provided"      
	3           "3 years of care provided"      
	4           "4 years of care provided"      
	5           "5 years of care provided"      
	6           "6 to 9 years of care provided" 
	7           "10 to 19 years of care provided"
	8           "20+ years of care provided"    
	-1          "Not in universe"               
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
	1           "House or apartment"            
	2           "Care facility"                 
	3           "Other"                         
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 hour of care provided"       
	2           "2 hours of care provided"      
	3           "3 hours of care provided"      
	4           "4 hours of care provided"      
	5           "5 hours of care provided"      
	6           "6 hours of care provided"      
	7           "7 to 8 hours of care provided" 
	8           "9 to 11 hours of care provided"
	9           "12 to 13 hours of care provided"
	10          "14 to 15 hours of care provided"
	11          "16 to 20 hours of care provided"
	12          "21 to 29 hours of care provided"
	13          "30 to 40 hours of care provided"
	14          "41+ hours of care provided"    
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 2 hours of unpaid care"   
	2           "3 hours of unpaid care provided"
	3           "4 to 5 hours of unpaid care"   
	4           "6 to 7 hours of unpaid care"   
	5           "8 to 9 hours of unpaid care"   
	6           "10 to 11 hours of unpaid care" 
	7           "12 to 14 hours of unpaid care" 
	8           "15 to 19 hours of unpaid care" 
	9           "20 to 23 hours of unpaid care" 
	10          "24 to 34 hours of unpaid care" 
	11          "35 to 50 hours of unpaid care" 
	12          "51 to 90 hours of unpaid care" 
	13          "91+ hours of unpaid care provided"
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	-1          "Not in universe"               
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
	1           "1 to 3 Hours of care provided" 
	2           "4 Hours of care provided"      
	3           "5 to 6 Hours of care provided" 
	4           "7 to 9 Hours of care provided" 
	5           "10 to 50 Hours of care provided"
	6           "51+ Hours of care provided"    
	-1          "Not in universe"               
;
label values ahrst12  ahrst12l;
label define ahrst12l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epcwunv  epcwunv;
label define epcwunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values edaycare edaycare;
label define edaycare
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adaycare adaycare;
label define adaycare
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecarer   ecarer; 
label define ecarer  
	1           "0-3  Months old"               
	2           "4-6  Months old"               
	3           "7-11 Months old"               
	4           "12-17 Months old"              
	5           "18-23 Months old"              
	6           "2     Years old"               
	7           "3     Years old"               
	8           "4     Years old"               
	9           "5     Years old"               
	10          "6     Years old"               
	11          "7     Years old"               
	12          "8     Years old"               
	13          "9     Years old"               
	14          "10    Years old"               
	15          "11    Years old"               
	16          "12    Years old"               
	17          "13    Years old"               
	18          "14    Years old"               
	19          "15    Years old"               
	20          "16    Years old"               
	21          "17    Years old"               
	-1          "Not in universe"               
;
label values acarer   acarer; 
label define acarer  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold Deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehrscare ehrscare;
label define ehrscare
	-1          "Not in universe"               
;
label values ahrscare ahrscare;
label define ahrscare
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elivapat elivapat;
label define elivapat
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alivapat alivapat;
label define alivapat
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enotable enotable;
label define enotable
	3           "Sometimes yes, sometimes no"   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values anotable anotable;
label define anotable
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation"            
;
label values epastmon epastmon;
label define epastmon
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apastmon apastmon;
label define apastmon
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values eouting  eouting;
label define eouting 
	-3          "None"                          
	-1          "Not in universe"               
;
label values aouting  aouting;
label define aouting 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etotread etotread;
label define etotread
	-3          "None"                          
	-1          "Not in universe"               
;
label values atotread atotread;
label define atotread
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eparread eparread;
label define eparread
	-3          "None"                          
	-1          "Not in universe"               
;
label values aparread aparread;
label define aparread
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edadread edadread;
label define edadread
	-3          "None"                          
	-1          "Not in universe"               
;
label values adadread adadread;
label define adadread
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etvrules etvrules;
label define etvrules
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atvrules atvrules;
label define atvrules
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimestv etimestv;
label define etimestv
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atimestv atimestv;
label define atimestv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehoustv  ehoustv;
label define ehoustv 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahoustv  ahoustv;
label define ahoustv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eeatbkf  eeatbkf;
label define eeatbkf 
	-3          "None"                          
	-1          "Not in universe"               
;
label values aeatbkf  aeatbkf;
label define aeatbkf 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eeatdinn eeatdinn;
label define eeatdinn
	-3          "None"                          
	-1          "Not in universe"               
;
label values aeatdinn aeatdinn;
label define aeatdinn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edadbrkf edadbrkf;
label define edadbrkf
	-3          "None"                          
	-1          "Not in universe"               
;
label values adadbrkf adadbrkf;
label define adadbrkf
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edaddinn edaddinn;
label define edaddinn
	-3          "None"                          
	-1          "Not in universe"               
;
label values adaddinn adaddinn;
label define adaddinn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efuntime efuntime;
label define efuntime
	1           "Never"                         
	2           "About once a week (or less)"   
	3           "A few times a week"            
	4           "One or two times a day"        
	5           "Many times each day"           
	-1          "Not in universe"               
;
label values afuntime afuntime;
label define afuntime
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edadfun  edadfun;
label define edadfun 
	1           "Never"                         
	2           "About once a week (or less)"   
	3           "A few times a week"            
	4           "One or two times a day"        
	5           "Many times each day"           
	-1          "Not in universe"               
;
label values adadfun  adadfun;
label define adadfun 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epraise  epraise;
label define epraise 
	1           "Never"                         
	2           "About once a week (or less)"   
	3           "A few times a week"            
	4           "One or two times a day"        
	5           "Many times each day"           
	-1          "Not in universe"               
;
label values apraise  apraise;
label define apraise 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edadprai edadprai;
label define edadprai
	1           "Never"                         
	2           "About once a week (or less)"   
	3           "A few times a week"            
	4           "One or two times a day"        
	5           "Many times each day"           
	-1          "Not in universe"               
;
label values adadprai adadprai;
label define adadprai
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efarscho efarscho;
label define efarscho
	1           "Leave school before graduation"
	2           "Graduate from high school"     
	3           "Get some college or other training"
	4           "Graduate from college"         
	5           "Take further education or"     
	-1          "Not in universe"               
;
label values afarscho afarscho;
label define afarscho
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values edadfar  edadfar;
label define edadfar 
	1           "Leave school before graduation"
	2           "Graduate from high school"     
	3           "Get some college or other training"
	4           "Graduate from college"         
	5           "Take further education or"     
	-1          "Not in universe"               
;
label values adadfar  adadfar;
label define adadfar 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ethinksc ethinksc;
label define ethinksc
	1           "Leave school before graduation"
	2           "Graduate from high school"     
	3           "Get some college or other training"
	4           "Graduate from college"         
	5           "Take further education or"     
	-1          "Not in universe"               
;
label values athinksc athinksc;
label define athinksc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eatkindg eatkindg;
label define eatkindg
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aatkindg aatkindg;
label define aatkindg
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekindage ekindage;
label define ekindage
	-1          "Not in universe"               
;
label values akindage akindage;
label define akindage
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efirgrad efirgrad;
label define efirgrad
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afirgrad afirgrad;
label define afirgrad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estrtage estrtage;
label define estrtage
	-1          "Not in universe"               
;
label values astrtage astrtage;
label define astrtage
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekindele ekindele;
label define ekindele
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values akindele akindele;
label define akindele
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehighgra ehighgra;
label define ehighgra
	-3          "None (No grade completed)"     
	-1          "Not in universe"               
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
	14          "College, one year or more"     
;
label values ahighgra ahighgra;
label define ahighgra
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecurrerl ecurrerl;
label define ecurrerl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acurrerl acurrerl;
label define acurrerl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egrdeatt egrdeatt;
label define egrdeatt
	-3          "None"                          
	-1          "Not in universe"               
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
	14          "College, one year or more"     
;
label values agrdeatt agrdeatt;
label define agrdeatt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epubpriv epubpriv;
label define epubpriv
	1           "Public"                        
	2           "Private"                       
	-1          "Not in universe"               
;
label values apubpriv apubpriv;
label define apubpriv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eassschl eassschl;
label define eassschl
	1           "Assigned"                      
	2           "Chosen"                        
	3           "Both -- assigned school is school"
	-1          "Not in universe"               
;
label values aassschl aassschl;
label define aassschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erelisch erelisch;
label define erelisch
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arelisch arelisch;
label define arelisch
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values especsch especsch;
label define especsch
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspecsch aspecsch;
label define aspecsch
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esportea esportea;
label define esportea
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asportea asportea;
label define asportea
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elessons elessons;
label define elessons
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alessons alessons;
label define alessons
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eclubsch eclubsch;
label define eclubsch
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aclubsch aclubsch;
label define aclubsch
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elikesch elikesch;
label define elikesch
	1           "Not true"                      
	2           "Sometimes true"                
	3           "Often true"                    
	-1          "Not in universe"               
;
label values alikesch alikesch;
label define alikesch
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eintschl eintschl;
label define eintschl
	1           "Not true"                      
	2           "Sometimes true"                
	3           "Often true"                    
	-1          "Not in universe"               
;
label values aintschl aintschl;
label define aintschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewkshard ewkshard;
label define ewkshard
	1           "Not true"                      
	2           "Sometimes true"                
	3           "Often true"                    
	-1          "Not in universe"               
;
label values awkshard awkshard;
label define awkshard
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values echgschl echgschl;
label define echgschl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values achgschl achgschl;
label define achgschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimchan etimchan;
label define etimchan
	-1          "Not in universe"               
;
label values atimchan atimchan;
label define atimchan
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values erepgrad erepgrad;
label define erepgrad
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arepgrad arepgrad;
label define arepgrad
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egrdrpt1 egrdrptd;
label define egrdrptd
	-3          "None"                          
	-1          "Not in universe"               
	0           "Blank or not reported"         
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
;
label values egrdrpt2 egrdrptk;
label define egrdrptk
	-3          "None"                          
	-1          "Not in universe"               
	0           "Blank or not reported"         
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
;
label values egrdrpt3 egrdrptl;
label define egrdrptl
	-3          "None"                          
	-1          "Not in universe"               
	0           "Blank or not reported"         
	1           "First grade"                   
	2           "Second grade"                  
	3           "Third grade"                   
	4           "Fourth grade"                  
	5           "Fifth grade"                   
	6           "Sixth grade"                   
	7           "Seventh grade"                 
	8           "Eighth grade"                  
	9           "Ninth grade"                   
	10          "Tenth grade"                   
	11          "Eleventh grade"                
	12          "Twelfth grade"                 
	13          "Kindergarten"                  
;
label values egrdrpt4 egrdrptm;
label define egrdrptm
	-3          "None"                          
	-1          "Not in universe"               
	0           "Blank or not reported"         
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
;
label values egrdrpt5 egrdrptn;
label define egrdrptn
	-3          "None"                          
	-1          "Not in universe"               
	0           "Blank or not reported"         
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
;
label values agrdrpt  agrdrpt;
label define agrdrpt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eexpschl eexpschl;
label define eexpschl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aexpschl aexpschl;
label define aexpschl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etimexp  etimexp;
label define etimexp 
	-1          "Not in universe"               
;
label values atimexp  atimexp;
label define atimexp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egradexp egradexp;
label define egradexp
	-3          "None (No grade completed)"     
	-1          "Not in universe"               
	1           "Kindergarten"                  
	2           "First grade"                   
	3           "Second grade"                  
	4           "Third grade"                   
	5           "Fourth grade"                  
	6           "Fifth grade"                   
	7           "Sixth grade"                   
	8           "Seventh grade"                 
	9           "Eighth grade"                  
	10          "Ninth grade"                   
	11          "Tenth grade"                   
	12          "Eleventh grade"                
	13          "Twelfth grade"                 
;
label values agradexp agradexp;
label define agradexp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehardcar ehardcar;
label define ehardcar
	1           "Never"                         
	2           "Sometimes"                     
	3           "Often"                         
	4           "Very often"                    
	-1          "Not in universe"               
;
label values ahardcar ahardcar;
label define ahardcar
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebother  ebother;
label define ebother 
	1           "Never"                         
	2           "Sometimes"                     
	3           "Often"                         
	4           "Very often"                    
	-1          "Not in universe"               
;
label values abother  abother;
label define abother 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values egivuplf egivuplf;
label define egivuplf
	1           "Never"                         
	2           "Sometimes"                     
	3           "Often"                         
	4           "Very often"                    
	-1          "Not in universe"               
;
label values agivuplf agivuplf;
label define agivuplf
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eangrycl eangrycl;
label define eangrycl
	1           "Never"                         
	2           "Sometimes"                     
	3           "Often"                         
	4           "Very often"                    
	-1          "Not in universe"               
;
label values aangrycl aangrycl;
label define aangrycl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehelpech ehelpech;
label define ehelpech
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values ahelpech ahelpech;
label define ahelpech
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewatchot ewatchot;
label define ewatchot
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values awatchot awatchot;
label define awatchot
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ecounton ecounton;
label define ecounton
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values acounton acounton;
label define acounton
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebadpeop ebadpeop;
label define ebadpeop
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values abadpeop abadpeop;
label define abadpeop
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etrustpe etrustpe;
label define etrustpe
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values atrustpe atrustpe;
label define atrustpe
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ekeepins ekeepins;
label define ekeepins
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values akeepins akeepins;
label define akeepins
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esafepla esafepla;
label define esafepla
	1           "Strongly agree"                
	2           "Agree"                         
	3           "Disagree"                      
	4           "Strongly Disagree"             
	5           "Have no opinion"               
	-1          "Not in universe"               
;
label values asafepla asafepla;
label define asafepla
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values earpunv  earpunv;
label define earpunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values rmjb     rmjb;   
label define rmjb    
	-1          "Not in universe"               
;
label values rmbs     rmbs;   
label define rmbs    
	-1          "Not in universe"               
;
label values rmnjbbs  rmnjbbs;
label define rmnjbbs 
	1           "Job"                           
	2           "Business"                      
	-1          "Not in universe"               
;
label values therempl therempl;
label define therempl
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values aherempl aherempl;
label define aherempl
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ttotempl ttotempl;
label define ttotempl
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values atotempl atotempl;
label define atotempl
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbustotl tbustotl;
label define tbustotl
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values abustotl abustotl;
label define abustotl
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewksyear ewksyear;
label define ewksyear
	-1          "Not in universe"               
;
label values awksyear awksyear;
label define awksyear
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tnumlen  tnumlen;
label define tnumlen 
	-1          "Not in universe"               
;
label values emthyear emthyear;
label define emthyear
	1           "Months"                        
	2           "Years"                         
	-1          "Not in universe"               
;
label values anumyear anumyear;
label define anumyear
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epensnyn epensnyn;
label define epensnyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apensnyn apensnyn;
label define apensnyn
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eincpens eincpens;
label define eincpens
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aincpens aincpens;
label define aincpens
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enoina01 enoina0s;
label define enoina0s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina02 enoina0k;
label define enoina0k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina03 enoina0l;
label define enoina0l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina04 enoina0m;
label define enoina0m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina05 enoina0n;
label define enoina0n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina06 enoina0o;
label define enoina0o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina07 enoina0p;
label define enoina0p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina08 enoina0q;
label define enoina0q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina09 enoina0r;
label define enoina0r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina10 enoina1s;
label define enoina1s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina11 enoina1k;
label define enoina1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina12 enoina1l;
label define enoina1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina13 enoina1m;
label define enoina1m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina14 enoina1n;
label define enoina1n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values anoina   anoina; 
label define anoina  
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values etdeffen etdeffen;
label define etdeffen
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atdeffen atdeffen;
label define atdeffen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emultpen emultpen;
label define emultpen
	-1          "Not in universe"               
;
label values amultpen amultpen;
label define amultpen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1pentyp e1pentyp;
label define e1pentyp
	1           "Plan based on earnings and years"
	2           "Individual account plan"       
	3           "Cash balance plan"             
	-1          "Not in universe"               
;
label values a1pentyp a1pentyp;
label define a1pentyp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2pentyp e2pentyp;
label define e2pentyp
	1           "Plan based on earnings and years"
	2           "Individual account plan"       
	3           "Cash balance plan"             
	-1          "Not in universe"               
;
label values a2pentyp a2pentyp;
label define a2pentyp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1penctr e1penctr;
label define e1penctr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a1penctr a1penctr;
label define a1penctr
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1taxdef e1taxdef;
label define e1taxdef
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a1taxdef a1taxdef;
label define a1taxdef
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1recben e1recben;
label define e1recben
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a1recben a1recben;
label define a1recben
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1lvlmps e1lvlmps;
label define e1lvlmps
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a1lvlmps a1lvlmps;
label define a1lvlmps
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t1yrsinc t1yrsinc;
label define t1yrsinc
	-1          "Not in universe"               
;
label values a1yrsinc a1yrsinc;
label define a1yrsinc
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e1ssofst e1ssofst;
label define e1ssofst
	3           "Do not participate in Social"  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a1ssofst a1ssofst;
label define a1ssofst
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t1yrcont t1yrcont;
label define t1yrcont
	0           "Not in universe"               
;
label values a1yrcont a1yrcont;
label define a1yrcont
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t1totamt t1totamt;
label define t1totamt
	0           "Not in universe"               
;
label values a1totamt a1totamt;
label define a1totamt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2penctr e2penctr;
label define e2penctr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a2penctr a2penctr;
label define a2penctr
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2taxdef e2taxdef;
label define e2taxdef
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a2taxdef a2taxdef;
label define a2taxdef
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2recben e2recben;
label define e2recben
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a2recben a2recben;
label define a2recben
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2lvlmps e2lvlmps;
label define e2lvlmps
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a2lvlmps a2lvlmps;
label define a2lvlmps
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t2yrsinc t2yrsinc;
label define t2yrsinc
	-1          "Not in universe"               
;
label values a2yrsinc a2yrsinc;
label define a2yrsinc
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e2ssofst e2ssofst;
label define e2ssofst
	3           "Do not participate in Social"  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a2ssofst a2ssofst;
label define a2ssofst
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t2yrcont t2yrcont;
label define t2yrcont
	0           "Not in universe"               
;
label values a2yrcont a2yrcont;
label define a2yrcont
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t2totamt t2totamt;
label define t2totamt
	0           "Not in universe"               
;
label values a2totamt a2totamt;
label define a2totamt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e3taxdef e3taxdef;
label define e3taxdef
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a3taxdef a3taxdef;
label define a3taxdef
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values e3partic e3partic;
label define e3partic
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values a3partic a3partic;
label define a3partic
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values enoinb01 enoinb0c;
label define enoinb0c
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb02 enoinb0k;
label define enoinb0k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb03 enoinb0l;
label define enoinb0l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb04 enoinb0m;
label define enoinb0m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb05 enoinb0n;
label define enoinb0n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb06 enoinb0o;
label define enoinb0o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb07 enoinb0p;
label define enoinb0p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb08 enoinb0q;
label define enoinb0q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb09 enoinb0r;
label define enoinb0r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb10 enoinb1c;
label define enoinb1c
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb11 enoinb1k;
label define enoinb1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb12 enoinb1l;
label define enoinb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb13 enoinb1m;
label define enoinb1m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb14 enoinb1n;
label define enoinb1n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values anoinb   anoinb; 
label define anoinb  
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ematchyn ematchyn;
label define ematchyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amatchyn amatchyn;
label define amatchyn
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values efutpart efutpart;
label define efutpart
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afutpart afutpart;
label define afutpart
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tslfcon1 tslfcont;
label define tslfcont
	-4          "No contributions"              
	0           "Not in universe"               
;
label values eslfcon2 eslfcont;
label define eslfcont
	1           "Week"                          
	2           "Biweekly"                      
	3           "Month"                         
	4           "Quarter"                       
	5           "Year"                          
	-1          "Not in universe"               
;
label values eslfcon3 eslfconk;
label define eslfconk
	-1          "Not in universe"               
;
label values aslfcon  aslfcon;
label define aslfcon 
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eempcont eempcont;
label define eempcont
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aempcont aempcont;
label define aempcont
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values econtdep econtdep;
label define econtdep
	1           "Depends entirely"              
	2           "Depends partly"                
	3           "Not at all"                    
	-1          "Not in universe"               
;
label values acontdep acontdep;
label define acontdep
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tjbcont1 tjbcontp;
label define tjbcontp
	0           "Not in universe"               
;
label values ejbcont2 ejbcontp;
label define ejbcontp
	1           "Week"                          
	2           "Biweekly"                      
	3           "Month"                         
	4           "Quarter"                       
	5           "Year"                          
	-1          "Not in universe"               
;
label values ejbcont3 ejbcontk;
label define ejbcontk
	-1          "Not in universe"               
;
label values ejbcont4 ejbcontl;
label define ejbcontl
	6           "Contributions out of profits"  
	7           "Contribution varies"           
	-1          "Not in universe"               
;
label values ajbcont  ajbcont;
label define ajbcont 
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values einvchos einvchos;
label define einvchos
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ainvchos ainvchos;
label define ainvchos
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values einvsdec einvsdec;
label define einvsdec
	1           "All of the money"              
	2           "Part of the money"             
	-1          "Not in universe"               
;
label values ainvsdec ainvsdec;
label define ainvsdec
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehowinv1 ehowinvc;
label define ehowinvc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv2 ehowinvk;
label define ehowinvk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv3 ehowinvl;
label define ehowinvl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv4 ehowinvm;
label define ehowinvm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv5 ehowinvn;
label define ehowinvn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv6 ehowinvo;
label define ehowinvo
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv7 ehowinvp;
label define ehowinvp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv8 ehowinvq;
label define ehowinvq
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahowinvs ahowinvs;
label define ahowinvs
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rmostinv rmostinv;
label define rmostinv
	1           "Employer company stock"        
	2           "Stock funds"                   
	3           "Corporate bonds or bond funds" 
	4           "Long term interest bearing"    
	5           "Diversified stock and bond funds"
	6           "Government securities"         
	7           "Money market funds"            
	8           "Other investments"             
	-1          "Not in universe"               
;
label values amostinv amostinv;
label define amostinv
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values t3totamt t3totamt;
label define t3totamt
	0           "Not in universe"               
;
label values a3totamt a3totamt;
label define a3totamt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epenloan epenloan;
label define epenloan
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apenloan apenloan;
label define apenloan
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eletloan eletloan;
label define eletloan
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aletloan aletloan;
label define aletloan
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tloanbal tloanbal;
label define tloanbal
	0           "Not in universe"               
;
label values aloanbal aloanbal;
label define aloanbal
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eothrpen eothrpen;
label define eothrpen
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aothrpen aothrpen;
label define aothrpen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eprevpen eprevpen;
label define eprevpen
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aprevpen aprevpen;
label define aprevpen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eprevexp eprevexp;
label define eprevexp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aprevexp aprevexp;
label define aprevexp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tprevyrs tprevyrs;
label define tprevyrs
	-1          "Not in universe"               
;
label values aprevyrs aprevyrs;
label define aprevyrs
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhnleft ewhnleft;
label define ewhnleft
	-1          "Not in universe"               
;
label values awhnleft awhnleft;
label define awhnleft
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eprevtyp eprevtyp;
label define eprevtyp
	1           "Based on a formula"            
	2           "Based on the amount of money in"
	-1          "Not in universe"               
;
label values aprevtyp aprevtyp;
label define aprevtyp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tprevamt tprevamt;
label define tprevamt
	0           "Not in universe"               
;
label values aprevamt aprevamt;
label define aprevamt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eprewith eprewith;
label define eprewith
	1           "Could withdraw money now"      
	2           "Must wait until retirement"    
	-1          "Not in universe"               
;
label values aprewith aprewith;
label define aprewith
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eprevlmp eprevlmp;
label define eprevlmp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aprevlmp aprevlmp;
label define aprevlmp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewhyleft ewhyleft;
label define ewhyleft
	1           "Laid off"                      
	2           "Retired or old age"            
	3           "Child care problems"           
	4           "Other family obligations"      
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer sold business"        
	11          "Job temporary and ended"       
	12          "Quit to take another job"      
	13          "Slack work/business conditions"
	14          "Unsatisfactory work arrangements"
	-1          "Not in universe"               
;
label values awhyleft awhyleft;
label define awhyleft
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values esurvlmp esurvlmp;
label define esurvlmp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asurvlmp asurvlmp;
label define asurvlmp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elmpyear elmpyear;
label define elmpyear
	-1          "Not in universe"               
;
label values almpyear almpyear;
label define almpyear
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elumpn97 elumpn9r;
label define elumpn9r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alumpn97 alumpn9r;
label define alumpn9r
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elumpsrc elumpsrc;
label define elumpsrc
	1           "Private employer or union plan"
	2           "Military plan"                 
	3           "Other federal plans"           
	4           "State or local government"     
	5           "Other"                         
	-1          "Not in universe"               
;
label values alumpsrc alumpsrc;
label define alumpsrc
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elumphow elumphow;
label define elumphow
	1           "Voluntarily"                   
	2           "Required to withdraw"          
	-1          "Not in universe"               
;
label values alumphow alumphow;
label define alumphow
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tlumptot tlumptot;
label define tlumptot
	0           "Not in universe"               
;
label values alumptot alumptot;
label define alumptot
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elumprec elumprec;
label define elumprec
	1           "Actually received"             
	2           "Directly rolled over"          
	-1          "Not in universe"               
;
label values alumprec alumprec;
label define alumprec
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elmproll elmproll;
label define elmproll
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almproll almproll;
label define almproll
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elmpwher elmpwher;
label define elmpwher
	1           "Plan on job"                   
	2           "Individual annuity"            
	3           "IRA"                           
	4           "Other"                         
	-1          "Not in universe"               
;
label values almpwher almpwher;
label define almpwher
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elumpent elumpent;
label define elumpent
	1           "Entire amount"                 
	2           "Partial amount"                
	-1          "Not in universe"               
;
label values alumpent alumpent;
label define alumpent
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elmpsp01 elmpsp0t;
label define elmpsp0t
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp02 elmpsp0k;
label define elmpsp0k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp03 elmpsp0l;
label define elmpsp0l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp04 elmpsp0m;
label define elmpsp0m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp05 elmpsp0n;
label define elmpsp0n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp06 elmpsp0o;
label define elmpsp0o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp07 elmpsp0p;
label define elmpsp0p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp08 elmpsp0q;
label define elmpsp0q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp09 elmpsp0r;
label define elmpsp0r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp10 elmpsp1t;
label define elmpsp1t
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp11 elmpsp1k;
label define elmpsp1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp12 elmpsp1l;
label define elmpsp1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp13 elmpsp1m;
label define elmpsp1m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp14 elmpsp1n;
label define elmpsp1n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp15 elmpsp1o;
label define elmpsp1o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp16 elmpsp1p;
label define elmpsp1p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp17 elmpsp1q;
label define elmpsp1q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp18 elmpsp1r;
label define elmpsp1r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp19 elmpsp1s;
label define elmpsp1s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almpsp   almpsp; 
label define almpsp  
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epenlng1 epenlngp;
label define epenlngp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epenlng2 epenlngk;
label define epenlngk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epengng3 epengngp;
label define epengngp
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apenlgth apenlgth;
label define apenlgth
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epennumb epennumb;
label define epennumb
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apennumb apennumb;
label define apennumb
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epennums epennums;
label define epennums
	-1          "Not in universe"               
;
label values apennums apennums;
label define apennums
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epensrce epensrce;
label define epensrce
	1           "Respondent's job"              
	2           "Respondent's former spouse's job"
	3           "Other"                         
	-1          "Not in universe"               
;
label values apensrce apensrce;
label define apensrce
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epenwhen epenwhen;
label define epenwhen
	-1          "Not in universe"               
;
label values apenwhen apenwhen;
label define apenwhen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epenbase epenbase;
label define epenbase
	1           "Years of service and pay"      
	2           "Amount in individual account"  
	-1          "Not in universe"               
;
label values apenbase apenbase;
label define apenbase
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epensurv epensurv;
label define epensurv
	3           "No survivor's option offered"  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apensurv apensurv;
label define apensurv
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epenincr epenincr;
label define epenincr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apenincr apenincr;
label define apenincr
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values epencola epencola;
label define epencola
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apencola apencola;
label define apencola
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ependecr ependecr;
label define ependecr
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apendecr apendecr;
label define apendecr
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tpensamt tpensamt;
label define tpensamt
	0           "Not in universe"               
;
label values apensamt apensamt;
label define apensamt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tpenamt1 tpenamtt;
label define tpenamtt
	0           "Not in universe"               
;
label values apenamt1 apenamtt;
label define apenamtt
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values elmpsrce elmpsrce;
label define elmpsrce
	1           "Respondent's former job"       
	2           "Respondent's former spouse's job"
	3           "Other"                         
	-1          "Not in universe"               
;
label values almpsrce almpsrce;
label define almpsrce
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejobreti ejobreti;
label define ejobreti
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajobreti ajobreti;
label define ajobreti
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewrk5yrs ewrk5yrs;
label define ewrk5yrs
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awrk5yrs awrk5yrs;
label define awrk5yrs
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values escrepen escrepen;
label define escrepen
	1           "Job"                           
	2           "Business"                      
	-1          "Not in universe"               
;
label values ascrepen ascrepen;
label define ascrepen
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejbindrp ejbindrp;
label define ejbindrp
	-1          "Not in universe"               
;
label values ajbindrp ajbindrp;
label define ajbindrp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tjboccrp tjboccrp;
label define tjboccrp
	-1          "Not in universe"               
;
label values ajboccrp ajboccrp;
label define ajboccrp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rclwrkr  rclwrkr;
label define rclwrkr 
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
	7           "Active duty Armed Forces"      
	-1          "Not in universe"               
;
label values aclwrkr  aclwrkr;
label define aclwrkr 
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values emultloc emultloc;
label define emultloc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amultloc amultloc;
label define amultloc
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tnumwork tnumwork;
label define tnumwork
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values anumwork anumwork;
label define anumwork
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values templall templall;
label define templall
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values aemplall aemplall;
label define aemplall
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eunionyn eunionyn;
label define eunionyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aunionyn aunionyn;
label define aunionyn
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values thrsweek thrsweek;
label define thrsweek
	-1          "Not in universe"               
;
label values ahrsweek ahrsweek;
label define ahrsweek
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ewksyrs  ewksyrs;
label define ewksyrs 
	-1          "Not in universe"               
;
label values awksyrs  awksyrs;
label define awksyrs 
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tyrswrkd tyrswrkd;
label define tyrswrkd
	-1          "Not in universe"               
;
label values ayrswrkd ayrswrkd;
label define ayrswrkd
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eyrlrftj eyrlrftj;
label define eyrlrftj
	-1          "Not in universe"               
;
label values ayrlrftj ayrlrftj;
label define ayrlrftj
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ternlev1 ternlevj;
label define ternlevj
	0           "Not in universe"               
;
label values eernlev2 eernlevj;
label define eernlevj
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values aernleav aernleav;
label define aernleav
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ehlthpln ehlthpln;
label define ehlthpln
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahlthpln ahlthpln;
label define ahlthpln
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbsindrp tbsindrp;
label define tbsindrp
	1           "Agriculture, Forestry and"     
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing Nondurable Goods"
	5           "Manufacturing Durable Goods"   
	6           "Transportation, Communications"
	7           "Wholesale Trade Durable Goods" 
	8           "Wholesale Trade Nondurable Goods"
	9           "Retail Trade"                  
	10          "Finance, Insurance, and Real"  
	11          "Business and Repair Services"  
	12          "Personal Services"             
	13          "Entertainment and Recreation"  
	14          "Professional and Related Services"
	15          "Public Administration"         
	-1          "Not in universe"               
;
label values absindrp absindrp;
label define absindrp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebsoccrp ebsoccrp;
label define ebsoccrp
	-1          "Not in universe"               
;
label values absoccrp absoccrp;
label define absoccrp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tmakempl tmakempl;
label define tmakempl
	1           "Less than 10"                  
	2           "10 to 24"                      
	3           "25 to 49"                      
	4           "50 to 99"                      
	5           "100 or more"                   
	-1          "Not in universe"               
;
label values amakempl amakempl;
label define amakempl
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebusninc ebusninc;
label define ebusninc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abusninc abusninc;
label define abusninc
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbushrsw tbushrsw;
label define tbushrsw
	-1          "Not in universe"               
;
label values abushrsw abushrsw;
label define abushrsw
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebuswksy ebuswksy;
label define ebuswksy
	-1          "Not in universe"               
;
label values abuswksy abuswksy;
label define abuswksy
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbuslong tbuslong;
label define tbuslong
	-1          "Not in universe"               
;
label values abuslong abuslong;
label define abuslong
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebusleav ebusleav;
label define ebusleav
	-1          "Not in universe"               
;
label values abusleav abusleav;
label define abusleav
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values tbusern1 tbusernv;
label define tbusernv
	0           "Not in universe"               
;
label values ebusern2 ebusernv;
label define ebusernv
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
	-1          "Not in universe"               
;
label values abusern  abusern;
label define abusern 
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ebushlth ebushlth;
label define ebushlth
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abushlth abushlth;
label define abushlth
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values estdlvng estdlvng;
label define estdlvng
	-1          "Not in universe"               
;
label values astdlvng astdlvng;
label define astdlvng
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eairunv  eairunv;
label define eairunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values iothrbus iothrbus;
label define iothrbus
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iownbs01 iownbs0s;
label define iownbs0s
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ibsform1 ibsforms;
label define ibsforms
	0           "Not answered"                  
	1           "Sole proprietorship"           
	2           "Partnership"                   
	3           "Corporation"                   
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ibsloct1 ibslocts;
label define ibslocts
	0           "Not answered"                  
	1           "Own home"                      
	2           "Somewhere else"                
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iprtown1 iprtowns;
label define iprtowns
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iownrs11 iownrs1s;
label define iownrs1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iownrs12 iownrs1k;
label define iownrs1k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ihhown1  ihhown1l;
label define ihhown1l
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values rpcnthh1 rpcnthhs;
label define rpcnthhs
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-50 Percentage of business"   
	2           "51-99 Percentage of business"  
;
label values rpctown1 rpctowns;
label define rpctowns
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-25 Percentage of business"   
	2           "26-49 Percentage of business"  
	3           "50-100 Percentage of business" 
;
label values tgrsrcp1 tgrsrcps;
label define tgrsrcps
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ttotexp1 ttotexps;
label define ttotexps
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetinc1 tnetincs;
label define tnetincs
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetinc2 tnetinck;
label define tnetinck
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values iothinc1 iothincs;
label define iothincs
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values inetin11 inetin1s;
label define inetin1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values tnetin12 tnetin1s;
label define tnetin1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetin13 tnetin1k;
label define tnetin1k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values inetin21 inetin2s;
label define inetin2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values tnetin22 tnetin2s;
label define tnetin2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetin23 tnetin2k;
label define tnetin2k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ibsform2 ibsformk;
label define ibsformk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Sole proprietorship"           
	2           "Partnership"                   
	3           "Corporation"                   
;
label values ibsloct2 ibsloctk;
label define ibsloctk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Own home"                      
	2           "Somewhere else"                
;
label values iprtown2 iprtownk;
label define iprtownk
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iownrs21 iownrs2s;
label define iownrs2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iownrs22 iownrs2k;
label define iownrs2k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ihhown2  ihhown2l;
label define ihhown2l
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values rpcnthh2 rpcnthhk;
label define rpcnthhk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-50 Percentage of business"   
	2           "51-99 Percentage of business"  
;
label values rpctown2 rpctownk;
label define rpctownk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-25 Percentage of business"   
	2           "26-49 Percentage of business"  
	3           "50-100 Percentage of business" 
;
label values tgrsrcp2 tgrsrcpk;
label define tgrsrcpk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ttotexp2 ttotexpk;
label define ttotexpk
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetinc3 tnetincl;
label define tnetincl
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetinc4 tnetincm;
label define tnetincm
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values iothinc2 iothinck;
label define iothinck
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values inetin31 inetin3s;
label define inetin3s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values tnetin32 tnetin3s;
label define tnetin3s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetin33 tnetin3k;
label define tnetin3k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values inetin41 inetin4s;
label define inetin4s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values tnetin42 tnetin4s;
label define tnetin4s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tnetin43 tnetin4k;
label define tnetin4k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tothinc3 tothincs;
label define tothincs
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tothinc4 tothinck;
label define tothinck
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values iirayn   iirayn; 
label define iirayn  
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiracont iiracont;
label define iiracont
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ttaxcont ttaxcont;
label define ttaxcont
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values iirawdl  iirawdl;
label define iirawdl 
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tamtira  tamtira;
label define tamtira 
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tiraearn tiraearn;
label define tiraearn
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values iiratyp1 iiratypn;
label define iiratypn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp2 iiratypk;
label define iiratypk
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp3 iiratypl;
label define iiratypl
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp4 iiratypm;
label define iiratypm
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp5 iiratypo;
label define iiratypo
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp6 iiratypp;
label define iiratypp
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iiratyp7 iiratypq;
label define iiratypq
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeoghyn ikeoghyn;
label define ikeoghyn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeoghcn ikeoghcn;
label define ikeoghcn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ttxkeogh ttxkeogh;
label define ttxkeogh
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ikeoghwd ikeoghwd;
label define ikeoghwd
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tatkeogh tatkeogh;
label define tatkeogh
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tkeogher tkeogher;
label define tkeogher
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ikeohtp1 ikeohtpr;
label define ikeohtpr
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp2 ikeohtpk;
label define ikeohtpk
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp3 ikeohtpl;
label define ikeohtpl
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp4 ikeohtpm;
label define ikeohtpm
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp5 ikeohtpn;
label define ikeohtpn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp6 ikeohtpo;
label define ikeohtpo
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ikeohtp7 ikeohtpp;
label define ikeohtpp
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ithrftyn ithrftyn;
label define ithrftyn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tthftcnt tthftcnt;
label define tthftcnt
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ithftwdl ithftwdl;
label define ithftwdl
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tthftamt tthftamt;
label define tthftamt
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values tthftern tthftern;
label define tthftern
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
;
label values ithftyp1 ithftypn;
label define ithftypn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ithftyp2 ithftypk;
label define ithftypk
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ithftyp3 ithftypl;
label define ithftypl
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ithftyp4 ithftypm;
label define ithftypm
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ithftyp5 ithftypo;
label define ithftypo
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values eatxunv  eatxunv;
label define eatxunv 
	1           "In universe"                   
	-1          "Not in universe"               
;
label values itaxflyn itaxflyn;
label define itaxflyn
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values itaxcopy itaxcopy;
label define itaxcopy
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tfilstat tfilstat;
label define tfilstat
	0           "Not answered"                  
	1           "Single taxpayer"               
	2           "Married, filing joint return"  
	3           "Married, filing separately"    
	4           "Unmarried head of HH and"      
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ttotexmp ttotexmp;
label define ttotexmp
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1 exemption"                   
	2           "2 exemptions"                  
	3           "3-4 exemptions"                
	4           "5 or more exemptions"          
;
label values iexemp01 iexemp0p;
label define iexemp0p
	-5          "All"                           
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iexemp02 iexemp0k;
label define iexemp0k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iexemp03 iexemp0l;
label define iexemp0l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iexemp04 iexemp0m;
label define iexemp0m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iexemp05 iexemp0n;
label define iexemp0n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iexmpout iexmpout;
label define iexmpout
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iexnmout iexnmout;
label define iexnmout
	0           "Not answered"                  
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ioutrl01 ioutrl0t;
label define ioutrl0t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl02 ioutrl0k;
label define ioutrl0k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl03 ioutrl0l;
label define ioutrl0l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl04 ioutrl0m;
label define ioutrl0m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl05 ioutrl0n;
label define ioutrl0n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl06 ioutrl0o;
label define ioutrl0o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl07 ioutrl0p;
label define ioutrl0p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl08 ioutrl0q;
label define ioutrl0q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl09 ioutrl0r;
label define ioutrl0r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ioutrl10 ioutrl1t;
label define ioutrl1t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "Parent"                        
	2           "Child"                         
	3           "Brother/sister"                
	4           "Other"                         
;
label values ifilform ifilform;
label define ifilform
	0           "Not answered"                  
	1           "Form 1040"                     
	2           "Form 1040A"                    
	3           "Form 1040EZ"                   
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ischeda  ischeda;
label define ischeda 
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ischedd  ischedd;
label define ischedd 
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tamtdedt tamtdedt;
label define tamtdedt
	0           "Not answered"                  
	1           "1-4999 Amount of itemized"     
	2           "5000-6999 Amount of itemized"  
	3           "7000-7999 Amount of itemized"  
	4           "8000-8999 Amount of itemized"  
	5           "9000-9999 Amount of itemized"  
	6           "10000-10999 Amount of itemized"
	7           "11000-11999 Amount of itemized"
	8           "12000-12999 Amount of itemized"
	9           "13000-13999 Amount of itemized"
	10          "14000-16999 Amount of itemized"
	11          "17000-21999 Amount of itemized"
	12          "22000-24999 Amount of itemized"
	13          "25000-35999 Amount of itemized"
	14          "36000+ Amount of itemized"     
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values iccexpen iccexpen;
label define iccexpen
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tccamt   tccamt; 
label define tccamt  
	0           "Not answered"                  
	1           "1-74 Child and dependent care" 
	2           "75-149 Child and dependent care"
	3           "150-199 Child and dependent care"
	4           "200-249 Child and dependent care"
	5           "250-299 Child and dependent care"
	6           "300-324 Child and dependent care"
	7           "325-399 Child and dependent care"
	8           "400-449 Child and dependent care"
	9           "450-499 Child and dependent care"
	10          "500-624 Child and dependent care"
	11          "625-799 Child and dependent care"
	12          "800+ Child and dependent care" 
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values icarex01 icarex0t;
label define icarex0t
	-5          "All"                           
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex02 icarex0k;
label define icarex0k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex03 icarex0l;
label define icarex0l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex04 icarex0m;
label define icarex0m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex05 icarex0n;
label define icarex0n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex06 icarex0o;
label define icarex0o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex07 icarex0p;
label define icarex0p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex08 icarex0q;
label define icarex0q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex09 icarex0r;
label define icarex0r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex10 icarex1t;
label define icarex1t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex11 icarex1k;
label define icarex1k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex12 icarex1l;
label define icarex1l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex13 icarex1m;
label define icarex1m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex14 icarex1n;
label define icarex1n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex15 icarex1o;
label define icarex1o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex16 icarex1p;
label define icarex1p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex17 icarex1q;
label define icarex1q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex18 icarex1r;
label define icarex1r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex19 icarex1s;
label define icarex1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex20 icarex2t;
label define icarex2t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex21 icarex2k;
label define icarex2k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex22 icarex2l;
label define icarex2l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex23 icarex2m;
label define icarex2m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex24 icarex2n;
label define icarex2n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex25 icarex2o;
label define icarex2o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex26 icarex2p;
label define icarex2p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex27 icarex2q;
label define icarex2q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex28 icarex2r;
label define icarex2r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex29 icarex2s;
label define icarex2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values icarex30 icarex3t;
label define icarex3t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values idsabcrd idsabcrd;
label define idsabcrd
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tdsabamt tdsabamt;
label define tdsabamt
	0           "Not answered"                  
	1           "1-999 Elderly or disabled credit"
	2           "1000-5499 Elderly or disabled" 
	3           "5500+ Elderly or disabled credit"
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values tsapgain tsapgain;
label define tsapgain
	-4          "Negative values (losses)"      
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-99 Amount of capital gains"  
	2           "100-199 Amount of capital gains"
	3           "200-299 Amount of capital gains"
	4           "300-499 Amount of capital gains"
	5           "500-699 Amount of capital gains"
	6           "700-999 Amount of capital gains"
	7           "1000-1299 Amount of capital gains"
	8           "1300-1999 Amount of capital gains"
	9           "2000-2999 Amount of capital gains"
	10          "3000-3999 Amount of capital gains"
	11          "4000-5999 Amount of capital gains"
	12          "6000-9999 Amount of capital gains"
	13          "10000-14999 Amount of capital" 
	14          "15000+ Amount of capital gains"
;
label values tadjincm tadjincm;
label define tadjincm
	-4          "Negative values (losses)"      
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-4999 Amount of adjusted gross"
	2           "5000-9999 Amount of adjusted"  
	3           "10000-14999 Amount of adjusted"
	4           "15000-19999 Amount of adjusted"
	5           "20000-24999 Amount of adjusted"
	6           "25000-29999 Amount of adjusted"
	7           "30000-34999 Amount of adjusted"
	8           "35000-39999 Amount of adjusted"
	9           "40000-49999 Amount of adjusted"
	10          "50000-59999 Amount of adjusted"
	11          "60000-74999 Amount of adjusted"
	12          "75000+ Amount of adjusted gross"
;
label values tnettax  tnettax;
label define tnettax 
	-4          "Negative values (losses)"      
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	1           "1-299 Amount of net tax liability"
	2           "300-499 Amount of net tax"     
	3           "500-899 Amount of net tax"     
	4           "900-1199 Amount of net tax"    
	5           "1200-1599 Amount of net tax"   
	6           "1600-1999 Amount of net tax"   
	7           "2000-2399 Amount of net tax"   
	8           "2400-2999 Amount of net tax"   
	9           "3000-3499 Amount of net tax"   
	10          "3500-3999 Amount of net tax"   
	11          "4000-4499 Amount of net tax"   
	12          "4500-4999 Amount of net tax"   
	13          "5000-5499 Amount of net tax"   
	14          "5500-6499 Amount of net tax"   
	15          "6500-7999 Amount of net tax"   
	16          "8000-9999 Amount of net tax"   
	17          "10000-13999 Amount of net tax" 
	18          "14000+ Amount of net tax liability"
;
label values ierndcrd ierndcrd;
label define ierndcrd
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values terndamt terndamt;
label define terndamt
	0           "Not answered"                  
	1           "1-99 Amount of earned income"  
	2           "100-199 Amount of earned income"
	3           "200-299 Amount of earned income"
	4           "300-499 Amount of earned income"
	5           "500-599 Amount of earned income"
	6           "600-799 Amount of earned income"
	7           "800-999 Amount of earned income"
	8           "1000-1199 Amount of earned income"
	9           "1200-1399 Amount of earned income"
	10          "1400-1599 Amount of earned income"
	11          "1600-1799 Amount of earned income"
	12          "1800-1999 Amount of earned income"
	13          "2000-2199 Amount of earned income"
	14          "2200-2399 Amount of earned income"
	15          "2400-2599 Amount of earned income"
	16          "2600-2999 Amount of earned income"
	17          "3000-3499 Amount of earned income"
	18          "3500+ Amount of earned income" 
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ieicex01 ieicex0t;
label define ieicex0t
	-5          "All"                           
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex02 ieicex0k;
label define ieicex0k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex03 ieicex0l;
label define ieicex0l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex04 ieicex0m;
label define ieicex0m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex05 ieicex0n;
label define ieicex0n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex06 ieicex0o;
label define ieicex0o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex07 ieicex0p;
label define ieicex0p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex08 ieicex0q;
label define ieicex0q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex09 ieicex0r;
label define ieicex0r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex10 ieicex1t;
label define ieicex1t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex11 ieicex1k;
label define ieicex1k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex12 ieicex1l;
label define ieicex1l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex13 ieicex1m;
label define ieicex1m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex14 ieicex1n;
label define ieicex1n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex15 ieicex1o;
label define ieicex1o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex16 ieicex1p;
label define ieicex1p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex17 ieicex1q;
label define ieicex1q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex18 ieicex1r;
label define ieicex1r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex19 ieicex1s;
label define ieicex1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex20 ieicex2t;
label define ieicex2t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex21 ieicex2k;
label define ieicex2k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex22 ieicex2l;
label define ieicex2l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex23 ieicex2m;
label define ieicex2m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex24 ieicex2n;
label define ieicex2n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex25 ieicex2o;
label define ieicex2o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex26 ieicex2p;
label define ieicex2p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex27 ieicex2q;
label define ieicex2q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex28 ieicex2r;
label define ieicex2r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex29 ieicex2s;
label define ieicex2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ieicex30 ieicex3t;
label define ieicex3t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values iproptax iproptax;
label define iproptax
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ipropjnt ipropjnt;
label define ipropjnt
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	-2          "Refused"                       
	-1          "Don't know"                    
;
label values ipropn01 ipropn0t;
label define ipropn0t
	-5          "All"                           
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn02 ipropn0k;
label define ipropn0k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn03 ipropn0l;
label define ipropn0l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn04 ipropn0m;
label define ipropn0m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn05 ipropn0n;
label define ipropn0n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn06 ipropn0o;
label define ipropn0o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn07 ipropn0p;
label define ipropn0p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn08 ipropn0q;
label define ipropn0q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn09 ipropn0r;
label define ipropn0r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn10 ipropn1t;
label define ipropn1t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn11 ipropn1k;
label define ipropn1k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn12 ipropn1l;
label define ipropn1l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn13 ipropn1m;
label define ipropn1m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn14 ipropn1n;
label define ipropn1n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn15 ipropn1o;
label define ipropn1o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn16 ipropn1p;
label define ipropn1p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn17 ipropn1q;
label define ipropn1q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn18 ipropn1r;
label define ipropn1r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn19 ipropn1s;
label define ipropn1s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn20 ipropn2t;
label define ipropn2t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn21 ipropn2k;
label define ipropn2k
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn22 ipropn2l;
label define ipropn2l
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn23 ipropn2m;
label define ipropn2m
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn24 ipropn2n;
label define ipropn2n
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn25 ipropn2o;
label define ipropn2o
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn26 ipropn2p;
label define ipropn2p
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn27 ipropn2q;
label define ipropn2q
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn28 ipropn2r;
label define ipropn2r
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn29 ipropn2s;
label define ipropn2s
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ipropn30 ipropn3t;
label define ipropn3t
	-3          "None"                          
	-2          "Refused"                       
	-1          "Don't know"                    
	0           "Not answered"                  
	9999        "Unknown person number"         
;
label values ttaxbill ttaxbill;
label define ttaxbill
	0           "Not answered"                  
	1           "1-100 Amount of property tax"  
	2           "101-200 Amount of property tax"
	3           "201-300 Amount of property tax"
	4           "301-400 Amount of property tax"
	5           "401-500 Amount of property tax"
	6           "501-600 Amount of property tax"
	7           "601-700 Amount of property tax"
	8           "701-800 Amount of property tax"
	9           "801-900 Amount of property tax"
	10          "901-1000 Amount of property tax"
	11          "1001-1200 Amount of property tax"
	12          "1201-1300 Amount of property tax"
	13          "1301-1500 Amount of property tax"
	14          "1501-1700 Amount of property tax"
	15          "1701-1900 Amount of property tax"
	16          "1901-2000 Amount of property tax"
	17          "2001-2299 Amount of property tax"
	18          "2300-2500 Amount of property tax"
	19          "2501-2800 Amount of property tax"
	20          "2801-3000 Amount of property tax"
	21          "3001-3500 Amount of property tax"
	22          "3501-4000 Amount of property tax"
	23          "4001-5000 Amount of property tax"
	24          "5001+ Amount of property tax"  
	-2          "Refused"                       
	-1          "Don't know"                    
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
