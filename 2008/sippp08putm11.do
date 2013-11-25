
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
label values earpunv  earpunv;
label define earpunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values rmjb     rmjb;   
label define rmjb    
	-1          "Not in Universe"               
	0           "No current job but in universe"
;
label values rmbs     rmbs;   
label define rmbs    
	-1          "Not in Universe"               
	0           "No current business but in"    
;
label values rmnjbbs  rmnjbbs;
label define rmnjbbs 
	-1          "Not in Universe"               
	1           "Job"                           
	2           "Business"                      
;
label values eherempl eherempl;
label define eherempl
	-1          "Not in Universe"               
	1           "Less than 10"                  
	2           "10 to 25"                      
	3           "26 to 50"                      
	4           "51 to 100"                     
	5           "101 to 200"                    
	6           "201 to 500"                    
	7           "501 to 1000"                   
	8           "Greater than 1000"             
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
	-1          "Not in Universe"               
	1           "Less than 50"                  
	2           "50 to 100"                     
	3           "101 to 500"                    
	4           "501 to 1000"                   
	5           "Greater than 1000"             
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
	-1          "Not in Universe"               
	1           "Less than 10"                  
	2           "10 to 25"                      
	3           "26 or more"                    
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values emthyear emthyear;
label define emthyear
	-1          "Not in Universe"               
	1           "Months"                        
	2           "Years"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina02 enoina0k;
label define enoina0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina03 enoina0l;
label define enoina0l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina04 enoina0m;
label define enoina0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina05 enoina0n;
label define enoina0n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina06 enoina0o;
label define enoina0o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina07 enoina0p;
label define enoina0p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina08 enoina0q;
label define enoina0q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina09 enoina0r;
label define enoina0r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina10 enoina1s;
label define enoina1s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina11 enoina1k;
label define enoina1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina12 enoina1l;
label define enoina1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina13 enoina1m;
label define enoina1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoina14 enoina1n;
label define enoina1n
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Plan based on earnings and years"
	2           "Individual account plan"       
	3           "Cash balance plan"             
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
	-1          "Not in Universe"               
	1           "Plan based on earnings and years"
	2           "Individual account plan"       
	3           "Cash balance plan"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Do not participate in Social"  
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
	0           "Not In Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "Do not participate in Social"  
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
	0           "Not In Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb02 enoinb0k;
label define enoinb0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb03 enoinb0l;
label define enoinb0l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb04 enoinb0m;
label define enoinb0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb05 enoinb0n;
label define enoinb0n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb06 enoinb0o;
label define enoinb0o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb07 enoinb0p;
label define enoinb0p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb08 enoinb0q;
label define enoinb0q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb09 enoinb0r;
label define enoinb0r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb10 enoinb1c;
label define enoinb1c
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb11 enoinb1k;
label define enoinb1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb12 enoinb1l;
label define enoinb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb13 enoinb1m;
label define enoinb1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values enoinb14 enoinb1n;
label define enoinb1n
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
;
label values eslfcon2 eslfcont;
label define eslfcont
	-1          "Not in Universe"               
	1           "Week"                          
	2           "Biweekly"                      
	3           "Month"                         
	4           "Quarter"                       
	5           "Year"                          
;
label values eslfcon3 eslfconk;
label define eslfconk
	-1          "Not in Universe"               
;
label values aslfcon3 aslfcont;
label define aslfcont
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eempcont eempcont;
label define eempcont
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Depends entirely"              
	2           "Depends partly"                
	3           "Not at all"                    
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
	0           "Not In Universe"               
;
label values ajbcont1 ajbcontp;
label define ajbcontp
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejbcont2 ejbcontp;
label define ejbcontp
	-1          "Not in Universe"               
	1           "Week"                          
	2           "Biweekly"                      
	3           "Month"                         
	4           "Quarter"                       
	5           "Year"                          
;
label values ajbcont2 ajbcontk;
label define ajbcontk
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejbcont3 ejbcontk;
label define ejbcontk
	-1          "Not in Universe"               
;
label values ajbcont3 ajbcontl;
label define ajbcontl
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejbcont4 ejbcontl;
label define ejbcontl
	-1          "Not in Universe"               
	6           "Contributions out of profits"  
	7           "Contribution varies"           
;
label values einvchos einvchos;
label define einvchos
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "All of the money"              
	2           "Part of the money"             
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv2 ehowinvk;
label define ehowinvk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv3 ehowinvl;
label define ehowinvl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv4 ehowinvm;
label define ehowinvm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv5 ehowinvn;
label define ehowinvn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv6 ehowinvo;
label define ehowinvo
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv7 ehowinvp;
label define ehowinvp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehowinv8 ehowinvq;
label define ehowinvq
	-1          "Not in Universe"               
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
label values emostinv emostinv;
label define emostinv
	-1          "Not in Universe"               
	1           "Employer company stock"        
	2           "Stock funds"                   
	3           "Corporate bonds or bond funds" 
	4           "Long term interest bearing"    
	5           "Diversified stock and bond funds"
	6           "Government securities"         
	7           "Money market funds"            
	8           "Other investments"             
	9           "Evenly split between types"    
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Based on a formula"            
	2           "Based on the amount of money in"
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Could withdraw money now"      
	2           "Must wait until retirement"    
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Laid Off"                      
	2           "Retired or old age"            
	3           "Child care problems"           
	4           "Other family obligations"      
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/Training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer sold business"        
	11          "Job temporary and ended"       
	12          "Quit to take another job"      
	13          "Slack work/business conditions"
	14          "Unsatisfactory work arrangements"
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Private employer or union plan"
	2           "Military plan"                 
	3           "Other federal plans"           
	4           "State or local government"     
	5           "Other"                         
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
	-1          "Not in Universe"               
	1           "Voluntarily"                   
	2           "Required to withdraw"          
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Actually received"             
	2           "Directly rolled over"          
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Plan on job"                   
	2           "Individual annuity"            
	3           "IRA"                           
	4           "OTHER"                         
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
	-1          "Not in Universe"               
	1           "Entire amount"                 
	2           "Partial amount"                
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp02 elmpsp0k;
label define elmpsp0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp03 elmpsp0l;
label define elmpsp0l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp04 elmpsp0m;
label define elmpsp0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp05 elmpsp0n;
label define elmpsp0n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp06 elmpsp0o;
label define elmpsp0o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp07 elmpsp0p;
label define elmpsp0p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp08 elmpsp0q;
label define elmpsp0q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp09 elmpsp0r;
label define elmpsp0r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp10 elmpsp1t;
label define elmpsp1t
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp11 elmpsp1k;
label define elmpsp1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp12 elmpsp1l;
label define elmpsp1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp13 elmpsp1m;
label define elmpsp1m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp14 elmpsp1n;
label define elmpsp1n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp15 elmpsp1o;
label define elmpsp1o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp16 elmpsp1p;
label define elmpsp1p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp17 elmpsp1q;
label define elmpsp1q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp18 elmpsp1r;
label define elmpsp1r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values elmpsp19 elmpsp1s;
label define elmpsp1s
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epenlng2 epenlngk;
label define epenlngk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epengng3 epengngp;
label define epengngp
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Respondent's job"              
	2           "Respondent's former spouse's job"
	3           "Other"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Years of service and pay"      
	2           "Amount in individual account"  
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
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
	3           "No survivor's option offered"  
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
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
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	1           "Respondent's former job"       
	2           "Respondent's former spouse's job"
	3           "Other"                         
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Job"                           
	2           "Business"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
	7           "Active duty Armed Forces"      
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
	-1          "Not in Universe"               
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
label values enumwork enumwork;
label define enumwork
	-1          "Not in Universe"               
	1           "Less than 10"                  
	2           "10 to 25"                      
	3           "26 to 50"                      
	4           "51 to 100"                     
	5           "101 to 200"                    
	6           "201 to 500"                    
	7           "501 to 1000"                   
	8           "Greater than 1000"             
;
label values anumwork anumwork;
label define anumwork
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values eemplall eemplall;
label define eemplall
	-1          "Not in Universe"               
	1           "Less than 10"                  
	2           "10 to 25"                      
	3           "26 to 50"                      
	4           "51 to 100"                     
	5           "101 to 200"                    
	6           "201 to 500"                    
	7           "501 to 1000"                   
	8           "Greater than 1000"             
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
;
label values eernlev2 eernlevj;
label define eernlevj
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Agriculture, Forestry, Fishing"
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing"                 
	5           "Wholesale trade"               
	6           "Retail Trade"                  
	7           "Transportation and warehousing,"
	8           "Information"                   
	9           "Finance, Insurance, Real Estate"
	10          "Professional, Scientific,"     
	11          "Educational, health and social"
	12          "Arts, entertainment, recreation,"
	13          "Other Services (except public" 
	14          "Public administration"         
	15          "Active duty military"          
	99          "Unable to code"                
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Less than 10"                  
	2           "10 to 25"                      
	3           "26 to 50"                      
	4           "51 to 200"                     
	5           "201 or more"                   
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
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
	0           "Not In Universe"               
;
label values ebusern2 ebusernv;
label define ebusernv
	-1          "Not in Universe"               
	1           "Per week"                      
	2           "Biweekly"                      
	3           "Per month"                     
	4           "Per year"                      
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
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
;
label values astdlvng astdlvng;
label define astdlvng
	0           "Not imputed"                   
	1           "Statistical imputation (hotdeck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values rtmeeno  rtmeeno;
label define rtmeeno 
	-1          "Not in Universe"               
	0           "No current job but in universe"
;
label values rtmebno  rtmebno;
label define rtmebno 
	-1          "Not in Universe"               
	0           "No current business but in"    
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
