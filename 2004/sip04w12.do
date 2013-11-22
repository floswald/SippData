
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
label values srefmon  srefmon;
label define srefmon 
	1           "First Reference month"         
	2           "Second Reference month"        
	3           "Third Reference month"         
	4           "Fourth Reference month"        
;
label values rhcalmn  rhcalmn;
label define rhcalmn 
	1           "January"                       
	2           "February"                      
	3           "March"                         
	4           "April"                         
	5           "May"                           
	6           "June"                          
	7           "July"                          
	8           "August"                        
	9           "September"                     
	10          "October"                       
	11          "November"                      
	12          "December"                      
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
label values tmovrflg tmovrflg;
label define tmovrflg
	-1          "Not in Sample (Not in universe"
	0           "New to sample"                 
	1           "Nonmover"                      
	2           "Moved, same county"            
	3           "Moved, different county within"
	4           "Moved, different state"        
	5           "Moved, unable to follow (Type D)"
	6           "Moved, out of scope (Type C)"  
;
label values eoutcome eoutcome;
label define eoutcome
	201         "Completed interview"           
	203         "Compl. partial- missing data; no TYPE-Z"
	207         "Complete partial - TYPE-Z; no futher followup"
	213         "TYPE-A, language problem"      
	216         "TYPE-A, no one home (noh)"     
	217         "TYPE-A, temporarily absent (ta)"
	218         "TYPE-A, hh refused"            
	219         "TYPE-A, other occupied (specify)"
	234         "TYPE-B, entire hh institut. or temp. ineligible"
	248         "TYPE-C, other (specify)"       
	249         "TYPE-C, sample adjustment"     
	250         "TYPE-C, hh deceased"           
	251         "TYPE-C, moved out of country"  
	252         "TYPE-C, living in armed forces barracks"
	253         "TYPE-C, on active duty in Armed Forces"
	254         "TYPE-C, no one over age 15 years in household"
	255         "TYPE-C, no Wave 1 persons remaining in household"
	260         "TYPE-D, moved address unknown -SPAWN"
	261         "TYPE-D, moved within U.S. but outside SIPP -SPAWN"
	262         "TYPE-C, merged with another SIPP household"
	270         "TYPE-C, mover, no longer located in FR's area -PARENT"
	271         "TYPE-C, mover, new address located in same FR's area -PARENT"
	280         "TYPE-D, mover, no longer located in FR's assignment area -SPAWN"
;
label values rhtype   rhtype; 
label define rhtype  
	1           "Family hh - Married couple"    
	2           "Family hh - Male householder"  
	3           "Family hh - Female householder"
	4           "Nonfamily hh - Male householder nonfamily household"
	5           "Nonfamily hh - Female householder nonfamily household"
	6           "Group Quarters"                
;
label values whfnwgt  whfnwgt;
label define whfnwgt 
	0           "0000:999999.9999 .Weight"      
;
label values tmetro   tmetro; 
label define tmetro  
	1           "Metro"                         
	2           "Not metro"                     
	3           "Not Identified"                
;
label values rhchange rhchange;
label define rhchange
	1           "Change occurred"               
	2           "No change occurred"            
;
label values etenure  etenure;
label define etenure 
	1           "Owned or being bought by ... or someone in ...'s household"
	2           "Rented"                        
	3           "Occupied without payment of cash rent"
;
label values atenure  atenure;
label define atenure 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epubhse  epubhse;
label define epubhse 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apubhse  apubhse;
label define apubhse 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egvtrnt  egvtrnt;
label define egvtrnt 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvtrnt  agvtrnt;
label define agvtrnt 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmthrnt  tmthrnt;
label define tmthrnt 
	0           "None or not in universe"       
;
label values amthrnt  amthrnt;
label define amthrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ewrsect8 ewrsectt;
label define ewrsectt
	1           "Section 8"                     
	2           "Some other government program" 
	-1          "Not in Universe"               
;
label values awrsect8 awrsectt;
label define awrsectt
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eutilyn  eutilyn;
label define eutilyn 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values autilyn  autilyn;
label define autilyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eegyast  eegyast;
label define eegyast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aegyast  aegyast;
label define aegyast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eegypmt1 eegypmtt;
label define eegypmtt
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eegypmt2 eegypmtk;
label define eegypmtk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eegypmt3 eegypmtl;
label define eegypmtl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aegypmt  aegypmt;
label define aegypmt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eegyamt  eegyamt;
label define eegyamt 
	0           "None or not in universe"       
;
label values aegyamt  aegyamt;
label define aegyamt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehotlunc ehotlunc;
label define ehotlunc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahotlunc ahotlunc;
label define ahotlunc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rnklun   rnklun; 
label define rnklun  
	-1          "Not in Universe"               
;
label values efreelun efreelun;
label define efreelun
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afreelun afreelun;
label define afreelun
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efrerdln efrerdln;
label define efrerdln
	1           "Free lunch"                    
	2           "Reduced-price lunch"           
	-1          "Not in Universe"               
;
label values afrerdln afrerdln;
label define afrerdln
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebrkfst  ebrkfst;
label define ebrkfst 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abrkfst  abrkfst;
label define abrkfst 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation"            
	4           "Statistical or logical imputation using previous wave data"
;
label values rnkbrk   rnkbrk; 
label define rnkbrk  
	-1          "Not in Universe"               
;
label values efreebrk efreebrk;
label define efreebrk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afreebrk afreebrk;
label define afreebrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efrerdbk efrerdbk;
label define efrerdbk
	1           "Free breakfast"                
	2           "Reduced-price breakfast"       
	-1          "Not in Universe"               
;
label values afrerdbk afrerdbk;
label define afrerdbk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rprgques rprgques;
label define rprgques
	0           "Residence this month not in sample at intrvw - no data transferred"
	1           "Res. this mo. was intrvwed address - program data collected"
	2           "Res. this mo. in sample but nonintrvw - no program data coll"
	3           "Res. this mo. not in sample at intrvw - program data transferred"
;
label values rhnbrf   rhnbrf; 
label define rhnbrf  
	2           "No"                            
	1           "Yes"                           
;
label values rhcbrf   rhcbrf; 
label define rhcbrf  
	2           "No"                            
	1           "Yes"                           
;
label values rhmtrf   rhmtrf; 
label define rhmtrf  
	2           "No"                            
	1           "Yes"                           
;
label values rfid2    rfid2l; 
label define rfid2l  
	-1          "Not in Universe"               
;
label values efspouse efspouse;
label define efspouse
	9999        "Persons with EFKIND=2 or 3"    
;
label values eftype   eftype; 
label define eftype  
	1           "Primary family (including those"
	3           "Unrelated Subfamily"           
	4           "Primary Individual"            
	5           "Secondary individual"          
;
label values rfchange rfchange;
label define rfchange
	1           "Change occurred"               
	2           "No change occurred"            
;
label values efkind   efkind; 
label define efkind  
	1           "Headed by Husband/Wife"        
	2           "Male Headed"                   
	3           "Female Headed"                 
;
label values wffinwgt wffinwgt;
label define wffinwgt
	0           "0000:999999.9999 .Person weight for family"
;
label values rsid     rsid;   
label define rsid    
	-1          "Not in Universe"               
;
label values esfnp    esfnp;  
label define esfnp   
	-1          "Not in Universe"               
;
label values esfrfper esfrfper;
label define esfrfper
	-1          "Not in Universe"               
;
label values esfspse  esfspse;
label define esfspse 
	9999        "No spouse in subfamily"        
	-1          "Not in Universe"               
;
label values esftype  esftype;
label define esftype 
	2           "Related Subfamily"             
	-1          "Not in Universe"               
;
label values esfkind  esfkind;
label define esfkind 
	1           "Headed by Husband/Wife"        
	2           "Male Headed"                   
	3           "Female Headed"                 
	-1          "Not in Universe"               
;
label values rschange rschange;
label define rschange
	1           "Change occurred"               
	2           "No change occurred"            
	0           "Not In Universe"               
;
label values esownkid esownkid;
label define esownkid
	0           "No children"                   
	-1          "Not in Universe"               
;
label values esoklt18 esoklt1d;
label define esoklt1d
	0           "No children"                   
	-1          "Not in Universe"               
;
label values wsfinwgt wsfinwgt;
label define wsfinwgt
	0           "0000:999999.9999 .Weight of related subfamily"
	-1          "Not in Universe"               
;
label values tsfearn  tsfearn;
label define tsfearn 
	0           "None or not in universe"       
;
label values tsprpinc tsprpinc;
label define tsprpinc
	0           "None or not in universe"       
;
label values tstrninc tstrninc;
label define tstrninc
	0           "None or not in universe"       
;
label values tsothinc tsothinc;
label define tsothinc
	0           "None or not in universe"       
;
label values tstotinc tstotinc;
label define tstotinc
	0           "None or not in universe"       
;
label values rsfpov   rsfpov; 
label define rsfpov  
	0           "Not In Universe"               
;
label values tspndist tspndist;
label define tspndist
	0           "None or not in universe"       
;
label values tslumpsm tslumpsm;
label define tslumpsm
	0           "None or not in universe"       
;
label values tssocsec tssocsec;
label define tssocsec
	0           "None or not in universe"       
;
label values tsssi    tsssi;  
label define tsssi   
	0           "None or not in universe"       
;
label values tsvets   tsvets; 
label define tsvets  
	0           "None or not in universe"       
;
label values tsunemp  tsunemp;
label define tsunemp 
	0           "None or not in universe"       
;
label values tsafdc   tsafdc; 
label define tsafdc  
	0           "None or not in universe"       
;
label values tsfdstp  tsfdstp;
label define tsfdstp 
	0           "None or not in universe"       
;
label values eppintvw eppintvw;
label define eppintvw
	1           "Interview (self)"              
	2           "Interview (proxy)"             
	3           "Noninterview - Type Z"         
	4           "Noninterview - pseudo Type Z. Left sample during the reference period"
	5           "Children under 15 during reference period"
;
label values epopstat epopstat;
label define epopstat
	1           "Adult (15 years of age or older)"
	2           "Child (Under 15 years of age)" 
;
label values abmnth   abmnth; 
label define abmnth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values abyear   abyear; 
label define abyear  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values esex     esex;   
label define esex    
	1           "MALE"                          
	2           "FEMALE"                        
;
label values asex     asex;   
label define asex    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values erace    erace;  
label define erace   
	1           "White alone"                   
	2           "Black alone"                   
	3           "Asian alone"                   
	4           "Residual"                      
;
label values arace    arace;  
label define arace   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values eorigin  eorigin;
label define eorigin 
	2           "No"                            
	1           "Yes"                           
;
label values aorigin  aorigin;
label define aorigin 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values ebornus  ebornus;
label define ebornus 
	2           "No"                            
	1           "Yes"                           
;
label values abornus  abornus;
label define abornus 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values ecitizen ecitizen;
label define ecitizen
	2           "No"                            
	1           "Yes"                           
;
label values acitizen acitizen;
label define acitizen
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values enatcit  enatcit;
label define enatcit 
	1           "Naturalized"                   
	2           "Through you or your spouse's military service in U.S. Armed Forces"
	3           "Adopted by U.S. citizen parent or parents"
	4           "Born in a U.S. Island Area or born in the United States"
	5           "Born abroad of U.S. citizen parent or parents"
	-1          "Not in Universe"               
;
label values anatcit  anatcit;
label define anatcit 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values espeak   espeak; 
label define espeak  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aspeak   aspeak; 
label define aspeak  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values tlang1   tlang1l;
label define tlang1l 
	1           "Spanish"                       
	2           "French (include Creole)"       
	3           "German"                        
	4           "Slavic languages (Polish, Russian, Serbo-Croatin, Bosnian, Yugoslavian)"
	5           "Other Indo-European languages (Greek, Italian, Portuguese, Hindi,Urdu)"
	6           "Chinese, Mandarin, Cantonese"  
	7           "Tagalog, Philipino"            
	8           "Vietnamese"                    
	9           "Other Asian languages (Japanese, Korean)"
	10          "Other And Unspecified Languages"
	-1          "Not in Universe"               
;
label values alang1   alang1l;
label define alang1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values ehowwell ehowwell;
label define ehowwell
	1           "Very well"                     
	2           "Well"                          
	3           "Not well"                      
	4           "Not at all"                    
	-1          "Not in Universe"               
;
label values ahowwell ahowwell;
label define ahowwell
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values rlngisol rlngisol;
label define rlngisol
	1           "In linguistically isolated household"
	2           "Not in linguistically isolated household"
	-1          "Not in Universe"               
;
label values uevrwid  uevrwid;
label define uevrwid 
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	6           "Don't know"                    
	7           "Refused"                       
;
label values uevrdiv  uevrdiv;
label define uevrdiv 
	0           "Not answered"                  
	1           "Yes"                           
	2           "No"                            
	6           "Don't know"                    
	7           "Refused"                       
;
label values eafnow   eafnow; 
label define eafnow  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafnow   aafnow; 
label define aafnow  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eafever  eafever;
label define eafever 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafever  aafever;
label define aafever 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values uaf1     uaf1l;  
label define uaf1l   
	0           "Not answered"                  
	1           "August 1990 to the present (including Persian Gulf War)"
	6           "Don't know"                    
	7           "Refuse"                        
;
label values uaf2     uaf2l;  
label define uaf2l   
	0           "Not answered"                  
	2           "September 1980 to July 1990"   
;
label values uaf3     uaf3l;  
label define uaf3l   
	0           "Not answered"                  
	3           "May 1975 to August 1980"       
;
label values uaf4     uaf4l;  
label define uaf4l   
	0           "Not answered"                  
	4           "August 1964 to April 1975 (Vietnam Era)"
;
label values uaf5     uaf5l;  
label define uaf5l   
	0           "Not answered"                  
	5           "Some other time period (other than those in UAF1-UAF4)"
;
label values evayn    evayn;  
label define evayn   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avayn    avayn;  
label define avayn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values evettyp  evettyp;
label define evettyp 
	1           "Service-connected disability compensation"
	2           "Survivor Benefits"             
	3           "Veteran's Pension"             
	4           "Other Veteran's Payments"      
	-1          "Not in Universe"               
;
label values avettyp  avettyp;
label define avettyp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values evaques  evaques;
label define evaques 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avaques  avaques;
label define avaques 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values wpfinwgt wpfinwgt;
label define wpfinwgt
	0           "0000:999999.9999 .Final person weight"
;
label values esfr     esfr;   
label define esfr    
	1           "Reference person of a related or unrelated subfamily"
	2           "Spouse of reference person of a related or unrelated subfamily"
	3           "Child (under 18) of reference person of related or unrelated subfamily"
	0           "Not In Universe"               
;
label values esft     esft;   
label define esft    
	0           "Primary family"                
	1           "Secondary individual (not a family member)"
	2           "Unrelated subfamily"           
	3           "Related subfamily"             
	4           "Primary Individual"            
;
label values tage     tage;   
label define tage    
	0           "Less than 1 full year old"     
;
label values aage     aage;   
label define aage    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values errp     errp;   
label define errp    
	1           "Reference person with related persons in household"
	2           "Reference Person without related persons in household"
	3           "Spouse of reference person"    
	4           "Child of reference person"     
	5           "Grandchild of reference person"
	6           "Parent of reference person"    
	7           "Brother/sister of reference person"
	8           "Other relative of reference person"
	9           "Foster child of reference person"
	10          "Unmarried partner of reference person"
	11          "Housemate/roommate"            
	12          "Roomer/boarder"                
	13          "Other non-relative of reference person"
;
label values arrp     arrp;   
label define arrp    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
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
label values ams      ams;    
label define ams     
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values epnspous epnspous;
label define epnspous
	9999        "Spouse not in household or person not married"
;
label values apnspous apnspous;
label define apnspous
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values epnmom   epnmom; 
label define epnmom  
	9999        "No mother in household"        
;
label values apnmom   apnmom; 
label define apnmom  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values epndad   epndad; 
label define epndad  
	9999        "No father in household"        
;
label values apndad   apndad; 
label define apndad  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values epnguard epnguard;
label define epnguard
	9999        "Guardian not in household"     
	-1          "Not in Universe"               
;
label values apnguard apnguard;
label define apnguard
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values etypmom  etypmom;
label define etypmom 
	1           "Biological or natural child"   
	2           "Stepchild"                     
	3           "Adopted child"                 
	-1          "Not in Universe"               
;
label values atypmom  atypmom;
label define atypmom 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values etypdad  etypdad;
label define etypdad 
	1           "Biological or natural child"   
	2           "Stepchild"                     
	3           "Adopted child"                 
	-1          "Not in Universe"               
;
label values atypdad  atypdad;
label define atypdad 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values rdesgpnt rdesgpnt;
label define rdesgpnt
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ulftmain ulftmain;
label define ulftmain
	0           "Not answered"                  
	1           "Deceased"                      
	2           "Institutionalized"             
	3           "On active duty in the Armed Forces"
	4           "Moved outside of U.S."         
	5           "Separation or divorce"         
	6           "Marriage"                      
	7           "Became employed/unemployed"    
	8           "Due to job change - other"     
	9           "Listed in error in prior wave" 
	10          "Other"                         
	11          "Moved to type C household"     
;
label values uentmain uentmain;
label define uentmain
	0           "Not answered"                  
	1           "Birth"                         
	2           "Marriage"                      
	3           "Returned to household after missing one or more waves"
	4           "Due to separation or divorce"  
	5           "From an institution"           
	6           "From Armed  Forces barracks"   
	7           "From outside the U.S."         
	8           "Should have been listed as member in previous wave"
	9           "Became employed/unemployed"    
	10          "Job change - other"            
	11          "Lived at this address before sample person{s} entered"
	12          "Other"                         
;
label values tpearn   tpearn; 
label define tpearn  
	0           "None or not in universe"       
;
label values tpprpinc tpprpinc;
label define tpprpinc
	0           "None or not in universe"       
;
label values tptrninc tptrninc;
label define tptrninc
	0           "None or not in universe"       
;
label values tpothinc tpothinc;
label define tpothinc
	0           "None or not in universe"       
;
label values tptotinc tptotinc;
label define tptotinc
	0           "None or not in universe"       
;
label values tppndist tppndist;
label define tppndist
	0           "None or not in universe"       
;
label values tplumpsm tplumpsm;
label define tplumpsm
	0           "None or not in universe"       
;
label values ehtlnyn  ehtlnyn;
label define ehtlnyn 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahtlnyn  ahtlnyn;
label define ahtlnyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebkfsyn  ebkfsyn;
label define ebkfsyn 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abkfsyn  abkfsyn;
label define abkfsyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rcutyp01 rcutyp0n;
label define rcutyp0n
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown01 rcuown0n;
label define rcuown0n
	0           "Not In Universe"               
;
label values rcutyp03 rcutyp0k;
label define rcutyp0k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown03 rcuown0k;
label define rcuown0k
	0           "Not In Universe"               
;
label values rcutyp04 rcutyp0l;
label define rcutyp0l
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown04 rcuown0l;
label define rcuown0l
	0           "Not In Universe"               
;
label values rcutyp08 rcutyp0m;
label define rcutyp0m
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown8a rcuown8a;
label define rcuown8a
	0           "Not In Universe"               
;
label values rcuown8b rcuown8b;
label define rcuown8b
	0           "Not In Universe"               
;
label values rcutyp20 rcutyp2b;
label define rcutyp2b
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown20 rcuown2b;
label define rcuown2b
	0           "Not In Universe"               
;
label values rcutyp21 rcutyp2k;
label define rcutyp2k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow21a rcuow21a;
label define rcuow21a
	0           "Not In Universe"               
;
label values rcuow21b rcuow21b;
label define rcuow21b
	0           "Not In Universe"               
;
label values rcutyp23 rcutyp2l;
label define rcutyp2l
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown23 rcuown2k;
label define rcuown2k
	0           "Not In Universe"               
;
label values rcutyp24 rcutyp2m;
label define rcutyp2m
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow24a rcuow24a;
label define rcuow24a
	0           "Not In Universe"               
;
label values rcuow24b rcuow24b;
label define rcuow24b
	0           "Not In Universe"               
;
label values rcutyp25 rcutyp2n;
label define rcutyp2n
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown25 rcuown2l;
label define rcuown2l
	0           "Not In Universe"               
;
label values rcutyp27 rcutyp2o;
label define rcutyp2o
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown27 rcuown2m;
label define rcuown2m
	0           "Not In Universe"               
;
label values rcutyp57 rcutyp5b;
label define rcutyp5b
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown57 rcuown5b;
label define rcuown5b
	0           "Not In Universe"               
;
label values rcutyp58 rcutyp5k;
label define rcutyp5k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow58a rcuow58a;
label define rcuow58a
	0           "Not In Universe"               
;
label values rcuow58b rcuow58b;
label define rcuow58b
	0           "Not In Universe"               
;
label values renroll  renroll;
label define renroll 
	1           "Enrolled full-time"            
	2           "Enrolled part-time"            
	3           "Not enrolled"                  
	-1          "Not in Universe"               
;
label values arenroll arenroll;
label define arenroll
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values eenrlm   eenrlm; 
label define eenrlm  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aenrlm   aenrlm; 
label define aenrlm  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values renrlma  renrlma;
label define renrlma 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eenlevel eenlevel;
label define eenlevel
	1           "Elementary grades 1-8"         
	2           "High school grades 9-12"       
	3           "College year 1 (freshman)"     
	4           "College year 2 (sophomore)"    
	5           "College year 3 (junior)"       
	6           "College year 4 (senior)"       
	7           "First year graduate or professional school"
	8           "Second year or higher in graduate or professional school"
	9           "Vocational, technical, or business school beyond high school level"
	10          "Enrolled in college, but not working towards a degree"
	-1          "Not in Universe"               
;
label values aenlevel aenlevel;
label define aenlevel
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values eedfund  eedfund;
label define eedfund 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aedfund  aedfund;
label define aedfund 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values easst01  easst01l;
label define easst01l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst03  easst03l;
label define easst03l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst04  easst04l;
label define easst04l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst05  easst05l;
label define easst05l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst06  easst06l;
label define easst06l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst07  easst07l;
label define easst07l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst08  easst08l;
label define easst08l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst09  easst09l;
label define easst09l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst10  easst10l;
label define easst10l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst11  easst11l;
label define easst11l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values easst12  easst12l;
label define easst12l
	1           "Received"                      
	2           "Did not receive"               
	-1          "Not in Universe"               
;
label values aedasst  aedasst;
label define aedasst 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
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
	39          "High School Graduate - (diploma or GED or equivalent)"
	40          "Some college, but no degree"   
	41          "Diploma or certificate from a vocational, technical, trade or business school beyond high"
	43          "Associate (2-yr) college degree (include academic/occupational degree)"
	44          "Bachelor's degree (for example: .BA, AB, BS)"
	45          "Master's degree (For example: MA, MS, MEng, MEd, MSW, MBA)"
	46          "Professional School degree (for example: MD,(doctor),DDS (dentist),JD(lawyer)"
	47          "Doctorate degree (for example: .Ph.D., Ed.D)"
	-1          "Not in Universe"               
;
label values aeducate aeducate;
label define aeducate
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Longitudinal statistical imputation (hot deck)"
	6           "Longitudinal logical imputation (derivation)"
;
label values rged     rged;   
label define rged    
	1           "Yes (GED)"                     
	2           "No (Graduated from high school)"
	-1          "Not in Universe"               
;
label values aged     aged;   
label define aged    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values evocat   evocat; 
label define evocat  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avocat   avocat; 
label define avocat  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rcollvoc rcollvoc;
label define rcollvoc
	1           "No vocational certificate or under 18, less than high school education"
	2           "No vocational certificate or under 18, high school diploma"
	3           "No vocational certificate or under 18, less than one year of college, no degree"
	4           "No vocational certificate or under 18, one or more years of college, no degree"
	5           "No vocational certificate or under 18, associate degree or higher degree"
	6           "Vocational certificate, less than high school education"
	7           "Vocational certificate, high school diploma"
	8           "Vocational certificate, less than one year of college, no degree"
	9           "Vocational certificate, one or more years of college, no degree"
	10          "Vocational certificate, associate degree, or higher degree"
	-1          "Not in Universe"               
;
label values acollvoc acollvoc;
label define acollvoc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epdjbthn epdjbthn;
label define epdjbthn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apdjbthn apdjbthn;
label define apdjbthn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Edited value set equal to 2. Applies only to Wave 3. (See User Note)"
;
label values eppflag  eppflag;
label define eppflag 
	-1          "Not applicable"                
	1           "Yes"                           
;
label values emax     emax;   
label define emax    
	-1          "Not in Universe"               
;
label values ebuscntr ebuscntr;
label define ebuscntr
	0           "Owned contingent business(es) only"
	-1          "Not in Universe"               
;
label values ejobcntr ejobcntr;
label define ejobcntr
	0           "Contingent worker"             
	-1          "Not in Universe"               
;
label values eeveret  eeveret;
label define eeveret 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aeveret  aeveret;
label define aeveret 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values edisabl  edisabl;
label define edisabl 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adisabl  adisabl;
label define adisabl 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values edisprev edisprev;
label define edisprev
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adisprev adisprev;
label define adisprev
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ersnowrk ersnowrk;
label define ersnowrk
	1           "Temporarily unable to work because of an injury"
	2           "Temporarily unable to work because of an illness"
	3           "Unable to work because of chronic health condition or disablity"
	4           "Retired"                       
	5           "Pregnancy/childbirth"          
	6           "Taking care of children/other persons"
	7           "Going to school"               
	8           "Unable to find work"           
	9           "On layoff (temporary or indefinite)"
	10          "Not interested in working at a job"
	11          "Other"                         
	-1          "Not in Universe"               
;
label values arsnowrk arsnowrk;
label define arsnowrk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eawop    eawop;  
label define eawop   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aawop    aawop;  
label define aawop   
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eabre    eabre;  
label define eabre   
	1           "On layoff (temporary or indefinite)"
	2           "Slack work or business conditions"
	3           "Own injury"                    
	4           "Own illness/medical problems"  
	5           "Pregnancy/childbirth"          
	6           "Taking care of children"       
	7           "On vacation/personal days"     
	8           "Bad weather"                   
	9           "Labor Dispute"                 
	10          "New job to begin within 30 days"
	11          "Participated in a job-sharing arrangement"
	12          "Other"                         
	-1          "Not in Universe"               
;
label values aabre    aabre;  
label define aabre   
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eptwrk   eptwrk; 
label define eptwrk  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aptwrk   aptwrk; 
label define aptwrk  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eptresn  eptresn;
label define eptresn 
	1           "Could not find full-time job"  
	2           "Wanted to work part time"      
	3           "Temporarily unable to work full-time because of injury"
	4           "Temporarily not able to work full-time because of illness"
	5           "Unable to work full-time due to chronic health condition/disability"
	6           "Taking care of children/other persons"
	7           "Full-time workweek is less than 35 hours"
	8           "Slack work or material shortage"
	9           "Participated in a job sharing arrangement"
	10          "On vacation"                   
	11          "In school"                     
	12          "Other"                         
	-1          "Not in Universe"               
;
label values aptresn  aptresn;
label define aptresn 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values elkwrk   elkwrk; 
label define elkwrk  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alkwrk   alkwrk; 
label define alkwrk  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values elayoff  elayoff;
label define elayoff 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alayoff  alayoff;
label define alayoff 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rtakjob  rtakjob;
label define rtakjob 
	-1          "Not in Universe"               
	0           "Not reported"                  
	1           "Yes"                           
	2           "No"                            
;
label values rnotake  rnotake;
label define rnotake 
	1           "Waiting for a new job to begin"
	2           "Own Temporary Illness"         
	3           "School"                        
	4           "OTHER"                         
	-1          "Not in Universe"               
	0           "Not reported"                  
;
label values ehrsall  ehrsall;
label define ehrsall 
	0           "Not Determined (See User NOTE)"
	-1          "Not in Universe"               
;
label values ahrsall  ahrsall;
label define ahrsall 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values emoonlit emoonlit;
label define emoonlit
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amoonlit amoonlit;
label define amoonlit
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmlmsum  tmlmsum;
label define tmlmsum 
	0           "None or not in universe"       
;
label values amlmsum  amlmsum;
label define amlmsum 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebflag   ebflag; 
label define ebflag  
	-1          "Not applicable"                
	1           "Yes"                           
;
label values ecflag   ecflag; 
label define ecflag  
	-1          "Not applicable"                
	1           "Yes"                           
;
label values rmesr    rmesr;  
label define rmesr   
	1           "With a job entire month, worked all weeks."
	2           "With a job all month, absent from work without pay 1+ weeks, absence not due to layoff"
	3           "With a job all month, absent from work without pay 1+ weeks, absence due to layoff"
	4           "With a job at least 1 but not all weeks, no time on layoff and no time looking for work"
	5           "With a job at least 1 but not all weeks, some weeks on layoff or looking for work"
	6           "No job all month, on layoff or looking for work all weeks."
	7           "No job all month, at least one but not all weeks on layoff or looking for work"
	8           "No job all month, no time on layoff and no time looking for work."
	-1          "Not in Universe"               
;
label values rwkesr1  rwkesr1l;
label define rwkesr1l
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff, absent without pay"
	3           "With job/bus - on layoff, absent without pay"
	4           "No job/bus - looking for work or on layoff"
	5           "No job/bus - not looking and not on layoff"
	-1          "Not in Universe"               
;
label values rwkesr2  rwkesr2l;
label define rwkesr2l
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff, absent without pay"
	3           "With job/bus - on layoff, absent without pay"
	4           "No job/bus - looking for work or on layoff"
	5           "No job/bus - not looking and not on layoff"
	-1          "Not in Universe"               
;
label values rwkesr3  rwkesr3l;
label define rwkesr3l
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff, absent without pay"
	3           "With job/bus - on layoff, absent without pay"
	4           "No job/bus - looking for work or on layoff"
	5           "No job/bus - not looking and not on layoff"
	-1          "Not in Universe"               
;
label values rwkesr4  rwkesr4l;
label define rwkesr4l
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff, absent without pay"
	3           "With job/bus - on layoff, absent without pay"
	4           "No job/bus - looking for work or on layoff"
	5           "No job/bus - not looking and not on layoff"
	-1          "Not in Universe"               
;
label values rwkesr5  rwkesr5l;
label define rwkesr5l
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff, absent without pay"
	3           "With job/bus - on layoff, absent without pay"
	4           "No job/bus - looking for work or on layoff"
	5           "No job/bus - not looking and not on layoff"
	-1          "Not in Universe"               
;
label values rmwkwjb  rmwkwjb;
label define rmwkwjb 
	0           "0 weeks (that is, did not look for work, and was not on layoff)"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
	-1          "Not in Universe"               
;
label values rmwksab  rmwksab;
label define rmwksab 
	0           "0 weeks (that is, did not have a job, or not absent without pay from a job)"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
	-1          "Not in Universe"               
;
label values awksab   awksab; 
label define awksab  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rmwklkg  rmwklkg;
label define rmwklkg 
	0           "0 weeks (that is, did not look for work, and was not on layoff)"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
	-1          "Not in Universe"               
;
label values awklkg   awklkg; 
label define awklkg  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rmhrswk  rmhrswk;
label define rmhrswk 
	0           "Did not work (did not have a job, or was absent without pay from a job all weeks in month)"
	1           "All weeks 35+"                 
	2           "All weeks 1-34 hours"          
	3           "Some weeks 35+ and some weeks less than 35, all weeks equal to or greater than 1"
	4           "Some weeks 35+, some 1-34 hours, some 0 hours"
	5           "At least 1 but not all weeks 35+ hours, all other weeks 0 hours"
	6           "At least 1 week but not all weeks 1 to 34 hours, all other weeks 0 hours"
	-1          "Not in Universe"               
;
label values rwksperm rwksperm;
label define rwksperm
	4           "Four weeks"                    
	5           "Five weeks"                    
	-1          "Not in Universe"               
;
label values eeno1    eeno1l; 
label define eeno1l  
	-1          "Not in Universe"               
;
label values estlemp1 estlempm;
label define estlempm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astlemp1 astlempm;
label define astlempm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsjdate1 tsjdatem;
label define tsjdatem
	-1          "Not in Universe"               
;
label values asjdate1 asjdatem;
label define asjdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tejdate1 tejdatem;
label define tejdatem
	-1          "Not in Universe"               
;
label values aejdate1 aejdatem;
label define aejdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ersend1  ersend1l;
label define ersend1l
	1           "On Layoff"                     
	2           "Retirement or old age"         
	3           "Childcare problems"            
	4           "Other family/personal obligations"
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/Training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer sold business"        
	11          "Job was temporary and ended"   
	12          "Quit to take another job"      
	13          "Slack work or business conditions"
	14          "Unsatisfactory work arrangements"
	15          "Quit for some other reason"    
	-1          "Not in Universe"               
;
label values arsend1  arsend1l;
label define arsend1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ejbhrs1  ejbhrs1l;
label define ejbhrs1l
	-8          "Hours vary"                    
	-1          "Not in Universe"               
;
label values ajbhrs1  ajbhrs1l;
label define ajbhrs1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eemploc1 eemplocm;
label define eemplocm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aemploc1 aemplocm;
label define aemplocm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempall1 tempallm;
label define tempallm
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempall1 aempallm;
label define aempallm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempsiz1 tempsizm;
label define tempsizm
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempsiz1 aempsizm;
label define aempsizm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eocctim1 eocctimm;
label define eocctimm
	-1          "Not in Universe"               
;
label values aocctim1 aocctimm;
label define aocctimm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
;
label values eclwrk1  eclwrk1l;
label define eclwrk1l
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
	-1          "Not in Universe"               
;
label values aclwrk1  aclwrk1l;
label define aclwrk1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eunion1  eunion1l;
label define eunion1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aunion1  aunion1l;
label define aunion1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecntrc1  ecntrc1l;
label define ecntrc1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acntrc1  acntrc1l;
label define acntrc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tpmsum1  tpmsum1l;
label define tpmsum1l
	0           "None or not in universe"       
;
label values apmsum1  apmsum1l;
label define apmsum1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epayhr1  epayhr1l;
label define epayhr1l
	1           "Yes (paid by the hour)"        
	2           "No (set annual salary or other"
	-1          "Not in Universe"               
;
label values apayhr1  apayhr1l;
label define apayhr1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tpyrate1 tpyratem;
label define tpyratem
	0           "Not in universe or none"       
;
label values apyrate1 apyratem;
label define apyratem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rpyper1  rpyper1l;
label define rpyper1l
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
	-1          "Not in Universe"               
;
label values ejbind1  ejbind1l;
label define ejbind1l
	0170        "Crop production (111)"         
	0180        "Animal production (112)"       
	0190        "Forestry except logging (1131,1132)"
	0270        "Logging (1133)"                
	0280        "Fishing, hunting, and trapping (114)"
	0290        "Support activities for agriculture and forestry (115)"
	0370        "Oil and gas extraction (211)"  
	0380        "Coal mining (2121)"            
	0390        "Metal ore mining (2122)"       
	0470        "Nonmetallic mineral mining and quarrying (2123)"
	0480        "Not specified type of mining (Part 21)"
	0490        "Support activities for mining (213)"
	0570        "Electric power generation, transmission and distribution (2211)"
	0580        "Natural gas distribution (2212)"
	0590        "Electric and gas, and other combinations (Parts 2211, 2212)"
	0670        "Water, steam, air-conditioning, and irrigation systems (22131,22133)"
	0680        "Sewage treatment facilities (22132)"
	0690        "Not specified utilities (Part 22)"
	0770        "Construction (23)"             
	1070        "Animal food, grain and oilseed milling (3111, 3112)"
	1080        "Sugar and confectionery products (3113)"
	1090        "Fruit and vegetable preserving and specialty food manufacturing (3114)"
	1170        "Dairy product manufacturing (3115)"
	1180        "Animal slaughtering and processing (3116)"
	1190        "Retail bakeries (311811)"      
	1270        "Bakeries, except retail  (3118 .exc. 311811)"
	1280        "Seafood and other miscellaneous foods, n.e.c. (3117, 3119)"
	1290        "Not specified food industries (Part 311)"
	1370        "Beverage manufacturing (3121)" 
	1390        "Tobacco manufacturing (3122)"  
	1470        "Fiber, yarn, and thread mills (3131)"
	1480        "Fabric mills, except knitting (3132 except 31324)"
	1490        "Textile and fabric finishing and coating mills (3133)"
	1570        "Carpet and rug mills (31411)"  
	1590        "Textile product mills, except carpets and rugs (314 except 31411)"
	1670        "Knitting mills (31324, 3151)"  
	1680        "Cut and sew apparel manufacturing (3152)"
	1690        "Apparel accessories and other apparel manufacturing (3159)"
	1770        "Footwear manufacturing (3162)" 
	1790        "Leather tanning and products, except footwear manufacturing (3161, 3169)"
	1870        "Pulp, paper, and paperboard mills (3221)"
	1880        "Paperboard containers and boxes (32221)"
	1890        "Miscellaneous paper and pulp products  (32222, 32223, 32229)"
	1990        "Printing and related support activities (3231)"
	2070        "Petroleum refining (32411)"    
	2090        "Miscellaneous petroleum and coal products (32419)"
	2170        "Resin, synthetic rubber and fibers, and filaments manufacturing (3252)"
	2180        "Agricultural chemical manufacturing  (3253)"
	2190        "Pharmaceutical and medicine manufacturing (3254)"
	2270        "Paint, coating, and adhesive manufacturing (3255)"
	2280        "Soap, cleaning compound, and cosmetics manufacturing (3256)"
	2290        "Industrial and miscellaneous chemicals (3251, 3259)"
	2370        "Plastics product manufacturing (3261)"
	2380        "Tire manufacturing (32621)"    
	2390        "Rubber products, except tires, manufacturing (32622, 32629)"
	2470        "Pottery, ceramics, and related products manufacturing (32711)"
	2480        "Structural clay product manufacturing (32712)"
	2490        "Glass and glass product manufacturing  (3272)"
	2570        "Cement, concrete, lime, and gypsum product manufacturing (3273, 3274)"
	2590        "Miscellaneous nonmetallic mineral product manufacturing (3279)"
	2670        "Iron and steel mills and steel product manufacturing (3311, 3312)"
	2680        "Aluminum production and processing  (3313)"
	2690        "Nonferrous metal, except aluminum, production and processing (3314)"
	2770        "Foundries (3315)"              
	2780        "Metal forgings and stampings (3321)"
	2790        "Cutlery and hand tool manufacturing  (3322)"
	2870        "Structural metals, and tank and shipping container manufacturing (3323, 3324)"
	2880        "Machine shops; turned product; screw, nut and bolt manufacturing  (3327)"
	2890        "Coating, engraving, heat treating and allied activities (3328)"
	2970        "Ordnance (332992, 332993, 332994, 332995)"
	2980        "Miscellaneous fabricated metal products manufacturing (3325, 3326, 3329 except 332992, )"
	2990        "Not specified metal industries (Part 331 and 332)"
	3070        "Agricultural implement manufacturing (33311)"
	3080        "Construction, mining and oil field machinery manufacturing (33312, 33313)"
	3090        "Commercial and service industry machinery manufacturing (3333)"
	3170        "Metalworking machinery manufacturing (3335)"
	3180        "Engines, turbines, and power transmission equipment manufacturing (3336)"
	3190        "Machinery manufacturing, n.e.c. (3332, 3334, 3339)"
	3290        "Not specified machinery manufacturing (Part 333)"
	3360        "Computer and peripheral equipment manufacturing (3341)"
	3370        "Communications, audio, and video equipment manufacturing (3342, 3343)"
	3380        "Navigational, measuring, electromedical, and control instruments manufacturing (3345)"
	3390        "Electronic component and product manufacturing, n.e.c. (3344, 3346)"
	3470        "Household appliance manufacturing (3352)"
	3490        "Electrical lighting, equipment, and supplies manufacturing, n.e.c. (3351, 3353, 3359)"
	3570        "Motor vehicles and motor vehicle equipment manufacturing (3361, 3362, 3363)"
	3580        "Aircraft and parts manufacturing (336411, 336412, 336413)"
	3590        "Aerospace products and parts manufacturing (336414, 336415, 336419)"
	3670        "Railroad rolling stock manufacturing (3365)"
	3680        "Ship and boat building (3366)" 
	3690        "Other transportation equipment manufacturing (3369)"
	3770        "Sawmills and wood preservation (3211)"
	3780        "Veneer, plywood, and engineered wood products (3212)"
	3790        "Prefabricated wood buildings and mobile homes (321991, 321992)"
	3870        "Miscellaneous wood products (3219 except 321991, 321992)"
	3890        "Furniture and related product manufacturing (337)"
	3960        "Medical equipment and supplies manufacturing (3391)"
	3970        "Toys, amusement, and sporting goods manufacturing (33992, 33993)"
	3980        "Miscellaneous manufacturing, n.e.c.  (3399 except 33992, 33993)"
	3990        "Not specified manufacturing industries (Part 31, 32, 33)"
	4070        "Motor vehicles, parts and supplies, merchant wholesalers  (4231)"
	4080        "Furniture and home furnishing, merchant wholesalers (4232 )"
	4090        "Lumber and other construction materials, merchant wholesalers (4233)"
	4170        "Professional and commercial equipment and supplies, merchant wholesalers (4234)"
	4180        "Metals and minerals, except petroleum, merchant wholesalers (4235)"
	4190        "Electrical goods, merchant wholesalers (4236)"
	4260        "Hardware, plumbing and heating equipment, and supplies, merchant wholesalers (4237)"
	4270        "Machinery, equipment, and supplies, merchant wholesalers  (4238)"
	4280        "Recyclable material, merchant wholesalers (42393)"
	4290        "Miscellaneous durable goods, merchant wholesalers (4239 except 42393)"
	4370        "Paper and paper products, merchant wholesalers (4241)"
	4380        "Drugs, sundries, and chemical and allied products, merchant wholesalers (4242, 4246)"
	4390        "Apparel, fabrics, and notions, merchant wholesalers (4243)"
	4470        "Groceries and related products, merchant wholesalers (4244)"
	4480        "Farm product raw materials, merchant wholesalers (4245)"
	4490        "Petroleum and petroleum products, merchant wholesalers (4247)"
	4560        "Alcoholic beverages, merchant wholesalers (4248)"
	4570        "Farm supplies, merchant wholesalers (42491)"
	4580        "Miscellaneous nondurable goods, merchant wholesalers (4249 except 42491)"
	4585        "Wholesale electronic markets, agents and brokers (4251)"
	4590        "Not specified wholesale trade (Part 42)"
	4670        "Automobile dealers (4411)"     
	4680        "Other motor vehicle dealers (4412)"
	4690        "Auto parts, accessories, and tire stores  (4413)"
	4770        "Furniture and home furnishings stores (442)"
	4780        "Household appliance stores (443111)"
	4790        "Radio, TV, and computer stores (443112, 44312)"
	4870        "Building material and supplies dealers  (4441 except 44413)"
	4880        "Hardware stores (44413)"       
	4890        "Lawn and garden equipment and supplies stores (4442)"
	4970        "Grocery stores (4451)"         
	4980        "Specialty food stores (4452)"  
	4990        "Beer, wine, and liquor stores (4453)"
	5070        "Pharmacies and drug stores (4461)"
	5080        "Health and personal care, except drug, stores (446 except 44611)"
	5090        "Gasoline stations (447)"       
	5170        "Clothing and accessories, except shoe, stores (448 except 44821, 4483)"
	5180        "Shoe stores (44821)"           
	5190        "Jewelry, luggage, and leather goods stores (4483)"
	5270        "Sporting goods, camera, and hobby and toy stores (44313, 45111, 45112)"
	5280        "Sewing, needlework, and piece goods stores (45113)"
	5290        "Music stores (45114, 45122)"   
	5370        "Book stores and news dealers (45121)"
	5380        "Department stores and discount stores (45211)"
	5390        "Miscellaneous general merchandise stores (4529)"
	5470        "Retail florists (4531)"        
	5480        "Office supplies and stationery stores (45321)"
	5490        "Used merchandise stores (4533)"
	5570        "Gift, novelty, and souvenir shops (45322)"
	5580        "Miscellaneous retail stores (4539)"
	5590        "Electronic shopping   (454111)"
	5591        "Electronic auctions   (454112)"
	5592        "Mail order houses (454113)"    
	5670        "Vending machine operators (4542)"
	5680        "Fuel dealers (45431)"          
	5690        "Other direct selling establishments (45439)"
	5790        "Not specified retail trade (Part 44, 45)"
	6070        "Air transportation (481)"      
	6080        "Rail transportation (482)"     
	6090        "Water transportation (483)"    
	6170        "Truck transportation (484)"    
	6180        "Bus service and urban transit (4851, 4852, 4854, 4855, 4859)"
	6190        "Taxi and limousine service (4853)"
	6270        "Pipeline transportation (486)" 
	6280        "Scenic and sightseeing transportation (487)"
	6290        "Services incidental to transportation (488)"
	6370        "Postal Service (491)"          
	6380        "Couriers and messengers (492)" 
	6390        "Warehousing and storage (493)" 
	6470        "Newspaper publishers (51111)"  
	6480        "Publishing, except newspapers and software (5111 except 51111)"
	6490        "Software publishing (5112)"    
	6570        "Motion pictures and video industries (5121)"
	6590        "Sound recording industries (5122)"
	6670        "Radio and television broadcasting and cable (5151, 5152, 5175)"
	6675        "Internet publishing and broadcasting (5161)"
	6680        "Wired telecommunications carriers (5171)"
	6690        "Other telecommunications services (517 except 5171, 5175)"
	6692        "Internet service providers (5181)"
	6695        "Data processing, hosting, and related services (5182)"
	6770        "Libraries and archives (51912)"
	6780        "Other information services (5191 except 51912)"
	6870        "Banking and related activities (521, 52211,52219)"
	6880        "Savings institutions, including credit unions (52212, 52213)"
	6890        "Non-depository credit and related activities (5222, 5223)"
	6970        "Securities, commodities, funds, trusts, and other financial investments (523, 525)"
	6990        "Insurance carriers and related activities (524)"
	7070        "Real estate (531)"             
	7080        "Automotive equipment rental and leasing (5321)"
	7170        "Video tape and disk rental (53223)"
	7180        "Other consumer goods rental (53221, 53222, 53229, 5323)"
	7190        "Commercial, industrial, and other intangible assets rental and leasing (5324, 533)"
	7270        "Legal services (5411)"         
	7280        "Accounting, tax preparation, bookkeeping, and payroll services (5412)"
	7290        "Architectural, engineering, and related services (5413)"
	7370        "Specialized design services (5414)"
	7380        "Computer systems design and related services (5415)"
	7390        "Management, scientific, and technical consulting services (5416)"
	7460        "Scientific research and development services (5417)"
	7470        "Advertising and related services (5418)"
	7480        "Veterinary services (54194)"   
	7490        "Other professional, scientific, and technical services (5419 except 54194)"
	7570        "Management of companies and enterprises (551)"
	7580        "Employment services (5613)"    
	7590        "Business support services (5614)"
	7670        "Travel arrangements and reservation services (5615)"
	7680        "Investigation and security services (5616)"
	7690        "Services to buildings and dwellings (except cleaning during construction and immediately"
	7770        "Landscaping services (56173)"  
	7780        "Other administrative and other support services (5611, 5612, 5619)"
	7790        "Waste management and remediation services (562)"
	7860        "Elementary and secondary schools (6111)"
	7870        "Colleges and universities, including junior colleges (6112, 6113)"
	7880        "Business, technical, and trade schools and training (6114, 6115)"
	7890        "Other schools, instruction, and educational services (6116, 6117)"
	7970        "Offices of physicians (6211)"  
	7980        "Offices of dentists (6212)"    
	7990        "Offices of chiropractors (62131)"
	8070        "Offices of optometrists (62132)"
	8080        "Offices of other health practitioners (6213 except 62131, 62132)"
	8090        "Outpatient care centers (6214)"
	8170        "Home health care services (6216)"
	8180        "Other health care services (6215, 6219)"
	8190        "Hospitals (622)"               
	8270        "Nursing care facilities (6231)"
	8290        "Residential care facilities, without nursing (6232, 6233, 6239)"
	8370        "Individual and family services (6241)"
	8380        "Community food and housing, and emergency services (6242)"
	8390        "Vocational rehabilitation services (6243)"
	8470        "Child day care services (6244)"
	8560        "Independent artists, performing arts, spectator sports, and related industries (711)"
	8570        "Museums, art galleries, historical sites, and similar institutions (712)"
	8580        "Bowling centers (71395)"       
	8590        "Other amusement, gambling, and recreation industries (713 except 71395)"
	8660        "Traveler accommodation (7211)" 
	8670        "Recreational vehicle parks and camps, and rooming and boarding houses (7212, 7213)"
	8680        "Restaurants and other food services (722 except 7224)"
	8690        "Drinking places, alcoholic beverages (7224)"
	8770        "Automotive repair and maintenance (8111 except 811192)"
	8780        "Car washes (811192)"           
	8790        "Electronic and precision equipment repair and maintenance (8112)"
	8870        "Commercial and industrial machinery and equipment repair and maintenance (8113)"
	8880        "Personal and household goods repair and maintenance (8114 except 81143)"
	8890        "Footwear and leather goods repair (81143)"
	8970        "Barber shops (812111)"         
	8980        "Beauty salons (812112)"        
	8990        "Nail salons and other personal care services  (812113, 81219)"
	9070        "Drycleaning and laundry services (8123)"
	9080        "Funeral homes, cemeteries, and crematories (8122)"
	9090        "Other personal services (8129)"
	9160        "Religious organizations (8131)"
	9170        "Civic, social, advocacy organizations, and grantmaking and giving services (8132, 8133,"
	9180        "Labor unions (81393)"          
	9190        "Business, professional, political, and similar organizations (8139 except 81393)"
	9290        "Private households (814)"      
	9370        "Executive offices and legislative bodies (92111, 92112, 92114, part 92115)"
	9380        "Public finance activities (92113)"
	9390        "Other general government and support (92119)"
	9470        "Justice, public order, and safety activities (922, part 92115)"
	9480        "Administration of human resource programs  (923)"
	9490        "Administration of environmental quality and housing programs (924, 925)"
	9570        "Administration of economic programs and space research (926, 927)"
	9590        "National security and international affairs (928)"
	9890        "Persons whose last job was Armed Forces"
	-1          "Not in Universe"               
;
label values ajbind1  ajbind1l;
label define ajbind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tjbocc1  tjbocc1l;
label define tjbocc1l
	10          "Chief executives (11-1011)"    
	0020        "General and operations managers (11-1021)"
	0040        "Advertising and promotions managers (11-2011)"
	0050        "Marketing and sales managers (11-2020)"
	0060        "Public relations managers (11-2031)"
	100         "Administrative services managers (11-3011)"
	0110        "Computer and information systems managers (11-3021)"
	0120        "Financial managers (11-3031)"  
	0130        "Human resources managers (11-3040)"
	0140        "Industrial production managers(11-3051)"
	0150        "Purchasing managers (11-3061)" 
	160         "Transportation, storage, and distribution managers (11-3071)"
	200         "Farm, ranch, and other agricultural managers (11-9011)"
	0210        "Farmers and ranchers (11-9012)"
	0220        "Construction managers (11-9021)"
	0230        "Education administrators (11-9030)"
	0300        "Engineering managers (11-9041)"
	0310        "Food service managers (11-9051)"
	0320        "Funeral directors (11-9061)"   
	0330        "Gaming managers (11-9071)"     
	0340        "Lodging managers (11-9081)"    
	0350        "Medical and health services managers (11-9111)"
	0360        "Natural sciences managers (11-9121)"
	0410        "Property, real estate, and community association managers (11-9141)"
	0420        "Social and community service managers (11-9151)"
	0430        "Managers, all other (11-9199)" 
	0500        "Agents and business managers of artists, performers, and athletes (13-1011)"
	0510        "Purchasing agents and buyers, farm products (13-1021)"
	520         "Wholesale and retail buyers, except farm products (13-1022)"
	0530        "Purchasing agents, except wholesale, retail, and farm products (13-1023)"
	0540        "Claims adjusters, appraisers, examiners, and investigators (13-1030)"
	0560        "Compliance officers, except agriculture, construction, health and safety, and transporta"
	0600        "Cost estimators (13-1051)"     
	0620        "Human resources, training, and labor relations specialists (13-1070)"
	0700        "Logisticians (13-1081)"        
	0710        "Management analysts (13-1111)" 
	0720        "Meeting and convention planners (13-1121)"
	0730        "Other business operations specialists (13-11XX)"
	0800        "Accountants and auditors (13-2011)"
	0810        "Appraisers and assessors of real estate (13-2021)"
	0820        "Budget analysts (13-2031)"     
	0830        "Credit analysts (13-2041)"     
	840         "Financial analysts (13-2051)"  
	0850        "Personal financial advisors (13-2052)"
	0860        "Insurance underwriters (13-2053)"
	0900        "Financial examiners (13-2061)" 
	0910        "Loan counselors and officers (13-2070)"
	0930        "Tax examiners, collectors, and revenue agents (13-2081)"
	0940        "Tax preparers (13-2082)"       
	0950        "Financial specialists, all other (13-2099)"
	1000        "Computer scientists and systems analysts (15-10XX)"
	1010        "Computer programmers (15-1021)"
	1020        "Computer software engineers (15-1030)"
	1040        "Computer support specialists (15-1041)"
	1060        "Database administrators (15-1061)"
	1100        "Network and computer systems administrators (15-1071)"
	1110        "Network systems and data communications analysts (15-1081)"
	1200        "Actuaries (15-2011)"           
	1210        "Mathematicians (15-2021)"      
	1220        "Operations research analysts (15-2031)"
	1230        "Statisticians (15-2041)"       
	1240        "Miscellaneous mathematical science occupations (15-2090)"
	1300        "Architects, except naval (17-1010)"
	1310        "Surveyors, cartographers, and photogrammetrists (17-1020)"
	1320        "Aerospace engineers (17-2011)" 
	1330        "Agricultural engineers (17-2021)"
	1340        "Biomedical engineers (17-2031)"
	1350        "Chemical engineers (17-2041)"  
	1360        "Civil engineers (17-2051)"     
	1400        "Computer hardware engineers (17-2061)"
	1410        "Electrical and electronic engineers (17-2070)"
	1420        "Environmental engineers (17-2081)"
	1430        "Industrial engineers, including health and safety (17-2110)"
	1440        "Marine engineers and naval architects (17-2121)"
	1450        "Materials engineers (17-2131)" 
	1460        "Mechanical engineers (17-2141)"
	1500        "Mining and geological engineers, including mining safety engineers (17-2151)"
	1510        "Nuclear engineers (17-2161)"   
	1520        "Petroleum engineers (17-2171)" 
	1530        "Engineers, all other (17-2199)"
	1540        "Drafters (17-3010)"            
	1550        "Engineering technicians, except drafters (17-3020)"
	1560        "Surveying and mapping technicians (17-3031)"
	1600        "Agricultural and food scientists (19-1010)"
	1610        "Biological scientists (19-1020)"
	1640        "Conservation scientists and foresters (19-1030)"
	1650        "Medical scientists (19-1040)"  
	1700        "Astronomers and physicists (19-2010)"
	1710        "Atmospheric and space scientists (19-2021)"
	1720        "Chemists and materials scientists (19-2030)"
	1740        "Environmental scientists and geoscientists (19-2040)"
	1760        "Physical scientists, all other (19-2099)"
	1800        "Economists (19-3011)"          
	1810        "Market and survey researchers (19-3020)"
	1820        "Psychologists (19-3030)"       
	1830        "Sociologists (19-3041)"        
	1840        "Urban and regional planners (19-3051)"
	1860        "Miscellaneous social scientists and related workers (19-3090)"
	1900        "Agricultural and food science technicians (19-4011)"
	1910        "Biological technicians (19-4021)"
	1920        "Chemical technicians (19-4031)"
	1930        "Geological and petroleum technicians (19-4041)"
	1940        "Nuclear technicians (19-4051)" 
	1960        "Other life, physical, and social science technicians (19-40XX)"
	2000        "Counselors (21-1010)"          
	2010        "Social workers (21-1020)"      
	2020        "Miscellaneous community and social service specialists (21-1090)"
	2040        "Clergy (21-2011)"              
	2050        "Directors, religious activities and education (21-2021)"
	2060        "Religious workers, all other (21-2099)"
	2100        "Lawyers (23-1011)"             
	2140        "Paralegals and legal assistants (23-2011)"
	2150        "Miscellaneous legal support workers (23-2090)"
	2200        "Postsecondary teachers (25-1000)"
	2300        "Preschool and kindergarten teachers (25-2010)"
	2310        "Elementary and middle school teachers (25-2020)"
	2320        "Secondary school teachers (25-2030)"
	2330        "Special education teachers (25-2040)"
	2340        "Other teachers and instructors (25-3000)"
	2400        "Archivists, curators, and museum technicians (25-4010)"
	2430        "Librarians (25-4021)"          
	2440        "Library technicians (25-4031)" 
	2540        "Teacher assistants (25-9041)"  
	2550        "Other education, training, and library workers (25-90XX)"
	2600        "Artists and related workers (27-1010)"
	2630        "Designers (27-1020)"           
	2700        "Actors (27-2011)"              
	2710        "Producers and directors (27-2012)"
	2720        "Athletes, coaches, umpires, and related workers (27-2020)"
	2740        "Dancers and choreographers (27-2030)"
	2750        "Musicians, singers, and related workers (27-2040)"
	2760        "Entertainers and performers, sports and related workers, all other (27-2099)"
	2800        "Announcers (27-3010)"          
	2810        "News analysts, reporters and correspondents (27-3020)"
	2820        "Public relations specialists (27-3031)"
	2830        "Editors (27-3041)"             
	2840        "Technical writers (27-3042)"   
	2850        "Writers and authors (27-3043)" 
	2860        "Miscellaneous media and communication workers (27-3090)"
	2900        "Broadcast and sound engineering technicians and radio operators (27-4010)"
	2910        "Photographers (27-4021)"       
	2920        "Television, video, and motion picture camera operators and editors (27-4030)"
	2960        "Media and communication equipment workers, all other (27-4099)"
	3000        "Chiropractors (29-1011)"       
	3010        "Dentists (29-1020)"            
	3030        "Dietitians and nutritionists (29-1031)"
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
	3230        "Speech-language pathologists (29-1127)"
	3240        "Therapists, all other (29-1129)"
	3250        "Veterinarians (29-1131)"       
	3260        "Health diagnosing and treating practitioners, all other (29-1199 )"
	3300        "Clinical laboratory technologists and technicians (29-2010)"
	3310        "Dental hygienists (29-2021)"   
	3320        "Diagnostic related technologists and technicians (29-2030)"
	3400        "Emergency medical technicians and paramedics (29-2041)"
	3410        "Health diagnosing and treating practitioner support technicians (29-2050)"
	3500        "Licensed practical and licensed vocational nurses (29-2061)"
	3510        "Medical records and health information technicians (29-2071)"
	3520        "Opticians, dispensing (29-2081)"
	3530        "Miscellaneous health technologists and technicians (29-2090)"
	3540        "Other healthcare practitioners and technical occupations (29-9000)"
	3600        "Nursing, psychiatric, and home health aides (31-1010 )"
	3610        "Occupational therapist assistants and aides (31-2010)"
	3620        "Physical therapist assistants and aides (31-2020)"
	3630        "Massage therapists (31-9011)"  
	3640        "Dental assistants (31-9091)"   
	3650        "Medical assistants and other healthcare support occupations (31-909X)"
	3700        "First-line supervisors/managers of correctional officers (33-1011)"
	3710        "First-line supervisors/managers of police and detectives (33-1012)"
	3720        "First-line supervisors/managers of fire fighting and prevention workers (33-1021)"
	3730        "Supervisors, protective service workers, all other (33-1099)"
	3740        "Fire fighters (33-2011)"       
	3750        "Fire inspectors (33-2020)"     
	3800        "Bailiffs, correctional officers, and jailers (33-3010)"
	3820        "Detectives and criminal investigators (33-3021)"
	3830        "Fish and game wardens (33-3031)"
	3840        "Parking enforcement workers (33-3041)"
	3850        "Police and sheriff's patrol officers(33-3051)"
	3860        "Transit and railroad police (33-3052)"
	3900        "Animal control workers (33-9011)"
	3910        "Private detectives and investigators (33-9021)"
	3920        "Security guards and gaming surveillance officers (33-9030)"
	3940        "Crossing guards (33-9091)"     
	3950        "Lifeguards and other protective service workers (33-909X)"
	4000        "Chefs and head cooks (35-1011)"
	4010        "First-line supervisors/managers of food preparation and serving workers (35-1012 )"
	4020        "Cooks (35-2010)"               
	4030        "Food preparation workers (35-2021)"
	4040        "Bartenders (35-3011)"          
	4050        "Combined food preparation and serving workers, including fast food (35-3021)"
	4060        "Counter attendants, cafeteria, food concession, and coffee shop (35-3022)"
	4110        "Waiters and waitresses (35-3031)"
	4120        "Food servers, nonrestaurant (35-3041)"
	4130        "Dining room and cafeteria attendants and bartender helpers (35-9011)"
	4140        "Dishwashers (35-9021)"         
	4150        "Hosts and hostesses, restaurant, lounge, and coffee shop (35-9031)"
	4160        "Food preparation and serving related workers, all other (35-9099)"
	4200        "First-line supervisors/managers of housekeeping and janitorial workers (37-1011)"
	4210        "First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"
	4220        "Janitors and building cleaners (37-201X)"
	4230        "Maids and housekeeping cleaners (37-2012)"
	4240        "Pest control workers (37-2021)"
	4250        "Grounds maintenance workers (37-3010)"
	4300        "First-line supervisors/managers of gaming workers (39-1010)"
	4320        "First-line supervisors/managers of personal service workers (39-1021)"
	4340        "Animal trainers (39-2011)"     
	4350        "Nonfarm animal caretakers (39-2021)"
	4400        "Gaming services workers (39-3010)"
	4410        "Motion picture projectionists (39-3021)"
	4420        "Ushers, lobby attendants, and ticket takers (39-3031)"
	4430        "Miscellaneous entertainment attendants and related workers (39-3090)"
	4460        "Funeral service workers (39-4000)"
	4500        "Barbers (39-5011)"             
	4510        "Hairdressers, hairstylists, and cosmetologists (39-5012)"
	4520        "Miscellaneous personal appearance workers (39-5090)"
	4530        "Baggage porters, bellhops, and concierges (39-6010)"
	4540        "Tour and travel guides (39-6020)"
	4550        "Transportation attendants (39-6030)"
	4600        "Child care workers (39-9011)"  
	4610        "Personal and home care aides (39-9021)"
	4620        "Recreation and fitness workers (39-9030)"
	4640        "Residential advisors (39-9041)"
	4650        "Personal care and service workers, all other (39-9099)"
	4700        "First-line supervisors/managers of retail sales workers (41-1011)"
	4710        "First-line supervisors/managers of non-retail sales workers (41-1012)"
	4720        "Cashiers (41-2010)"            
	4740        "Counter and rental clerks (41-2021)"
	4750        "Parts salespersons (41-2022)"  
	4760        "Retail salespersons (41-2031)" 
	4800        "Advertising sales agents (41-3011)"
	4810        "Insurance sales agents (41-3021)"
	4820        "Securities, commodities, and financial services sales agents (41-3031)"
	4830        "Travel agents (41-3041)"       
	4840        "Sales representatives, services, all other (41-3099)"
	4850        "Sales representatives, wholesale and manufacturing (41-4010)"
	4900        "Models, demonstrators, and product promoters (41-9010)"
	4920        "Real estate brokers and sales agents (41-9020)"
	4930        "Sales engineers (41-9031)"     
	4940        "Telemarketers (41-9041)"       
	4950        "Door-to-door sales workers, news and street vendors, and related workers (41-9091)"
	4960        "Sales and related workers, all other (41-9099)"
	5000        "First-line supervisors/managers of office and administrative support workers (43-1011)"
	5010        "Switchboard operators, including answering service (43-2011)"
	5020        "Telephone operators (43-2021)" 
	5030        "Communications equipment operators, all other (43-2099)"
	5100        "Bill and account collectors (43-3011)"
	5110        "Billing and posting clerks and machine operators (43-3021)"
	5120        "Bookkeeping, accounting, and auditing clerks (43-3031)"
	5130        "Gaming cage workers (43-3041)" 
	5140        "Payroll and timekeeping clerks (43-3051)"
	5150        "Procurement clerks (43-3061)"  
	5160        "Tellers (43-3071)"             
	5200        "Brokerage clerks (43-4011)"    
	5210        "Correspondence clerks (43-4021)"
	5220        "Court, municipal, and license clerks (43-4031)"
	5230        "Credit authorizers, checkers, and clerks (43-4041)"
	5240        "Customer service representatives (43-4051)"
	5250        "Eligibility interviewers, government programs (43-4061)"
	5260        "File Clerks (43-4071)"         
	5300        "Hotel, motel, and resort desk clerks (43-4081)"
	5310        "Interviewers, except eligibility and loan (43-4111)"
	5320        "Library assistants, clerical (43-4121)"
	5330        "Loan interviewers and clerks (43-4131)"
	5340        "New accounts clerks (43-4141)" 
	5350        "Order clerks (43-4151)"        
	5360        "Human resources assistants, except payroll and timekeeping (43-4161)"
	5400        "Receptionists and information clerks (43-4171)"
	5410        "Reservation and transportation ticket agents and travel clerks (43-4181)"
	5420        "Information and record clerks, all other (43-4199)"
	5500        "Cargo and freight agents (43-5011)"
	5510        "Couriers and messengers (43-5021)"
	5520        "Dispatchers (43-5030)"         
	5530        "Meter readers, utilities (43-5041)"
	5540        "Postal service clerks (43-5051)"
	5550        "Postal service mail carriers (43-5052)"
	5560        "Postal service mail sorters, processors, and processing machine operators (43-5053)"
	5600        "Production, planning, and expediting clerks (43-5061)"
	5610        "Shipping, receiving, and traffic clerks (43-5071)"
	5620        "Stock clerks and order fillers (43-5081)"
	5630        "Weighers, measurers, checkers, and samplers, recordkeeping (43-5111)"
	5700        "Secretaries and administrative assistants (43-6010)"
	5800        "Computer operators (43-9011)"  
	5810        "Data entry keyers (43-9021)"   
	5820        "Word processors and typists (43-9022)"
	5830        "Desktop publishers (43-9031)"  
	5840        "Insurance claims and policy processing clerks (43-9041)"
	5850        "Mail clerks and mail machine operators, except postal service (43-9051)"
	5860        "Office clerks, general (43-9061)"
	5900        "Office machine operators, except computer (43-9071)"
	5910        "Proofreaders and copy markers (43-9081)"
	5920        "Statistical assistants (43-9111)"
	5930        "Office and administrative support workers, all other (43-9199)"
	6000        "First-line supervisors/managers of farming, fishing, and forestry workers (45-1010)"
	6010        "Agricultural inspectors (45-2011)"
	6020        "Animal breeders (45-2021)"     
	6040        "Graders and sorters, agricultural products (45-2041)"
	6050        "Miscellaneous agricultural workers (45-2090)"
	6100        "Fishers and related fishing workers (45-3011)"
	6110        "Hunters and trappers (45-3021)"
	6120        "Forest and conservation workers (45-4011)"
	6130        "Logging workers (45-4020)"     
	6200        "First-line supervisors/managers of construction trades and extraction workers (47-1011)"
	6210        "Boilermakers (47-2011)"        
	6220        "Brickmasons, blockmasons, and stonemasons (47-2020)"
	6230        "Carpenters (47-2031)"          
	6240        "Carpet, floor, and tile installers and finishers (47-2040)"
	6250        "Cement masons, concrete finishers, and terrazzo workers (47-2050)"
	6260        "Construction laborers (47-2061)"
	6300        "Paving, surfacing, and tamping equipment operators (47-2071)"
	6310        "Pile-driver operators (47-2072)"
	6320        "Operating engineers and other construction equipment operators (47-2073)"
	6330        "Drywall installers, ceiling tile installers, and tapers (47-2080)"
	6350        "Electricians (47-2111)"        
	6360        "Glaziers (47-2121)"            
	6400        "Insulation workers (47-2130)"  
	6420        "Painters, construction and maintenance (47-2141)"
	6430        "Paperhangers (47-2142)"        
	6440        "Pipelayers, plumbers, pipefitters, and steamfitters (47-2150)"
	6460        "Plasterers and stucco masons (47-2161)"
	6500        "Reinforcing iron and rebar workers (47-2171)"
	6510        "Roofers (47-2181)"             
	6520        "Sheet metal workers (47-2211)" 
	6530        "Structural iron and steel workers (47-2221)"
	6600        "Helpers, construction trades (47-3010)"
	6660        "Construction and building inspectors (47-4011)"
	6700        "Elevator installers and repairers (47-4021)"
	6710        "Fence erectors (47-4031)"      
	6720        "Hazardous materials removal workers (47-4041)"
	6730        "Highway maintenance workers (47-4051)"
	6740        "Rail-track laying and maintenance equipment operators (47-4061)"
	6750        "Septic tank servicers and sewer pipe cleaners (47-4071)"
	6760        "Miscellaneous construction and related workers (47-4090)"
	6800        "Derrick, rotary drill, and service unit operators, oil, gas, and mining (47-5010)"
	6820        "Earth drillers, except oil and gas (47-5021)"
	6830        "Explosives workers, ordnance handling experts, and blasters (47-5031)"
	6840        "Mining machine operators (47-5040)"
	6910        "Roof bolters, mining (47-5061)"
	6920        "Roustabouts, oil and gas (47-5071)"
	6930        "Helpers--extraction workers (47-5081)"
	6940        "Other extraction workers (47-50XX)"
	7000        "First-line supervisors/managers of mechanics, installers, and repairers (49-1011)"
	7010        "Computer, automated teller, and office machine repairers (49-2011)"
	7020        "Radio and telecommunications equipment installers and repairers (49-2020)"
	7030        "Avionics technicians (49-2091)"
	7040        "Electric motor, power tool, and related repairers (49-2092)"
	7050        "Electrical and electronics installers and repairers, transportation equipment (49-2093)"
	7100        "Electrical and electronics repairers, industrial and utility (49-209X)"
	7110        "Electronic equipment installers and repairers, motor vehicles (49-2096)"
	7120        "Electronic home entertainment equipment installers and repairers (49-2097)"
	7130        "Security and fire alarm systems installers (49-2098)"
	7140        "Aircraft mechanics and service technicians (49-3011)"
	7150        "Automotive body and related repairers (49-3021)"
	7160        "Automotive glass installers and repairers (49-3022 )"
	7200        "Automotive service technicians and mechanics (49-3023)"
	7210        "Bus and truck mechanics and diesel engine specialists (49-3031)"
	7220        "Heavy vehicle and mobile equipment service technicians and mechanics (49-3040)"
	7240        "Small engine mechanics (49-3050)"
	7260        "Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers (49-3090"
	7300        "Control and valve installers and repairers (49-9010)"
	7310        "Heating, air conditioning, and refrigeration mechanics and installers (49-9021)"
	7320        "Home appliance repairers (49-9031)"
	7330        "Industrial and refractory machinery mechanics (49-904X)"
	7340        "Maintenance and repair workers, general (49-9042)"
	7350        "Maintenance workers, machinery (49-9043)"
	7360        "Millwrights (49-9044)"         
	7410        "Electrical power-line installers and repairers (49-9051)"
	7420        "Telecommunications line installers and repairers (49-9052)"
	7430        "Precision instrument and equipment repairers (49-9060)"
	7510        "Coin, vending, and amusement machine servicers and repairers (49-9091)"
	7520        "Commercial divers (49-9092)"   
	7540        "Locksmiths and safe repairers (49-9094)"
	7550        "Manufactured building and mobile home installers (49-9095)"
	7560        "Riggers (49-9096)"             
	7600        "Signal and track switch repairers (49-9097)"
	7610        "Helpers--installation, maintenance, and repair workers (49-9098)"
	7620        "Other installation, maintenance, and repair workers (49-909X)"
	7700        "First-line supervisors/managers of production and operating workers (51-1011)"
	7710        "Aircraft structure, surfaces, rigging, and systems assemblers (51-2011)"
	7720        "Electrical, electronics, and electromechanical assemblers (51-2020)"
	7730        "Engine and other machine assemblers (51-2031)"
	7740        "Structural metal fabricators and fitters (51-2041)"
	7750        "Miscellaneous assemblers and fabricators (51-2090)"
	7800        "Bakers (51-3011)"              
	7810        "Butchers and other meat, poultry, and fish processing workers (51-3020)"
	7830        "Food and tobacco roasting, baking, and drying machine operators and tenders (51-3091)"
	7840        "Food batchmakers (51-3092)"    
	7850        "Food cooking machine operators and tenders (51-3093)"
	7900        "Computer control programmers and operators (51-4010)"
	7920        "Extruding and drawing machine setters, operators, and tenders, metal and plastic (51-402"
	7930        "Forging machine setters, operators, and tenders, metal and plastic (51-4022)"
	7940        "Rolling machine setters, operators, and tenders, metal and plastic (51-4023)"
	7950        "Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"
	7960        "Drilling and boring machine tool setters, operators, and tenders, metal and plastic (51-"
	8000        "Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders,"
	8010        "Lathe and turning machine tool setters, operators, and tenders, metal and plastic (51-40"
	8020        "Milling and planing machine setters, operators, and tenders, metal and plastic (51-4035)"
	8030        "Machinists (51-4041)"          
	8040        "Metal furnace and kiln operators and tenders (51-4050)"
	8060        "Model makers and patternmakers, metal and plastic (51-4060)"
	8100        "Molders and molding machine setters, operators, and tenders, metal and plastic (51-4070)"
	8120        "Multiple machine tool setters, operators, and tenders, metal and plastic (51-4081)"
	8130        "Tool and die makers (51-4111)" 
	8140        "Welding, soldering, and brazing workers (51-4120)"
	8150        "Heat treating equipment setters, operators, and tenders, metal and plastic (51-4191)"
	8160        "Lay-out workers, metal and plastic (51-4192)"
	8200        "Plating and coating machine setters, operators, and tenders, metal and plastic (51-4193)"
	8210        "Tool grinders, filers, and sharpeners (51-4194)"
	8220        "Metalworkers and plastic workers, all other (51-4199)"
	8230        "Bookbinders and bindery workers (51-5010)"
	8240        "Job printers (51-5021)"        
	8250        "Prepress technicians and workers (51-5022)"
	8260        "Printing machine operators (51-5023)"
	8300        "Laundry and dry-cleaning workers (51-6011)"
	8310        "Pressers, textile, garment, and related materials (51-6021)"
	8320        "Sewing machine operators (51-6031)"
	8330        "Shoe and leather workers and repairers (51-6041)"
	8340        "Shoe machine operators and tenders (51-6042)"
	8350        "Tailors, dressmakers, and sewers (51-6050)"
	8360        "Textile bleaching and dyeing machine operators and tenders (51-6061)"
	8400        "Textile cutting machine setters, operators, and tenders (51-6062)"
	8410        "Textile knitting and weaving machine setters, operators, and tenders (51-6063)"
	8420        "Textile winding, twisting, and drawing out machine setters, operators, and tenders (51-6"
	8430        "Extruding and forming machine setters, operators, and tenders, synthetic and glass fiber"
	8440        "Fabric and apparel patternmakers (51-6092)"
	8450        "Upholsterers (51-6093)"        
	8460        "Textile, apparel, and furnishings workers, all other (51-6099)"
	8500        "Cabinetmakers and bench carpenters (51-7011)"
	8510        "Furniture finishers (51-7021)" 
	8520        "Model makers and patternmakers, wood (51-7030)"
	8530        "Sawing machine setters, operators, and tenders, wood (51-7041)"
	8540        "Woodworking machine setters, operators, and tenders, except sawing (51-7042)"
	8550        "Woodworkers, all other (51-7099)"
	8600        "Power plant operators, distributors, and dispatchers (51-8010)"
	8610        "Stationary engineers and boiler operators (51-8021)"
	8620        "Water and liquid waste treatment plant and system operators (51-8031)"
	8630        "Miscellaneous plant and system operators (51-8090)"
	8640        "Chemical processing machine setters, operators, and tenders (51-9010)"
	8650        "Crushing, grinding, polishing, mixing, and blending workers (51-9020)"
	8710        "Cutting workers (51-9030)"     
	8720        "Extruding, forming, pressing, and compacting machine setters, operators, and tenders (51"
	8730        "Furnace, kiln, oven, drier, and kettle operators and tenders (51-9051)"
	8740        "Inspectors, testers, sorters, samplers, and weighers (51-9061)"
	8750        "Jewelers and precious stone and metal workers (51-9071)"
	8760        "Medical, dental, and ophthalmic laboratory technicians (51-9080)"
	8800        "Packaging and filling machine operators and tenders (51-9111)"
	8810        "Painting workers (51-9120)"    
	8830        "Photographic process workers and processing machine operators (51-9130)"
	8840        "Semiconductor processors (51-9141)"
	8850        "Cementing and gluing machine operators and tenders (51-9191)"
	8860        "Cleaning, washing, and metal pickling equipment operators and tenders (51-9192)"
	8900        "Cooling and freezing equipment operators and tenders (51-9193)"
	8910        "Etchers and engravers (51-9194)"
	8920        "Molders, shapers, and casters, except metal and plastic (51-9195)"
	8930        "Paper goods machine setters, operators, and tenders (51-9196)"
	8940        "Tire builders (51-9197)"       
	8950        "Helpers--production workers (51-9198)"
	8960        "Production workers, all other (51-9199)"
	9000        "Supervisors, transportation and material moving workers (53-1000)"
	9030        "Aircraft pilots and flight engineers (53-2010)"
	9040        "Air traffic controllers and airfield operations specialists (53-2020)"
	9110        "Ambulance drivers and attendants, except emergency medical technicians (53-3011)"
	9120        "Bus drivers (53-3020)"         
	9130        "Driver/sales workers and truck drivers (53-3030)"
	9140        "Taxi drivers and chauffeurs (53-3041)"
	9150        "Motor vehicle operators, all other (53-3099)"
	9200        "Locomotive engineers and operators (53-4010)"
	9230        "Railroad brake, signal, and switch operators (53-4021)"
	9240        "Railroad conductors and yardmasters (53-4031)"
	9260        "Subway, streetcar, and other rail transportation workers (53-30XX)"
	9300        "Sailors and marine oilers (53-5011)"
	9310        "Ship and boat captains and operators (53-5020)"
	9330        "Ship engineers (53-5031)"      
	9340        "Bridge and lock tenders (53-6011)"
	9350        "Parking lot attendants (53-6021)"
	9360        "Service station attendants (53-6031)"
	9410        "Transportation inspectors (53-6051)"
	9420        "Other transportation workers (53-60XX)"
	9500        "Conveyor operators and tenders (53-7011)"
	9510        "Crane and tower operators (53-7021)"
	9520        "Dredge, excavating, and loading machine operators (53-7030)"
	9560        "Hoist and winch operators (53-7041)"
	9600        "Industrial truck and tractor operators (53-7051)"
	9610        "Cleaners of vehicles and equipment (53-7061)"
	9620        "Laborers and freight, stock, and material movers, hand (53-7062)"
	9630        "Machine feeders and offbearers (53-7063)"
	9640        "Packers and packagers, hand (53-7064)"
	9650        "Pumping station operators (53-7070)"
	9720        "Refuse and recyclable material collectors (53-7081)"
	9730        "Shuttle car operators (53-7111)"
	9740        "Tank car, truck, and ship loaders (53-7121)"
	9750        "Material moving workers, all other (53-7199)"
	9840        "Persons whose current labor force status is unemployed and last job was Armed Forces"
	-1          "Not in Universe"               
;
label values ajbocc1  ajbocc1l;
label define ajbocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eeno2    eeno2l; 
label define eeno2l  
	-1          "Not in Universe"               
;
label values estlemp2 estlempk;
label define estlempk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astlemp2 astlempk;
label define astlempk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsjdate2 tsjdatek;
label define tsjdatek
	-1          "Not in Universe"               
;
label values asjdate2 asjdatek;
label define asjdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tejdate2 tejdatek;
label define tejdatek
	-1          "Not in Universe"               
;
label values aejdate2 aejdatek;
label define aejdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ersend2  ersend2l;
label define ersend2l
	1           "On Layoff"                     
	2           "Retirement or old age"         
	3           "Childcare problems"            
	4           "Other family/personal obligations"
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/Training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer sold business"        
	11          "Job was temporary and ended"   
	12          "Quit to take another job"      
	13          "Slack work or business conditions"
	14          "Unsatisfactory work arrangements (hours, pay, etc)"
	15          "Quit for some other reason"    
	-1          "Not in Universe"               
;
label values arsend2  arsend2l;
label define arsend2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ejbhrs2  ejbhrs2l;
label define ejbhrs2l
	-8          "Hours vary"                    
	-1          "Not in Universe"               
;
label values ajbhrs2  ajbhrs2l;
label define ajbhrs2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eemploc2 eemplock;
label define eemplock
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aemploc2 aemplock;
label define aemplock
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempall2 tempallk;
label define tempallk
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempall2 aempallk;
label define aempallk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempsiz2 tempsizk;
label define tempsizk
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempsiz2 aempsizk;
label define aempsizk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eocctim2 eocctimk;
label define eocctimk
	-1          "Not in Universe"               
;
label values aocctim2 aocctimk;
label define aocctimk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
;
label values eclwrk2  eclwrk2l;
label define eclwrk2l
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
	-1          "Not in Universe"               
;
label values aclwrk2  aclwrk2l;
label define aclwrk2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eunion2  eunion2l;
label define eunion2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aunion2  aunion2l;
label define aunion2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecntrc2  ecntrc2l;
label define ecntrc2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acntrc2  acntrc2l;
label define acntrc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tpmsum2  tpmsum2l;
label define tpmsum2l
	0           "None or not in universe"       
;
label values apmsum2  apmsum2l;
label define apmsum2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epayhr2  epayhr2l;
label define epayhr2l
	1           "Yes (paid by the hour)"        
	2           "No (set annual salary or other"
	-1          "Not in Universe"               
;
label values apayhr2  apayhr2l;
label define apayhr2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tpyrate2 tpyratek;
label define tpyratek
	0           "Not in universe or none"       
;
label values apyrate2 apyratek;
label define apyratek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rpyper2  rpyper2l;
label define rpyper2l
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or farm"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
	-1          "Not in Universe"               
;
label values ejbind2  ejbind2l;
label define ejbind2l
	0170        "Crop production (111)"         
	0180        "Animal production (112)"       
	0190        "Forestry except logging (1131,1132)"
	0270        "Logging (1133)"                
	0280        "Fishing, hunting, and trapping (114)"
	0290        "Support activities for agriculture and forestry (115)"
	0370        "Oil and gas extraction (211)"  
	0380        "Coal mining (2121)"            
	0390        "Metal ore mining (2122)"       
	0470        "Nonmetallic mineral mining and quarrying (2123)"
	0480        "Not specified type of mining (Part 21)"
	0490        "Support activities for mining (213)"
	0570        "Electric power generation, transmission and distribution (2211)"
	0580        "Natural gas distribution (2212)"
	0590        "Electric and gas, and other combinations (Parts 2211, 2212)"
	0670        "Water, steam, air-conditioning, and irrigation systems (22131,22133)"
	0680        "Sewage treatment facilities (22132)"
	0690        "Not specified utilities (Part 22)"
	0770        "Construction (23)"             
	1070        "Animal food, grain and oilseed milling (3111, 3112)"
	1080        "Sugar and confectionery products (3113)"
	1090        "Fruit and vegetable preserving and specialty food manufacturing (3114)"
	1170        "Dairy product manufacturing (3115)"
	1180        "Animal slaughtering and processing (3116)"
	1190        "Retail bakeries (311811)"      
	1270        "Bakeries, except retail  (3118 .exc. 311811)"
	1280        "Seafood and other miscellaneous foods, n.e.c. (3117, 3119)"
	1290        "Not specified food industries (Part 311)"
	1370        "Beverage manufacturing (3121)" 
	1390        "Tobacco manufacturing (3122)"  
	1470        "Fiber, yarn, and thread mills (3131)"
	1480        "Fabric mills, except knitting (3132 except 31324)"
	1490        "Textile and fabric finishing and coating mills (3133)"
	1570        "Carpet and rug mills (31411)"  
	1590        "Textile product mills, except carpets and rugs (314 except 31411)"
	1670        "Knitting mills (31324, 3151)"  
	1680        "Cut and sew apparel manufacturing (3152)"
	1690        "Apparel accessories and other apparel manufacturing (3159)"
	1770        "Footwear manufacturing (3162)" 
	1790        "Leather tanning and products, except footwear manufacturing (3161, 3169)"
	1870        "Pulp, paper, and paperboard mills (3221)"
	1880        "Paperboard containers and boxes (32221)"
	1890        "Miscellaneous paper and pulp products  (32222, 32223, 32229)"
	1990        "Printing and related support activities (3231)"
	2070        "Petroleum refining (32411)"    
	2090        "Miscellaneous petroleum and coal products (32419)"
	2170        "Resin, synthetic rubber and fibers, and filaments manufacturing (3252)"
	2180        "Agricultural chemical manufacturing  (3253)"
	2190        "Pharmaceutical and medicine manufacturing (3254)"
	2270        "Paint, coating, and adhesive manufacturing (3255)"
	2280        "Soap, cleaning compound, and cosmetics manufacturing (3256)"
	2290        "Industrial and miscellaneous chemicals (3251, 3259)"
	2370        "Plastics product manufacturing (3261)"
	2380        "Tire manufacturing (32621)"    
	2390        "Rubber products, except tires, manufacturing (32622, 32629)"
	2470        "Pottery, ceramics, and related products manufacturing (32711)"
	2480        "Structural clay product manufacturing (32712)"
	2490        "Glass and glass product manufacturing  (3272)"
	2570        "Cement, concrete, lime, and gypsum product manufacturing (3273, 3274)"
	2590        "Miscellaneous nonmetallic mineral product manufacturing (3279)"
	2670        "Iron and steel mills and steel product manufacturing (3311, 3312)"
	2680        "Aluminum production and processing  (3313)"
	2690        "Nonferrous metal, except aluminum, production and processing (3314)"
	2770        "Foundries (3315)"              
	2780        "Metal forgings and stampings (3321)"
	2790        "Cutlery and hand tool manufacturing  (3322)"
	2870        "Structural metals, and tank and shipping container manufacturing (3323, 3324)"
	2880        "Machine shops; turned product; screw, nut and bolt manufacturing  (3327)"
	2890        "Coating, engraving, heat treating and allied activities (3328)"
	2970        "Ordnance (332992, 332993, 332994, 332995)"
	2980        "Miscellaneous fabricated metal products manufacturing (3325, 3326, 3329 except 332992, )"
	2990        "Not specified metal industries (Part 331 and 332)"
	3070        "Agricultural implement manufacturing (33311)"
	3080        "Construction, mining and oil field machinery manufacturing (33312, 33313)"
	3090        "Commercial and service industry machinery manufacturing (3333)"
	3170        "Metalworking machinery manufacturing (3335)"
	3180        "Engines, turbines, and power transmission equipment manufacturing (3336)"
	3190        "Machinery manufacturing, n.e.c. (3332, 3334, 3339)"
	3290        "Not specified machinery manufacturing (Part 333)"
	3360        "Computer and peripheral equipment manufacturing (3341)"
	3370        "Communications, audio, and video equipment manufacturing (3342, 3343)"
	3380        "Navigational, measuring, electromedical, and control instruments manufacturing (3345)"
	3390        "Electronic component and product manufacturing, n.e.c. (3344, 3346)"
	3470        "Household appliance manufacturing (3352)"
	3490        "Electrical lighting, equipment, and supplies manufacturing, n.e.c. (3351, 3353, 3359)"
	3570        "Motor vehicles and motor vehicle equipment manufacturing (3361, 3362, 3363)"
	3580        "Aircraft and parts manufacturing (336411, 336412, 336413)"
	3590        "Aerospace products and parts manufacturing (336414, 336415, 336419)"
	3670        "Railroad rolling stock manufacturing (3365)"
	3680        "Ship and boat building (3366)" 
	3690        "Other transportation equipment manufacturing (3369)"
	3770        "Sawmills and wood preservation (3211)"
	3780        "Veneer, plywood, and engineered wood products (3212)"
	3790        "Prefabricated wood buildings and mobile homes (321991, 321992)"
	3870        "Miscellaneous wood products (3219 except 321991, 321992)"
	3890        "Furniture and related product manufacturing (337)"
	3960        "Medical equipment and supplies manufacturing (3391)"
	3970        "Toys, amusement, and sporting goods manufacturing (33992, 33993)"
	3980        "Miscellaneous manufacturing, n.e.c.  (3399 except 33992, 33993)"
	3990        "Not specified manufacturing industries (Part 31, 32, 33)"
	4070        "Motor vehicles, parts and supplies, merchant wholesalers  (4231)"
	4080        "Furniture and home furnishing, merchant wholesalers (4232 )"
	4090        "Lumber and other construction materials, merchant wholesalers (4233)"
	4170        "Professional and commercial equipment and supplies, merchant wholesalers (4234)"
	4180        "Metals and minerals, except petroleum, merchant wholesalers (4235)"
	4190        "Electrical goods, merchant wholesalers (4236)"
	4260        "Hardware, plumbing and heating equipment, and supplies, merchant wholesalers (4237)"
	4270        "Machinery, equipment, and supplies, merchant wholesalers  (4238)"
	4280        "Recyclable material, merchant wholesalers (42393)"
	4290        "Miscellaneous durable goods, merchant wholesalers (4239 except 42393)"
	4370        "Paper and paper products, merchant wholesalers (4241)"
	4380        "Drugs, sundries, and chemical and allied products, merchant wholesalers (4242, 4246)"
	4390        "Apparel, fabrics, and notions, merchant wholesalers (4243)"
	4470        "Groceries and related products, merchant wholesalers (4244)"
	4480        "Farm product raw materials, merchant wholesalers (4245)"
	4490        "Petroleum and petroleum products, merchant wholesalers (4247)"
	4560        "Alcoholic beverages, merchant wholesalers (4248)"
	4570        "Farm supplies, merchant wholesalers (42491)"
	4580        "Miscellaneous nondurable goods, merchant wholesalers (4249 except 42491)"
	4585        "Wholesale electronic markets, agents and brokers (4251)"
	4590        "Not specified wholesale trade (Part 42)"
	4670        "Automobile dealers (4411)"     
	4680        "Other motor vehicle dealers (4412)"
	4690        "Auto parts, accessories, and tire stores  (4413)"
	4770        "Furniture and home furnishings stores (442)"
	4780        "Household appliance stores (443111)"
	4790        "Radio, TV, and computer stores (443112, 44312)"
	4870        "Building material and supplies dealers  (4441 except 44413)"
	4880        "Hardware stores (44413)"       
	4890        "Lawn and garden equipment and supplies stores (4442)"
	4970        "Grocery stores (4451)"         
	4980        "Specialty food stores (4452)"  
	4990        "Beer, wine, and liquor stores (4453)"
	5070        "Pharmacies and drug stores (4461)"
	5080        "Health and personal care, except drug, stores (446 except 44611)"
	5090        "Gasoline stations (447)"       
	5170        "Clothing and accessories, except shoe, stores (448 except 44821, 4483)"
	5180        "Shoe stores (44821)"           
	5190        "Jewelry, luggage, and leather goods stores (4483)"
	5270        "Sporting goods, camera, and hobby and toy stores (44313, 45111, 45112)"
	5280        "Sewing, needlework, and piece goods stores (45113)"
	5290        "Music stores (45114, 45122)"   
	5370        "Book stores and news dealers (45121)"
	5380        "Department stores and discount stores (45211)"
	5390        "Miscellaneous general merchandise stores (4529)"
	5470        "Retail florists (4531)"        
	5480        "Office supplies and stationery stores (45321)"
	5490        "Used merchandise stores (4533)"
	5570        "Gift, novelty, and souvenir shops (45322)"
	5580        "Miscellaneous retail stores (4539)"
	5590        "Electronic shopping   (454111)"
	5591        "Electronic auctions   (454112)"
	5592        "Mail order houses (454113)"    
	5670        "Vending machine operators (4542)"
	5680        "Fuel dealers (45431)"          
	5690        "Other direct selling establishments (45439)"
	5790        "Not specified retail trade (Part 44, 45)"
	6070        "Air transportation (481)"      
	6080        "Rail transportation (482)"     
	6090        "Water transportation (483)"    
	6170        "Truck transportation (484)"    
	6180        "Bus service and urban transit (4851, 4852, 4854, 4855, 4859)"
	6190        "Taxi and limousine service (4853)"
	6270        "Pipeline transportation (486)" 
	6280        "Scenic and sightseeing transportation (487)"
	6290        "Services incidental to transportation (488)"
	6370        "Postal Service (491)"          
	6380        "Couriers and messengers (492)" 
	6390        "Warehousing and storage (493)" 
	6470        "Newspaper publishers (51111)"  
	6480        "Publishing, except newspapers and software (5111 except 51111)"
	6490        "Software publishing (5112)"    
	6570        "Motion pictures and video industries (5121)"
	6590        "Sound recording industries (5122)"
	6670        "Radio and television broadcasting and cable (5151, 5152, 5175)"
	6675        "Internet publishing and broadcasting (5161)"
	6680        "Wired telecommunications carriers (5171)"
	6690        "Other telecommunications services (517 except 5171, 5175)"
	6692        "Internet service providers (5181)"
	6695        "Data processing, hosting, and related services (5182)"
	6770        "Libraries and archives (51912)"
	6780        "Other information services (5191 except 51912)"
	6870        "Banking and related activities (521, 52211,52219)"
	6880        "Savings institutions, including credit unions (52212, 52213)"
	6890        "Non-depository credit and related activities (5222, 5223)"
	6970        "Securities, commodities, funds, trusts, and other financial investments (523, 525)"
	6990        "Insurance carriers and related activities (524)"
	7070        "Real estate (531)"             
	7080        "Automotive equipment rental and leasing (5321)"
	7170        "Video tape and disk rental (53223)"
	7180        "Other consumer goods rental (53221, 53222, 53229, 5323)"
	7190        "Commercial, industrial, and other intangible assets rental and leasing (5324, 533)"
	7270        "Legal services (5411)"         
	7280        "Accounting, tax preparation, bookkeeping, and payroll services (5412)"
	7290        "Architectural, engineering, and related services (5413)"
	7370        "Specialized design services (5414)"
	7380        "Computer systems design and related services (5415)"
	7390        "Management, scientific, and technical consulting services (5416)"
	7460        "Scientific research and development services (5417)"
	7470        "Advertising and related services (5418)"
	7480        "Veterinary services (54194)"   
	7490        "Other professional, scientific, and technical services (5419 except 54194)"
	7570        "Management of companies and enterprises (551)"
	7580        "Employment services (5613)"    
	7590        "Business support services (5614)"
	7670        "Travel arrangements and reservation services (5615)"
	7680        "Investigation and security services (5616)"
	7690        "Services to buildings and dwellings (except cleaning during construction and immediately"
	7770        "Landscaping services (56173)"  
	7780        "Other administrative and other support services (5611, 5612, 5619)"
	7790        "Waste management and remediation services (562)"
	7860        "Elementary and secondary schools (6111)"
	7870        "Colleges and universities, including junior colleges (6112, 6113)"
	7880        "Business, technical, and trade schools and training (6114, 6115)"
	7890        "Other schools, instruction, and educational services (6116, 6117)"
	7970        "Offices of physicians (6211)"  
	7980        "Offices of dentists (6212)"    
	7990        "Offices of chiropractors (62131)"
	8070        "Offices of optometrists (62132)"
	8080        "Offices of other health practitioners (6213 except 62131, 62132)"
	8090        "Outpatient care centers (6214)"
	8170        "Home health care services (6216)"
	8180        "Other health care services (6215, 6219)"
	8190        "Hospitals (622)"               
	8270        "Nursing care facilities (6231)"
	8290        "Residential care facilities, without nursing (6232, 6233, 6239)"
	8370        "Individual and family services (6241)"
	8380        "Community food and housing, and emergency services (6242)"
	8390        "Vocational rehabilitation services (6243)"
	8470        "Child day care services (6244)"
	8560        "Independent artists, performing arts, spectator sports, and related industries (711)"
	8570        "Museums, art galleries, historical sites, and similar institutions (712)"
	8580        "Bowling centers (71395)"       
	8590        "Other amusement, gambling, and recreation industries (713 except 71395)"
	8660        "Traveler accommodation (7211)" 
	8670        "Recreational vehicle parks and camps, and rooming and boarding houses (7212, 7213)"
	8680        "Restaurants and other food services (722 except 7224)"
	8690        "Drinking places, alcoholic beverages (7224)"
	8770        "Automotive repair and maintenance (8111 except 811192)"
	8780        "Car washes (811192)"           
	8790        "Electronic and precision equipment repair and maintenance (8112)"
	8870        "Commercial and industrial machinery and equipment repair and maintenance (8113)"
	8880        "Personal and household goods repair and maintenance (8114 except 81143)"
	8890        "Footwear and leather goods repair (81143)"
	8970        "Barber shops (812111)"         
	8980        "Beauty salons (812112)"        
	8990        "Nail salons and other personal care services  (812113, 81219)"
	9070        "Drycleaning and laundry services (8123)"
	9080        "Funeral homes, cemeteries, and crematories (8122)"
	9090        "Other personal services (8129)"
	9160        "Religious organizations (8131)"
	9170        "Civic, social, advocacy organizations, and grantmaking and giving services (8132, 8133,"
	9180        "Labor unions (81393)"          
	9190        "Business, professional, political, and similar organizations (8139 except 81393)"
	9290        "Private households (814)"      
	9370        "Executive offices and legislative bodies (92111, 92112, 92114, part 92115)"
	9380        "Public finance activities (92113)"
	9390        "Other general government and support (92119)"
	9470        "Justice, public order, and safety activities (922, part 92115)"
	9480        "Administration of human resource programs  (923)"
	9490        "Administration of environmental quality and housing programs (924, 925)"
	9570        "Administration of economic programs and space research (926, 927)"
	9590        "National security and international affairs (928)"
	9890        "Persons whose last job was Armed Forces"
	-1          "Not in Universe"               
;
label values ajbind2  ajbind2l;
label define ajbind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tjbocc2  tjbocc2l;
label define tjbocc2l
	10          "Chief executives (11-1011)"    
	0020        "General and operations managers (11-1021)"
	0040        "Advertising and promotions managers (11-2011)"
	0050        "Marketing and sales managers (11-2020)"
	0060        "Public relations managers (11-2031)"
	100         "Administrative services managers (11-3011)"
	0110        "Computer and information systems managers (11-3021)"
	0120        "Financial managers (11-3031)"  
	0130        "Human resources managers (11-3040)"
	0140        "Industrial production managers(11-3051)"
	0150        "Purchasing managers (11-3061)" 
	160         "Transportation, storage, and distribution managers (11-3071)"
	200         "Farm, ranch, and other agricultural managers (11-9011)"
	0210        "Farmers and ranchers (11-9012)"
	0220        "Construction managers (11-9021)"
	0230        "Education administrators (11-9030)"
	0300        "Engineering managers (11-9041)"
	0310        "Food service managers (11-9051)"
	0320        "Funeral directors (11-9061)"   
	0330        "Gaming managers (11-9071)"     
	0340        "Lodging managers (11-9081)"    
	0350        "Medical and health services managers (11-9111)"
	0360        "Natural sciences managers (11-9121)"
	0410        "Property, real estate, and community association managers (11-9141)"
	0420        "Social and community service managers (11-9151)"
	0430        "Managers, all other (11-9199)" 
	0500        "Agents and business managers of artists, performers, and athletes (13-1011)"
	0510        "Purchasing agents and buyers, farm products (13-1021)"
	520         "Wholesale and retail buyers, except farm products (13-1022)"
	0530        "Purchasing agents, except wholesale, retail, and farm products (13-1023)"
	0540        "Claims adjusters, appraisers, examiners, and investigators (13-1030)"
	0560        "Compliance officers, except agriculture, construction, health and safety, and transporta"
	0600        "Cost estimators (13-1051)"     
	0620        "Human resources, training, and labor relations specialists (13-1070)"
	0700        "Logisticians (13-1081)"        
	0710        "Management analysts (13-1111)" 
	0720        "Meeting and convention planners (13-1121)"
	0730        "Other business operations specialists (13-11XX)"
	0800        "Accountants and auditors (13-2011)"
	0810        "Appraisers and assessors of real estate (13-2021)"
	0820        "Budget analysts (13-2031)"     
	0830        "Credit analysts (13-2041)"     
	840         "Financial analysts (13-2051)"  
	0850        "Personal financial advisors (13-2052)"
	0860        "Insurance underwriters (13-2053)"
	0900        "Financial examiners (13-2061)" 
	0910        "Loan counselors and officers (13-2070)"
	0930        "Tax examiners, collectors, and revenue agents (13-2081)"
	0940        "Tax preparers (13-2082)"       
	0950        "Financial specialists, all other (13-2099)"
	1000        "Computer scientists and systems analysts (15-10XX)"
	1010        "Computer programmers (15-1021)"
	1020        "Computer software engineers (15-1030)"
	1040        "Computer support specialists (15-1041)"
	1060        "Database administrators (15-1061)"
	1100        "Network and computer systems administrators (15-1071)"
	1110        "Network systems and data communications analysts (15-1081)"
	1200        "Actuaries (15-2011)"           
	1210        "Mathematicians (15-2021)"      
	1220        "Operations research analysts (15-2031)"
	1230        "Statisticians (15-2041)"       
	1240        "Miscellaneous mathematical science occupations (15-2090)"
	1300        "Architects, except naval (17-1010)"
	1310        "Surveyors, cartographers, and photogrammetrists (17-1020)"
	1320        "Aerospace engineers (17-2011)" 
	1330        "Agricultural engineers (17-2021)"
	1340        "Biomedical engineers (17-2031)"
	1350        "Chemical engineers (17-2041)"  
	1360        "Civil engineers (17-2051)"     
	1400        "Computer hardware engineers (17-2061)"
	1410        "Electrical and electronic engineers (17-2070)"
	1420        "Environmental engineers (17-2081)"
	1430        "Industrial engineers, including health and safety (17-2110)"
	1440        "Marine engineers and naval architects (17-2121)"
	1450        "Materials engineers (17-2131)" 
	1460        "Mechanical engineers (17-2141)"
	1500        "Mining and geological engineers, including mining safety engineers (17-2151)"
	1510        "Nuclear engineers (17-2161)"   
	1520        "Petroleum engineers (17-2171)" 
	1530        "Engineers, all other (17-2199)"
	1540        "Drafters (17-3010)"            
	1550        "Engineering technicians, except drafters (17-3020)"
	1560        "Surveying and mapping technicians (17-3031)"
	1600        "Agricultural and food scientists (19-1010)"
	1610        "Biological scientists (19-1020)"
	1640        "Conservation scientists and foresters (19-1030)"
	1650        "Medical scientists (19-1040)"  
	1700        "Astronomers and physicists (19-2010)"
	1710        "Atmospheric and space scientists (19-2021)"
	1720        "Chemists and materials scientists (19-2030)"
	1740        "Environmental scientists and geoscientists (19-2040)"
	1760        "Physical scientists, all other (19-2099)"
	1800        "Economists (19-3011)"          
	1810        "Market and survey researchers (19-3020)"
	1820        "Psychologists (19-3030)"       
	1830        "Sociologists (19-3041)"        
	1840        "Urban and regional planners (19-3051)"
	1860        "Miscellaneous social scientists and related workers (19-3090)"
	1900        "Agricultural and food science technicians (19-4011)"
	1910        "Biological technicians (19-4021)"
	1920        "Chemical technicians (19-4031)"
	1930        "Geological and petroleum technicians (19-4041)"
	1940        "Nuclear technicians (19-4051)" 
	1960        "Other life, physical, and social science technicians (19-40XX)"
	2000        "Counselors (21-1010)"          
	2010        "Social workers (21-1020)"      
	2020        "Miscellaneous community and social service specialists (21-1090)"
	2040        "Clergy (21-2011)"              
	2050        "Directors, religious activities and education (21-2021)"
	2060        "Religious workers, all other (21-2099)"
	2100        "Lawyers (23-1011)"             
	2140        "Paralegals and legal assistants (23-2011)"
	2150        "Miscellaneous legal support workers (23-2090)"
	2200        "Postsecondary teachers (25-1000)"
	2300        "Preschool and kindergarten teachers (25-2010)"
	2310        "Elementary and middle school teachers (25-2020)"
	2320        "Secondary school teachers (25-2030)"
	2330        "Special education teachers (25-2040)"
	2340        "Other teachers and instructors (25-3000)"
	2400        "Archivists, curators, and museum technicians (25-4010)"
	2430        "Librarians (25-4021)"          
	2440        "Library technicians (25-4031)" 
	2540        "Teacher assistants (25-9041)"  
	2550        "Other education, training, and library workers (25-90XX)"
	2600        "Artists and related workers (27-1010)"
	2630        "Designers (27-1020)"           
	2700        "Actors (27-2011)"              
	2710        "Producers and directors (27-2012)"
	2720        "Athletes, coaches, umpires, and related workers (27-2020)"
	2740        "Dancers and choreographers (27-2030)"
	2750        "Musicians, singers, and related workers (27-2040)"
	2760        "Entertainers and performers, sports and related workers, all other (27-2099)"
	2800        "Announcers (27-3010)"          
	2810        "News analysts, reporters and correspondents (27-3020)"
	2820        "Public relations specialists (27-3031)"
	2830        "Editors (27-3041)"             
	2840        "Technical writers (27-3042)"   
	2850        "Writers and authors (27-3043)" 
	2860        "Miscellaneous media and communication workers (27-3090)"
	2900        "Broadcast and sound engineering technicians and radio operators (27-4010)"
	2910        "Photographers (27-4021)"       
	2920        "Television, video, and motion picture camera operators and editors (27-4030)"
	2960        "Media and communication equipment workers, all other (27-4099)"
	3000        "Chiropractors (29-1011)"       
	3010        "Dentists (29-1020)"            
	3030        "Dietitians and nutritionists (29-1031)"
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
	3230        "Speech-language pathologists (29-1127)"
	3240        "Therapists, all other (29-1129)"
	3250        "Veterinarians (29-1131)"       
	3260        "Health diagnosing and treating practitioners, all other (29-1199 )"
	3300        "Clinical laboratory technologists and technicians (29-2010)"
	3310        "Dental hygienists (29-2021)"   
	3320        "Diagnostic related technologists and technicians (29-2030)"
	3400        "Emergency medical technicians and paramedics (29-2041)"
	3410        "Health diagnosing and treating practitioner support technicians (29-2050)"
	3500        "Licensed practical and licensed vocational nurses (29-2061)"
	3510        "Medical records and health information technicians (29-2071)"
	3520        "Opticians, dispensing (29-2081)"
	3530        "Miscellaneous health technologists and technicians (29-2090)"
	3540        "Other healthcare practitioners and technical occupations (29-9000)"
	3600        "Nursing, psychiatric, and home health aides (31-1010 )"
	3610        "Occupational therapist assistants and aides (31-2010)"
	3620        "Physical therapist assistants and aides (31-2020)"
	3630        "Massage therapists (31-9011)"  
	3640        "Dental assistants (31-9091)"   
	3650        "Medical assistants and other healthcare support occupations (31-909X)"
	3700        "First-line supervisors/managers of correctional officers (33-1011)"
	3710        "First-line supervisors/managers of police and detectives (33-1012)"
	3720        "First-line supervisors/managers of fire fighting and prevention workers (33-1021)"
	3730        "Supervisors, protective service workers, all other (33-1099)"
	3740        "Fire fighters (33-2011)"       
	3750        "Fire inspectors (33-2020)"     
	3800        "Bailiffs, correctional officers, and jailers (33-3010)"
	3820        "Detectives and criminal investigators (33-3021)"
	3830        "Fish and game wardens (33-3031)"
	3840        "Parking enforcement workers (33-3041)"
	3850        "Police and sheriff's patrol officers(33-3051)"
	3860        "Transit and railroad police (33-3052)"
	3900        "Animal control workers (33-9011)"
	3910        "Private detectives and investigators (33-9021)"
	3920        "Security guards and gaming surveillance officers (33-9030)"
	3940        "Crossing guards (33-9091)"     
	3950        "Lifeguards and other protective service workers (33-909X)"
	4000        "Chefs and head cooks (35-1011)"
	4010        "First-line supervisors/managers of food preparation and serving workers (35-1012 )"
	4020        "Cooks (35-2010)"               
	4030        "Food preparation workers (35-2021)"
	4040        "Bartenders (35-3011)"          
	4050        "Combined food preparation and serving workers, including fast food (35-3021)"
	4060        "Counter attendants, cafeteria, food concession, and coffee shop (35-3022)"
	4110        "Waiters and waitresses (35-3031)"
	4120        "Food servers, nonrestaurant (35-3041)"
	4130        "Dining room and cafeteria attendants and bartender helpers (35-9011)"
	4140        "Dishwashers (35-9021)"         
	4150        "Hosts and hostesses, restaurant, lounge, and coffee shop (35-9031)"
	4160        "Food preparation and serving related workers, all other (35-9099)"
	4200        "First-line supervisors/managers of housekeeping and janitorial workers (37-1011)"
	4210        "First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"
	4220        "Janitors and building cleaners (37-201X)"
	4230        "Maids and housekeeping cleaners (37-2012)"
	4240        "Pest control workers (37-2021)"
	4250        "Grounds maintenance workers (37-3010)"
	4300        "First-line supervisors/managers of gaming workers (39-1010)"
	4320        "First-line supervisors/managers of personal service workers (39-1021)"
	4340        "Animal trainers (39-2011)"     
	4350        "Nonfarm animal caretakers (39-2021)"
	4400        "Gaming services workers (39-3010)"
	4410        "Motion picture projectionists (39-3021)"
	4420        "Ushers, lobby attendants, and ticket takers (39-3031)"
	4430        "Miscellaneous entertainment attendants and related workers (39-3090)"
	4460        "Funeral service workers (39-4000)"
	4500        "Barbers (39-5011)"             
	4510        "Hairdressers, hairstylists, and cosmetologists (39-5012)"
	4520        "Miscellaneous personal appearance workers (39-5090)"
	4530        "Baggage porters, bellhops, and concierges (39-6010)"
	4540        "Tour and travel guides (39-6020)"
	4550        "Transportation attendants (39-6030)"
	4600        "Child care workers (39-9011)"  
	4610        "Personal and home care aides (39-9021)"
	4620        "Recreation and fitness workers (39-9030)"
	4640        "Residential advisors (39-9041)"
	4650        "Personal care and service workers, all other (39-9099)"
	4700        "First-line supervisors/managers of retail sales workers (41-1011)"
	4710        "First-line supervisors/managers of non-retail sales workers (41-1012)"
	4720        "Cashiers (41-2010)"            
	4740        "Counter and rental clerks (41-2021)"
	4750        "Parts salespersons (41-2022)"  
	4760        "Retail salespersons (41-2031)" 
	4800        "Advertising sales agents (41-3011)"
	4810        "Insurance sales agents (41-3021)"
	4820        "Securities, commodities, and financial services sales agents (41-3031)"
	4830        "Travel agents (41-3041)"       
	4840        "Sales representatives, services, all other (41-3099)"
	4850        "Sales representatives, wholesale and manufacturing (41-4010)"
	4900        "Models, demonstrators, and product promoters (41-9010)"
	4920        "Real estate brokers and sales agents (41-9020)"
	4930        "Sales engineers (41-9031)"     
	4940        "Telemarketers (41-9041)"       
	4950        "Door-to-door sales workers, news and street vendors, and related workers (41-9091)"
	4960        "Sales and related workers, all other (41-9099)"
	5000        "First-line supervisors/managers of office and administrative support workers (43-1011)"
	5010        "Switchboard operators, including answering service (43-2011)"
	5020        "Telephone operators (43-2021)" 
	5030        "Communications equipment operators, all other (43-2099)"
	5100        "Bill and account collectors (43-3011)"
	5110        "Billing and posting clerks and machine operators (43-3021)"
	5120        "Bookkeeping, accounting, and auditing clerks (43-3031)"
	5130        "Gaming cage workers (43-3041)" 
	5140        "Payroll and timekeeping clerks (43-3051)"
	5150        "Procurement clerks (43-3061)"  
	5160        "Tellers (43-3071)"             
	5200        "Brokerage clerks (43-4011)"    
	5210        "Correspondence clerks (43-4021)"
	5220        "Court, municipal, and license clerks (43-4031)"
	5230        "Credit authorizers, checkers, and clerks (43-4041)"
	5240        "Customer service representatives (43-4051)"
	5250        "Eligibility interviewers, government programs (43-4061)"
	5260        "File Clerks (43-4071)"         
	5300        "Hotel, motel, and resort desk clerks (43-4081)"
	5310        "Interviewers, except eligibility and loan (43-4111)"
	5320        "Library assistants, clerical (43-4121)"
	5330        "Loan interviewers and clerks (43-4131)"
	5340        "New accounts clerks (43-4141)" 
	5350        "Order clerks (43-4151)"        
	5360        "Human resources assistants, except payroll and timekeeping (43-4161)"
	5400        "Receptionists and information clerks (43-4171)"
	5410        "Reservation and transportation ticket agents and travel clerks (43-4181)"
	5420        "Information and record clerks, all other (43-4199)"
	5500        "Cargo and freight agents (43-5011)"
	5510        "Couriers and messengers (43-5021)"
	5520        "Dispatchers (43-5030)"         
	5530        "Meter readers, utilities (43-5041)"
	5540        "Postal service clerks (43-5051)"
	5550        "Postal service mail carriers (43-5052)"
	5560        "Postal service mail sorters, processors, and processing machine operators (43-5053)"
	5600        "Production, planning, and expediting clerks (43-5061)"
	5610        "Shipping, receiving, and traffic clerks (43-5071)"
	5620        "Stock clerks and order fillers (43-5081)"
	5630        "Weighers, measurers, checkers, and samplers, recordkeeping (43-5111)"
	5700        "Secretaries and administrative assistants (43-6010)"
	5800        "Computer operators (43-9011)"  
	5810        "Data entry keyers (43-9021)"   
	5820        "Word processors and typists (43-9022)"
	5830        "Desktop publishers (43-9031)"  
	5840        "Insurance claims and policy processing clerks (43-9041)"
	5850        "Mail clerks and mail machine operators, except postal service (43-9051)"
	5860        "Office clerks, general (43-9061)"
	5900        "Office machine operators, except computer (43-9071)"
	5910        "Proofreaders and copy markers (43-9081)"
	5920        "Statistical assistants (43-9111)"
	5930        "Office and administrative support workers, all other (43-9199)"
	6000        "First-line supervisors/managers of farming, fishing, and forestry workers (45-1010)"
	6010        "Agricultural inspectors (45-2011)"
	6020        "Animal breeders (45-2021)"     
	6040        "Graders and sorters, agricultural products (45-2041)"
	6050        "Miscellaneous agricultural workers (45-2090)"
	6100        "Fishers and related fishing workers (45-3011)"
	6110        "Hunters and trappers (45-3021)"
	6120        "Forest and conservation workers (45-4011)"
	6130        "Logging workers (45-4020)"     
	6200        "First-line supervisors/managers of construction trades and extraction workers (47-1011)"
	6210        "Boilermakers (47-2011)"        
	6220        "Brickmasons, blockmasons, and stonemasons (47-2020)"
	6230        "Carpenters (47-2031)"          
	6240        "Carpet, floor, and tile installers and finishers (47-2040)"
	6250        "Cement masons, concrete finishers, and terrazzo workers (47-2050)"
	6260        "Construction laborers (47-2061)"
	6300        "Paving, surfacing, and tamping equipment operators (47-2071)"
	6310        "Pile-driver operators (47-2072)"
	6320        "Operating engineers and other construction equipment operators (47-2073)"
	6330        "Drywall installers, ceiling tile installers, and tapers (47-2080)"
	6350        "Electricians (47-2111)"        
	6360        "Glaziers (47-2121)"            
	6400        "Insulation workers (47-2130)"  
	6420        "Painters, construction and maintenance (47-2141)"
	6430        "Paperhangers (47-2142)"        
	6440        "Pipelayers, plumbers, pipefitters, and steamfitters (47-2150)"
	6460        "Plasterers and stucco masons (47-2161)"
	6500        "Reinforcing iron and rebar workers (47-2171)"
	6510        "Roofers (47-2181)"             
	6520        "Sheet metal workers (47-2211)" 
	6530        "Structural iron and steel workers (47-2221)"
	6600        "Helpers, construction trades (47-3010)"
	6660        "Construction and building inspectors (47-4011)"
	6700        "Elevator installers and repairers (47-4021)"
	6710        "Fence erectors (47-4031)"      
	6720        "Hazardous materials removal workers (47-4041)"
	6730        "Highway maintenance workers (47-4051)"
	6740        "Rail-track laying and maintenance equipment operators (47-4061)"
	6750        "Septic tank servicers and sewer pipe cleaners (47-4071)"
	6760        "Miscellaneous construction and related workers (47-4090)"
	6800        "Derrick, rotary drill, and service unit operators, oil, gas, and mining (47-5010)"
	6820        "Earth drillers, except oil and gas (47-5021)"
	6830        "Explosives workers, ordnance handling experts, and blasters (47-5031)"
	6840        "Mining machine operators (47-5040)"
	6910        "Roof bolters, mining (47-5061)"
	6920        "Roustabouts, oil and gas (47-5071)"
	6930        "Helpers--extraction workers (47-5081)"
	6940        "Other extraction workers (47-50XX)"
	7000        "First-line supervisors/managers of mechanics, installers, and repairers (49-1011)"
	7010        "Computer, automated teller, and office machine repairers (49-2011)"
	7020        "Radio and telecommunications equipment installers and repairers (49-2020)"
	7030        "Avionics technicians (49-2091)"
	7040        "Electric motor, power tool, and related repairers (49-2092)"
	7050        "Electrical and electronics installers and repairers, transportation equipment (49-2093)"
	7100        "Electrical and electronics repairers, industrial and utility (49-209X)"
	7110        "Electronic equipment installers and repairers, motor vehicles (49-2096)"
	7120        "Electronic home entertainment equipment installers and repairers (49-2097)"
	7130        "Security and fire alarm systems installers (49-2098)"
	7140        "Aircraft mechanics and service technicians (49-3011)"
	7150        "Automotive body and related repairers (49-3021)"
	7160        "Automotive glass installers and repairers (49-3022 )"
	7200        "Automotive service technicians and mechanics (49-3023)"
	7210        "Bus and truck mechanics and diesel engine specialists (49-3031)"
	7220        "Heavy vehicle and mobile equipment service technicians and mechanics (49-3040)"
	7240        "Small engine mechanics (49-3050)"
	7260        "Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers (49-3090"
	7300        "Control and valve installers and repairers (49-9010)"
	7310        "Heating, air conditioning, and refrigeration mechanics and installers (49-9021)"
	7320        "Home appliance repairers (49-9031)"
	7330        "Industrial and refractory machinery mechanics (49-904X)"
	7340        "Maintenance and repair workers, general (49-9042)"
	7350        "Maintenance workers, machinery (49-9043)"
	7360        "Millwrights (49-9044)"         
	7410        "Electrical power-line installers and repairers (49-9051)"
	7420        "Telecommunications line installers and repairers (49-9052)"
	7430        "Precision instrument and equipment repairers (49-9060)"
	7510        "Coin, vending, and amusement machine servicers and repairers (49-9091)"
	7520        "Commercial divers (49-9092)"   
	7540        "Locksmiths and safe repairers (49-9094)"
	7550        "Manufactured building and mobile home installers (49-9095)"
	7560        "Riggers (49-9096)"             
	7600        "Signal and track switch repairers (49-9097)"
	7610        "Helpers--installation, maintenance, and repair workers (49-9098)"
	7620        "Other installation, maintenance, and repair workers (49-909X)"
	7700        "First-line supervisors/managers of production and operating workers (51-1011)"
	7710        "Aircraft structure, surfaces, rigging, and systems assemblers (51-2011)"
	7720        "Electrical, electronics, and electromechanical assemblers (51-2020)"
	7730        "Engine and other machine assemblers (51-2031)"
	7740        "Structural metal fabricators and fitters (51-2041)"
	7750        "Miscellaneous assemblers and fabricators (51-2090)"
	7800        "Bakers (51-3011)"              
	7810        "Butchers and other meat, poultry, and fish processing workers (51-3020)"
	7830        "Food and tobacco roasting, baking, and drying machine operators and tenders (51-3091)"
	7840        "Food batchmakers (51-3092)"    
	7850        "Food cooking machine operators and tenders (51-3093)"
	7900        "Computer control programmers and operators (51-4010)"
	7920        "Extruding and drawing machine setters, operators, and tenders, metal and plastic (51-402"
	7930        "Forging machine setters, operators, and tenders, metal and plastic (51-4022)"
	7940        "Rolling machine setters, operators, and tenders, metal and plastic (51-4023)"
	7950        "Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"
	7960        "Drilling and boring machine tool setters, operators, and tenders, metal and plastic (51-"
	8000        "Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders,"
	8010        "Lathe and turning machine tool setters, operators, and tenders, metal and plastic (51-40"
	8020        "Milling and planing machine setters, operators, and tenders, metal and plastic (51-4035)"
	8030        "Machinists (51-4041)"          
	8040        "Metal furnace and kiln operators and tenders (51-4050)"
	8060        "Model makers and patternmakers, metal and plastic (51-4060)"
	8100        "Molders and molding machine setters, operators, and tenders, metal and plastic (51-4070)"
	8120        "Multiple machine tool setters, operators, and tenders, metal and plastic (51-4081)"
	8130        "Tool and die makers (51-4111)" 
	8140        "Welding, soldering, and brazing workers (51-4120)"
	8150        "Heat treating equipment setters, operators, and tenders, metal and plastic (51-4191)"
	8160        "Lay-out workers, metal and plastic (51-4192)"
	8200        "Plating and coating machine setters, operators, and tenders, metal and plastic (51-4193)"
	8210        "Tool grinders, filers, and sharpeners (51-4194)"
	8220        "Metalworkers and plastic workers, all other (51-4199)"
	8230        "Bookbinders and bindery workers (51-5010)"
	8240        "Job printers (51-5021)"        
	8250        "Prepress technicians and workers (51-5022)"
	8260        "Printing machine operators (51-5023)"
	8300        "Laundry and dry-cleaning workers (51-6011)"
	8310        "Pressers, textile, garment, and related materials (51-6021)"
	8320        "Sewing machine operators (51-6031)"
	8330        "Shoe and leather workers and repairers (51-6041)"
	8340        "Shoe machine operators and tenders (51-6042)"
	8350        "Tailors, dressmakers, and sewers (51-6050)"
	8360        "Textile bleaching and dyeing machine operators and tenders (51-6061)"
	8400        "Textile cutting machine setters, operators, and tenders (51-6062)"
	8410        "Textile knitting and weaving machine setters, operators, and tenders (51-6063)"
	8420        "Textile winding, twisting, and drawing out machine setters, operators, and tenders (51-6"
	8430        "Extruding and forming machine setters, operators, and tenders, synthetic and glass fiber"
	8440        "Fabric and apparel patternmakers (51-6092)"
	8450        "Upholsterers (51-6093)"        
	8460        "Textile, apparel, and furnishings workers, all other (51-6099)"
	8500        "Cabinetmakers and bench carpenters (51-7011)"
	8510        "Furniture finishers (51-7021)" 
	8520        "Model makers and patternmakers, wood (51-7030)"
	8530        "Sawing machine setters, operators, and tenders, wood (51-7041)"
	8540        "Woodworking machine setters, operators, and tenders, except sawing (51-7042)"
	8550        "Woodworkers, all other (51-7099)"
	8600        "Power plant operators, distributors, and dispatchers (51-8010)"
	8610        "Stationary engineers and boiler operators (51-8021)"
	8620        "Water and liquid waste treatment plant and system operators (51-8031)"
	8630        "Miscellaneous plant and system operators (51-8090)"
	8640        "Chemical processing machine setters, operators, and tenders (51-9010)"
	8650        "Crushing, grinding, polishing, mixing, and blending workers (51-9020)"
	8710        "Cutting workers (51-9030)"     
	8720        "Extruding, forming, pressing, and compacting machine setters, operators, and tenders (51"
	8730        "Furnace, kiln, oven, drier, and kettle operators and tenders (51-9051)"
	8740        "Inspectors, testers, sorters, samplers, and weighers (51-9061)"
	8750        "Jewelers and precious stone and metal workers (51-9071)"
	8760        "Medical, dental, and ophthalmic laboratory technicians (51-9080)"
	8800        "Packaging and filling machine operators and tenders (51-9111)"
	8810        "Painting workers (51-9120)"    
	8830        "Photographic process workers and processing machine operators (51-9130)"
	8840        "Semiconductor processors (51-9141)"
	8850        "Cementing and gluing machine operators and tenders (51-9191)"
	8860        "Cleaning, washing, and metal pickling equipment operators and tenders (51-9192)"
	8900        "Cooling and freezing equipment operators and tenders (51-9193)"
	8910        "Etchers and engravers (51-9194)"
	8920        "Molders, shapers, and casters, except metal and plastic (51-9195)"
	8930        "Paper goods machine setters, operators, and tenders (51-9196)"
	8940        "Tire builders (51-9197)"       
	8950        "Helpers--production workers (51-9198)"
	8960        "Production workers, all other (51-9199)"
	9000        "Supervisors, transportation and material moving workers (53-1000)"
	9030        "Aircraft pilots and flight engineers (53-2010)"
	9040        "Air traffic controllers and airfield operations specialists (53-2020)"
	9110        "Ambulance drivers and attendants, except emergency medical technicians (53-3011)"
	9120        "Bus drivers (53-3020)"         
	9130        "Driver/sales workers and truck drivers (53-3030)"
	9140        "Taxi drivers and chauffeurs (53-3041)"
	9150        "Motor vehicle operators, all other (53-3099)"
	9200        "Locomotive engineers and operators (53-4010)"
	9230        "Railroad brake, signal, and switch operators (53-4021)"
	9240        "Railroad conductors and yardmasters (53-4031)"
	9260        "Subway, streetcar, and other rail transportation workers (53-30XX)"
	9300        "Sailors and marine oilers (53-5011)"
	9310        "Ship and boat captains and operators (53-5020)"
	9330        "Ship engineers (53-5031)"      
	9340        "Bridge and lock tenders (53-6011)"
	9350        "Parking lot attendants (53-6021)"
	9360        "Service station attendants (53-6031)"
	9410        "Transportation inspectors (53-6051)"
	9420        "Other transportation workers (53-60XX)"
	9500        "Conveyor operators and tenders (53-7011)"
	9510        "Crane and tower operators (53-7021)"
	9520        "Dredge, excavating, and loading machine operators (53-7030)"
	9560        "Hoist and winch operators (53-7041)"
	9600        "Industrial truck and tractor operators (53-7051)"
	9610        "Cleaners of vehicles and equipment (53-7061)"
	9620        "Laborers and freight, stock, and material movers, hand (53-7062)"
	9630        "Machine feeders and offbearers (53-7063)"
	9640        "Packers and packagers, hand (53-7064)"
	9650        "Pumping station operators (53-7070)"
	9720        "Refuse and recyclable material collectors (53-7081)"
	9730        "Shuttle car operators (53-7111)"
	9740        "Tank car, truck, and ship loaders (53-7121)"
	9750        "Material moving workers, all other (53-7199)"
	9840        "Persons whose current labor force status is unemployed and last job was Armed Forces"
	-1          "Not in Universe"               
;
label values ajbocc2  ajbocc2l;
label define ajbocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebno1    ebno1l; 
label define ebno1l  
	-1          "Not in Universe"               
;
label values ebiznow1 ebiznowm;
label define ebiznowm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abiznow1 abiznowm;
label define abiznowm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsbdate1 tsbdatem;
label define tsbdatem
	-1          "Not in Universe"               
;
label values asbdate1 asbdatem;
label define asbdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tebdate1 tebdatem;
label define tebdatem
	-1          "Not in Universe"               
;
label values aebdate1 aebdatem;
label define aebdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values erendb1  erendb1l;
label define erendb1l
	1           "Retirement or old age"         
	2           "Childcare problems"            
	3           "Other family/personal problems"
	4           "Own illness"                   
	5           "Own injury"                    
	6           "School/training"               
	7           "Went bankrupt/business failed" 
	8           "Sold business or transferred ownership"
	9           "To start other business/take job"
	10          "Season ended for a seasonal business"
	11          "Quit for some other reason"    
	-1          "Not in Universe"               
;
label values arendb1  arendb1l;
label define arendb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehrsbs1  ehrsbs1l;
label define ehrsbs1l
	-8          "Hours vary"                    
	-1          "Not in Universe"               
;
label values ahrsbs1  ahrsbs1l;
label define ahrsbs1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egrosb1  egrosb1l;
label define egrosb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrosb1  agrosb1l;
label define agrosb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egrssb1  egrssb1l;
label define egrssb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrssb1  agrssb1l;
label define agrssb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempb1   tempb1l;
label define tempb1l 
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempb1   aempb1l;
label define aempb1l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eincpb1  eincpb1l;
label define eincpb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aincpb1  aincpb1l;
label define aincpb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epropb1  epropb1l;
label define epropb1l
	1           "alone"                         
	2           "Partnership"                   
	-1          "Not in Universe"               
;
label values apropb1  apropb1l;
label define apropb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehprtb1  ehprtb1l;
label define ehprtb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahprtb1  ahprtb1l;
label define ahprtb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eslryb1  eslryb1l;
label define eslryb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aslryb1  aslryb1l;
label define aslryb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eoincb1  eoincb1l;
label define eoincb1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoincb1  aoincb1l;
label define aoincb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tprftb1  tprftb1l;
label define tprftb1l
	0           "None or not in universe"       
;
label values aprftb1  aprftb1l;
label define aprftb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbmsum1  tbmsum1l;
label define tbmsum1l
	0           "None or not in universe"       
;
label values abmsum1  abmsum1l;
label define abmsum1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epartb11 epartb1m;
label define epartb1m
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values epartb21 epartb2m;
label define epartb2m
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values epartb31 epartb3m;
label define epartb3m
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values tbsind1  tbsind1l;
label define tbsind1l
	1           "Agriculture, forestry, fishing, and hunting"
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing"                 
	5           "Wholesale trade"               
	6           "Retail Trade"                  
	7           "Transportation, warehousing, and utilities"
	8           "Information"                   
	9           "Finance, insurance, real estate, and rental and leasing"
	10          "Professional, scientific, management, administrative, and waste management"
	11          "Educational, health and social services"
	12          "Arts, entertainment, recreation, accommodations, and food services"
	13          "Other services (except public administration)"
	14          "Public administration"         
	15          "Active duty military"          
	-1          "Not in Universe"               
;
label values absind1  absind1l;
label define absind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbsocc1  tbsocc1l;
label define tbsocc1l
	10          "Chief executives (11-1011)"    
	0020        "General and operations managers (11-1021)"
	0040        "Advertising and promotions managers (11-2011)"
	0050        "Marketing and sales managers (11-2020)"
	0060        "Public relations managers (11-2031)"
	100         "Administrative services managers (11-3011)"
	0110        "Computer and information systems managers (11-3021)"
	0120        "Financial managers (11-3031)"  
	0130        "Human resources managers (11-3040)"
	0140        "Industrial production managers(11-3051)"
	0150        "Purchasing managers (11-3061)" 
	160         "Transportation, storage, and distribution managers (11-3071)"
	200         "Farm, ranch, and other agricultural managers (11-9011)"
	0210        "Farmers and ranchers (11-9012)"
	0220        "Construction managers (11-9021)"
	0230        "Education administrators (11-9030)"
	0300        "Engineering managers (11-9041)"
	0310        "Food service managers (11-9051)"
	0320        "Funeral directors (11-9061)"   
	0330        "Gaming managers (11-9071)"     
	0340        "Lodging managers (11-9081)"    
	0350        "Medical and health services managers (11-9111)"
	0360        "Natural sciences managers (11-9121)"
	0410        "Property, real estate, and community association managers (11-9141)"
	0420        "Social and community service managers (11-9151)"
	0430        "Managers, all other (11-9199)" 
	0500        "Agents and business managers of artists, performers, and athletes (13-1011)"
	0510        "Purchasing agents and buyers, farm products (13-1021)"
	520         "Wholesale and retail buyers, except farm products (13-1022)"
	0530        "Purchasing agents, except wholesale, retail, and farm products (13-1023)"
	0540        "Claims adjusters, appraisers, examiners, and investigators (13-1030)"
	0560        "Compliance officers, except agriculture, construction, health and safety, and transporta"
	0600        "Cost estimators (13-1051)"     
	0620        "Human resources, training, and labor relations specialists (13-1070)"
	0700        "Logisticians (13-1081)"        
	0710        "Management analysts (13-1111)" 
	0720        "Meeting and convention planners (13-1121)"
	0730        "Other business operations specialists (13-11XX)"
	0800        "Accountants and auditors (13-2011)"
	0810        "Appraisers and assessors of real estate (13-2021)"
	0820        "Budget analysts (13-2031)"     
	0830        "Credit analysts (13-2041)"     
	840         "Financial analysts (13-2051)"  
	0850        "Personal financial advisors (13-2052)"
	0860        "Insurance underwriters (13-2053)"
	0900        "Financial examiners (13-2061)" 
	0910        "Loan counselors and officers (13-2070)"
	0930        "Tax examiners, collectors, and revenue agents (13-2081)"
	0940        "Tax preparers (13-2082)"       
	0950        "Financial specialists, all other (13-2099)"
	1000        "Computer scientists and systems analysts (15-10XX)"
	1010        "Computer programmers (15-1021)"
	1020        "Computer software engineers (15-1030)"
	1040        "Computer support specialists (15-1041)"
	1060        "Database administrators (15-1061)"
	1100        "Network and computer systems administrators (15-1071)"
	1110        "Network systems and data communications analysts (15-1081)"
	1200        "Actuaries (15-2011)"           
	1210        "Mathematicians (15-2021)"      
	1220        "Operations research analysts (15-2031)"
	1230        "Statisticians (15-2041)"       
	1240        "Miscellaneous mathematical science occupations (15-2090)"
	1300        "Architects, except naval (17-1010)"
	1310        "Surveyors, cartographers, and photogrammetrists (17-1020)"
	1320        "Aerospace engineers (17-2011)" 
	1330        "Agricultural engineers (17-2021)"
	1340        "Biomedical engineers (17-2031)"
	1350        "Chemical engineers (17-2041)"  
	1360        "Civil engineers (17-2051)"     
	1400        "Computer hardware engineers (17-2061)"
	1410        "Electrical and electronic engineers (17-2070)"
	1420        "Environmental engineers (17-2081)"
	1430        "Industrial engineers, including health and safety (17-2110)"
	1440        "Marine engineers and naval architects (17-2121)"
	1450        "Materials engineers (17-2131)" 
	1460        "Mechanical engineers (17-2141)"
	1500        "Mining and geological engineers, including mining safety engineers (17-2151)"
	1510        "Nuclear engineers (17-2161)"   
	1520        "Petroleum engineers (17-2171)" 
	1530        "Engineers, all other (17-2199)"
	1540        "Drafters (17-3010)"            
	1550        "Engineering technicians, except drafters (17-3020)"
	1560        "Surveying and mapping technicians (17-3031)"
	1600        "Agricultural and food scientists (19-1010)"
	1610        "Biological scientists (19-1020)"
	1640        "Conservation scientists and foresters (19-1030)"
	1650        "Medical scientists (19-1040)"  
	1700        "Astronomers and physicists (19-2010)"
	1710        "Atmospheric and space scientists (19-2021)"
	1720        "Chemists and materials scientists (19-2030)"
	1740        "Environmental scientists and geoscientists (19-2040)"
	1760        "Physical scientists, all other (19-2099)"
	1800        "Economists (19-3011)"          
	1810        "Market and survey researchers (19-3020)"
	1820        "Psychologists (19-3030)"       
	1830        "Sociologists (19-3041)"        
	1840        "Urban and regional planners (19-3051)"
	1860        "Miscellaneous social scientists and related workers (19-3090)"
	1900        "Agricultural and food science technicians (19-4011)"
	1910        "Biological technicians (19-4021)"
	1920        "Chemical technicians (19-4031)"
	1930        "Geological and petroleum technicians (19-4041)"
	1940        "Nuclear technicians (19-4051)" 
	1960        "Other life, physical, and social science technicians (19-40XX)"
	2000        "Counselors (21-1010)"          
	2010        "Social workers (21-1020)"      
	2020        "Miscellaneous community and social service specialists (21-1090)"
	2040        "Clergy (21-2011)"              
	2050        "Directors, religious activities and education (21-2021)"
	2060        "Religious workers, all other (21-2099)"
	2100        "Lawyers (23-1011)"             
	2140        "Paralegals and legal assistants (23-2011)"
	2150        "Miscellaneous legal support workers (23-2090)"
	2200        "Postsecondary teachers (25-1000)"
	2300        "Preschool and kindergarten teachers (25-2010)"
	2310        "Elementary and middle school teachers (25-2020)"
	2320        "Secondary school teachers (25-2030)"
	2330        "Special education teachers (25-2040)"
	2340        "Other teachers and instructors (25-3000)"
	2400        "Archivists, curators, and museum technicians (25-4010)"
	2430        "Librarians (25-4021)"          
	2440        "Library technicians (25-4031)" 
	2540        "Teacher assistants (25-9041)"  
	2550        "Other education, training, and library workers (25-90XX)"
	2600        "Artists and related workers (27-1010)"
	2630        "Designers (27-1020)"           
	2700        "Actors (27-2011)"              
	2710        "Producers and directors (27-2012)"
	2720        "Athletes, coaches, umpires, and related workers (27-2020)"
	2740        "Dancers and choreographers (27-2030)"
	2750        "Musicians, singers, and related workers (27-2040)"
	2760        "Entertainers and performers, sports and related workers, all other (27-2099)"
	2800        "Announcers (27-3010)"          
	2810        "News analysts, reporters and correspondents (27-3020)"
	2820        "Public relations specialists (27-3031)"
	2830        "Editors (27-3041)"             
	2840        "Technical writers (27-3042)"   
	2850        "Writers and authors (27-3043)" 
	2860        "Miscellaneous media and communication workers (27-3090)"
	2900        "Broadcast and sound engineering technicians and radio operators (27-4010)"
	2910        "Photographers (27-4021)"       
	2920        "Television, video, and motion picture camera operators and editors (27-4030)"
	2960        "Media and communication equipment workers, all other (27-4099)"
	3000        "Chiropractors (29-1011)"       
	3010        "Dentists (29-1020)"            
	3030        "Dietitians and nutritionists (29-1031)"
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
	3230        "Speech-language pathologists (29-1127)"
	3240        "Therapists, all other (29-1129)"
	3250        "Veterinarians (29-1131)"       
	3260        "Health diagnosing and treating practitioners, all other (29-1199 )"
	3300        "Clinical laboratory technologists and technicians (29-2010)"
	3310        "Dental hygienists (29-2021)"   
	3320        "Diagnostic related technologists and technicians (29-2030)"
	3400        "Emergency medical technicians and paramedics (29-2041)"
	3410        "Health diagnosing and treating practitioner support technicians (29-2050)"
	3500        "Licensed practical and licensed vocational nurses (29-2061)"
	3510        "Medical records and health information technicians (29-2071)"
	3520        "Opticians, dispensing (29-2081)"
	3530        "Miscellaneous health technologists and technicians (29-2090)"
	3540        "Other healthcare practitioners and technical occupations (29-9000)"
	3600        "Nursing, psychiatric, and home health aides (31-1010 )"
	3610        "Occupational therapist assistants and aides (31-2010)"
	3620        "Physical therapist assistants and aides (31-2020)"
	3630        "Massage therapists (31-9011)"  
	3640        "Dental assistants (31-9091)"   
	3650        "Medical assistants and other healthcare support occupations (31-909X)"
	3700        "First-line supervisors/managers of correctional officers (33-1011)"
	3710        "First-line supervisors/managers of police and detectives (33-1012)"
	3720        "First-line supervisors/managers of fire fighting and prevention workers (33-1021)"
	3730        "Supervisors, protective service workers, all other (33-1099)"
	3740        "Fire fighters (33-2011)"       
	3750        "Fire inspectors (33-2020)"     
	3800        "Bailiffs, correctional officers, and jailers (33-3010)"
	3820        "Detectives and criminal investigators (33-3021)"
	3830        "Fish and game wardens (33-3031)"
	3840        "Parking enforcement workers (33-3041)"
	3850        "Police and sheriff's patrol officers(33-3051)"
	3860        "Transit and railroad police (33-3052)"
	3900        "Animal control workers (33-9011)"
	3910        "Private detectives and investigators (33-9021)"
	3920        "Security guards and gaming surveillance officers (33-9030)"
	3940        "Crossing guards (33-9091)"     
	3950        "Lifeguards and other protective service workers (33-909X)"
	4000        "Chefs and head cooks (35-1011)"
	4010        "First-line supervisors/managers of food preparation and serving workers (35-1012 )"
	4020        "Cooks (35-2010)"               
	4030        "Food preparation workers (35-2021)"
	4040        "Bartenders (35-3011)"          
	4050        "Combined food preparation and serving workers, including fast food (35-3021)"
	4060        "Counter attendants, cafeteria, food concession, and coffee shop (35-3022)"
	4110        "Waiters and waitresses (35-3031)"
	4120        "Food servers, nonrestaurant (35-3041)"
	4130        "Dining room and cafeteria attendants and bartender helpers (35-9011)"
	4140        "Dishwashers (35-9021)"         
	4150        "Hosts and hostesses, restaurant, lounge, and coffee shop (35-9031)"
	4160        "Food preparation and serving related workers, all other (35-9099)"
	4200        "First-line supervisors/managers of housekeeping and janitorial workers (37-1011)"
	4210        "First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"
	4220        "Janitors and building cleaners (37-201X)"
	4230        "Maids and housekeeping cleaners (37-2012)"
	4240        "Pest control workers (37-2021)"
	4250        "Grounds maintenance workers (37-3010)"
	4300        "First-line supervisors/managers of gaming workers (39-1010)"
	4320        "First-line supervisors/managers of personal service workers (39-1021)"
	4340        "Animal trainers (39-2011)"     
	4350        "Nonfarm animal caretakers (39-2021)"
	4400        "Gaming services workers (39-3010)"
	4410        "Motion picture projectionists (39-3021)"
	4420        "Ushers, lobby attendants, and ticket takers (39-3031)"
	4430        "Miscellaneous entertainment attendants and related workers (39-3090)"
	4460        "Funeral service workers (39-4000)"
	4500        "Barbers (39-5011)"             
	4510        "Hairdressers, hairstylists, and cosmetologists (39-5012)"
	4520        "Miscellaneous personal appearance workers (39-5090)"
	4530        "Baggage porters, bellhops, and concierges (39-6010)"
	4540        "Tour and travel guides (39-6020)"
	4550        "Transportation attendants (39-6030)"
	4600        "Child care workers (39-9011)"  
	4610        "Personal and home care aides (39-9021)"
	4620        "Recreation and fitness workers (39-9030)"
	4640        "Residential advisors (39-9041)"
	4650        "Personal care and service workers, all other (39-9099)"
	4700        "First-line supervisors/managers of retail sales workers (41-1011)"
	4710        "First-line supervisors/managers of non-retail sales workers (41-1012)"
	4720        "Cashiers (41-2010)"            
	4740        "Counter and rental clerks (41-2021)"
	4750        "Parts salespersons (41-2022)"  
	4760        "Retail salespersons (41-2031)" 
	4800        "Advertising sales agents (41-3011)"
	4810        "Insurance sales agents (41-3021)"
	4820        "Securities, commodities, and financial services sales agents (41-3031)"
	4830        "Travel agents (41-3041)"       
	4840        "Sales representatives, services, all other (41-3099)"
	4850        "Sales representatives, wholesale and manufacturing (41-4010)"
	4900        "Models, demonstrators, and product promoters (41-9010)"
	4920        "Real estate brokers and sales agents (41-9020)"
	4930        "Sales engineers (41-9031)"     
	4940        "Telemarketers (41-9041)"       
	4950        "Door-to-door sales workers, news and street vendors, and related workers (41-9091)"
	4960        "Sales and related workers, all other (41-9099)"
	5000        "First-line supervisors/managers of office and administrative support workers (43-1011)"
	5010        "Switchboard operators, including answering service (43-2011)"
	5020        "Telephone operators (43-2021)" 
	5030        "Communications equipment operators, all other (43-2099)"
	5100        "Bill and account collectors (43-3011)"
	5110        "Billing and posting clerks and machine operators (43-3021)"
	5120        "Bookkeeping, accounting, and auditing clerks (43-3031)"
	5130        "Gaming cage workers (43-3041)" 
	5140        "Payroll and timekeeping clerks (43-3051)"
	5150        "Procurement clerks (43-3061)"  
	5160        "Tellers (43-3071)"             
	5200        "Brokerage clerks (43-4011)"    
	5210        "Correspondence clerks (43-4021)"
	5220        "Court, municipal, and license clerks (43-4031)"
	5230        "Credit authorizers, checkers, and clerks (43-4041)"
	5240        "Customer service representatives (43-4051)"
	5250        "Eligibility interviewers, government programs (43-4061)"
	5260        "File Clerks (43-4071)"         
	5300        "Hotel, motel, and resort desk clerks (43-4081)"
	5310        "Interviewers, except eligibility and loan (43-4111)"
	5320        "Library assistants, clerical (43-4121)"
	5330        "Loan interviewers and clerks (43-4131)"
	5340        "New accounts clerks (43-4141)" 
	5350        "Order clerks (43-4151)"        
	5360        "Human resources assistants, except payroll and timekeeping (43-4161)"
	5400        "Receptionists and information clerks (43-4171)"
	5410        "Reservation and transportation ticket agents and travel clerks (43-4181)"
	5420        "Information and record clerks, all other (43-4199)"
	5500        "Cargo and freight agents (43-5011)"
	5510        "Couriers and messengers (43-5021)"
	5520        "Dispatchers (43-5030)"         
	5530        "Meter readers, utilities (43-5041)"
	5540        "Postal service clerks (43-5051)"
	5550        "Postal service mail carriers (43-5052)"
	5560        "Postal service mail sorters, processors, and processing machine operators (43-5053)"
	5600        "Production, planning, and expediting clerks (43-5061)"
	5610        "Shipping, receiving, and traffic clerks (43-5071)"
	5620        "Stock clerks and order fillers (43-5081)"
	5630        "Weighers, measurers, checkers, and samplers, recordkeeping (43-5111)"
	5700        "Secretaries and administrative assistants (43-6010)"
	5800        "Computer operators (43-9011)"  
	5810        "Data entry keyers (43-9021)"   
	5820        "Word processors and typists (43-9022)"
	5830        "Desktop publishers (43-9031)"  
	5840        "Insurance claims and policy processing clerks (43-9041)"
	5850        "Mail clerks and mail machine operators, except postal service (43-9051)"
	5860        "Office clerks, general (43-9061)"
	5900        "Office machine operators, except computer (43-9071)"
	5910        "Proofreaders and copy markers (43-9081)"
	5920        "Statistical assistants (43-9111)"
	5930        "Office and administrative support workers, all other (43-9199)"
	6000        "First-line supervisors/managers of farming, fishing, and forestry workers (45-1010)"
	6010        "Agricultural inspectors (45-2011)"
	6020        "Animal breeders (45-2021)"     
	6040        "Graders and sorters, agricultural products (45-2041)"
	6050        "Miscellaneous agricultural workers (45-2090)"
	6100        "Fishers and related fishing workers (45-3011)"
	6110        "Hunters and trappers (45-3021)"
	6120        "Forest and conservation workers (45-4011)"
	6130        "Logging workers (45-4020)"     
	6200        "First-line supervisors/managers of construction trades and extraction workers (47-1011)"
	6210        "Boilermakers (47-2011)"        
	6220        "Brickmasons, blockmasons, and stonemasons (47-2020)"
	6230        "Carpenters (47-2031)"          
	6240        "Carpet, floor, and tile installers and finishers (47-2040)"
	6250        "Cement masons, concrete finishers, and terrazzo workers (47-2050)"
	6260        "Construction laborers (47-2061)"
	6300        "Paving, surfacing, and tamping equipment operators (47-2071)"
	6310        "Pile-driver operators (47-2072)"
	6320        "Operating engineers and other construction equipment operators (47-2073)"
	6330        "Drywall installers, ceiling tile installers, and tapers (47-2080)"
	6350        "Electricians (47-2111)"        
	6360        "Glaziers (47-2121)"            
	6400        "Insulation workers (47-2130)"  
	6420        "Painters, construction and maintenance (47-2141)"
	6430        "Paperhangers (47-2142)"        
	6440        "Pipelayers, plumbers, pipefitters, and steamfitters (47-2150)"
	6460        "Plasterers and stucco masons (47-2161)"
	6500        "Reinforcing iron and rebar workers (47-2171)"
	6510        "Roofers (47-2181)"             
	6520        "Sheet metal workers (47-2211)" 
	6530        "Structural iron and steel workers (47-2221)"
	6600        "Helpers, construction trades (47-3010)"
	6660        "Construction and building inspectors (47-4011)"
	6700        "Elevator installers and repairers (47-4021)"
	6710        "Fence erectors (47-4031)"      
	6720        "Hazardous materials removal workers (47-4041)"
	6730        "Highway maintenance workers (47-4051)"
	6740        "Rail-track laying and maintenance equipment operators (47-4061)"
	6750        "Septic tank servicers and sewer pipe cleaners (47-4071)"
	6760        "Miscellaneous construction and related workers (47-4090)"
	6800        "Derrick, rotary drill, and service unit operators, oil, gas, and mining (47-5010)"
	6820        "Earth drillers, except oil and gas (47-5021)"
	6830        "Explosives workers, ordnance handling experts, and blasters (47-5031)"
	6840        "Mining machine operators (47-5040)"
	6910        "Roof bolters, mining (47-5061)"
	6920        "Roustabouts, oil and gas (47-5071)"
	6930        "Helpers--extraction workers (47-5081)"
	6940        "Other extraction workers (47-50XX)"
	7000        "First-line supervisors/managers of mechanics, installers, and repairers (49-1011)"
	7010        "Computer, automated teller, and office machine repairers (49-2011)"
	7020        "Radio and telecommunications equipment installers and repairers (49-2020)"
	7030        "Avionics technicians (49-2091)"
	7040        "Electric motor, power tool, and related repairers (49-2092)"
	7050        "Electrical and electronics installers and repairers, transportation equipment (49-2093)"
	7100        "Electrical and electronics repairers, industrial and utility (49-209X)"
	7110        "Electronic equipment installers and repairers, motor vehicles (49-2096)"
	7120        "Electronic home entertainment equipment installers and repairers (49-2097)"
	7130        "Security and fire alarm systems installers (49-2098)"
	7140        "Aircraft mechanics and service technicians (49-3011)"
	7150        "Automotive body and related repairers (49-3021)"
	7160        "Automotive glass installers and repairers (49-3022 )"
	7200        "Automotive service technicians and mechanics (49-3023)"
	7210        "Bus and truck mechanics and diesel engine specialists (49-3031)"
	7220        "Heavy vehicle and mobile equipment service technicians and mechanics (49-3040)"
	7240        "Small engine mechanics (49-3050)"
	7260        "Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers (49-3090"
	7300        "Control and valve installers and repairers (49-9010)"
	7310        "Heating, air conditioning, and refrigeration mechanics and installers (49-9021)"
	7320        "Home appliance repairers (49-9031)"
	7330        "Industrial and refractory machinery mechanics (49-904X)"
	7340        "Maintenance and repair workers, general (49-9042)"
	7350        "Maintenance workers, machinery (49-9043)"
	7360        "Millwrights (49-9044)"         
	7410        "Electrical power-line installers and repairers (49-9051)"
	7420        "Telecommunications line installers and repairers (49-9052)"
	7430        "Precision instrument and equipment repairers (49-9060)"
	7510        "Coin, vending, and amusement machine servicers and repairers (49-9091)"
	7520        "Commercial divers (49-9092)"   
	7540        "Locksmiths and safe repairers (49-9094)"
	7550        "Manufactured building and mobile home installers (49-9095)"
	7560        "Riggers (49-9096)"             
	7600        "Signal and track switch repairers (49-9097)"
	7610        "Helpers--installation, maintenance, and repair workers (49-9098)"
	7620        "Other installation, maintenance, and repair workers (49-909X)"
	7700        "First-line supervisors/managers of production and operating workers (51-1011)"
	7710        "Aircraft structure, surfaces, rigging, and systems assemblers (51-2011)"
	7720        "Electrical, electronics, and electromechanical assemblers (51-2020)"
	7730        "Engine and other machine assemblers (51-2031)"
	7740        "Structural metal fabricators and fitters (51-2041)"
	7750        "Miscellaneous assemblers and fabricators (51-2090)"
	7800        "Bakers (51-3011)"              
	7810        "Butchers and other meat, poultry, and fish processing workers (51-3020)"
	7830        "Food and tobacco roasting, baking, and drying machine operators and tenders (51-3091)"
	7840        "Food batchmakers (51-3092)"    
	7850        "Food cooking machine operators and tenders (51-3093)"
	7900        "Computer control programmers and operators (51-4010)"
	7920        "Extruding and drawing machine setters, operators, and tenders, metal and plastic (51-402"
	7930        "Forging machine setters, operators, and tenders, metal and plastic (51-4022)"
	7940        "Rolling machine setters, operators, and tenders, metal and plastic (51-4023)"
	7950        "Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"
	7960        "Drilling and boring machine tool setters, operators, and tenders, metal and plastic (51-"
	8000        "Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders,"
	8010        "Lathe and turning machine tool setters, operators, and tenders, metal and plastic (51-40"
	8020        "Milling and planing machine setters, operators, and tenders, metal and plastic (51-4035)"
	8030        "Machinists (51-4041)"          
	8040        "Metal furnace and kiln operators and tenders (51-4050)"
	8060        "Model makers and patternmakers, metal and plastic (51-4060)"
	8100        "Molders and molding machine setters, operators, and tenders, metal and plastic (51-4070)"
	8120        "Multiple machine tool setters, operators, and tenders, metal and plastic (51-4081)"
	8130        "Tool and die makers (51-4111)" 
	8140        "Welding, soldering, and brazing workers (51-4120)"
	8150        "Heat treating equipment setters, operators, and tenders, metal and plastic (51-4191)"
	8160        "Lay-out workers, metal and plastic (51-4192)"
	8200        "Plating and coating machine setters, operators, and tenders, metal and plastic (51-4193)"
	8210        "Tool grinders, filers, and sharpeners (51-4194)"
	8220        "Metalworkers and plastic workers, all other (51-4199)"
	8230        "Bookbinders and bindery workers (51-5010)"
	8240        "Job printers (51-5021)"        
	8250        "Prepress technicians and workers (51-5022)"
	8260        "Printing machine operators (51-5023)"
	8300        "Laundry and dry-cleaning workers (51-6011)"
	8310        "Pressers, textile, garment, and related materials (51-6021)"
	8320        "Sewing machine operators (51-6031)"
	8330        "Shoe and leather workers and repairers (51-6041)"
	8340        "Shoe machine operators and tenders (51-6042)"
	8350        "Tailors, dressmakers, and sewers (51-6050)"
	8360        "Textile bleaching and dyeing machine operators and tenders (51-6061)"
	8400        "Textile cutting machine setters, operators, and tenders (51-6062)"
	8410        "Textile knitting and weaving machine setters, operators, and tenders (51-6063)"
	8420        "Textile winding, twisting, and drawing out machine setters, operators, and tenders (51-6"
	8430        "Extruding and forming machine setters, operators, and tenders, synthetic and glass fiber"
	8440        "Fabric and apparel patternmakers (51-6092)"
	8450        "Upholsterers (51-6093)"        
	8460        "Textile, apparel, and furnishings workers, all other (51-6099)"
	8500        "Cabinetmakers and bench carpenters (51-7011)"
	8510        "Furniture finishers (51-7021)" 
	8520        "Model makers and patternmakers, wood (51-7030)"
	8530        "Sawing machine setters, operators, and tenders, wood (51-7041)"
	8540        "Woodworking machine setters, operators, and tenders, except sawing (51-7042)"
	8550        "Woodworkers, all other (51-7099)"
	8600        "Power plant operators, distributors, and dispatchers (51-8010)"
	8610        "Stationary engineers and boiler operators (51-8021)"
	8620        "Water and liquid waste treatment plant and system operators (51-8031)"
	8630        "Miscellaneous plant and system operators (51-8090)"
	8640        "Chemical processing machine setters, operators, and tenders (51-9010)"
	8650        "Crushing, grinding, polishing, mixing, and blending workers (51-9020)"
	8710        "Cutting workers (51-9030)"     
	8720        "Extruding, forming, pressing, and compacting machine setters, operators, and tenders (51"
	8730        "Furnace, kiln, oven, drier, and kettle operators and tenders (51-9051)"
	8740        "Inspectors, testers, sorters, samplers, and weighers (51-9061)"
	8750        "Jewelers and precious stone and metal workers (51-9071)"
	8760        "Medical, dental, and ophthalmic laboratory technicians (51-9080)"
	8800        "Packaging and filling machine operators and tenders (51-9111)"
	8810        "Painting workers (51-9120)"    
	8830        "Photographic process workers and processing machine operators (51-9130)"
	8840        "Semiconductor processors (51-9141)"
	8850        "Cementing and gluing machine operators and tenders (51-9191)"
	8860        "Cleaning, washing, and metal pickling equipment operators and tenders (51-9192)"
	8900        "Cooling and freezing equipment operators and tenders (51-9193)"
	8910        "Etchers and engravers (51-9194)"
	8920        "Molders, shapers, and casters, except metal and plastic (51-9195)"
	8930        "Paper goods machine setters, operators, and tenders (51-9196)"
	8940        "Tire builders (51-9197)"       
	8950        "Helpers--production workers (51-9198)"
	8960        "Production workers, all other (51-9199)"
	9000        "Supervisors, transportation and material moving workers (53-1000)"
	9030        "Aircraft pilots and flight engineers (53-2010)"
	9040        "Air traffic controllers and airfield operations specialists (53-2020)"
	9110        "Ambulance drivers and attendants, except emergency medical technicians (53-3011)"
	9120        "Bus drivers (53-3020)"         
	9130        "Driver/sales workers and truck drivers (53-3030)"
	9140        "Taxi drivers and chauffeurs (53-3041)"
	9150        "Motor vehicle operators, all other (53-3099)"
	9200        "Locomotive engineers and operators (53-4010)"
	9230        "Railroad brake, signal, and switch operators (53-4021)"
	9240        "Railroad conductors and yardmasters (53-4031)"
	9260        "Subway, streetcar, and other rail transportation workers (53-30XX)"
	9300        "Sailors and marine oilers (53-5011)"
	9310        "Ship and boat captains and operators (53-5020)"
	9330        "Ship engineers (53-5031)"      
	9340        "Bridge and lock tenders (53-6011)"
	9350        "Parking lot attendants (53-6021)"
	9360        "Service station attendants (53-6031)"
	9410        "Transportation inspectors (53-6051)"
	9420        "Other transportation workers (53-60XX)"
	9500        "Conveyor operators and tenders (53-7011)"
	9510        "Crane and tower operators (53-7021)"
	9520        "Dredge, excavating, and loading machine operators (53-7030)"
	9560        "Hoist and winch operators (53-7041)"
	9600        "Industrial truck and tractor operators (53-7051)"
	9610        "Cleaners of vehicles and equipment (53-7061)"
	9620        "Laborers and freight, stock, and material movers, hand (53-7062)"
	9630        "Machine feeders and offbearers (53-7063)"
	9640        "Packers and packagers, hand (53-7064)"
	9650        "Pumping station operators (53-7070)"
	9720        "Refuse and recyclable material collectors (53-7081)"
	9730        "Shuttle car operators (53-7111)"
	9740        "Tank car, truck, and ship loaders (53-7121)"
	9750        "Material moving workers, all other (53-7199)"
	9840        "Persons whose current labor force status is unemployed and last job was Armed Forces"
	-1          "Not in Universe"               
;
label values absocc1  absocc1l;
label define absocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebno2    ebno2l; 
label define ebno2l  
	-1          "Not in Universe"               
;
label values ebiznow2 ebiznowk;
label define ebiznowk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abiznow2 abiznowk;
label define abiznowk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsbdate2 tsbdatek;
label define tsbdatek
	-1          "Not in Universe"               
;
label values asbdate2 asbdatek;
label define asbdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tebdate2 tebdatek;
label define tebdatek
	-1          "Not in Universe"               
;
label values aebdate2 aebdatek;
label define aebdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values erendb2  erendb2l;
label define erendb2l
	1           "Retirement or old age"         
	2           "Childcare problems"            
	3           "Other family/personal problems"
	4           "Own illness"                   
	5           "Own injury"                    
	6           "School/training"               
	7           "Went bankrupt/business failed" 
	8           "Sold business or transferred ownership"
	9           "To start other business/take job"
	10          "Season ended for a seasonal business"
	11          "Quit for some other reason"    
	-1          "Not in Universe"               
;
label values arendb2  arendb2l;
label define arendb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehrsbs2  ehrsbs2l;
label define ehrsbs2l
	-8          "Hours vary"                    
	-1          "Not in Universe"               
;
label values ahrsbs2  ahrsbs2l;
label define ahrsbs2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egrosb2  egrosb2l;
label define egrosb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrosb2  agrosb2l;
label define agrosb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egrssb2  egrssb2l;
label define egrssb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrssb2  agrssb2l;
label define agrssb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tempb2   tempb2l;
label define tempb2l 
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
	-1          "Not in Universe"               
;
label values aempb2   aempb2l;
label define aempb2l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eincpb2  eincpb2l;
label define eincpb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aincpb2  aincpb2l;
label define aincpb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epropb2  epropb2l;
label define epropb2l
	1           "alone"                         
	2           "Partnership"                   
	-1          "Not in Universe"               
;
label values apropb2  apropb2l;
label define apropb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehprtb2  ehprtb2l;
label define ehprtb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahprtb2  ahprtb2l;
label define ahprtb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eslryb2  eslryb2l;
label define eslryb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aslryb2  aslryb2l;
label define aslryb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eoincb2  eoincb2l;
label define eoincb2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoincb2  aoincb2l;
label define aoincb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tprftb2  tprftb2l;
label define tprftb2l
	0           "None or not in universe"       
;
label values aprftb2  aprftb2l;
label define aprftb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbmsum2  tbmsum2l;
label define tbmsum2l
	0           "None or not in universe"       
;
label values abmsum2  abmsum2l;
label define abmsum2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epartb12 epartb1k;
label define epartb1k
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values epartb22 epartb2k;
label define epartb2k
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values epartb32 epartb3k;
label define epartb3k
	9999        "Unable to identify person number"
	-1          "Not in Universe"               
;
label values tbsind2  tbsind2l;
label define tbsind2l
	1           "Agriculture, forestry, fishing, and hunting"
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing"                 
	5           "Wholesale trade"               
	6           "Retail Trade"                  
	7           "Transportation, warehousing, and utilities"
	8           "Information"                   
	9           "Finance, insurance, real estate, and rental and leasing"
	10          "Professional, scientific, management, administrative, and waste management"
	11          "Educational, health and social services"
	12          "Arts, entertainment, recreation, accommodations, and food services"
	13          "Other services (except public administration)"
	14          "Public administration"         
	15          "Active duty military"          
	-1          "Not in Universe"               
;
label values absind2  absind2l;
label define absind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbsocc2  tbsocc2l;
label define tbsocc2l
	10          "Chief executives (11-1011)"    
	0020        "General and operations managers (11-1021)"
	0040        "Advertising and promotions managers (11-2011)"
	0050        "Marketing and sales managers (11-2020)"
	0060        "Public relations managers (11-2031)"
	100         "Administrative services managers (11-3011)"
	0110        "Computer and information systems managers (11-3021)"
	0120        "Financial managers (11-3031)"  
	0130        "Human resources managers (11-3040)"
	0140        "Industrial production managers(11-3051)"
	0150        "Purchasing managers (11-3061)" 
	160         "Transportation, storage, and distribution managers (11-3071)"
	200         "Farm, ranch, and other agricultural managers (11-9011)"
	0210        "Farmers and ranchers (11-9012)"
	0220        "Construction managers (11-9021)"
	0230        "Education administrators (11-9030)"
	0300        "Engineering managers (11-9041)"
	0310        "Food service managers (11-9051)"
	0320        "Funeral directors (11-9061)"   
	0330        "Gaming managers (11-9071)"     
	0340        "Lodging managers (11-9081)"    
	0350        "Medical and health services managers (11-9111)"
	0360        "Natural sciences managers (11-9121)"
	0410        "Property, real estate, and community association managers (11-9141)"
	0420        "Social and community service managers (11-9151)"
	0430        "Managers, all other (11-9199)" 
	0500        "Agents and business managers of artists, performers, and athletes (13-1011)"
	0510        "Purchasing agents and buyers, farm products (13-1021)"
	520         "Wholesale and retail buyers, except farm products (13-1022)"
	0530        "Purchasing agents, except wholesale, retail, and farm products (13-1023)"
	0540        "Claims adjusters, appraisers, examiners, and investigators (13-1030)"
	0560        "Compliance officers, except agriculture, construction, health and safety, and transporta"
	0600        "Cost estimators (13-1051)"     
	0620        "Human resources, training, and labor relations specialists (13-1070)"
	0700        "Logisticians (13-1081)"        
	0710        "Management analysts (13-1111)" 
	0720        "Meeting and convention planners (13-1121)"
	0730        "Other business operations specialists (13-11XX)"
	0800        "Accountants and auditors (13-2011)"
	0810        "Appraisers and assessors of real estate (13-2021)"
	0820        "Budget analysts (13-2031)"     
	0830        "Credit analysts (13-2041)"     
	840         "Financial analysts (13-2051)"  
	0850        "Personal financial advisors (13-2052)"
	0860        "Insurance underwriters (13-2053)"
	0900        "Financial examiners (13-2061)" 
	0910        "Loan counselors and officers (13-2070)"
	0930        "Tax examiners, collectors, and revenue agents (13-2081)"
	0940        "Tax preparers (13-2082)"       
	0950        "Financial specialists, all other (13-2099)"
	1000        "Computer scientists and systems analysts (15-10XX)"
	1010        "Computer programmers (15-1021)"
	1020        "Computer software engineers (15-1030)"
	1040        "Computer support specialists (15-1041)"
	1060        "Database administrators (15-1061)"
	1100        "Network and computer systems administrators (15-1071)"
	1110        "Network systems and data communications analysts (15-1081)"
	1200        "Actuaries (15-2011)"           
	1210        "Mathematicians (15-2021)"      
	1220        "Operations research analysts (15-2031)"
	1230        "Statisticians (15-2041)"       
	1240        "Miscellaneous mathematical science occupations (15-2090)"
	1300        "Architects, except naval (17-1010)"
	1310        "Surveyors, cartographers, and photogrammetrists (17-1020)"
	1320        "Aerospace engineers (17-2011)" 
	1330        "Agricultural engineers (17-2021)"
	1340        "Biomedical engineers (17-2031)"
	1350        "Chemical engineers (17-2041)"  
	1360        "Civil engineers (17-2051)"     
	1400        "Computer hardware engineers (17-2061)"
	1410        "Electrical and electronic engineers (17-2070)"
	1420        "Environmental engineers (17-2081)"
	1430        "Industrial engineers, including health and safety (17-2110)"
	1440        "Marine engineers and naval architects (17-2121)"
	1450        "Materials engineers (17-2131)" 
	1460        "Mechanical engineers (17-2141)"
	1500        "Mining and geological engineers, including mining safety engineers (17-2151)"
	1510        "Nuclear engineers (17-2161)"   
	1520        "Petroleum engineers (17-2171)" 
	1530        "Engineers, all other (17-2199)"
	1540        "Drafters (17-3010)"            
	1550        "Engineering technicians, except drafters (17-3020)"
	1560        "Surveying and mapping technicians (17-3031)"
	1600        "Agricultural and food scientists (19-1010)"
	1610        "Biological scientists (19-1020)"
	1640        "Conservation scientists and foresters (19-1030)"
	1650        "Medical scientists (19-1040)"  
	1700        "Astronomers and physicists (19-2010)"
	1710        "Atmospheric and space scientists (19-2021)"
	1720        "Chemists and materials scientists (19-2030)"
	1740        "Environmental scientists and geoscientists (19-2040)"
	1760        "Physical scientists, all other (19-2099)"
	1800        "Economists (19-3011)"          
	1810        "Market and survey researchers (19-3020)"
	1820        "Psychologists (19-3030)"       
	1830        "Sociologists (19-3041)"        
	1840        "Urban and regional planners (19-3051)"
	1860        "Miscellaneous social scientists and related workers (19-3090)"
	1900        "Agricultural and food science technicians (19-4011)"
	1910        "Biological technicians (19-4021)"
	1920        "Chemical technicians (19-4031)"
	1930        "Geological and petroleum technicians (19-4041)"
	1940        "Nuclear technicians (19-4051)" 
	1960        "Other life, physical, and social science technicians (19-40XX)"
	2000        "Counselors (21-1010)"          
	2010        "Social workers (21-1020)"      
	2020        "Miscellaneous community and social service specialists (21-1090)"
	2040        "Clergy (21-2011)"              
	2050        "Directors, religious activities and education (21-2021)"
	2060        "Religious workers, all other (21-2099)"
	2100        "Lawyers (23-1011)"             
	2140        "Paralegals and legal assistants (23-2011)"
	2150        "Miscellaneous legal support workers (23-2090)"
	2200        "Postsecondary teachers (25-1000)"
	2300        "Preschool and kindergarten teachers (25-2010)"
	2310        "Elementary and middle school teachers (25-2020)"
	2320        "Secondary school teachers (25-2030)"
	2330        "Special education teachers (25-2040)"
	2340        "Other teachers and instructors (25-3000)"
	2400        "Archivists, curators, and museum technicians (25-4010)"
	2430        "Librarians (25-4021)"          
	2440        "Library technicians (25-4031)" 
	2540        "Teacher assistants (25-9041)"  
	2550        "Other education, training, and library workers (25-90XX)"
	2600        "Artists and related workers (27-1010)"
	2630        "Designers (27-1020)"           
	2700        "Actors (27-2011)"              
	2710        "Producers and directors (27-2012)"
	2720        "Athletes, coaches, umpires, and related workers (27-2020)"
	2740        "Dancers and choreographers (27-2030)"
	2750        "Musicians, singers, and related workers (27-2040)"
	2760        "Entertainers and performers, sports and related workers, all other (27-2099)"
	2800        "Announcers (27-3010)"          
	2810        "News analysts, reporters and correspondents (27-3020)"
	2820        "Public relations specialists (27-3031)"
	2830        "Editors (27-3041)"             
	2840        "Technical writers (27-3042)"   
	2850        "Writers and authors (27-3043)" 
	2860        "Miscellaneous media and communication workers (27-3090)"
	2900        "Broadcast and sound engineering technicians and radio operators (27-4010)"
	2910        "Photographers (27-4021)"       
	2920        "Television, video, and motion picture camera operators and editors (27-4030)"
	2960        "Media and communication equipment workers, all other (27-4099)"
	3000        "Chiropractors (29-1011)"       
	3010        "Dentists (29-1020)"            
	3030        "Dietitians and nutritionists (29-1031)"
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
	3230        "Speech-language pathologists (29-1127)"
	3240        "Therapists, all other (29-1129)"
	3250        "Veterinarians (29-1131)"       
	3260        "Health diagnosing and treating practitioners, all other (29-1199 )"
	3300        "Clinical laboratory technologists and technicians (29-2010)"
	3310        "Dental hygienists (29-2021)"   
	3320        "Diagnostic related technologists and technicians (29-2030)"
	3400        "Emergency medical technicians and paramedics (29-2041)"
	3410        "Health diagnosing and treating practitioner support technicians (29-2050)"
	3500        "Licensed practical and licensed vocational nurses (29-2061)"
	3510        "Medical records and health information technicians (29-2071)"
	3520        "Opticians, dispensing (29-2081)"
	3530        "Miscellaneous health technologists and technicians (29-2090)"
	3540        "Other healthcare practitioners and technical occupations (29-9000)"
	3600        "Nursing, psychiatric, and home health aides (31-1010 )"
	3610        "Occupational therapist assistants and aides (31-2010)"
	3620        "Physical therapist assistants and aides (31-2020)"
	3630        "Massage therapists (31-9011)"  
	3640        "Dental assistants (31-9091)"   
	3650        "Medical assistants and other healthcare support occupations (31-909X)"
	3700        "First-line supervisors/managers of correctional officers (33-1011)"
	3710        "First-line supervisors/managers of police and detectives (33-1012)"
	3720        "First-line supervisors/managers of fire fighting and prevention workers (33-1021)"
	3730        "Supervisors, protective service workers, all other (33-1099)"
	3740        "Fire fighters (33-2011)"       
	3750        "Fire inspectors (33-2020)"     
	3800        "Bailiffs, correctional officers, and jailers (33-3010)"
	3820        "Detectives and criminal investigators (33-3021)"
	3830        "Fish and game wardens (33-3031)"
	3840        "Parking enforcement workers (33-3041)"
	3850        "Police and sheriff's patrol officers(33-3051)"
	3860        "Transit and railroad police (33-3052)"
	3900        "Animal control workers (33-9011)"
	3910        "Private detectives and investigators (33-9021)"
	3920        "Security guards and gaming surveillance officers (33-9030)"
	3940        "Crossing guards (33-9091)"     
	3950        "Lifeguards and other protective service workers (33-909X)"
	4000        "Chefs and head cooks (35-1011)"
	4010        "First-line supervisors/managers of food preparation and serving workers (35-1012 )"
	4020        "Cooks (35-2010)"               
	4030        "Food preparation workers (35-2021)"
	4040        "Bartenders (35-3011)"          
	4050        "Combined food preparation and serving workers, including fast food (35-3021)"
	4060        "Counter attendants, cafeteria, food concession, and coffee shop (35-3022)"
	4110        "Waiters and waitresses (35-3031)"
	4120        "Food servers, nonrestaurant (35-3041)"
	4130        "Dining room and cafeteria attendants and bartender helpers (35-9011)"
	4140        "Dishwashers (35-9021)"         
	4150        "Hosts and hostesses, restaurant, lounge, and coffee shop (35-9031)"
	4160        "Food preparation and serving related workers, all other (35-9099)"
	4200        "First-line supervisors/managers of housekeeping and janitorial workers (37-1011)"
	4210        "First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"
	4220        "Janitors and building cleaners (37-201X)"
	4230        "Maids and housekeeping cleaners (37-2012)"
	4240        "Pest control workers (37-2021)"
	4250        "Grounds maintenance workers (37-3010)"
	4300        "First-line supervisors/managers of gaming workers (39-1010)"
	4320        "First-line supervisors/managers of personal service workers (39-1021)"
	4340        "Animal trainers (39-2011)"     
	4350        "Nonfarm animal caretakers (39-2021)"
	4400        "Gaming services workers (39-3010)"
	4410        "Motion picture projectionists (39-3021)"
	4420        "Ushers, lobby attendants, and ticket takers (39-3031)"
	4430        "Miscellaneous entertainment attendants and related workers (39-3090)"
	4460        "Funeral service workers (39-4000)"
	4500        "Barbers (39-5011)"             
	4510        "Hairdressers, hairstylists, and cosmetologists (39-5012)"
	4520        "Miscellaneous personal appearance workers (39-5090)"
	4530        "Baggage porters, bellhops, and concierges (39-6010)"
	4540        "Tour and travel guides (39-6020)"
	4550        "Transportation attendants (39-6030)"
	4600        "Child care workers (39-9011)"  
	4610        "Personal and home care aides (39-9021)"
	4620        "Recreation and fitness workers (39-9030)"
	4640        "Residential advisors (39-9041)"
	4650        "Personal care and service workers, all other (39-9099)"
	4700        "First-line supervisors/managers of retail sales workers (41-1011)"
	4710        "First-line supervisors/managers of non-retail sales workers (41-1012)"
	4720        "Cashiers (41-2010)"            
	4740        "Counter and rental clerks (41-2021)"
	4750        "Parts salespersons (41-2022)"  
	4760        "Retail salespersons (41-2031)" 
	4800        "Advertising sales agents (41-3011)"
	4810        "Insurance sales agents (41-3021)"
	4820        "Securities, commodities, and financial services sales agents (41-3031)"
	4830        "Travel agents (41-3041)"       
	4840        "Sales representatives, services, all other (41-3099)"
	4850        "Sales representatives, wholesale and manufacturing (41-4010)"
	4900        "Models, demonstrators, and product promoters (41-9010)"
	4920        "Real estate brokers and sales agents (41-9020)"
	4930        "Sales engineers (41-9031)"     
	4940        "Telemarketers (41-9041)"       
	4950        "Door-to-door sales workers, news and street vendors, and related workers (41-9091)"
	4960        "Sales and related workers, all other (41-9099)"
	5000        "First-line supervisors/managers of office and administrative support workers (43-1011)"
	5010        "Switchboard operators, including answering service (43-2011)"
	5020        "Telephone operators (43-2021)" 
	5030        "Communications equipment operators, all other (43-2099)"
	5100        "Bill and account collectors (43-3011)"
	5110        "Billing and posting clerks and machine operators (43-3021)"
	5120        "Bookkeeping, accounting, and auditing clerks (43-3031)"
	5130        "Gaming cage workers (43-3041)" 
	5140        "Payroll and timekeeping clerks (43-3051)"
	5150        "Procurement clerks (43-3061)"  
	5160        "Tellers (43-3071)"             
	5200        "Brokerage clerks (43-4011)"    
	5210        "Correspondence clerks (43-4021)"
	5220        "Court, municipal, and license clerks (43-4031)"
	5230        "Credit authorizers, checkers, and clerks (43-4041)"
	5240        "Customer service representatives (43-4051)"
	5250        "Eligibility interviewers, government programs (43-4061)"
	5260        "File Clerks (43-4071)"         
	5300        "Hotel, motel, and resort desk clerks (43-4081)"
	5310        "Interviewers, except eligibility and loan (43-4111)"
	5320        "Library assistants, clerical (43-4121)"
	5330        "Loan interviewers and clerks (43-4131)"
	5340        "New accounts clerks (43-4141)" 
	5350        "Order clerks (43-4151)"        
	5360        "Human resources assistants, except payroll and timekeeping (43-4161)"
	5400        "Receptionists and information clerks (43-4171)"
	5410        "Reservation and transportation ticket agents and travel clerks (43-4181)"
	5420        "Information and record clerks, all other (43-4199)"
	5500        "Cargo and freight agents (43-5011)"
	5510        "Couriers and messengers (43-5021)"
	5520        "Dispatchers (43-5030)"         
	5530        "Meter readers, utilities (43-5041)"
	5540        "Postal service clerks (43-5051)"
	5550        "Postal service mail carriers (43-5052)"
	5560        "Postal service mail sorters, processors, and processing machine operators (43-5053)"
	5600        "Production, planning, and expediting clerks (43-5061)"
	5610        "Shipping, receiving, and traffic clerks (43-5071)"
	5620        "Stock clerks and order fillers (43-5081)"
	5630        "Weighers, measurers, checkers, and samplers, recordkeeping (43-5111)"
	5700        "Secretaries and administrative assistants (43-6010)"
	5800        "Computer operators (43-9011)"  
	5810        "Data entry keyers (43-9021)"   
	5820        "Word processors and typists (43-9022)"
	5830        "Desktop publishers (43-9031)"  
	5840        "Insurance claims and policy processing clerks (43-9041)"
	5850        "Mail clerks and mail machine operators, except postal service (43-9051)"
	5860        "Office clerks, general (43-9061)"
	5900        "Office machine operators, except computer (43-9071)"
	5910        "Proofreaders and copy markers (43-9081)"
	5920        "Statistical assistants (43-9111)"
	5930        "Office and administrative support workers, all other (43-9199)"
	6000        "First-line supervisors/managers of farming, fishing, and forestry workers (45-1010)"
	6010        "Agricultural inspectors (45-2011)"
	6020        "Animal breeders (45-2021)"     
	6040        "Graders and sorters, agricultural products (45-2041)"
	6050        "Miscellaneous agricultural workers (45-2090)"
	6100        "Fishers and related fishing workers (45-3011)"
	6110        "Hunters and trappers (45-3021)"
	6120        "Forest and conservation workers (45-4011)"
	6130        "Logging workers (45-4020)"     
	6200        "First-line supervisors/managers of construction trades and extraction workers (47-1011)"
	6210        "Boilermakers (47-2011)"        
	6220        "Brickmasons, blockmasons, and stonemasons (47-2020)"
	6230        "Carpenters (47-2031)"          
	6240        "Carpet, floor, and tile installers and finishers (47-2040)"
	6250        "Cement masons, concrete finishers, and terrazzo workers (47-2050)"
	6260        "Construction laborers (47-2061)"
	6300        "Paving, surfacing, and tamping equipment operators (47-2071)"
	6310        "Pile-driver operators (47-2072)"
	6320        "Operating engineers and other construction equipment operators (47-2073)"
	6330        "Drywall installers, ceiling tile installers, and tapers (47-2080)"
	6350        "Electricians (47-2111)"        
	6360        "Glaziers (47-2121)"            
	6400        "Insulation workers (47-2130)"  
	6420        "Painters, construction and maintenance (47-2141)"
	6430        "Paperhangers (47-2142)"        
	6440        "Pipelayers, plumbers, pipefitters, and steamfitters (47-2150)"
	6460        "Plasterers and stucco masons (47-2161)"
	6500        "Reinforcing iron and rebar workers (47-2171)"
	6510        "Roofers (47-2181)"             
	6520        "Sheet metal workers (47-2211)" 
	6530        "Structural iron and steel workers (47-2221)"
	6600        "Helpers, construction trades (47-3010)"
	6660        "Construction and building inspectors (47-4011)"
	6700        "Elevator installers and repairers (47-4021)"
	6710        "Fence erectors (47-4031)"      
	6720        "Hazardous materials removal workers (47-4041)"
	6730        "Highway maintenance workers (47-4051)"
	6740        "Rail-track laying and maintenance equipment operators (47-4061)"
	6750        "Septic tank servicers and sewer pipe cleaners (47-4071)"
	6760        "Miscellaneous construction and related workers (47-4090)"
	6800        "Derrick, rotary drill, and service unit operators, oil, gas, and mining (47-5010)"
	6820        "Earth drillers, except oil and gas (47-5021)"
	6830        "Explosives workers, ordnance handling experts, and blasters (47-5031)"
	6840        "Mining machine operators (47-5040)"
	6910        "Roof bolters, mining (47-5061)"
	6920        "Roustabouts, oil and gas (47-5071)"
	6930        "Helpers--extraction workers (47-5081)"
	6940        "Other extraction workers (47-50XX)"
	7000        "First-line supervisors/managers of mechanics, installers, and repairers (49-1011)"
	7010        "Computer, automated teller, and office machine repairers (49-2011)"
	7020        "Radio and telecommunications equipment installers and repairers (49-2020)"
	7030        "Avionics technicians (49-2091)"
	7040        "Electric motor, power tool, and related repairers (49-2092)"
	7050        "Electrical and electronics installers and repairers, transportation equipment (49-2093)"
	7100        "Electrical and electronics repairers, industrial and utility (49-209X)"
	7110        "Electronic equipment installers and repairers, motor vehicles (49-2096)"
	7120        "Electronic home entertainment equipment installers and repairers (49-2097)"
	7130        "Security and fire alarm systems installers (49-2098)"
	7140        "Aircraft mechanics and service technicians (49-3011)"
	7150        "Automotive body and related repairers (49-3021)"
	7160        "Automotive glass installers and repairers (49-3022 )"
	7200        "Automotive service technicians and mechanics (49-3023)"
	7210        "Bus and truck mechanics and diesel engine specialists (49-3031)"
	7220        "Heavy vehicle and mobile equipment service technicians and mechanics (49-3040)"
	7240        "Small engine mechanics (49-3050)"
	7260        "Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers (49-3090"
	7300        "Control and valve installers and repairers (49-9010)"
	7310        "Heating, air conditioning, and refrigeration mechanics and installers (49-9021)"
	7320        "Home appliance repairers (49-9031)"
	7330        "Industrial and refractory machinery mechanics (49-904X)"
	7340        "Maintenance and repair workers, general (49-9042)"
	7350        "Maintenance workers, machinery (49-9043)"
	7360        "Millwrights (49-9044)"         
	7410        "Electrical power-line installers and repairers (49-9051)"
	7420        "Telecommunications line installers and repairers (49-9052)"
	7430        "Precision instrument and equipment repairers (49-9060)"
	7510        "Coin, vending, and amusement machine servicers and repairers (49-9091)"
	7520        "Commercial divers (49-9092)"   
	7540        "Locksmiths and safe repairers (49-9094)"
	7550        "Manufactured building and mobile home installers (49-9095)"
	7560        "Riggers (49-9096)"             
	7600        "Signal and track switch repairers (49-9097)"
	7610        "Helpers--installation, maintenance, and repair workers (49-9098)"
	7620        "Other installation, maintenance, and repair workers (49-909X)"
	7700        "First-line supervisors/managers of production and operating workers (51-1011)"
	7710        "Aircraft structure, surfaces, rigging, and systems assemblers (51-2011)"
	7720        "Electrical, electronics, and electromechanical assemblers (51-2020)"
	7730        "Engine and other machine assemblers (51-2031)"
	7740        "Structural metal fabricators and fitters (51-2041)"
	7750        "Miscellaneous assemblers and fabricators (51-2090)"
	7800        "Bakers (51-3011)"              
	7810        "Butchers and other meat, poultry, and fish processing workers (51-3020)"
	7830        "Food and tobacco roasting, baking, and drying machine operators and tenders (51-3091)"
	7840        "Food batchmakers (51-3092)"    
	7850        "Food cooking machine operators and tenders (51-3093)"
	7900        "Computer control programmers and operators (51-4010)"
	7920        "Extruding and drawing machine setters, operators, and tenders, metal and plastic (51-402"
	7930        "Forging machine setters, operators, and tenders, metal and plastic (51-4022)"
	7940        "Rolling machine setters, operators, and tenders, metal and plastic (51-4023)"
	7950        "Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"
	7960        "Drilling and boring machine tool setters, operators, and tenders, metal and plastic (51-"
	8000        "Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders,"
	8010        "Lathe and turning machine tool setters, operators, and tenders, metal and plastic (51-40"
	8020        "Milling and planing machine setters, operators, and tenders, metal and plastic (51-4035)"
	8030        "Machinists (51-4041)"          
	8040        "Metal furnace and kiln operators and tenders (51-4050)"
	8060        "Model makers and patternmakers, metal and plastic (51-4060)"
	8100        "Molders and molding machine setters, operators, and tenders, metal and plastic (51-4070)"
	8120        "Multiple machine tool setters, operators, and tenders, metal and plastic (51-4081)"
	8130        "Tool and die makers (51-4111)" 
	8140        "Welding, soldering, and brazing workers (51-4120)"
	8150        "Heat treating equipment setters, operators, and tenders, metal and plastic (51-4191)"
	8160        "Lay-out workers, metal and plastic (51-4192)"
	8200        "Plating and coating machine setters, operators, and tenders, metal and plastic (51-4193)"
	8210        "Tool grinders, filers, and sharpeners (51-4194)"
	8220        "Metalworkers and plastic workers, all other (51-4199)"
	8230        "Bookbinders and bindery workers (51-5010)"
	8240        "Job printers (51-5021)"        
	8250        "Prepress technicians and workers (51-5022)"
	8260        "Printing machine operators (51-5023)"
	8300        "Laundry and dry-cleaning workers (51-6011)"
	8310        "Pressers, textile, garment, and related materials (51-6021)"
	8320        "Sewing machine operators (51-6031)"
	8330        "Shoe and leather workers and repairers (51-6041)"
	8340        "Shoe machine operators and tenders (51-6042)"
	8350        "Tailors, dressmakers, and sewers (51-6050)"
	8360        "Textile bleaching and dyeing machine operators and tenders (51-6061)"
	8400        "Textile cutting machine setters, operators, and tenders (51-6062)"
	8410        "Textile knitting and weaving machine setters, operators, and tenders (51-6063)"
	8420        "Textile winding, twisting, and drawing out machine setters, operators, and tenders (51-6"
	8430        "Extruding and forming machine setters, operators, and tenders, synthetic and glass fiber"
	8440        "Fabric and apparel patternmakers (51-6092)"
	8450        "Upholsterers (51-6093)"        
	8460        "Textile, apparel, and furnishings workers, all other (51-6099)"
	8500        "Cabinetmakers and bench carpenters (51-7011)"
	8510        "Furniture finishers (51-7021)" 
	8520        "Model makers and patternmakers, wood (51-7030)"
	8530        "Sawing machine setters, operators, and tenders, wood (51-7041)"
	8540        "Woodworking machine setters, operators, and tenders, except sawing (51-7042)"
	8550        "Woodworkers, all other (51-7099)"
	8600        "Power plant operators, distributors, and dispatchers (51-8010)"
	8610        "Stationary engineers and boiler operators (51-8021)"
	8620        "Water and liquid waste treatment plant and system operators (51-8031)"
	8630        "Miscellaneous plant and system operators (51-8090)"
	8640        "Chemical processing machine setters, operators, and tenders (51-9010)"
	8650        "Crushing, grinding, polishing, mixing, and blending workers (51-9020)"
	8710        "Cutting workers (51-9030)"     
	8720        "Extruding, forming, pressing, and compacting machine setters, operators, and tenders (51"
	8730        "Furnace, kiln, oven, drier, and kettle operators and tenders (51-9051)"
	8740        "Inspectors, testers, sorters, samplers, and weighers (51-9061)"
	8750        "Jewelers and precious stone and metal workers (51-9071)"
	8760        "Medical, dental, and ophthalmic laboratory technicians (51-9080)"
	8800        "Packaging and filling machine operators and tenders (51-9111)"
	8810        "Painting workers (51-9120)"    
	8830        "Photographic process workers and processing machine operators (51-9130)"
	8840        "Semiconductor processors (51-9141)"
	8850        "Cementing and gluing machine operators and tenders (51-9191)"
	8860        "Cleaning, washing, and metal pickling equipment operators and tenders (51-9192)"
	8900        "Cooling and freezing equipment operators and tenders (51-9193)"
	8910        "Etchers and engravers (51-9194)"
	8920        "Molders, shapers, and casters, except metal and plastic (51-9195)"
	8930        "Paper goods machine setters, operators, and tenders (51-9196)"
	8940        "Tire builders (51-9197)"       
	8950        "Helpers--production workers (51-9198)"
	8960        "Production workers, all other (51-9199)"
	9000        "Supervisors, transportation and material moving workers (53-1000)"
	9030        "Aircraft pilots and flight engineers (53-2010)"
	9040        "Air traffic controllers and airfield operations specialists (53-2020)"
	9110        "Ambulance drivers and attendants, except emergency medical technicians (53-3011)"
	9120        "Bus drivers (53-3020)"         
	9130        "Driver/sales workers and truck drivers (53-3030)"
	9140        "Taxi drivers and chauffeurs (53-3041)"
	9150        "Motor vehicle operators, all other (53-3099)"
	9200        "Locomotive engineers and operators (53-4010)"
	9230        "Railroad brake, signal, and switch operators (53-4021)"
	9240        "Railroad conductors and yardmasters (53-4031)"
	9260        "Subway, streetcar, and other rail transportation workers (53-30XX)"
	9300        "Sailors and marine oilers (53-5011)"
	9310        "Ship and boat captains and operators (53-5020)"
	9330        "Ship engineers (53-5031)"      
	9340        "Bridge and lock tenders (53-6011)"
	9350        "Parking lot attendants (53-6021)"
	9360        "Service station attendants (53-6031)"
	9410        "Transportation inspectors (53-6051)"
	9420        "Other transportation workers (53-60XX)"
	9500        "Conveyor operators and tenders (53-7011)"
	9510        "Crane and tower operators (53-7021)"
	9520        "Dredge, excavating, and loading machine operators (53-7030)"
	9560        "Hoist and winch operators (53-7041)"
	9600        "Industrial truck and tractor operators (53-7051)"
	9610        "Cleaners of vehicles and equipment (53-7061)"
	9620        "Laborers and freight, stock, and material movers, hand (53-7062)"
	9630        "Machine feeders and offbearers (53-7063)"
	9640        "Packers and packagers, hand (53-7064)"
	9650        "Pumping station operators (53-7070)"
	9720        "Refuse and recyclable material collectors (53-7081)"
	9730        "Shuttle car operators (53-7111)"
	9740        "Tank car, truck, and ship loaders (53-7121)"
	9750        "Material moving workers, all other (53-7199)"
	9840        "Persons whose current labor force status is unemployed and last job was Armed Forces"
	-1          "Not in Universe"               
;
label values absocc2  absocc2l;
label define absocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values euectyp5 euectypm;
label define euectypm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values auectyp5 auectypm;
label define auectypm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values euectyp6 euectypk;
label define euectypk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values auectyp6 auectypk;
label define auectypk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values elmptyp1 elmptypm;
label define elmptypm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp1 almptypm;
label define almptypm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values elmptyp2 elmptypk;
label define elmptypk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp2 almptypk;
label define almptypk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values elmptyp3 elmptypl;
label define elmptypl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp3 almptypl;
label define almptypl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values essself  essself;
label define essself 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assself  assself;
label define assself 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values esschild esschild;
label define esschild
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asschild asschild;
label define asschild
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values essichld essichld;
label define essichld
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assichld assichld;
label define assichld
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values essiself essiself;
label define essiself
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assiself assiself;
label define assiself
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values estssi   estssi; 
label define estssi  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astssi   astssi; 
label define astssi  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rwcmprsn rwcmprsn;
label define rwcmprsn
	1           "Disability"                    
	3           "Suvivor"                       
	5           "Disability and Suvivor"        
	8           "No payment"                    
	-1          "Not in Universe"               
;
label values awcmprsn awcmprsn;
label define awcmprsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rinsrsn  rinsrsn;
label define rinsrsn 
	1           "Disability"                    
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values ainsrsn  ainsrsn;
label define ainsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rempdrsn rempdrsn;
label define rempdrsn
	1           "Disability"                    
	8           "No payment"                    
	-1          "Not in Universe"               
;
label values aempdrsn aempdrsn;
label define aempdrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rpensrsn rpensrsn;
label define rpensrsn
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values apensrsn apensrsn;
label define apensrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rfcsrsn  rfcsrsn;
label define rfcsrsn 
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values afcsrsn  afcsrsn;
label define afcsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rstatrsn rstatrsn;
label define rstatrsn
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values astatrsn astatrsn;
label define astatrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rlgovrsn rlgovrsn;
label define rlgovrsn
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values algovrsn algovrsn;
label define algovrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rmilrsn  rmilrsn;
label define rmilrsn 
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values amilrsn  amilrsn;
label define amilrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rrrsn    rrrsn;  
label define rrrsn   
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values arrrsn   arrrsn; 
label define arrrsn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rothrrsn rothrrsn;
label define rothrrsn
	1           "Disability"                    
	2           "Retirement"                    
	3           "Suvivor"                       
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and survivor"
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values aothrrsn aothrrsn;
label define aothrrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rlifirsn rlifirsn;
label define rlifirsn
	2           "Retirement"                    
	3           "Suvivor"                       
	6           "Retirement and survivor"       
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values alifirsn alifirsn;
label define alifirsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rvetsrsn rvetsrsn;
label define rvetsrsn
	3           "Suvivor"                       
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values avetsrsn avetsrsn;
label define avetsrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values restarsn restarsn;
label define restarsn
	3           "Suvivor"                       
	8           "No payment received"           
	-1          "Not in Universe"               
;
label values aestarsn aestarsn;
label define aestarsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efccyn   efccyn; 
label define efccyn  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afccyn   afccyn; 
label define afccyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecsyn    ecsyn;  
label define ecsyn   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acsyn    acsyn;  
label define acsyn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ealiyn   ealiyn; 
label define ealiyn  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaliyn   aaliyn; 
label define aaliyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efsyn    efsyn;  
label define efsyn   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afsyn    afsyn;  
label define afsyn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epssthru epssthru;
label define epssthru
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apssthru apssthru;
label define apssthru
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epaothr1 epaothru;
label define epaothru
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr1 apaothru;
label define apaothru
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values epaothr2 epaothrk;
label define epaothrk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr2 apaothrk;
label define apaothrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values epaothr3 epaothrl;
label define epaothrl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr3 apaothrl;
label define apaothrl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values epaothr4 epaothrm;
label define epaothrm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr4 apaothrm;
label define apaothrm
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values epaothr5 epaothrn;
label define epaothrn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr5 apaothrn;
label define apaothrn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values epaothr6 epaothro;
label define epaothro
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apaothr6 apaothro;
label define apaothro
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelact1 ewelactu;
label define ewelactu
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awelact1 awelactu;
label define awelactu
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelac21 ewelac2u;
label define ewelac2u
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awelac21 awelac2u;
label define awelac2u
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelac22 ewelac2k;
label define ewelac2k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awelac22 awelac2k;
label define awelac2k
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelac23 ewelac2l;
label define ewelac2l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awelac23 awelac2l;
label define awelac2l
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelact3 ewelactk;
label define ewelactk
	1           "Required to"                   
	2           "Chose to"                      
	3           "Both required and chose"       
	-1          "Not in Universe"               
;
label values awelact3 awelactk;
label define awelactk
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewelact4 ewelactl;
label define ewelactl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awelact4 awelactl;
label define awelactl
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewrkexp1 ewrkexpu;
label define ewrkexpu
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awrkexp1 awrkexpu;
label define awrkexpu
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewhiexp1 ewhiexpu;
label define ewhiexpu
	1           "First job"                     
	2           "Second job"                    
	-1          "Not in Universe"               
;
label values awhiexp1 awhiexpu;
label define awhiexpu
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewrkexp2 ewrkexpk;
label define ewrkexpk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awrkexp2 awrkexpk;
label define awrkexpk
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewrkexp3 ewrkexpl;
label define ewrkexpl
	1           "Required to do work experience program"
	2           "Chose to do work experience program"
	3           "Both required and chose"       
	-1          "Not in Universe"               
;
label values awrkexp3 awrkexpl;
label define awrkexpl
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewhiexp2 ewhiexpk;
label define ewhiexpk
	1           "First job"                     
	2           "Second job"                    
	-1          "Not in Universe"               
;
label values awhiexp2 awhiexpk;
label define awhiexpk
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
	4           "Imputed from the previous wave"
;
label values ewicyn   ewicyn; 
label define ewicyn  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awicyn   awicyn; 
label define awicyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epatanf1 epatanfn;
label define epatanfn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epatanf2 epatanfk;
label define epatanfk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epatanf3 epatanfl;
label define epatanfl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epatanf4 epatanfm;
label define epatanfm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epatanf5 epatanfo;
label define epatanfo
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epatanf6 epatanfp;
label define epatanfp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatanf  apatanf;
label define apatanf 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values easetdrw easetdrw;
label define easetdrw
	1           "Lump Sum"                      
	2           "Regular distribution"          
	3           "Both"                          
	4           "No"                            
	-1          "Not in Universe"               
;
label values aasetdrw aasetdrw;
label define aasetdrw
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eresnss1 eresnssw;
label define eresnssw
	1           "Retired"                       
	2           "Disabled"                      
	3           "Widowed or surviving child"    
	4           "Spouse or dependent child"     
	5           "Some other reason"             
	-1          "Not in Universe"               
;
label values aresnss1 aresnssw;
label define aresnssw
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eresnss2 eresnssk;
label define eresnssk
	0           "Persons providing only one reason"
	1           "Retired"                       
	2           "Disabled"                      
	3           "Widowed or surviving child"    
	4           "Spouse or dependent child"     
	5           "Some other reason"             
	-1          "Not in Universe"               
;
label values aresnss2 aresnssk;
label define aresnssk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tagess   tagess; 
label define tagess  
	-1          "Not in Universe"               
;
label values aagess   aagess; 
label define aagess  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
;
label values ejntssyn ejntssyn;
label define ejntssyn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajntssyn ajntssyn;
label define ajntssyn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values etrantp1 etrantpn;
label define etrantpn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etrantp2 etrantpk;
label define etrantpk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etrantp3 etrantpl;
label define etrantpl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etrantp4 etrantpm;
label define etrantpm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etrantp5 etrantpo;
label define etrantpo
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atrantp  atrantp;
label define atrantp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values egassce1 egasscep;
label define egasscep
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values egassce2 egasscek;
label define egasscek
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agassce  agassce;
label define agassce 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values etoksce1 etokscee;
label define etokscee
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values etoksce2 etokscek;
label define etokscek
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values atoksce  atoksce;
label define atoksce 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efoodtp1 efoodtpe;
label define efoodtpe
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodtp2 efoodtpk;
label define efoodtpk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodtp3 efoodtpl;
label define efoodtpl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodtp4 efoodtpm;
label define efoodtpm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afoodtyp afoodtyp;
label define afoodtyp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values efoodsc1 efoodscp;
label define efoodscp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodsc2 efoodsck;
label define efoodsck
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodsc3 efoodscl;
label define efoodscl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values efoodsc4 efoodscm;
label define efoodscm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afoodsce afoodsce;
label define afoodsce
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eclothtp eclothtp;
label define eclothtp
	1           "Clothes"                       
	2           "Money or vouchers"             
	3           "Both clothes and money or vouchers"
	-1          "Not in Universe"               
;
label values aclothtp aclothtp;
label define aclothtp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values eclthsc1 eclthscp;
label define eclthscp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eclthsc2 eclthsck;
label define eclthsck
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eclthsc3 eclthscl;
label define eclthscl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eclthsc4 eclthscm;
label define eclthscm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eclthsc5 eclthscn;
label define eclthscn
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aclthsc  aclthsc;
label define aclthsc 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epubhstp epubhstp;
label define epubhstp
	1           "Section 8"                     
	2           "Other rental assistance"       
	3           "Other housing program"         
	4           "Not sure; don't know"          
	-1          "Not in Universe"               
;
label values apubhstp apubhstp;
label define apubhstp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epubhsc1 epubhscp;
label define epubhscp
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epubhsc2 epubhsck;
label define epubhsck
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epubhsc3 epubhscl;
label define epubhscl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values epubhsc4 epubhscm;
label define epubhscm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apubhsc  apubhsc;
label define apubhsc 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecashsc1 ecashscc;
label define ecashscc
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ecashsc2 ecashsck;
label define ecashsck
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ecashsc3 ecashscl;
label define ecashscl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ecashsc4 ecashscm;
label define ecashscm
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acashsce acashsce;
label define acashsce
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecashgvt ecashgvt;
label define ecashgvt
	1           "Federal"                       
	2           "State"                         
	3           "Local"                         
	-1          "Not in Universe"               
;
label values acashgvt acashgvt;
label define acashgvt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epacash1 epacasht;
label define epacasht
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apacash1 apacasht;
label define apacasht
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epacash2 epacashk;
label define epacashk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apacash2 apacashk;
label define apacashk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values epacash3 epacashl;
label define epacashl
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apacash3 apacashl;
label define apacashl
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er01a    er01a;  
label define er01a   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar01a    ar01a;  
label define ar01a   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er01k    er01k;  
label define er01k   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar01k    ar01k;  
label define ar01k   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er02     er02l;  
label define er02l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar02     ar02l;  
label define ar02l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er03a    er03a;  
label define er03a   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar03a    ar03a;  
label define ar03a   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er03k    er03k;  
label define er03k   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar03k    ar03k;  
label define ar03k   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er04     er04l;  
label define er04l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar04     ar04l;  
label define ar04l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er05     er05l;  
label define er05l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar05     ar05l;  
label define ar05l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er06     er06l;  
label define er06l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar06     ar06l;  
label define ar06l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er08     er08l;  
label define er08l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar08     ar08l;  
label define ar08l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er10     er10l;  
label define er10l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar10     ar10l;  
label define ar10l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er13     er13l;  
label define er13l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar13     ar13l;  
label define ar13l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er14     er14l;  
label define er14l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar14     ar14l;  
label define ar14l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er15     er15l;  
label define er15l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar15     ar15l;  
label define ar15l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er20     er20l;  
label define er20l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar20     ar20l;  
label define ar20l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er21     er21l;  
label define er21l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar21     ar21l;  
label define ar21l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er23     er23l;  
label define er23l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar23     ar23l;  
label define ar23l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er24     er24l;  
label define er24l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar24     ar24l;  
label define ar24l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er25     er25l;  
label define er25l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar25     ar25l;  
label define ar25l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er26     er26l;  
label define er26l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar26     ar26l;  
label define ar26l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er27     er27l;  
label define er27l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar27     ar27l;  
label define ar27l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er28     er28l;  
label define er28l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar28     ar28l;  
label define ar28l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er29     er29l;  
label define er29l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar29     ar29l;  
label define ar29l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er30     er30l;  
label define er30l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar30     ar30l;  
label define ar30l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er31     er31l;  
label define er31l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar31     ar31l;  
label define ar31l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er32     er32l;  
label define er32l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar32     ar32l;  
label define ar32l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er34     er34l;  
label define er34l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar34     ar34l;  
label define ar34l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er35     er35l;  
label define er35l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar35     ar35l;  
label define ar35l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er36     er36l;  
label define er36l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar36     ar36l;  
label define ar36l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er38     er38l;  
label define er38l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar38     ar38l;  
label define ar38l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er39     er39l;  
label define er39l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar39     ar39l;  
label define ar39l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er42     er42l;  
label define er42l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar42     ar42l;  
label define ar42l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er51     er51l;  
label define er51l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar51     ar51l;  
label define ar51l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er52     er52l;  
label define er52l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar52     ar52l;  
label define ar52l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er55     er55l;  
label define er55l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar55     ar55l;  
label define ar55l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er56     er56l;  
label define er56l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar56     ar56l;  
label define ar56l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er60g    er60g;  
label define er60g   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar60g    ar60g;  
label define ar60g   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er60t    er60t;  
label define er60t   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar60t    ar60t;  
label define ar60t   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er61     er61l;  
label define er61l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar61     ar61l;  
label define ar61l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er62     er62l;  
label define er62l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar62     ar62l;  
label define ar62l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er64     er64l;  
label define er64l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar64     ar64l;  
label define ar64l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values er75     er75l;  
label define er75l   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar75     ar75l;  
label define ar75l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t01amta  t01amta;
label define t01amta 
	0           "None or not in universe"       
;
label values a01amta  a01amta;
label define a01amta 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t01amtk  t01amtk;
label define t01amtk 
	0           "None or not in universe"       
;
label values a01amtk  a01amtk;
label define a01amtk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t02amt   t02amt; 
label define t02amt  
	0           "None or not in universe"       
;
label values a02amt   a02amt; 
label define a02amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t03amta  t03amta;
label define t03amta 
	0           "None or not in universe"       
;
label values a03amta  a03amta;
label define a03amta 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t03amtk  t03amtk;
label define t03amtk 
	0           "None or not in universe"       
;
label values a03amtk  a03amtk;
label define a03amtk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t04amt   t04amt; 
label define t04amt  
	0           "None or not in universe"       
;
label values a04amt   a04amt; 
label define a04amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t05amt   t05amt; 
label define t05amt  
	0           "None or not in universe"       
;
label values a05amt   a05amt; 
label define a05amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t06amt   t06amt; 
label define t06amt  
	0           "None or not in universe"       
;
label values a06amt   a06amt; 
label define a06amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t08amt   t08amt; 
label define t08amt  
	0           "None or not in universe"       
;
label values a08amt   a08amt; 
label define a08amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t10amt   t10amt; 
label define t10amt  
	0           "None or not in universe"       
;
label values a10amt   a10amt; 
label define a10amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t13amt   t13amt; 
label define t13amt  
	0           "None or not in universe"       
;
label values a13amt   a13amt; 
label define a13amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t14amt   t14amt; 
label define t14amt  
	0           "None or not in universe"       
;
label values a14amt   a14amt; 
label define a14amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t15amt   t15amt; 
label define t15amt  
	0           "None or not in universe"       
;
label values a15amt   a15amt; 
label define a15amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t20amt   t20amt; 
label define t20amt  
	0           "None or not in universe"       
;
label values a20amt   a20amt; 
label define a20amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t21amt   t21amt; 
label define t21amt  
	0           "None or not in universe"       
;
label values a21amt   a21amt; 
label define a21amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t23amt   t23amt; 
label define t23amt  
	0           "None or not in universe"       
;
label values a23amt   a23amt; 
label define a23amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t24amt   t24amt; 
label define t24amt  
	0           "None or not in universe"       
;
label values a24amt   a24amt; 
label define a24amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t25amt   t25amt; 
label define t25amt  
	0           "None or not in universe"       
;
label values a25amt   a25amt; 
label define a25amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t26amt   t26amt; 
label define t26amt  
	0           "None or not in universe"       
;
label values a26amt   a26amt; 
label define a26amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t27amt   t27amt; 
label define t27amt  
	0           "None or not in universe"       
;
label values a27amt   a27amt; 
label define a27amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t28amt   t28amt; 
label define t28amt  
	0           "None or not in universe"       
;
label values a28amt   a28amt; 
label define a28amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t29amt   t29amt; 
label define t29amt  
	0           "None or not in universe"       
;
label values a29amt   a29amt; 
label define a29amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t30amt   t30amt; 
label define t30amt  
	0           "None or not in universe"       
;
label values a30amt   a30amt; 
label define a30amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t31amt   t31amt; 
label define t31amt  
	0           "None or not in universe"       
;
label values a31amt   a31amt; 
label define a31amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t32amt   t32amt; 
label define t32amt  
	0           "None or not in universe"       
;
label values a32amt   a32amt; 
label define a32amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t34amt   t34amt; 
label define t34amt  
	0           "None or not in universe"       
;
label values a34amt   a34amt; 
label define a34amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t35amt   t35amt; 
label define t35amt  
	0           "None or not in universe"       
;
label values a35amt   a35amt; 
label define a35amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t36amt   t36amt; 
label define t36amt  
	0           "None or not in universe"       
;
label values a36amt   a36amt; 
label define a36amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t38amt   t38amt; 
label define t38amt  
	0           "None or not in universe"       
;
label values a38amt   a38amt; 
label define a38amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t39amt   t39amt; 
label define t39amt  
	0           "None or not in universe"       
;
label values a39amt   a39amt; 
label define a39amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t42amt   t42amt; 
label define t42amt  
	0           "None or not in universe"       
;
label values a42amt   a42amt; 
label define a42amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t51amt   t51amt; 
label define t51amt  
	0           "None or not in universe"       
;
label values a51amt   a51amt; 
label define a51amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t52amt   t52amt; 
label define t52amt  
	0           "None or not in universe"       
;
label values a52amt   a52amt; 
label define a52amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t55amt   t55amt; 
label define t55amt  
	0           "None or not in universe"       
;
label values a55amt   a55amt; 
label define a55amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t56amt   t56amt; 
label define t56amt  
	0           "None or not in universe"       
;
label values a56amt   a56amt; 
label define a56amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t60amtg  t60amtg;
label define t60amtg 
	0           "None or not in universe"       
;
label values a60amtg  a60amtg;
label define a60amtg 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t60amtt  t60amtt;
label define t60amtt 
	0           "None or not in universe"       
;
label values a60amtt  a60amtt;
label define a60amtt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t61amt   t61amt; 
label define t61amt  
	0           "None or not in universe"       
;
label values a61amt   a61amt; 
label define a61amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t62amt   t62amt; 
label define t62amt  
	0           "None or not in universe"       
;
label values a62amt   a62amt; 
label define a62amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t64amt   t64amt; 
label define t64amt  
	0           "None or not in universe"       
;
label values a64amt   a64amt; 
label define a64amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values t75amt   t75amt; 
label define t75amt  
	0           "None or not in universe"       
;
label values a75amt   a75amt; 
label define a75amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tcsagy   tcsagy; 
label define tcsagy  
	0           "None or not in universe"       
;
label values acsagy   acsagy; 
label define acsagy  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values erolovr1 erolovry;
label define erolovry
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arolovr1 arolovry;
label define arolovry
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values erolovr2 erolovrk;
label define erolovrk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arolovr2 arolovrk;
label define arolovrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values trollamt trollamt;
label define trollamt
	0           "None or not in universe"       
;
label values arollamt arollamt;
label define arollamt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rab1r1   rab1r1l;
label define rab1r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rab1r2   rab1r2l;
label define rab1r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rab2r1   rab2r1l;
label define rab2r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rab2r2   rab2r2l;
label define rab2r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values ras1     ras1l;  
label define ras1l   
	1           "Got a job or earnings increased"
	2           "Family situation changed"      
	3           "Others in household earned enough money"
	4           "Penalized or sanctioned for non-cooperation"
	5           "Eligibility ran out because of time limits"
	6           "Didn't want to use up time limit"
	7           "Chose not to participate"      
	8           "Other, specify"                
	-1          "Not in Universe"               
;
label values ras2     ras2l;  
label define ras2l   
	1           "Got a job or earnings increased"
	2           "Family situation changed"      
	3           "Others in household earned enough money"
	4           "Penalized or sanctioned for non-cooperation"
	5           "Eligibility ran out because of time limits"
	6           "Didn't want to use up time limit"
	7           "Chose not to participate"      
	8           "Other, specify"                
	-1          "Not in Universe"               
;
label values rwb1r1   rwb1r1l;
label define rwb1r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rwb1r2   rwb1r2l;
label define rwb1r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rwb2r1   rwb2r1l;
label define rwb2r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rwb2r2   rwb2r2l;
label define rwb2r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rws1     rws1l;  
label define rws1l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "Other, specify"                
	-1          "Not in Universe"               
;
label values rws2     rws2l;  
label define rws2l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "Other, specify"                
	-1          "Not in Universe"               
;
label values rfb1r1   rfb1r1l;
label define rfb1r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rfb1r2   rfb1r2l;
label define rfb1r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rfb2r1   rfb2r1l;
label define rfb2r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rfb2r2   rfb2r2l;
label define rfb2r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rfs1     rfs1l;  
label define rfs1l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rfs2     rfs2l;  
label define rfs2l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rgb1r1   rgb1r1l;
label define rgb1r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rgb1r2   rgb1r2l;
label define rgb1r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rgb2r1   rgb2r1l;
label define rgb2r1l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rgb2r2   rgb2r2l;
label define rgb2r2l 
	1           "New child (or other dependent) or pregnancy"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise unable to work"
	6           "No change - just decided it was time"
	7           "No change - just heard about the program"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rgs1     rgs1l;  
label define rgs1l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rgs2     rgs2l;  
label define rgs2l   
	1           "Became ineligible because of increased income"
	2           "Because of family changes"     
	3           "Still eligible but could/chose not to collect"
	4           "Became Ineligible because program requirements not met"
	5           "Eligibility ran out because of time limits"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rob1r1   rob1r1l;
label define rob1r1l 
	1           "New child (or other dependent) or"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rob1r2   rob1r2l;
label define rob1r2l 
	1           "New child (or other dependent) or"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rob2r1   rob2r1l;
label define rob2r1l 
	1           "New child (or other dependent) or"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values rob2r2   rob2r2l;
label define rob2r2l 
	1           "New child (or other dependent) or"
	2           "Separation or divorce"         
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Became disabled - other"       
	-1          "Not in Universe"               
;
label values ros1     ros1l;  
label define ros1l   
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Became Ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values ros2     ros2l;  
label define ros2l   
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Became Ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rsb1r1   rsb1r1l;
label define rsb1r1l 
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
	-1          "Not in Universe"               
;
label values rsb1r2   rsb1r2l;
label define rsb1r2l 
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
	-1          "Not in Universe"               
;
label values rsb2r1   rsb2r1l;
label define rsb2r1l 
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
	-1          "Not in Universe"               
;
label values rsb2r2   rsb2r2l;
label define rsb2r2l 
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
	-1          "Not in Universe"               
;
label values rss1     rss1l;  
label define rss1l   
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Became Ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values rss2     rss2l;  
label define rss2l   
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Became Ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
	-1          "Not in Universe"               
;
label values east1a   east1a; 
label define east1a  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1a   aast1a; 
label define aast1a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east1b   east1b; 
label define east1b  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1b   aast1b; 
label define aast1b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east1c   east1c; 
label define east1c  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1c   aast1c; 
label define aast1c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east2a   east2a; 
label define east2a  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2a   aast2a; 
label define aast2a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east2b   east2b; 
label define east2b  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2b   aast2b; 
label define aast2b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east2c   east2c; 
label define east2c  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2c   aast2c; 
label define aast2c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east2d   east2d; 
label define east2d  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2d   aast2d; 
label define aast2d  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east3a   east3a; 
label define east3a  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3a   aast3a; 
label define aast3a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east3b   east3b; 
label define east3b  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3b   aast3b; 
label define aast3b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east3c   east3c; 
label define east3c  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3c   aast3c; 
label define aast3c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east3d   east3d; 
label define east3d  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3d   aast3d; 
label define aast3d  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east3e   east3e; 
label define east3e  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3e   aast3e; 
label define aast3e  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east4a   east4a; 
label define east4a  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4a   aast4a; 
label define aast4a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east4b   east4b; 
label define east4b  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4b   aast4b; 
label define aast4b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values east4c   east4c; 
label define east4c  
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4c   aast4c; 
label define aast4c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ejntrnt  ejntrnt;
label define ejntrnt 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajntrnt  ajntrnt;
label define ajntrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tjarnt   tjarnt; 
label define tjarnt  
	0           "None or not in universe"       
;
label values ajarnt   ajarnt; 
label define ajarnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tjaclr   tjaclr; 
label define tjaclr  
	0           "None or not in universe"       
;
label values ajaclr   ajaclr; 
label define ajaclr  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values eownrnt  eownrnt;
label define eownrnt 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aownrnt  aownrnt;
label define aownrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values toarnt   toarnt; 
label define toarnt  
	0           "None or not in universe"       
;
label values aoarnt   aoarnt; 
label define aoarnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values toaclr   toaclr; 
label define toaclr  
	0           "None or not in universe"       
;
label values aoaclr   aoaclr; 
label define aoaclr  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values ejrnt2   ejrnt2l;
label define ejrnt2l 
	-1          "Not universe"                  
	1           "Yes"                           
	2           "No"                            
;
label values ajrnt2   ajrnt2l;
label define ajrnt2l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tjaclr2  tjaclr2l;
label define tjaclr2l
	0           "None or not in universe"       
;
label values ajaclr2  ajaclr2l;
label define ajaclr2l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values emrtjnt  emrtjnt;
label define emrtjnt 
	-1          "Not universe"                  
	1           "Yes"                           
	2           "No"                            
;
label values amrtjnt  amrtjnt;
label define amrtjnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmijnt   tmijnt; 
label define tmijnt  
	0           "None or not in universe"       
;
label values amijnt   amijnt; 
label define amijnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values emrtown  emrtown;
label define emrtown 
	-1          "Not universe"                  
	1           "Yes"                           
	2           "No"                            
;
label values amrtown  amrtown;
label define amrtown 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmiown   tmiown; 
label define tmiown  
	0           "None or not in universe"       
;
label values amiown   amiown; 
label define amiown  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values trndup1  trndup1l;
label define trndup1l
	0           "None or not in universe"       
;
label values arndup1  arndup1l;
label define arndup1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values trndup2  trndup2l;
label define trndup2l
	0           "None or not in universe"       
;
label values arndup2  arndup2l;
label define arndup2l
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tothprop tothprop;
label define tothprop
	0           "None or not in universe"       
;
label values eckjt    eckjt;  
label define eckjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ackjt    ackjt;  
label define ackjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tckjtint tckjtint;
label define tckjtint
	0           "None or not in universe"       
;
label values ackjtint ackjtint;
label define ackjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values eckoast  eckoast;
label define eckoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ackoast  ackoast;
label define ackoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tckoint  tckoint;
label define tckoint 
	0           "None or not in universe"       
;
label values ackoint  ackoint;
label define ackoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values esvjt    esvjt;  
label define esvjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asvjt    asvjt;  
label define asvjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsvjtint tsvjtint;
label define tsvjtint
	0           "None or not in universe"       
;
label values asvjtint asvjtint;
label define asvjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values esvoast  esvoast;
label define esvoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asvoast  asvoast;
label define asvoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsvoint  tsvoint;
label define tsvoint 
	0           "None or not in universe"       
;
label values asvoint  asvoint;
label define asvoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values emdjt    emdjt;  
label define emdjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amdjt    amdjt;  
label define amdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmdjtint tmdjtint;
label define tmdjtint
	0           "None or not in universe"       
;
label values amdjtint amdjtint;
label define amdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values emdoast  emdoast;
label define emdoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amdoast  amdoast;
label define amdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmdoint  tmdoint;
label define tmdoint 
	0           "None or not in universe"       
;
label values amdoint  amdoint;
label define amdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values ecdjt    ecdjt;  
label define ecdjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acdjt    acdjt;  
label define acdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tcdjtint tcdjtint;
label define tcdjtint
	0           "None or not in universe"       
;
label values acdjtint acdjtint;
label define acdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values ecdoast  ecdoast;
label define ecdoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acdoast  acdoast;
label define acdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tcdoint  tcdoint;
label define tcdoint 
	0           "None or not in universe"       
;
label values acdoint  acdoint;
label define acdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ebdjt    ebdjt;  
label define ebdjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abdjt    abdjt;  
label define abdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbdjtint tbdjtint;
label define tbdjtint
	0           "None or not in universe"       
;
label values abdjtint abdjtint;
label define abdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values ebdoast  ebdoast;
label define ebdoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abdoast  abdoast;
label define abdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tbdoint  tbdoint;
label define tbdoint 
	0           "None or not in universe"       
;
label values abdoint  abdoint;
label define abdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values egvjt    egvjt;  
label define egvjt   
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvjt    agvjt;  
label define agvjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tgvjtint tgvjtint;
label define tgvjtint
	0           "None or not in universe"       
;
label values agvjtint agvjtint;
label define agvjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values egvoast  egvoast;
label define egvoast 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvoast  agvoast;
label define agvoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tgvoint  tgvoint;
label define tgvoint 
	0           "None or not in universe"       
;
label values agvoint  agvoint;
label define agvoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tintinc  tintinc;
label define tintinc 
	0           "None or not in univerese"      
;
label values emanychk emanychk;
label define emanychk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amanychk amanychk;
label define amanychk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmjntdiv tmjntdiv;
label define tmjntdiv
	0           "None or not in universe"       
;
label values amjntdiv amjntdiv;
label define amjntdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tmowndiv tmowndiv;
label define tmowndiv
	0           "None or not in universe"       
;
label values amowndiv amowndiv;
label define amowndiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values emothdiv emothdiv;
label define emothdiv
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amothdiv amothdiv;
label define amothdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tmjadiv  tmjadiv;
label define tmjadiv 
	0           "None or not in universe"       
;
label values amjadiv  amjadiv;
label define amjadiv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tmownadv tmownadv;
label define tmownadv
	0           "None or not in universe"       
;
label values amownadv amownadv;
label define amownadv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values esanychk esanychk;
label define esanychk
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asanychk asanychk;
label define asanychk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsjntdiv tsjntdiv;
label define tsjntdiv
	0           "None or not in universe"       
;
label values asjntdiv asjntdiv;
label define asjntdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tsowndiv tsowndiv;
label define tsowndiv
	0           "None or not in universe"       
;
label values asowndiv asowndiv;
label define asowndiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values esothdiv esothdiv;
label define esothdiv
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asothdiv asothdiv;
label define asothdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values tsjadiv  tsjadiv;
label define tsjadiv 
	0           "None or not in universe"       
;
label values asjadiv  asjadiv;
label define asjadiv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tsownadv tsownadv;
label define tsownadv
	0           "None or not in universe"       
;
label values asownadv asownadv;
label define asownadv
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	6           "Derived from range based values (from wave 5+)"
;
label values tdivinc  tdivinc;
label define tdivinc 
	0           "None or not in universe"       
;
label values ecrmth   ecrmth; 
label define ecrmth  
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values acrmth   acrmth; 
label define acrmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rmedcode rmedcode;
label define rmedcode
	1           "Retired or disabled worker"    
	2           "Spouse of retired or disabled" 
	3           "Widow of retired or disabled"  
	4           "Adult disabled as a child"     
	5           "Uninsured"                     
	7           "Other or invalid code"         
	9           "Missing code"                  
	-1          "Not in Universe"               
;
label values ecdmth   ecdmth; 
label define ecdmth  
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values acdmth   acdmth; 
label define acdmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values emcocov  emcocov;
label define emcocov 
	1           "Medicaid"                      
	2           "State Children's Health Insurance"
	3           "Other public health insurance" 
	-1          "Not in Universe"               
;
label values amcocov  amcocov;
label define amcocov 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ecdunt1  ecdunt1l;
label define ecdunt1l
	-1          "Not in Universe"               
;
label values ehimth   ehimth; 
label define ehimth  
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahimth   ahimth; 
label define ahimth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
	5           "Indicates children's coverage" 
;
label values ehiowner ehiowner;
label define ehiowner
	1           "Covered in own name"           
	2           "Covered by someone else's plan"
	3           "Covered both in own name and by"
	4           "Not covered"                   
	-1          "Not in Universe"               
;
label values ahiowner ahiowner;
label define ahiowner
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values enonhh   enonhh; 
label define enonhh  
	2           "No"                            
	1           "Yes"                           
;
label values rchampm  rchampm;
label define rchampm 
	1           "Yes, covered"                  
	2           "No"                            
	-1          "Not in Universe"               
;
label values ehiunt1  ehiunt1l;
label define ehiunt1l
	-1          "Not in Universe"               
;
label values ehiunt2  ehiunt2l;
label define ehiunt2l
	-1          "Not in Universe"               
;
label values ehiunt3  ehiunt3l;
label define ehiunt3l
	-1          "Not in Universe"               
;
label values ehemply  ehemply;
label define ehemply 
	1           "Current employer or work"      
	2           "Former employer"               
	3           "Union"                         
	4           "TRICARE/CHAMPUS"               
	5           "CHAMPVA"                       
	6           "Military/VA health care"       
	7           "Privately purchased"           
	8           "Other"                         
	-1          "Not in Universe"               
;
label values ahemply  ahemply;
label define ahemply 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehicost  ehicost;
label define ehicost 
	1           "All"                           
	2           "Part"                          
	3           "None"                          
	-1          "Not in Universe"               
;
label values ahicost  ahicost;
label define ahicost 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehiother ehiother;
label define ehiother
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahiother ahiother;
label define ahiother
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehispse  ehispse;
label define ehispse 
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values ahispse  ahispse;
label define ahispse 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehioldkd ehioldkd;
label define ehioldkd
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values ahioldkd ahioldkd;
label define ahioldkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehiyngkd ehiyngkd;
label define ehiyngkd
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values ahiyngkd ahiyngkd;
label define ahiyngkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehiothr  ehiothr;
label define ehiothr 
	1           "Yes, covered"                  
	2           "No, not covered"               
	-1          "Not in Universe"               
;
label values ahiothr  ahiothr;
label define ahiothr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values ehirsn01 ehirsn0r;
label define ehirsn0r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn02 ehirsn0k;
label define ehirsn0k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn03 ehirsn0l;
label define ehirsn0l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn04 ehirsn0m;
label define ehirsn0m
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn05 ehirsn0n;
label define ehirsn0n
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn06 ehirsn0o;
label define ehirsn0o
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn07 ehirsn0p;
label define ehirsn0p
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn08 ehirsn0q;
label define ehirsn0q
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn09 ehirsn0s;
label define ehirsn0s
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn10 ehirsn1r;
label define ehirsn1r
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn11 ehirsn1k;
label define ehirsn1k
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn12 ehirsn1l;
label define ehirsn1l
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahirsn   ahirsn; 
label define ahirsn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation using previous wave data"
;
label values rprvhi   rprvhi; 
label define rprvhi  
	1           "Employer or union provided"    
	2           "Privately purchased"           
	3           "Military related"              
	4           "OTHER"                         
	-1          "Not in Universe"               
;
label values rprvhi2  rprvhi2l;
label define rprvhi2l
	1           "Employer or union provided"    
	2           "Privately purchased"           
	3           "Military related"              
	4           "OTHER"                         
	-1          "Not in Universe"               
;
label values tcdbegyr tcdbegyr;
label define tcdbegyr
	-1          "Not in Universe"               
;
label values acdbegyr acdbegyr;
label define acdbegyr
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values ecdbegmo ecdbegmo;
label define ecdbegmo
	-1          "Not in Universe"               
;
label values acdbegmo acdbegmo;
label define acdbegmo
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values ehiallcv ehiallcv;
label define ehiallcv
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahiallcv ahiallcv;
label define ahiallcv
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values thinoyr  thinoyr;
label define thinoyr 
	-1          "Not in Universe"               
;
label values ahinoyr  ahinoyr;
label define ahinoyr 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values ehinomth ehinomth;
label define ehinomth
	-1          "Not in Universe"               
;
label values ahinomth ahinomth;
label define ahinomth
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values ehievrcv ehievrcv;
label define ehievrcv
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahievrcv ahievrcv;
label define ahievrcv
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values thicvyr  thicvyr;
label define thicvyr 
	-1          "Not in Universe"               
;
label values ahicvyr  ahicvyr;
label define ahicvyr 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values ehicvmth ehicvmth;
label define ehicvmth
	-1          "Not in Universe"               
;
label values ahicvmth ahicvmth;
label define ahicvmth
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck"                     
	3           "Logical imputation (derivation)"
;
label values acarovr1 acarovrh;
label define acarovrh
	1           "Reported as new job but converted to the continuation of a job held at end of previous wave"
	2           "Reported and retained as new job, but possible continuation of a job held at end of previous wave"
	3           "Category 1 or 2 regenerated job"
	4           "Category 3 or 4 regenerated job"
	5           "Category 5 or 6 regenerated job"
	6           "Category 7 regenerated job"    
	7           "Category 8 regenerated job"    
	8           "Category 9 regenerated job"    
	9           "Category 10 or 11 regenerated job"
	0           "Not applicable"                
;
label values acarovr2 acarovrk;
label define acarovrk
	1           "Reported as new job but converted to the continuation of a job held at end of previous wave"
	2           "Reported and retained as new job, but possible continuation of a job held at end of previous wave"
	3           "Category 1 or 2 regenerated job"
	4           "Category 3 or 4 regenerated job"
	5           "Category 5 or 6 regenerated job"
	6           "Category 7 regenerated job"    
	7           "Category 8 regenerated job"    
	8           "Category 9 regenerated job"    
	9           "Category 10 or 11 regenerated job"
	0           "Not applicable"                
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
