
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
label values eairunv  eairunv;
label define eairunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values iothrbus iothrbus;
label define iothrbus
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iownbs04 iownbs0s;
label define iownbs0s
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ibsform1 ibsforms;
label define ibsforms
	3           "Corporation"                   
	2           "Partnership"                   
	1           "Sole proprietorship"           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ibsloct1 ibslocts;
label define ibslocts
	2           "Somewhere else"                
	1           "Own home"                      
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iprtown1 iprtowns;
label define iprtowns
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iownrs11 iownrs1s;
label define iownrs1s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iownrs12 iownrs1k;
label define iownrs1k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ihhown1  ihhown1l;
label define ihhown1l
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values rpcnthh1 rpcnthhs;
label define rpcnthhs
	2           "51-99 Percentage of business"  
	1           "1-50 Percentage of business"   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values rpctown1 rpctowns;
label define rpctowns
	3           "50-100 Percentage of business" 
	2           "26-49 Percentage of business"  
	1           "1-25 Percentage of business"   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tgrsrcp1 tgrsrcps;
label define tgrsrcps
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ttotexp1 ttotexps;
label define ttotexps
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetinc1 tnetincs;
label define tnetincs
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetinc2 tnetinck;
label define tnetinck
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iothinc1 iothincs;
label define iothincs
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tnetin12 tnetin1s;
label define tnetin1s
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin13 tnetin1k;
label define tnetin1k
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin22 tnetin2s;
label define tnetin2s
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin23 tnetin2k;
label define tnetin2k
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ibsform2 ibsformk;
label define ibsformk
	3           "Corporation"                   
	2           "Partnership"                   
	1           "Sole proprietorship"           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ibsloct2 ibsloctk;
label define ibsloctk
	2           "Somewhere else"                
	1           "Own home"                      
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iprtown2 iprtownk;
label define iprtownk
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iownrs21 iownrs2s;
label define iownrs2s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iownrs22 iownrs2k;
label define iownrs2k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ihhown2  ihhown2l;
label define ihhown2l
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values rpcnthh2 rpcnthhk;
label define rpcnthhk
	2           "51-99 Percentage of business"  
	1           "1-50 Percentage of business"   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values rpctown2 rpctownk;
label define rpctownk
	3           "50-100 Percentage of business" 
	2           "26-49 Percentage of business"  
	1           "1-25 Percentage of business"   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tgrsrcp2 tgrsrcpk;
label define tgrsrcpk
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ttotexp2 ttotexpk;
label define ttotexpk
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetinc3 tnetincl;
label define tnetincl
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetinc4 tnetincm;
label define tnetincm
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iothinc2 iothinck;
label define iothinck
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tnetin32 tnetin3s;
label define tnetin3s
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin33 tnetin3k;
label define tnetin3k
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin42 tnetin4s;
label define tnetin4s
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tnetin43 tnetin4k;
label define tnetin4k
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tothinc3 tothincs;
label define tothincs
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tothinc4 tothinck;
label define tothinck
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iirayn   iirayn; 
label define iirayn  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiracont iiracont;
label define iiracont
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ttaxcont ttaxcont;
label define ttaxcont
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iirawdl  iirawdl;
label define iirawdl 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tamtira  tamtira;
label define tamtira 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tiraearn tiraearn;
label define tiraearn
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iiratyp1 iiratypn;
label define iiratypn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp2 iiratypk;
label define iiratypk
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp3 iiratypl;
label define iiratypl
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp4 iiratypm;
label define iiratypm
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp5 iiratypo;
label define iiratypo
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp6 iiratypp;
label define iiratypp
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iiratyp7 iiratypq;
label define iiratypq
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeoghyn ikeoghyn;
label define ikeoghyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeoghcn ikeoghcn;
label define ikeoghcn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ttxkeogh ttxkeogh;
label define ttxkeogh
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ikeoghwd ikeoghwd;
label define ikeoghwd
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tatkeogh tatkeogh;
label define tatkeogh
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tkeogher tkeogher;
label define tkeogher
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ikeohtp1 ikeohtpr;
label define ikeohtpr
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp2 ikeohtpk;
label define ikeohtpk
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp3 ikeohtpl;
label define ikeohtpl
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp4 ikeohtpm;
label define ikeohtpm
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp5 ikeohtpn;
label define ikeohtpn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp6 ikeohtpo;
label define ikeohtpo
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikeohtp7 ikeohtpp;
label define ikeohtpp
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ithrftyn ithrftyn;
label define ithrftyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tthftcnt tthftcnt;
label define tthftcnt
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ithftwdl ithftwdl;
label define ithftwdl
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tthftamt tthftamt;
label define tthftamt
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values tthftern tthftern;
label define tthftern
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ithftyp1 ithftypn;
label define ithftypn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ithftyp2 ithftypk;
label define ithftypk
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ithftyp3 ithftypl;
label define ithftypl
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ithftyp4 ithftypm;
label define ithftypm
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ithftyp5 ithftypo;
label define ithftypo
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values eatxunv  eatxunv;
label define eatxunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values itaxflyn itaxflyn;
label define itaxflyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values itaxcopy itaxcopy;
label define itaxcopy
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tfilstat tfilstat;
label define tfilstat
	4           "Unmarried head of Household and"
	3           "Married, filing separately"    
	2           "Married, Filing joint return"  
	1           "Single taxpayer"               
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ttotexmp ttotexmp;
label define ttotexmp
	4           "5 or more exemptions"          
	3           "3-4 exemptions"                
	2           "2 exemptions"                  
	1           "1 exemption"                   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iexemp01 iexemp0p;
label define iexemp0p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-5          "All"                           
;
label values iexemp02 iexemp0k;
label define iexemp0k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iexemp03 iexemp0l;
label define iexemp0l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iexemp04 iexemp0m;
label define iexemp0m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iexemp05 iexemp0n;
label define iexemp0n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iexmpout iexmpout;
label define iexmpout
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iexnmout iexnmout;
label define iexnmout
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ioutrl01 ioutrl0t;
label define ioutrl0t
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl02 ioutrl0k;
label define ioutrl0k
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl03 ioutrl0l;
label define ioutrl0l
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl04 ioutrl0m;
label define ioutrl0m
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl05 ioutrl0n;
label define ioutrl0n
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl06 ioutrl0o;
label define ioutrl0o
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl07 ioutrl0p;
label define ioutrl0p
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl08 ioutrl0q;
label define ioutrl0q
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl09 ioutrl0r;
label define ioutrl0r
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ioutrl10 ioutrl1t;
label define ioutrl1t
	4           "OTHER"                         
	3           "Brother/sister"                
	2           "Child"                         
	1           "Parent"                        
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ifilform ifilform;
label define ifilform
	3           "Form 1040EZ"                   
	2           "Form 1040A"                    
	1           "Form 1040"                     
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ischeda  ischeda;
label define ischeda 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ischedd  ischedd;
label define ischedd 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tamtdedt tamtdedt;
label define tamtdedt
	16          "36000+ Amount of itemized"     
	15          "25000-35999 Amount of itemized"
	14          "22000-24999 Amount of itemized"
	13          "19000-21999 Amount of itemized"
	12          "17000-18999 Amount of itemized"
	11          "16000-16999 Amount of itemized"
	10          "15000-15999 Amount of itemized"
	9           "14000-14999 Amount of itemized"
	8           "13000-13999 Amount of itemized"
	7           "12000-12999 Amount of itemized"
	6           "11000-11999 Amount of itemized"
	5           "10000-10999 Amount of itemized"
	4           "9000-9999 Amount of itemized"  
	3           "7000-8999 Amount of itemized"  
	2           "5000-6999 Amount of itemized"  
	1           "1-4999 Amount of itemized"     
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccexpen iccexpen;
label define iccexpen
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tccamt   tccamt; 
label define tccamt  
	15          "2400+ Child and dependent care"
	14          "1300-2399 Child and dependent" 
	13          "1200-1299 Child and dependent" 
	12          "1000-1199 Child and dependent" 
	11          "900-999 Child and dependent care"
	10          "800-899 Child and dependent care"
	9           "700-799 Child and dependent care"
	8           "600-699 Child and dependent care"
	7           "500-599 Child and dependent care"
	6           "400-499 Child and dependent care"
	5           "300-399 Child and dependent care"
	4           "250-299 Child and dependent care"
	3           "200-249 Child and dependent care"
	2           "100-199 Child and dependent care"
	1           "1-99 Child and dependent care" 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icarex01 icarex0t;
label define icarex0t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-5          "All"                           
;
label values icarex02 icarex0k;
label define icarex0k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex03 icarex0l;
label define icarex0l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex04 icarex0m;
label define icarex0m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex05 icarex0n;
label define icarex0n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex06 icarex0o;
label define icarex0o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex07 icarex0p;
label define icarex0p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex08 icarex0q;
label define icarex0q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex09 icarex0r;
label define icarex0r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex10 icarex1t;
label define icarex1t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex11 icarex1k;
label define icarex1k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex12 icarex1l;
label define icarex1l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex13 icarex1m;
label define icarex1m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex14 icarex1n;
label define icarex1n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex15 icarex1o;
label define icarex1o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex16 icarex1p;
label define icarex1p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex17 icarex1q;
label define icarex1q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex18 icarex1r;
label define icarex1r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex19 icarex1s;
label define icarex1s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex20 icarex2t;
label define icarex2t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex21 icarex2k;
label define icarex2k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex22 icarex2l;
label define icarex2l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex23 icarex2m;
label define icarex2m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex24 icarex2n;
label define icarex2n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex25 icarex2o;
label define icarex2o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex26 icarex2p;
label define icarex2p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex27 icarex2q;
label define icarex2q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex28 icarex2r;
label define icarex2r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex29 icarex2s;
label define icarex2s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values icarex30 icarex3t;
label define icarex3t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values idsabcrd idsabcrd;
label define idsabcrd
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tsapgain tsapgain;
label define tsapgain
	14          "20000+ Amount of capital gains"
	13          "10000-19999 Amount of capital" 
	12          "6000-9999 Amount of capital gains"
	11          "4000-5999 Amount of capital gains"
	10          "3000-3999 Amount of capital gains"
	9           "2000-2999 Amount of capital gains"
	8           "1500-1999 Amount of capital gains"
	7           "1000-1499 Amount of capital gains"
	6           "700-999 Amount of capital gains"
	5           "500-699 Amount of capital gains"
	4           "300-499 Amount of capital gains"
	3           "200-299 Amount of capital gains"
	2           "100-199 Amount of capital gains"
	1           "1-99 Amount of capital gains"  
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-4          "Negative values (losses)"      
;
label values tadjincm tadjincm;
label define tadjincm
	11          "75000+ Amount of adjusted gross"
	10          "60000-74999 Amount of adjusted"
	9           "50000-59999 Amount of adjusted"
	8           "40000-49999 Amount of adjusted"
	7           "30000-39999 Amount of adjusted"
	6           "25000-29999 Amount of adjusted"
	5           "20000-24999 Amount of adjusted"
	4           "15000-19999 Amount of adjusted"
	3           "10000-14999 Amount of adjusted"
	2           "5000-9999 Amount of adjusted"  
	1           "1-4999 Amount of adjusted gross"
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-4          "Negative values (losses)"      
;
label values tnettax  tnettax;
label define tnettax 
	17          "30000+ Amount of net tax liability"
	16          "20000-29999 Amount of net tax" 
	15          "15000-19999 Amount of net tax" 
	14          "12000-14999 Amount of net tax" 
	13          "9000-11999 Amount of net tax"  
	12          "7000-8999 Amount of net tax"   
	11          "5000-6999 Amount of net tax"   
	10          "4000-4999 Amount of net tax"   
	9           "3000-3999 Amount of net tax"   
	8           "2500-2999 Amount of net tax"   
	7           "2000-2499 Amount of net tax"   
	6           "1500-1999 Amount of net tax"   
	5           "1000-1499 Amount of net tax"   
	4           "500-999 Amount of net tax"     
	3           "300-499 Amount of net tax"     
	2           "200-299 Amount of net tax"     
	1           "1-199 Amount of net tax liability"
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-4          "Negative values (losses)"      
;
label values ierndcrd ierndcrd;
label define ierndcrd
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values terndamt terndamt;
label define terndamt
	16          "4000+ Amount of earned income" 
	15          "3200-3999 Amount of earned income"
	14          "2700-3199 Amount of earned income"
	13          "2500-2699 Amount of earned income"
	12          "2200-2499 Amount of earned income"
	11          "2000-2199 Amount of earned income"
	10          "1750-1999 Amount of earned income"
	9           "1500-1749 Amount of earned income"
	8           "1200-1499 Amount of earned income"
	7           "1000-1199 Amount of earned income"
	6           "600-999 Amount of earned income"
	5           "400-599 Amount of earned income"
	4           "300-399 Amount of earned income"
	3           "200-299 Amount of earned income"
	2           "100-199 Amount of earned income"
	1           "1-99 Amount of earned income"  
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ieicex01 ieicex0t;
label define ieicex0t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-5          "All"                           
;
label values ieicex02 ieicex0k;
label define ieicex0k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex03 ieicex0l;
label define ieicex0l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex04 ieicex0m;
label define ieicex0m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex05 ieicex0n;
label define ieicex0n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex06 ieicex0o;
label define ieicex0o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex07 ieicex0p;
label define ieicex0p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex08 ieicex0q;
label define ieicex0q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex09 ieicex0r;
label define ieicex0r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex10 ieicex1t;
label define ieicex1t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex11 ieicex1k;
label define ieicex1k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex12 ieicex1l;
label define ieicex1l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex13 ieicex1m;
label define ieicex1m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex14 ieicex1n;
label define ieicex1n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex15 ieicex1o;
label define ieicex1o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex16 ieicex1p;
label define ieicex1p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex17 ieicex1q;
label define ieicex1q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex18 ieicex1r;
label define ieicex1r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex19 ieicex1s;
label define ieicex1s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex20 ieicex2t;
label define ieicex2t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex21 ieicex2k;
label define ieicex2k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex22 ieicex2l;
label define ieicex2l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex23 ieicex2m;
label define ieicex2m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex24 ieicex2n;
label define ieicex2n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex25 ieicex2o;
label define ieicex2o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex26 ieicex2p;
label define ieicex2p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex27 ieicex2q;
label define ieicex2q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex28 ieicex2r;
label define ieicex2r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex29 ieicex2s;
label define ieicex2s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ieicex30 ieicex3t;
label define ieicex3t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values iproptax iproptax;
label define iproptax
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipropjnt ipropjnt;
label define ipropjnt
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipropn01 ipropn0t;
label define ipropn0t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
	-5          "All"                           
;
label values ipropn02 ipropn0k;
label define ipropn0k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn03 ipropn0l;
label define ipropn0l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn04 ipropn0m;
label define ipropn0m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn05 ipropn0n;
label define ipropn0n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn06 ipropn0o;
label define ipropn0o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn07 ipropn0p;
label define ipropn0p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn08 ipropn0q;
label define ipropn0q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn09 ipropn0r;
label define ipropn0r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn10 ipropn1t;
label define ipropn1t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn11 ipropn1k;
label define ipropn1k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn12 ipropn1l;
label define ipropn1l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn13 ipropn1m;
label define ipropn1m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn14 ipropn1n;
label define ipropn1n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn15 ipropn1o;
label define ipropn1o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn16 ipropn1p;
label define ipropn1p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn17 ipropn1q;
label define ipropn1q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn18 ipropn1r;
label define ipropn1r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn19 ipropn1s;
label define ipropn1s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn20 ipropn2t;
label define ipropn2t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn21 ipropn2k;
label define ipropn2k
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn22 ipropn2l;
label define ipropn2l
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn23 ipropn2m;
label define ipropn2m
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn24 ipropn2n;
label define ipropn2n
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn25 ipropn2o;
label define ipropn2o
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn26 ipropn2p;
label define ipropn2p
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn27 ipropn2q;
label define ipropn2q
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn28 ipropn2r;
label define ipropn2r
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn29 ipropn2s;
label define ipropn2s
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ipropn30 ipropn3t;
label define ipropn3t
	9999        "Unknown person number"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "None"                          
;
label values ttaxbill ttaxbill;
label define ttaxbill
	15          "5000+ Amount of property tax"  
	14          "4000-4999 Amount of property tax"
	13          "3000-3999 Amount of property tax"
	12          "2600-2999 Amount of property tax"
	11          "2200-2599 Amount of property tax"
	10          "1900-2199 Amount of property tax"
	9           "1700-1899 Amount of property tax"
	8           "1400-1699 Amount of property tax"
	7           "1200-1399 Amount of property tax"
	6           "900-1199 Amount of property tax"
	5           "700-899 Amount of property tax"
	4           "500-699 Amount of property tax"
	3           "400-499 Amount of property tax"
	2           "200-399 Amount of property tax"
	1           "1-199 Amount of property tax"  
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values earpunv  earpunv;
label define earpunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values rmjb     rmjb;   
label define rmjb    
	0           "No current job but in universe"
	-1          "Not in Universe"               
;
label values rmbs     rmbs;   
label define rmbs    
	0           "No current business but in"    
	-1          "Not in Universe"               
;
label values rmnjbbs  rmnjbbs;
label define rmnjbbs 
	2           "Business"                      
	1           "Job"                           
	-1          "Not in Universe"               
;
label values therempl therempl;
label define therempl
	5           "100 or more"                   
	4           "50 to 99"                      
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values aherempl aherempl;
label define aherempl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ttotempl ttotempl;
label define ttotempl
	5           "100 or more"                   
	4           "50 to 99"                      
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values atotempl atotempl;
label define atotempl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tbustotl tbustotl;
label define tbustotl
	4           "50 or more"                    
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values abustotl abustotl;
label define abustotl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ewksyear ewksyear;
label define ewksyear
	-1          "Not in Universe"               
;
label values awksyear awksyear;
label define awksyear
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tnumlen  tnumlen;
label define tnumlen 
	-1          "Not in Universe"               
;
label values emthyear emthyear;
label define emthyear
	2           "Years"                         
	1           "Months"                        
	-1          "Not in Universe"               
;
label values anumyear anumyear;
label define anumyear
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epensnyn epensnyn;
label define epensnyn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apensnyn apensnyn;
label define apensnyn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eincpens eincpens;
label define eincpens
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aincpens aincpens;
label define aincpens
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values enoina01 enoina0s;
label define enoina0s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina02 enoina0k;
label define enoina0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina03 enoina0l;
label define enoina0l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina04 enoina0m;
label define enoina0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina05 enoina0n;
label define enoina0n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina06 enoina0o;
label define enoina0o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina07 enoina0p;
label define enoina0p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina08 enoina0q;
label define enoina0q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina09 enoina0r;
label define enoina0r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina10 enoina1s;
label define enoina1s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina11 enoina1k;
label define enoina1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina12 enoina1l;
label define enoina1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina13 enoina1m;
label define enoina1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoina14 enoina1n;
label define enoina1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoina   anoina; 
label define anoina  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values etdeffen etdeffen;
label define etdeffen
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atdeffen atdeffen;
label define atdeffen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values emultpen emultpen;
label define emultpen
	-1          "Not in Universe"               
;
label values amultpen amultpen;
label define amultpen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1pentyp e1pentyp;
label define e1pentyp
	3           "Cash balance plan"             
	2           "Individual account plan"       
	1           "Plan based on earnings and years"
	-1          "Not in Universe"               
;
label values a1pentyp a1pentyp;
label define a1pentyp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2pentyp e2pentyp;
label define e2pentyp
	3           "Cash balance plan"             
	2           "Individual account plan"       
	1           "Plan based on earnings and years"
	-1          "Not in Universe"               
;
label values a2pentyp a2pentyp;
label define a2pentyp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1penctr e1penctr;
label define e1penctr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a1penctr a1penctr;
label define a1penctr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1taxdef e1taxdef;
label define e1taxdef
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a1taxdef a1taxdef;
label define a1taxdef
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1recben e1recben;
label define e1recben
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a1recben a1recben;
label define a1recben
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1lvlmps e1lvlmps;
label define e1lvlmps
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a1lvlmps a1lvlmps;
label define a1lvlmps
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t1yrsinc t1yrsinc;
label define t1yrsinc
	-1          "Not in Universe"               
;
label values a1yrsinc a1yrsinc;
label define a1yrsinc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e1ssofst e1ssofst;
label define e1ssofst
	3           "Do not participate in Social"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a1ssofst a1ssofst;
label define a1ssofst
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t1yrcont t1yrcont;
label define t1yrcont
	0           "Not In Universe"               
;
label values a1yrcont a1yrcont;
label define a1yrcont
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t1totamt t1totamt;
label define t1totamt
	0           "Not In Universe"               
;
label values a1totamt a1totamt;
label define a1totamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2penctr e2penctr;
label define e2penctr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a2penctr a2penctr;
label define a2penctr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2taxdef e2taxdef;
label define e2taxdef
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a2taxdef a2taxdef;
label define a2taxdef
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2recben e2recben;
label define e2recben
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a2recben a2recben;
label define a2recben
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2lvlmps e2lvlmps;
label define e2lvlmps
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a2lvlmps a2lvlmps;
label define a2lvlmps
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t2yrsinc t2yrsinc;
label define t2yrsinc
	-1          "Not in Universe"               
;
label values a2yrsinc a2yrsinc;
label define a2yrsinc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e2ssofst e2ssofst;
label define e2ssofst
	3           "Do not participate in Social"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a2ssofst a2ssofst;
label define a2ssofst
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t2yrcont t2yrcont;
label define t2yrcont
	0           "Not In Universe"               
;
label values a2yrcont a2yrcont;
label define a2yrcont
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t2totamt t2totamt;
label define t2totamt
	0           "Not In Universe"               
;
label values a2totamt a2totamt;
label define a2totamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e3taxdef e3taxdef;
label define e3taxdef
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a3taxdef a3taxdef;
label define a3taxdef
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values e3partic e3partic;
label define e3partic
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values a3partic a3partic;
label define a3partic
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values enoinb01 enoinb0c;
label define enoinb0c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb02 enoinb0k;
label define enoinb0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb03 enoinb0l;
label define enoinb0l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb04 enoinb0m;
label define enoinb0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb05 enoinb0n;
label define enoinb0n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb06 enoinb0o;
label define enoinb0o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb07 enoinb0p;
label define enoinb0p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb08 enoinb0q;
label define enoinb0q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb09 enoinb0r;
label define enoinb0r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb10 enoinb1c;
label define enoinb1c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb11 enoinb1k;
label define enoinb1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb12 enoinb1l;
label define enoinb1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb13 enoinb1m;
label define enoinb1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinb14 enoinb1n;
label define enoinb1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoinb   anoinb; 
label define anoinb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ematchyn ematchyn;
label define ematchyn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amatchyn amatchyn;
label define amatchyn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values efutpart efutpart;
label define efutpart
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values afutpart afutpart;
label define afutpart
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tslfcon1 tslfcont;
label define tslfcont
	0           "Not In Universe"               
	-4          "No contributions"              
;
label values eslfcon2 eslfcont;
label define eslfcont
	5           "Year"                          
	4           "Quarter"                       
	3           "Month"                         
	2           "Biweekly"                      
	1           "Week"                          
	-1          "Not in Universe"               
;
label values eslfcon3 eslfconk;
label define eslfconk
	-1          "Not in Universe"               
;
label values aslfcon  aslfcon;
label define aslfcon 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eempcont eempcont;
label define eempcont
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aempcont aempcont;
label define aempcont
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values econtdep econtdep;
label define econtdep
	3           "Not at all"                    
	2           "Depends partly"                
	1           "Depends entirely"              
	-1          "Not in Universe"               
;
label values acontdep acontdep;
label define acontdep
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tjbcont1 tjbcontp;
label define tjbcontp
	0           "Not In Universe"               
;
label values ejbcont2 ejbcontp;
label define ejbcontp
	5           "Year"                          
	4           "Quarter"                       
	3           "Month"                         
	2           "Biweekly"                      
	1           "Week"                          
	-1          "Not in Universe"               
;
label values ejbcont3 ejbcontk;
label define ejbcontk
	-1          "Not in Universe"               
;
label values ejbcont4 ejbcontl;
label define ejbcontl
	7           "Contribution varies"           
	6           "Contributions out of profits"  
	-1          "Not in Universe"               
;
label values ajbcont  ajbcont;
label define ajbcont 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values einvchos einvchos;
label define einvchos
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ainvchos ainvchos;
label define ainvchos
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values einvsdec einvsdec;
label define einvsdec
	2           "Part of the money"             
	1           "All of the money"              
	-1          "Not in Universe"               
;
label values ainvsdec ainvsdec;
label define ainvsdec
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ehowinv1 ehowinvc;
label define ehowinvc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv2 ehowinvk;
label define ehowinvk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv3 ehowinvl;
label define ehowinvl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv4 ehowinvm;
label define ehowinvm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv5 ehowinvn;
label define ehowinvn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv6 ehowinvo;
label define ehowinvo
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv7 ehowinvp;
label define ehowinvp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ehowinv8 ehowinvq;
label define ehowinvq
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahowinvs ahowinvs;
label define ahowinvs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values emostinv emostinv;
label define emostinv
	8           "Other investments"             
	7           "Money market funds"            
	6           "Government securities"         
	5           "Diversified stock and bond funds"
	4           "Long term interest bearing"    
	3           "Corporate bonds or bond funds" 
	2           "Stock funds"                   
	1           "Employer company stock"        
	-1          "Not in Universe"               
;
label values amostinv amostinv;
label define amostinv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values t3totamt t3totamt;
label define t3totamt
	0           "Not In Universe"               
;
label values a3totamt a3totamt;
label define a3totamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epenloan epenloan;
label define epenloan
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apenloan apenloan;
label define apenloan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eletloan eletloan;
label define eletloan
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aletloan aletloan;
label define aletloan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tloanbal tloanbal;
label define tloanbal
	0           "Not In Universe"               
;
label values aloanbal aloanbal;
label define aloanbal
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eothrpen eothrpen;
label define eothrpen
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothrpen aothrpen;
label define aothrpen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eprevpen eprevpen;
label define eprevpen
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aprevpen aprevpen;
label define aprevpen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eprevexp eprevexp;
label define eprevexp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aprevexp aprevexp;
label define aprevexp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tprevyrs tprevyrs;
label define tprevyrs
	-1          "Not in Universe"               
;
label values aprevyrs aprevyrs;
label define aprevyrs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ewhnleft ewhnleft;
label define ewhnleft
	-1          "Not in Universe"               
;
label values awhnleft awhnleft;
label define awhnleft
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eprevtyp eprevtyp;
label define eprevtyp
	2           "Based on the amount of money in"
	1           "Based on a formula"            
	-1          "Not in Universe"               
;
label values aprevtyp aprevtyp;
label define aprevtyp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tprevamt tprevamt;
label define tprevamt
	0           "Not In Universe"               
;
label values aprevamt aprevamt;
label define aprevamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eprewith eprewith;
label define eprewith
	2           "Must wait until retirement"    
	1           "Could withdraw money now"      
	-1          "Not in Universe"               
;
label values aprewith aprewith;
label define aprewith
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eprevlmp eprevlmp;
label define eprevlmp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aprevlmp aprevlmp;
label define aprevlmp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ewhyleft ewhyleft;
label define ewhyleft
	14          "Unsatisfactory work arrangements"
	13          "Slack work/business conditions"
	12          "Quit to take another job"      
	11          "Job temporary and ended"       
	10          "Employer sold business"        
	9           "Employer bankrupt"             
	8           "Discharged/fired"              
	7           "School/Training"               
	6           "Own injury"                    
	5           "Own illness"                   
	4           "Other family obligations"      
	3           "Child care problems"           
	2           "Retired or old age"            
	1           "Laid Off"                      
	-1          "Not in Universe"               
;
label values awhyleft awhyleft;
label define awhyleft
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values esurvlmp esurvlmp;
label define esurvlmp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asurvlmp asurvlmp;
label define asurvlmp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elmpyear elmpyear;
label define elmpyear
	-1          "Not in Universe"               
;
label values almpyear almpyear;
label define almpyear
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elumpn97 elumpn9r;
label define elumpn9r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alumpn97 alumpn9r;
label define alumpn9r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elumpsrc elumpsrc;
label define elumpsrc
	5           "Other"                         
	4           "State or local government"     
	3           "Other federal plans"           
	2           "Military plan"                 
	1           "Private employer or union plan"
	-1          "Not in Universe"               
;
label values alumpsrc alumpsrc;
label define alumpsrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elumphow elumphow;
label define elumphow
	2           "Required to withdraw"          
	1           "Voluntarily"                   
	-1          "Not in Universe"               
;
label values alumphow alumphow;
label define alumphow
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tlumptot tlumptot;
label define tlumptot
	0           "Not In Universe"               
;
label values alumptot alumptot;
label define alumptot
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elumprec elumprec;
label define elumprec
	2           "Directly rolled over"          
	1           "Actually received"             
	-1          "Not in Universe"               
;
label values alumprec alumprec;
label define alumprec
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elmproll elmproll;
label define elmproll
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values almproll almproll;
label define almproll
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elmpwher elmpwher;
label define elmpwher
	4           "OTHER"                         
	3           "IRA"                           
	2           "Individual annuity"            
	1           "Plan on job"                   
	-1          "Not in Universe"               
;
label values almpwher almpwher;
label define almpwher
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elumpent elumpent;
label define elumpent
	2           "Partial amount"                
	1           "Entire amount"                 
	-1          "Not in Universe"               
;
label values alumpent alumpent;
label define alumpent
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elmpsp01 elmpsp0t;
label define elmpsp0t
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp02 elmpsp0k;
label define elmpsp0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp03 elmpsp0l;
label define elmpsp0l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp04 elmpsp0m;
label define elmpsp0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp05 elmpsp0n;
label define elmpsp0n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp06 elmpsp0o;
label define elmpsp0o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp07 elmpsp0p;
label define elmpsp0p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp08 elmpsp0q;
label define elmpsp0q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp09 elmpsp0r;
label define elmpsp0r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp10 elmpsp1t;
label define elmpsp1t
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp11 elmpsp1k;
label define elmpsp1k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp12 elmpsp1l;
label define elmpsp1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp13 elmpsp1m;
label define elmpsp1m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp14 elmpsp1n;
label define elmpsp1n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp15 elmpsp1o;
label define elmpsp1o
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp16 elmpsp1p;
label define elmpsp1p
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp17 elmpsp1q;
label define elmpsp1q
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp18 elmpsp1r;
label define elmpsp1r
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values elmpsp19 elmpsp1s;
label define elmpsp1s
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values almpsp   almpsp; 
label define almpsp  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epenlng1 epenlngp;
label define epenlngp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epenlng2 epenlngk;
label define epenlngk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epengng3 epengngp;
label define epengngp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apenlgth apenlgth;
label define apenlgth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epennumb epennumb;
label define epennumb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apennumb apennumb;
label define apennumb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epennums epennums;
label define epennums
	-1          "Not in Universe"               
;
label values apennums apennums;
label define apennums
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epensrce epensrce;
label define epensrce
	3           "Other"                         
	2           "Respondent's former spouse's job"
	1           "Respondent's job"              
	-1          "Not in Universe"               
;
label values apensrce apensrce;
label define apensrce
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epenwhen epenwhen;
label define epenwhen
	-1          "Not in Universe"               
;
label values apenwhen apenwhen;
label define apenwhen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epenbase epenbase;
label define epenbase
	2           "Amount in individual account"  
	1           "Years of service and pay"      
	-1          "Not in Universe"               
;
label values apenbase apenbase;
label define apenbase
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epensurv epensurv;
label define epensurv
	3           "No survivor's option offered"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apensurv apensurv;
label define apensurv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epenincr epenincr;
label define epenincr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apenincr apenincr;
label define apenincr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values epencola epencola;
label define epencola
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apencola apencola;
label define apencola
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ependecr ependecr;
label define ependecr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apendecr apendecr;
label define apendecr
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tpensamt tpensamt;
label define tpensamt
	0           "Not In Universe"               
;
label values apensamt apensamt;
label define apensamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tpenamt1 tpenamtt;
label define tpenamtt
	0           "Not In Universe"               
;
label values apenamt1 apenamtt;
label define apenamtt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values elmpsrce elmpsrce;
label define elmpsrce
	3           "Other"                         
	2           "Respondent's former spouse's job"
	1           "Respondent's former job"       
	-1          "Not in Universe"               
;
label values almpsrce almpsrce;
label define almpsrce
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ejobreti ejobreti;
label define ejobreti
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ajobreti ajobreti;
label define ajobreti
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ewrk5yrs ewrk5yrs;
label define ewrk5yrs
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awrk5yrs awrk5yrs;
label define awrk5yrs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values escrepen escrepen;
label define escrepen
	2           "Business"                      
	1           "Job"                           
	-1          "Not in Universe"               
;
label values ascrepen ascrepen;
label define ascrepen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ejbindrp ejbindrp;
label define ejbindrp
	-1          "Not in Universe"               
;
label values ajbindrp ajbindrp;
label define ajbindrp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tjboccrp tjboccrp;
label define tjboccrp
	-1          "Not in Universe"               
;
label values ajboccrp ajboccrp;
label define ajboccrp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values rclwrkr  rclwrkr;
label define rclwrkr 
	7           "Active duty Armed Forces"      
	6           "Family worker without pay"     
	5           "Federal government worker"     
	4           "State government worker"       
	3           "Local government worker"       
	2           "Private not for profit employee"
	1           "Private for profit employee"   
	-1          "Not in Universe"               
;
label values aclwrkr  aclwrkr;
label define aclwrkr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values emultloc emultloc;
label define emultloc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amultloc amultloc;
label define amultloc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tnumwork tnumwork;
label define tnumwork
	5           "100 or more"                   
	4           "50 to 99"                      
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values anumwork anumwork;
label define anumwork
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values templall templall;
label define templall
	5           "100 or more"                   
	4           "50 to 99"                      
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values aemplall aemplall;
label define aemplall
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eunionyn eunionyn;
label define eunionyn
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aunionyn aunionyn;
label define aunionyn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values thrsweek thrsweek;
label define thrsweek
	-1          "Not in Universe"               
;
label values ahrsweek ahrsweek;
label define ahrsweek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ewksyrs  ewksyrs;
label define ewksyrs 
	-1          "Not in Universe"               
;
label values awksyrs  awksyrs;
label define awksyrs 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tyrswrkd tyrswrkd;
label define tyrswrkd
	-1          "Not in Universe"               
;
label values ayrswrkd ayrswrkd;
label define ayrswrkd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eyrlrftj eyrlrftj;
label define eyrlrftj
	-1          "Not in Universe"               
;
label values ayrlrftj ayrlrftj;
label define ayrlrftj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ternlev1 ternlevj;
label define ternlevj
	0           "Not In Universe"               
;
label values eernlev2 eernlevj;
label define eernlevj
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values aernleav aernleav;
label define aernleav
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ehlthpln ehlthpln;
label define ehlthpln
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahlthpln ahlthpln;
label define ahlthpln
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tbsindrp tbsindrp;
label define tbsindrp
	99          "Unable to code"                
	15          "Public administration"         
	14          "Professional and related services"
	13          "Entertainment and recreation"  
	12          "Personal services"             
	11          "Business and repair services"  
	10          "Finance, Insurance, and Real"  
	9           "Retail trade"                  
	8           "Wholesale trade Nondurable Goods"
	7           "Wholesale Trade Durable Goods" 
	6           "Transportation, Communications"
	5           "Manufacturing Durable Goods"   
	4           "Manufacturing Nondurable Goods"
	3           "Construction"                  
	2           "Mining"                        
	1           "Agriculture, forestry and"     
	-1          "Not in Universe"               
;
label values absindrp absindrp;
label define absindrp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ebsoccrp ebsoccrp;
label define ebsoccrp
	-1          "Not in Universe"               
;
label values absoccrp absoccrp;
label define absoccrp
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tmakempl tmakempl;
label define tmakempl
	5           "100 or more"                   
	4           "50 to 99"                      
	3           "25 to 49"                      
	2           "10 to 24"                      
	1           "Less than 10"                  
	-1          "Not in Universe"               
;
label values amakempl amakempl;
label define amakempl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ebusninc ebusninc;
label define ebusninc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abusninc abusninc;
label define abusninc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tbushrsw tbushrsw;
label define tbushrsw
	-1          "Not in Universe"               
;
label values abushrsw abushrsw;
label define abushrsw
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ebuswksy ebuswksy;
label define ebuswksy
	-1          "Not in Universe"               
;
label values abuswksy abuswksy;
label define abuswksy
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tbuslong tbuslong;
label define tbuslong
	-1          "Not in Universe"               
;
label values abuslong abuslong;
label define abuslong
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ebusleav ebusleav;
label define ebusleav
	-1          "Not in Universe"               
;
label values abusleav abusleav;
label define abusleav
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values tbusern1 tbusernv;
label define tbusernv
	0           "Not In Universe"               
;
label values ebusern2 ebusernv;
label define ebusernv
	4           "Per year"                      
	3           "Per month"                     
	2           "Biweekly"                      
	1           "Per week"                      
	-1          "Not in Universe"               
;
label values abusern  abusern;
label define abusern 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values ebushlth ebushlth;
label define ebushlth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values abushlth abushlth;
label define abushlth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values estdlvng estdlvng;
label define estdlvng
	-1          "Not in Universe"               
;
label values astdlvng astdlvng;
label define astdlvng
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hotdeck)"
	0           "Not imputed"                   
;
label values eaicunv  eaicunv;
label define eaicunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values epvdcare epvdcare;
label define epvdcare
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvdcare apvdcare;
label define apvdcare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecarehhm ecarehhm;
label define ecarehhm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acarehhm acarehhm;
label define acarehhm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tcarenum tcarenum;
label define tcarenum
	-1          "Not in Universe"               
;
label values acarenum acarenum;
label define acarenum
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehhm1    ehhm1l; 
label define ehhm1l  
	9999        "Unknown person number"         
	-1          "Not in Universe"               
;
label values ahhm1    ahhm1l; 
label define ahhm1l  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelt01  erelt01l;
label define erelt01l
	9           "Relationship not identified"   
	8           "Nonrelative"                   
	7           "Other relative"                
	6           "Brother/sister"                
	5           "Parent"                        
	4           "Grandchild"                    
	3           "Child"                         
	2           "Partner"                       
	1           "Spouse"                        
	-1          "Not in Universe"               
;
label values arelt01  arelt01l;
label define arelt01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tyrst01  tyrst01l;
label define tyrst01l
	12          "21+ years of care provided"    
	11          "16 to 20 years of care provided"
	10          "13 to 15 years of care provided"
	9           "11 to 12 years of care provided"
	8           "10 years of care provided"     
	7           "8 to 9 years of care provided" 
	6           "6 to 7 years of care provided" 
	5           "5 years of care provided"      
	4           "4 years of care provided"      
	3           "3 years of care provided"      
	2           "2 years of care provided"      
	1           "1 year of care provided"       
	0           "Less than 1 year of care provided"
	-1          "Not in Universe"               
;
label values ayrst01  ayrst01l;
label define ayrst01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadlt01  eadlt01l;
label define eadlt01l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadlt01  aadlt01l;
label define aadlt01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedt01  emedt01l;
label define emedt01l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedt01  amedt01l;
label define amedt01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emnyt01  emnyt01l;
label define emnyt01l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amnyt01  amnyt01l;
label define amnyt01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoutt01  eoutt01l;
label define eoutt01l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoutt01  aoutt01l;
label define aoutt01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothlp01 eothlp0m;
label define eothlp0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothlp01 aothlp0m;
label define aothlp0m
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst01  thrst01l;
label define thrst01l
	19          "160+ hours of care provided"   
	18          "120 to 159 hours of care provided"
	17          "100 to 119 hours of care provided"
	16          "81 to 99 hours of care provided"
	15          "61 to 80 hours of care provided"
	14          "51 to 60 hours of care provided"
	13          "42 to 50 hours of care provided"
	12          "40 to 41 hours of care provided"
	11          "30 to 39 hours of care provided"
	10          "25 to 29 hours of care provided"
	9           "21 to 24 hours of care provided"
	8           "19 to 20 hours of care provided"
	7           "15 to 18 hours of care provided"
	6           "12 to 14 hours of care provided"
	5           "10 to 11 hours of care provided"
	4           "7 to 9 hours of care provided" 
	3           "5 to 6 hours of care provided" 
	2           "3 to 4 hours of care provided" 
	1           "1 to 2 hours of care provided" 
	-1          "Not in Universe"               
;
label values ahrst01  ahrst01l;
label define ahrst01l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eopt01   eopt01l;
label define eopt01l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aopt01   aopt01l;
label define aopt01l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst02  thrst02l;
label define thrst02l
	18          "121+ hours of unpaid care provided"
	17          "100 to 120 hours of unpaid care"
	16          "76 to 99 hours of unpaid care" 
	15          "61 to 75 hours of unpaid care" 
	14          "51 to 60 hours of unpaid care" 
	13          "41 to 50 hours of unpaid care" 
	12          "31 to 40 hours of unpaid care" 
	11          "26 to 30 hours of unpaid care" 
	10          "21 to 25 hours of unpaid care" 
	9           "20 hours of unpaid care provided"
	8           "15 to 19 hours of unpaid care" 
	7           "11 to 14 hours of unpaid care" 
	6           "9 to 10 hours of unpaid care"  
	5           "7 to 8 hours of unpaid care"   
	4           "5 to 6 hours of unpaid care"   
	3           "3 to 4 hours of unpaid care"   
	2           "2 hours of unpaid care provided"
	1           "1 hour of unpaid care provided"
	-1          "Not in Universe"               
;
label values ahrst02  ahrst02l;
label define ahrst02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehct01   ehct01l;
label define ehct01l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahct01   ahct01l;
label define ahct01l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst03  thrst03l;
label define thrst03l
	15          "41+ hours of professional care"
	14          "36 to 40 hours of professional"
	13          "23 to 35 hours of professional"
	12          "21 to 22 hours of professional"
	11          "16 to 20 hours of professional"
	10          "15 hours of professional care" 
	9           "11 to 14 hours of professional"
	8           "9 to 10 hours of professional" 
	7           "7 to 8 hours of professional care"
	6           "6 hours of professional care"  
	5           "5 hours of professional care"  
	4           "4 hours of professional care"  
	3           "3 hours of professional care"  
	2           "2 hours of professional care"  
	1           "1 hour of professional care"   
	-1          "Not in Universe"               
;
label values ahrst03  ahrst03l;
label define ahrst03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehhm2    ehhm2l; 
label define ehhm2l  
	9999        "Unknown person number"         
	-1          "Not in Universe"               
;
label values ahhm2    ahhm2l; 
label define ahhm2l  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelt02  erelt02l;
label define erelt02l
	9           "Relationship not identified"   
	8           "Nonrelative"                   
	7           "Other relative"                
	6           "Brother/sister"                
	5           "Parent"                        
	4           "Grandchild"                    
	3           "Child"                         
	2           "Partner"                       
	1           "Spouse"                        
	-1          "Not in Universe"               
;
label values arelt02  arelt02l;
label define arelt02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tyrst02  tyrst02l;
label define tyrst02l
	9           "20+ years of care provided"    
	8           "15 to 19 years of care provided"
	7           "13 to 14 years of care provided"
	6           "11 to 12 years of care provided"
	5           "10 years of care provided"     
	4           "4 to 9 years of care provided" 
	3           "3 years of care provided"      
	2           "2 years of care provided"      
	1           "1 year of care provided"       
	0           "Less than 1 year of care provided"
	-1          "Not in Universe"               
;
label values ayrst02  ayrst02l;
label define ayrst02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadlt02  eadlt02l;
label define eadlt02l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadlt02  aadlt02l;
label define aadlt02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedt02  emedt02l;
label define emedt02l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedt02  amedt02l;
label define amedt02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emnyt02  emnyt02l;
label define emnyt02l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amnyt02  amnyt02l;
label define amnyt02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoutt02  eoutt02l;
label define eoutt02l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoutt02  aoutt02l;
label define aoutt02l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothlp02 eothlp0k;
label define eothlp0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothlp02 aothlp0k;
label define aothlp0k
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst04  thrst04l;
label define thrst04l
	13          "116+ hours of care provided"   
	12          "81 to 115 hours of care provided"
	11          "66 to 80 hours of care provided"
	10          "41 to 65 hours of care provided"
	9           "36 to 40 hours of care provided"
	8           "35 hours of care provided"     
	7           "21 to 34 hours of care provided"
	6           "16 to 20 hours of care provided"
	5           "11 to 15 hours of care provided"
	4           "10 hours of care provided"     
	3           "4 to 9 hours of care provided" 
	2           "3 hours of care provided"      
	1           "1 to 2 hours of care provided" 
	-1          "Not in Universe"               
;
label values ahrst04  ahrst04l;
label define ahrst04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eopt02   eopt02l;
label define eopt02l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aopt02   aopt02l;
label define aopt02l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imutation"           
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst05  thrst05l;
label define thrst05l
	5           "40+ hours of unpaid care provided"
	4           "20 to 39 hours of unpaid care" 
	3           "10 to 19 hours of unpaid care" 
	2           "4 to 9 hours of unpaid care"   
	1           "1 to 3 hours of unpaid care"   
	-1          "Not in Universe"               
;
label values ahrst05  ahrst05l;
label define ahrst05l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehct02   ehct02l;
label define ehct02l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahct02   ahct02l;
label define ahct02l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst06  thrst06l;
label define thrst06l
	3           "15+ hours of professional care"
	2           "3 to 14 hours of professional" 
	1           "1 to 2 hours of professional care"
	-1          "Not in Universe"               
;
label values ahrst06  ahrst06l;
label define ahrst06l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecarenhm ecarenhm;
label define ecarenhm
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acarenhm acarenhm;
label define acarenhm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tnumnhm  tnumnhm;
label define tnumnhm 
	-1          "Not in Universe"               
;
label values anumnhm  anumnhm;
label define anumnhm 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelt03  erelt03l;
label define erelt03l
	9           "Relationship not identified"   
	8           "Nonrelative"                   
	7           "Other relative"                
	6           "Brother/sister"                
	5           "Parent"                        
	4           "Grandchild"                    
	3           "Child"                         
	2           "Partner"                       
	1           "Spouse"                        
	-1          "Not in Universe"               
;
label values arelt03  arelt03l;
label define arelt03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tyrst03  tyrst03l;
label define tyrst03l
	9           "20+ years of care provided"    
	8           "11 to 19 years of care provided"
	7           "8 to 10 years of care provided"
	6           "6 to 7 years of care provided" 
	5           "5 years of care provided"      
	4           "4 years of care provided"      
	3           "3 years of care provided"      
	2           "2 years of care provided"      
	1           "1 year of care provided"       
	0           "Less than 1 year of care provided"
	-1          "Not in Universe"               
;
label values ayrst03  ayrst03l;
label define ayrst03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eresof3  eresof3l;
label define eresof3l
	3           "Other"                         
	2           "Care facility"                 
	1           "House or apartment"            
	-1          "Not in Universe"               
;
label values aresof3  aresof3l;
label define aresof3l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadlt03  eadlt03l;
label define eadlt03l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadlt03  aadlt03l;
label define aadlt03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedt03  emedt03l;
label define emedt03l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedt03  amedt03l;
label define amedt03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emnyt03  emnyt03l;
label define emnyt03l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amnyt03  amnyt03l;
label define amnyt03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoutt03  eoutt03l;
label define eoutt03l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoutt03  aoutt03l;
label define aoutt03l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothlp03 eothlp0l;
label define eothlp0l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothlp03 aothlp0l;
label define aothlp0l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst07  thrst07l;
label define thrst07l
	14          "41+ hours of care provided"    
	13          "30 to 40 hours of care provided"
	12          "21 to 29 hours of care provided"
	11          "19 to 20 hours of care provided"
	10          "15 to 18 hours of care provided"
	9           "12 to 14  hours of care provided"
	8           "10 to 11 hours of care provided"
	7           "8 to 9 hours of care provided" 
	6           "6 to 7 hours of care provided" 
	5           "5 hours of care provided"      
	4           "4 hours of care provided"      
	3           "3 hours of care provided"      
	2           "2 hours of care provided"      
	1           "1 hour of care provided"       
	-1          "Not in Universe"               
;
label values ahrst07  ahrst07l;
label define ahrst07l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eopt03   eopt03l;
label define eopt03l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aopt03   aopt03l;
label define aopt03l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst08  thrst08l;
label define thrst08l
	16          "141+ hours of unpaid care provided"
	15          "91 to 140 hours of unpaid care"
	14          "61 to 90 hours of unpaid care" 
	13          "41 to 60 hours of unpaid care" 
	12          "31 to 40 hours of unpaid care" 
	11          "26 to 30 hours of unpaid care" 
	10          "21 to 25 hours of unpaid care" 
	9           "16 to 20 hours of unpaid care" 
	8           "11 to 15 hours of unpaid care" 
	7           "10 hours of unpaid care provided"
	6           "8 to 9 hours of unpaid care"   
	5           "6 to 7 hours of unpaid care"   
	4           "5 hours of unpaid care provided"
	3           "4 hours of unpaid care provided"
	2           "3 hours of unpaid care provided"
	1           "1 to 2 hour of unpaid care"    
	-1          "Not in Universe"               
;
label values ahrst08  ahrst08l;
label define ahrst08l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecompt03 ecompt0m;
label define ecompt0m
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acompt03 acompt0m;
label define acompt0m
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehct03   ehct03l;
label define ehct03l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahct03   ahct03l;
label define ahct03l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst09  thrst09l;
label define thrst09l
	15          "100+ hours of care provided"   
	14          "41 to 99 hours of care provided"
	13          "37 to 40 hours of care provided"
	12          "25 to 36 hours of care provided"
	11          "21 to 24 hours of care provided"
	10          "18 to 20 hours of care provided"
	9           "12 to 17 hours of care provided"
	8           "10 to 11 hours of care provided"
	7           "8 to 9 hours of care provided" 
	6           "6 to 7 hours of care provided" 
	5           "5 hours of care provided"      
	4           "4 hours of care provided"      
	3           "3 hours of care provided"      
	2           "2 hours of care provided"      
	1           "1 hour of care provided"       
	-1          "Not in Universe"               
;
label values ahrst09  ahrst09l;
label define ahrst09l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelt04  erelt04l;
label define erelt04l
	9           "Relationship not identified"   
	8           "Nonrelative"                   
	7           "Other relative"                
	6           "Brother/sister"                
	5           "Parent"                        
	4           "Grandchild"                    
	3           "Child"                         
	2           "Partner"                       
	1           "Spouse"                        
	-1          "Not in Universe"               
;
label values arelt04  arelt04l;
label define arelt04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tyrst04  tyrst04l;
label define tyrst04l
	8           "15+ years of care provided"    
	7           "10 to 14 years of care provided"
	6           "6 to 9 years of care provided" 
	5           "5 years of care provided"      
	4           "4 years of care provided"      
	3           "3 years of care provided"      
	2           "2 years of care provided"      
	1           "1 year of care provided"       
	0           "Less than 1 year of care provided"
	-1          "Not in Universe"               
;
label values ayrst04  ayrst04l;
label define ayrst04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eresof4  eresof4l;
label define eresof4l
	3           "Other"                         
	2           "Care facility"                 
	1           "House or apartment"            
	-1          "Not in Universe"               
;
label values aresof4  aresof4l;
label define aresof4l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eadlt04  eadlt04l;
label define eadlt04l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aadlt04  aadlt04l;
label define aadlt04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emedt04  emedt04l;
label define emedt04l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amedt04  amedt04l;
label define amedt04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emnyt04  emnyt04l;
label define emnyt04l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amnyt04  amnyt04l;
label define amnyt04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eoutt04  eoutt04l;
label define eoutt04l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aoutt04  aoutt04l;
label define aoutt04l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothlp04 eothlp0n;
label define eothlp0n
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothlp04 aothlp0n;
label define aothlp0n
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst10  thrst10l;
label define thrst10l
	12          "21+ hours of care provided"    
	11          "16 to 20 hours of care provided"
	10          "11 to 15 hours of care provided"
	9           "10 hours of care provided"     
	8           "8 to 9 hours of care provided" 
	7           "7 hours of care provided"      
	6           "6 hours of care provided"      
	5           "5 hours of care provided"      
	4           "4 hours of care provided"      
	3           "3 hours of care provided"      
	2           "2 hours of care provided"      
	1           "1 hour of care provided"       
	-1          "Not in Universe"               
;
label values ahrst10  ahrst10l;
label define ahrst10l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eopt04   eopt04l;
label define eopt04l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aopt04   aopt04l;
label define aopt04l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst11  thrst11l;
label define thrst11l
	13          "141+ hours of unpaid care provided"
	12          "81 to 140 hours of unpaid care"
	11          "41 to 80 hours of unpaid care" 
	10          "36 to 40 hours of unpaid care" 
	9           "21 to 35 hours of unpaid care" 
	8           "11 to 20 hours of unpaid care" 
	7           "8 to 10 hours of unpaid care"  
	6           "6 to 7 hours of unpaid care"   
	5           "5 hours of unpaid care provided"
	4           "4 hours of unpaid care provided"
	3           "3 hours of unpaid care provided"
	2           "2 hours of unpaid care provided"
	1           "1 hour of unpaid care provided"
	-1          "Not in Universe"               
;
label values ahrst11  ahrst11l;
label define ahrst11l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecompt04 ecompt0k;
label define ecompt0k
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acompt04 acompt0k;
label define acompt0k
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehct04   ehct04l;
label define ehct04l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahct04   ahct04l;
label define ahct04l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thrst12  thrst12l;
label define thrst12l
	7           "81+ Hours of care provided"    
	6           "41 to 80 Hours of care provided"
	5           "10 to 40 Hours of care provided"
	4           "7 to 9 hours of care provided" 
	3           "5 to 6 hours of care provided" 
	2           "3 to 4 hours of care provided" 
	1           "1 to 2 hours of care provided" 
	-1          "Not in Universe"               
;
label values ahrst12  ahrst12l;
label define ahrst12l
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
