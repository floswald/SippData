
clear
cap log close
local dat_name "../dat/`2'.dat"

** The following line should contain the path to your output '.dta' file 

local dta_name "../dta/`1'.dta"

** The following line should contain the path to the data dictionary file 

local dct_name "$dcts/`1'.dct"

quietly infile using "`dct_name'", using("`dat_name'") clear
*Everything below this point are value labels

#delimit ;

;
label values spanel   spanel; 
label define spanel  
	1996        "Panel Year"                    
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
label values rhtype   rhtype; 
label define rhtype  
	1           "Family hh - Married couple"    
	2           "Family hh - Male householder"  
	3           "Family hh - Female householder"
	4           "Nonfamily hh - Male hhlder"    
	5           "Nonfamily hh - Female hhlder"  
	6           "Group Quarters"                
;
label values tmetro   tmetro; 
label define tmetro  
	1           "Metro"                         
	2           "Residual"                      
;
label values rhchange rhchange;
label define rhchange
	1           "Change occurred"               
	2           "No change occurred"            
;
label values eaccess  eaccess;
label define eaccess 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaccess  aaccess;
label define aaccess 
	0           "No imputation"                 
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eunits   eunits; 
label define eunits  
	-1          "Not in universe"               
	1           "One, detached"                 
	2           "One, attached"                 
	3           "Two"                           
	4           "3:4"                           
	5           "5-9"                           
	6           "10-19"                         
	7           "20-49"                         
	8           "50 or more"                    
;
label values aunits   aunits; 
label define aunits  
	0           "No imputation"                 
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values elivqrt  elivqrt;
label define elivqrt 
	1           "HU in House, apartment, flat"  
	2           "HU in nontransient hotel, motel,"
	3           "HU permanent, in transient"    
	4           "HU in rooming house"           
	5           "Mobile home or trailer w/ no"  
	6           "Mobile Home or trailer w/ one or"
	7           "HU not specified above"        
	8           "GQ - Quarters not HU in rooming"
	9           "GQ - Unit not permanent in"    
	10          "GQ - Unoccupied tent or trailer"
	11          "GQ - Student quarters in college"
	12          "Group quarters unit not"       
;
label values alivqrt  alivqrt;
label define alivqrt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical Imputation (Derivation)"
	4           "Statistical or logical"        
;
label values etenure  etenure;
label define etenure 
	1           "Owned or being bought by you or"
	2           "Rented for cash"               
	3           "Occupied without payment of cash"
;
label values atenure  atenure;
label define atenure 
	0           "No imputation"                 
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epubhse  epubhse;
label define epubhse 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apubhse  apubhse;
label define apubhse 
	0           "No imputation"                 
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values egvtrnt  egvtrnt;
label define egvtrnt 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvtrnt  agvtrnt;
label define agvtrnt 
	0           "No imputation"                 
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmthrnt  tmthrnt;
label define tmthrnt 
	0           "None or not in universe"       
;
label values amthrnt  amthrnt;
label define amthrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eutilyn  eutilyn;
label define eutilyn 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values autilyn  autilyn;
label define autilyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eegyast  eegyast;
label define eegyast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aegyast  aegyast;
label define aegyast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eegypmt1 eegypmtt;
label define eegypmtt
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eegypmt2 eegypmtk;
label define eegypmtk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eegypmt3 eegypmtl;
label define eegypmtl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aegypmt  aegypmt;
label define aegypmt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eegyamt  eegyamt;
label define eegyamt 
	0           "None or not in universe"       
;
label values aegyamt  aegyamt;
label define aegyamt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehotlunc ehotlunc;
label define ehotlunc
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahotlunc ahotlunc;
label define ahotlunc
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rnklun   rnklun; 
label define rnklun  
	-1          "Not in universe"               
;
label values efreelun efreelun;
label define efreelun
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afreelun afreelun;
label define afreelun
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values efrerdln efrerdln;
label define efrerdln
	-1          "Not in universe"               
	1           "Free lunch"                    
	2           "Reduced-price lunch"           
;
label values afrerdln afrerdln;
label define afrerdln
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ebrkfst  ebrkfst;
label define ebrkfst 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abrkfst  abrkfst;
label define abrkfst 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation"            
	4           "Statistical or logical"        
;
label values rnkbrk   rnkbrk; 
label define rnkbrk  
	-1          "Not in universe"               
;
label values efreebrk efreebrk;
label define efreebrk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afreebrk afreebrk;
label define afreebrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values efrerdbk efrerdbk;
label define efrerdbk
	-1          "Not in universe"               
	1           "Free breakfast"                
	2           "Reduced-price breakfast"       
;
label values afrerdbk afrerdbk;
label define afrerdbk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rprgques rprgques;
label define rprgques
	0           "Residence this month not in"   
	1           "Res. this mo. was intrvwed"    
	2           "Res. this mo. in sample but"   
	3           "Res. this mo. not in sample at"
;
label values rhnbrf   rhnbrf; 
label define rhnbrf  
	1           "Yes"                           
	2           "No"                            
;
label values rhcbrf   rhcbrf; 
label define rhcbrf  
	1           "Yes"                           
	2           "No"                            
;
label values rhmtrf   rhmtrf; 
label define rhmtrf  
	1           "Yes"                           
	2           "No"                            
;
label values rfid2    rfid2l; 
label define rfid2l  
	-1          "Not in universe"               
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
	5           "Secondary Individual"          
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
label values rsid     rsid;   
label define rsid    
	-1          "Not in universe"               
;
label values esfnp    esfnp;  
label define esfnp   
	-1          "Not in universe"               
;
label values esfrfper esfrfper;
label define esfrfper
	-1          "Not in universe"               
;
label values esfspse  esfspse;
label define esfspse 
	-1          "Not in universe"               
	9999        "No spouse in subfamily"        
;
label values esftype  esftype;
label define esftype 
	-1          "Not in universe"               
	2           "Related Subfamily"             
;
label values esfkind  esfkind;
label define esfkind 
	-1          "Not in universe"               
	1           "Headed by Husband/Wife"        
	2           "Male Headed"                   
	3           "Female Headed"                 
;
label values rschange rschange;
label define rschange
	0           "Not in universe"               
	1           "Change occurred"               
	2           "No change occurred"            
;
label values esownkid esownkid;
label define esownkid
	-1          "Not in universe"               
	0           "No children"                   
;
label values esoklt18 esoklt1d;
label define esoklt1d
	-1          "Not in universe"               
	0           "No children"                   
;
label values wsfinwgt wsfinwgt;
label define wsfinwgt
	-1          "Not in universe"               
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
label values tsfpov   tsfpov; 
label define tsfpov  
	0           "Not in universe"               
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
	4           "Nonintrvw - pseudo Type Z.  Left"
	5           "Children under 15 during"      
;
label values epopstat epopstat;
label define epopstat
	1           "Adult (15 years of age or older)"
	2           "Child (Under 15 years of age)" 
;
label values abmnth   abmnth; 
label define abmnth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values abyear   abyear; 
label define abyear  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esex     esex;   
label define esex    
	1           "Male"                          
	2           "Female"                        
;
label values asex     asex;   
label define asex    
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values erace    erace;  
label define erace   
	1           "White"                         
	2           "Black"                         
	3           "American Indian, Aleut, or"    
	4           "Asian or Pacific Islander"     
;
label values arace    arace;  
label define arace   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values aorigin  aorigin;
label define aorigin 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafnow   aafnow; 
label define aafnow  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eafever  eafever;
label define eafever 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafever  aafever;
label define aafever 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values uaf1     uaf1l;  
label define uaf1l   
	0           "Not answered"                  
	1           "August 1990 to present"        
	2           "September 1980 to July 1990"   
	3           "May 1975 to Ausust 1980"       
	4           "Vietnam Era (Aug '64 - April"  
	5           "Other service  (All other"     
	6           "Don't know"                    
	7           "Refused"                       
;
label values uaf2     uaf2l;  
label define uaf2l   
	0           "Not answered"                  
	1           "August 1990 to present"        
	2           "September 1980 to July 1990"   
	3           "May 1975 to Ausust 1980"       
	4           "Vietnam Era (Aug '64 - April"  
	5           "Other service  (All other"     
	8           "No other periods of service"   
;
label values uaf3     uaf3l;  
label define uaf3l   
	0           "Not answered"                  
	1           "August 1990 to present"        
	2           "September 1980 to July 1990"   
	3           "May 1975 to Ausust 1980"       
	4           "Vietnam Era (Aug '64 - April"  
	5           "Other service  (All other"     
	8           "No other periods of service"   
;
label values uaf4     uaf4l;  
label define uaf4l   
	0           "Not answered"                  
	1           "August 1990 to present"        
	2           "September 1980 to July 1990"   
	3           "May 1975 to Ausust 1980"       
	4           "Vietnam Era (Aug '64 - April"  
	5           "Other service  (All other"     
	8           "No other periods of service"   
;
label values uaf5     uaf5l;  
label define uaf5l   
	0           "Not answered"                  
	1           "August 1990 to present"        
	2           "September 1980 to July 1990"   
	3           "May 1975 to Ausust 1980"       
	4           "Vietnam Era (Aug '64 - April"  
	5           "Other service  (All other"     
	8           "No other periods of service"   
;
label values evayn    evayn;  
label define evayn   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avayn    avayn;  
label define avayn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values evettyp  evettyp;
label define evettyp 
	-1          "Not in universe"               
	1           "Service-connected disability"  
	2           "Survivor Benefits"             
	3           "Veteran's Pension"             
	4           "Other Veteran's Payments"      
;
label values avettyp  avettyp;
label define avettyp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values evaques  evaques;
label define evaques 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values avaques  avaques;
label define avaques 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eafsrvdi eafsrvdi;
label define eafsrvdi
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aafsrvdi aafsrvdi;
label define aafsrvdi
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esfr     esfr;   
label define esfr    
	0           "Not in universe"               
	1           "Reference person of a rel. or" 
	2           "Spouse of reference person of a"
	3           "Child (under 18) of reference" 
;
label values esft     esft;   
label define esft    
	0           "Primary family"                
	1           "Secondary indiv (not a family" 
	2           "Unrelated subfamily"           
	3           "Related subfamily"             
	4           "Primary individual"            
;
label values tage     tage;   
label define tage    
	0           "Less than 1 full year old"     
;
label values aage     aage;   
label define aage    
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values errp     errp;   
label define errp    
	1           "Reference person w/ rel. persons"
	2           "Reference Person w/out rel."   
	3           "Spouse of reference person"    
	4           "Child of reference person"     
	5           "Grandchild of reference person"
	6           "Parent of reference person"    
	7           "Brother/sister of reference"   
	8           "Other relative of reference"   
	9           "Foster child of reference person"
	10          "Unmarried partner of reference"
	11          "Housemate/roommate"            
	12          "Roomer/boarder"                
	13          "Other non-relative of reference"
;
label values arrp     arrp;   
label define arrp    
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
label values ams      ams;    
label define ams     
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epnspous epnspous;
label define epnspous
	9999        "Spouse not in hhld or person not"
;
label values apnspous apnspous;
label define apnspous
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epnmom   epnmom; 
label define epnmom  
	9999        "No mother in household"        
;
label values apnmom   apnmom; 
label define apnmom  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epndad   epndad; 
label define epndad  
	9999        "No father in household"        
;
label values apndad   apndad; 
label define apndad  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epnguard epnguard;
label define epnguard
	-1          "Not in universe"               
	9999        "Guardian not in household"     
;
label values apnguard apnguard;
label define apnguard
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values etypmom  etypmom;
label define etypmom 
	-1          "Not in universe"               
	1           "Biological or natural child"   
	2           "Stepchild"                     
	3           "Adopted child"                 
;
label values atypmom  atypmom;
label define atypmom 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values etypdad  etypdad;
label define etypdad 
	-1          "Not in universe"               
	1           "Biological or natural child"   
	2           "Stepchild"                     
	3           "Adopted child"                 
;
label values atypdad  atypdad;
label define atypdad 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rdesgpnt rdesgpnt;
label define rdesgpnt
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ulftmain ulftmain;
label define ulftmain
	0           "Not answered"                  
	1           "Deceased"                      
	2           "Institutionalized"             
	3           "On active duty in the Armed"   
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
	3           "Returned to hhld after missing"
	4           "Due to separation or divorce"  
	5           "From an institution"           
	6           "From Armed  Forces barracks"   
	7           "From outside the U.S."         
	8           "Should have been listed as"    
	9           "Became employed/unemployed"    
	10          "Job change - other"            
	11          "Lived at this address before"  
	12          "Other"                         
;
label values ulftday  ulftday;
label define ulftday 
	0           "Not answered"                  
;
label values ulftmon  ulftmon;
label define ulftmon 
	0           "Not answered"                  
;
label values uentday  uentday;
label define uentday 
	0           "Not answered"                  
;
label values uentmon  uentmon;
label define uentmon 
	0           "Not answered"                  
	13          "Entered before reference period"
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
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahtlnyn  ahtlnyn;
label define ahtlnyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ebkfsyn  ebkfsyn;
label define ebkfsyn 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abkfsyn  abkfsyn;
label define abkfsyn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rcutyp01 rcutyp0n;
label define rcutyp0n
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown01 rcuown0n;
label define rcuown0n
	0           "Not in universe"               
;
label values rcutyp03 rcutyp0k;
label define rcutyp0k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown03 rcuown0k;
label define rcuown0k
	0           "Not in universe"               
;
label values rcutyp04 rcutyp0l;
label define rcutyp0l
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown04 rcuown0l;
label define rcuown0l
	0           "Not in universe"               
;
label values rcutyp08 rcutyp0m;
label define rcutyp0m
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown8a rcuown8a;
label define rcuown8a
	0           "Not in universe"               
;
label values rcuown8b rcuown8b;
label define rcuown8b
	0           "Not in universe"               
;
label values rcutyp20 rcutyp2b;
label define rcutyp2b
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown20 rcuown2b;
label define rcuown2b
	0           "Not in universe"               
;
label values rcutyp21 rcutyp2k;
label define rcutyp2k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow21a rcuow21a;
label define rcuow21a
	0           "Not in universe"               
;
label values rcuow21b rcuow21b;
label define rcuow21b
	0           "Not in universe"               
;
label values rcutyp23 rcutyp2l;
label define rcutyp2l
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown23 rcuown2k;
label define rcuown2k
	0           "Not in universe"               
;
label values rcutyp24 rcutyp2m;
label define rcutyp2m
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow24a rcuow24a;
label define rcuow24a
	0           "Not in universe"               
;
label values rcuow24b rcuow24b;
label define rcuow24b
	0           "Not in universe"               
;
label values rcutyp25 rcutyp2n;
label define rcutyp2n
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown25 rcuown2l;
label define rcuown2l
	0           "Not in universe"               
;
label values rcutyp27 rcutyp2o;
label define rcutyp2o
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown27 rcuown2m;
label define rcuown2m
	0           "Not in universe"               
;
label values rcutyp57 rcutyp5b;
label define rcutyp5b
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuown57 rcuown5b;
label define rcuown5b
	0           "Not in universe"               
;
label values rcutyp58 rcutyp5k;
label define rcutyp5k
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values rcuow58a rcuow58a;
label define rcuow58a
	0           "Not in universe"               
;
label values rcuow58b rcuow58b;
label define rcuow58b
	0           "Not in universe"               
;
label values renroll  renroll;
label define renroll 
	-1          "Not in universe"               
	1           "Enrolled full-time"            
	2           "Enrolled part-time"            
	3           "Not enrolled"                  
;
label values arenroll arenroll;
label define arenroll
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eenrlm   eenrlm; 
label define eenrlm  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aenrlm   aenrlm; 
label define aenrlm  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values renrlma  renrlma;
label define renrlma 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eenlevel eenlevel;
label define eenlevel
	-1          "Not in universe"               
	1           "Elementary grades 1-8"         
	2           "High school grades 9-12"       
	3           "College year 1 (freshman)"     
	4           "College year 2 (sophomore)"    
	5           "College year 3 (junior)"       
	6           "College year 4 (senior)"       
	7           "College year 5 (first year"    
	8           "College year 6+ (second year or"
	9           "Vocational, technical, or"     
	10          "Enrolled in college, but not"  
;
label values aenlevel aenlevel;
label define aenlevel
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eedfund  eedfund;
label define eedfund 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aedfund  aedfund;
label define aedfund 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values easst01  easst01l;
label define easst01l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst03  easst03l;
label define easst03l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst04  easst04l;
label define easst04l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst05  easst05l;
label define easst05l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst06  easst06l;
label define easst06l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst07  easst07l;
label define easst07l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst08  easst08l;
label define easst08l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst09  easst09l;
label define easst09l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst10  easst10l;
label define easst10l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst11  easst11l;
label define easst11l
	-1          "Not in universe"               
	0           "Data suppressed"               
	1           "Received"                      
	2           "Did not receive"               
;
label values aedasst  aedasst;
label define aedasst 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
	45          "Master's degree (For example:" 
	46          "Professional School Degree (For"
	47          "Doctorate degree (For example:"
;
label values aeducate aeducate;
label define aeducate
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epdjbthn epdjbthn;
label define epdjbthn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apdjbthn apdjbthn;
label define apdjbthn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eppflag  eppflag;
label define eppflag 
	-1          "Not in universe or not"        
	1           "Yes"                           
;
label values emax     emax;   
label define emax    
	-1          "Not in universe"               
;
label values ebuscntr ebuscntr;
label define ebuscntr
	-1          "Not in universe"               
	0           "Contingent business"           
;
label values ejobcntr ejobcntr;
label define ejobcntr
	-1          "Not in universe"               
	0           "Contingent workers"            
;
label values eeveret  eeveret;
label define eeveret 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aeveret  aeveret;
label define aeveret 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values edisabl  edisabl;
label define edisabl 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adisabl  adisabl;
label define adisabl 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values edisprev edisprev;
label define edisprev
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values adisprev adisprev;
label define adisprev
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ersnowrk ersnowrk;
label define ersnowrk
	-1          "Not in universe"               
	1           "Temporarily unable to work"    
	2           "Temporarily not able to work"  
	3           "Unable to work because of"     
	4           "Retired"                       
	5           "Pregnancy/childbirth"          
	6           "Taking care of children/other" 
	7           "Going to school"               
	8           "Unable to find work"           
	9           "On layoff"                     
	10          "Not interested in working at a"
	11          "Other"                         
;
label values arsnowrk arsnowrk;
label define arsnowrk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eawop    eawop;  
label define eawop   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aawop    aawop;  
label define aawop   
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eabre    eabre;  
label define eabre   
	-1          "Not in universe"               
	1           "On layoff (temporary or"       
	2           "Slack work or business"        
	3           "Own injury"                    
	4           "Own illness/injury/medical"    
	5           "Pregnancy/childbirth"          
	6           "Taking care of children"       
	7           "On vacation/personal days"     
	8           "Bad weather"                   
	9           "Labor dispute"                 
	10          "New job to begin within 30 days"
	11          "Participated in a job-sharing" 
	12          "Other"                         
;
label values aabre    aabre;  
label define aabre   
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eptwrk   eptwrk; 
label define eptwrk  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aptwrk   aptwrk; 
label define aptwrk  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eptresn  eptresn;
label define eptresn 
	-1          "Not in universe"               
	1           "Could not find full-time job"  
	2           "Wanted to work part time"      
	3           "Temporarily unable to work"    
	4           "Temporarily not able to work"  
	5           "Unable to work full-time because"
	6           "Taking care of children/other" 
	7           "Full-time work week less than 35"
	8           "Slack work or material shortage"
	9           "Participated in job sharing"   
	10          "On vacation"                   
	11          "In school"                     
	12          "Other"                         
;
label values aptresn  aptresn;
label define aptresn 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values elkwrk   elkwrk; 
label define elkwrk  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alkwrk   alkwrk; 
label define alkwrk  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values elayoff  elayoff;
label define elayoff 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values alayoff  alayoff;
label define alayoff 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values rtakjob  rtakjob;
label define rtakjob 
	-1          "Not in universe"               
	0           "Not reported"                  
	1           "Yes"                           
	2           "No"                            
;
label values rnotake  rnotake;
label define rnotake 
	-1          "Not in universe"               
	0           "Not reported"                  
	1           "Waiting for a new job to begin"
	2           "Own temporary illness"         
	3           "School"                        
	4           "Other"                         
;
label values emoonlit emoonlit;
label define emoonlit
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amoonlit amoonlit;
label define amoonlit
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values ebflag   ebflag; 
label define ebflag  
	-1          "Not in universe or not"        
	1           "Yes"                           
;
label values ecflag   ecflag; 
label define ecflag  
	-1          "Not in universe"               
	1           "Yes"                           
;
label values rmesr    rmesr;  
label define rmesr   
	-1          "Not in universe"               
	1           "With a job entire month, worked"
	2           "With a job all month, absent"  
	3           "With job all month, absent from"
	4           "With a job at least 1 but not" 
	5           "With job at least 1 but not all"
	6           "No job all month, on layoff or"
	7           "No job, at least one but not all"
	8           "No job, no time on layoff and no"
;
label values rwkesr1  rwkesr1l;
label define rwkesr1l
	-1          "Not in universe"               
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff," 
	3           "With job/bus - on layoff, absent"
	4           "No job/bus - looking for work or"
	5           "No job/bus - not looking and not"
;
label values rwkesr2  rwkesr2l;
label define rwkesr2l
	-1          "Not in universe"               
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff," 
	3           "With job/bus - on layoff, absent"
	4           "No job/bus - looking for work or"
	5           "No job/bus - not looking and not"
;
label values rwkesr3  rwkesr3l;
label define rwkesr3l
	-1          "Not in universe"               
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff," 
	3           "With job/bus - on layoff, absent"
	4           "No job/bus - looking for work or"
	5           "No job/bus - not looking and not"
;
label values rwkesr4  rwkesr4l;
label define rwkesr4l
	-1          "Not in universe"               
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff," 
	3           "With job/bus - on layoff, absent"
	4           "No job/bus - looking for work or"
	5           "No job/bus - not looking and not"
;
label values rwkesr5  rwkesr5l;
label define rwkesr5l
	-1          "Not in universe"               
	1           "With job/bus - working"        
	2           "With job/bus - not on layoff," 
	3           "With job/bus - on layoff, absent"
	4           "No job/bus - looking for work or"
	5           "No job/bus - not looking and not"
;
label values rmwkwjb  rmwkwjb;
label define rmwkwjb 
	-1          "Not in universe"               
	0           "0 weeks (that is, did not have a"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
;
label values rmwksab  rmwksab;
label define rmwksab 
	-1          "Not in universe"               
	0           "0 weeks (that is, not absent"  
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
;
label values awksab   awksab; 
label define awksab  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values rmwklkg  rmwklkg;
label define rmwklkg 
	-1          "Not in universe"               
	0           "0 weeks (that is, did not look"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
;
label values awklkg   awklkg; 
label define awklkg  
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values rmhrswk  rmhrswk;
label define rmhrswk 
	-1          "Not in universe"               
	0           "Did not work"                  
	1           "All weeks 35+"                 
	2           "All weeks 1-34 hours"          
	3           "Some weeks 35+ and some weeks" 
	4           "Some weeks 35+, some 1-34 hours,"
	5           "At least 1, but not all, weeks"
	6           "At least 1 week, but not all"  
;
label values rwksperm rwksperm;
label define rwksperm
	-1          "Not in universe"               
	4           "four weeks"                    
	5           "five weeks"                    
;
label values eeno1    eeno1l; 
label define eeno1l  
	-1          "Not in universe"               
;
label values estlemp1 estlempm;
label define estlempm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astlemp1 astlempm;
label define astlempm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tsjdate1 tsjdatem;
label define tsjdatem
	-1          "Not in universe"               
;
label values asjdate1 asjdatem;
label define asjdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tejdate1 tejdatem;
label define tejdatem
	-1          "Not in universe"               
;
label values aejdate1 aejdatem;
label define aejdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ersend1  ersend1l;
label define ersend1l
	-1          "Not in universe"               
	1           "On layoff"                     
	2           "Retirement or old age"         
	3           "Childcare problems"            
	4           "Other family/personal"         
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer, sold business"       
	11          "Job was temporary and ended"   
	12          "Quit to take another job"      
	13          "Slack work or business"        
	14          "Unsatisfactory work arrangements"
	15          "Quit for some other reason"    
;
label values arsend1  arsend1l;
label define arsend1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ejbhrs1  ejbhrs1l;
label define ejbhrs1l
	-1          "Not in universe"               
;
label values ajbhrs1  ajbhrs1l;
label define ajbhrs1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eemploc1 eemplocm;
label define eemplocm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aemploc1 aemplocm;
label define aemplocm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempall1 tempallm;
label define tempallm
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempall1 aempallm;
label define aempallm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempsiz1 tempsizm;
label define tempsizm
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempsiz1 aempsizm;
label define aempsizm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eclwrk1  eclwrk1l;
label define eclwrk1l
	-1          "Not in universe"               
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
;
label values aclwrk1  aclwrk1l;
label define aclwrk1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eunion1  eunion1l;
label define eunion1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aunion1  aunion1l;
label define aunion1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ecntrc1  ecntrc1l;
label define ecntrc1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acntrc1  acntrc1l;
label define acntrc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values epayhr1  epayhr1l;
label define epayhr1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apayhr1  apayhr1l;
label define apayhr1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values rpyper1  rpyper1l;
label define rpyper1l
	-1          "Not in universe"               
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
;
label values ajbind1  ajbind1l;
label define ajbind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ajbocc1  ajbocc1l;
label define ajbocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eeno2    eeno2l; 
label define eeno2l  
	-1          "Not in universe"               
;
label values estlemp2 estlempk;
label define estlempk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astlemp2 astlempk;
label define astlempk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tsjdate2 tsjdatek;
label define tsjdatek
	-1          "Not in universe"               
;
label values asjdate2 asjdatek;
label define asjdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tejdate2 tejdatek;
label define tejdatek
	-1          "Not in universe"               
;
label values aejdate2 aejdatek;
label define aejdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ersend2  ersend2l;
label define ersend2l
	-1          "Not in universe"               
	1           "On layoff"                     
	2           "Retirement or old age"         
	3           "Childcare problems"            
	4           "Other family/personal"         
	5           "Own illness"                   
	6           "Own injury"                    
	7           "School/training"               
	8           "Discharged/fired"              
	9           "Employer bankrupt"             
	10          "Employer, sold business"       
	11          "Job was temporary and ended"   
	12          "Quit to take another job"      
	13          "Slack work or business"        
	14          "Unsatisfactory work arrangements"
	15          "Quit for some other reason"    
;
label values arsend2  arsend2l;
label define arsend2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ejbhrs2  ejbhrs2l;
label define ejbhrs2l
	-1          "Not in universe"               
;
label values ajbhrs2  ajbhrs2l;
label define ajbhrs2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eemploc2 eemplock;
label define eemplock
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aemploc2 aemplock;
label define aemplock
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempall2 tempallk;
label define tempallk
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempall2 aempallk;
label define aempallk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempsiz2 tempsizk;
label define tempsizk
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempsiz2 aempsizk;
label define aempsizk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eclwrk2  eclwrk2l;
label define eclwrk2l
	-1          "Not in universe"               
	1           "Private for profit employee"   
	2           "Private not for profit employee"
	3           "Local government worker"       
	4           "State government worker"       
	5           "Federal government worker"     
	6           "Family worker without pay"     
;
label values aclwrk2  aclwrk2l;
label define aclwrk2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eunion2  eunion2l;
label define eunion2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aunion2  aunion2l;
label define aunion2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ecntrc2  ecntrc2l;
label define ecntrc2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acntrc2  acntrc2l;
label define acntrc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values epayhr2  epayhr2l;
label define epayhr2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apayhr2  apayhr2l;
label define apayhr2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values rpyper2  rpyper2l;
label define rpyper2l
	-1          "Not in universe"               
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
;
label values ajbind2  ajbind2l;
label define ajbind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ajbocc2  ajbocc2l;
label define ajbocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ebno1    ebno1l; 
label define ebno1l  
	-1          "Not in universe"               
;
label values ebiznow1 ebiznowm;
label define ebiznowm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abiznow1 abiznowm;
label define abiznowm
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tsbdate1 tsbdatem;
label define tsbdatem
	-1          "Not in universe"               
;
label values asbdate1 asbdatem;
label define asbdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tebdate1 tebdatem;
label define tebdatem
	-1          "Not in universe"               
;
label values aebdate1 aebdatem;
label define aebdatem
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values erendb1  erendb1l;
label define erendb1l
	-1          "Not in universe"               
	1           "Retirement or old age"         
	2           "Childcare problems"            
	3           "Other family/personal problems"
	4           "Own illness"                   
	5           "Own injury"                    
	6           "School/training"               
	7           "Went bankrupt/business failed" 
	8           "Sold business or transferred"  
	9           "To start other business/take job"
	10          "Season ended for a seasonal"   
	11          "Quit for some other reason"    
;
label values arendb1  arendb1l;
label define arendb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ehrsbs1  ehrsbs1l;
label define ehrsbs1l
	-1          "Not in universe"               
;
label values ahrsbs1  ahrsbs1l;
label define ahrsbs1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values egrosb1  egrosb1l;
label define egrosb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrosb1  agrosb1l;
label define agrosb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values egrssb1  egrssb1l;
label define egrssb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrssb1  agrssb1l;
label define agrssb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempb1   tempb1l;
label define tempb1l 
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25:99 employees"               
	3           "100+ employees"                
;
label values aempb1   aempb1l;
label define aempb1l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eincpb1  eincpb1l;
label define eincpb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aincpb1  aincpb1l;
label define aincpb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values epropb1  epropb1l;
label define epropb1l
	-1          "Not in universe"               
	1           "alone"                         
	2           "partnership"                   
;
label values apropb1  apropb1l;
label define apropb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ehprtb1  ehprtb1l;
label define ehprtb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahprtb1  ahprtb1l;
label define ahprtb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eslryb1  eslryb1l;
label define eslryb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aslryb1  aslryb1l;
label define aslryb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eoincb1  eoincb1l;
label define eoincb1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoincb1  aoincb1l;
label define aoincb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values epartb11 epartb1m;
label define epartb1m
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values epartb21 epartb2m;
label define epartb2m
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values epartb31 epartb3m;
label define epartb3m
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values tbsind1  tbsind1l;
label define tbsind1l
	-1          "Not in universe"               
	1           "Agriculture, forestry and"     
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing: nondurable goods"
	5           "Manufacturing: durable goods"  
	6           "Transportation, communications"
	7           "Wholesale Trade: durable goods"
	8           "Wholesale trade: nondurable"   
	9           "Retail trade"                  
	10          "Finance, insurance and real"   
	11          "Business and repair services"  
	12          "Personal services"             
	13          "Entertainment and recreation"  
	14          "Professional and related"      
	15          "Public administration"         
;
label values absind1  absind1l;
label define absind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values absocc1  absocc1l;
label define absocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ebno2    ebno2l; 
label define ebno2l  
	-1          "Not in universe"               
;
label values ebiznow2 ebiznowk;
label define ebiznowk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abiznow2 abiznowk;
label define abiznowk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tsbdate2 tsbdatek;
label define tsbdatek
	-1          "Not in universe"               
;
label values asbdate2 asbdatek;
label define asbdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tebdate2 tebdatek;
label define tebdatek
	-1          "Not in universe"               
;
label values aebdate2 aebdatek;
label define aebdatek
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values erendb2  erendb2l;
label define erendb2l
	-1          "Not in universe"               
	1           "Retirement or old age"         
	2           "Childcare problems"            
	3           "Other family/personal problems"
	4           "Own illness"                   
	5           "Own injury"                    
	6           "School/training"               
	7           "Went bankrupt/business failed" 
	8           "Sold business or transferred"  
	9           "To start other business/take job"
	10          "Season ended for a seasonal"   
	11          "Quit for some other reason"    
;
label values arendb2  arendb2l;
label define arendb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ehrsbs2  ehrsbs2l;
label define ehrsbs2l
	-1          "Not in universe"               
;
label values ahrsbs2  ahrsbs2l;
label define ahrsbs2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values egrosb2  egrosb2l;
label define egrosb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrosb2  agrosb2l;
label define agrosb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values egrssb2  egrssb2l;
label define egrssb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agrssb2  agrssb2l;
label define agrssb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values tempb2   tempb2l;
label define tempb2l 
	-1          "Not in universe"               
	1           "Under 25 employees"            
	2           "25:99 employees"               
	3           "100+ employees"                
;
label values aempb2   aempb2l;
label define aempb2l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eincpb2  eincpb2l;
label define eincpb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aincpb2  aincpb2l;
label define aincpb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values epropb2  epropb2l;
label define epropb2l
	-1          "Not in universe"               
	1           "alone"                         
	2           "partnership"                   
;
label values apropb2  apropb2l;
label define apropb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values ehprtb2  ehprtb2l;
label define ehprtb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahprtb2  ahprtb2l;
label define ahprtb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eslryb2  eslryb2l;
label define eslryb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aslryb2  aslryb2l;
label define aslryb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values eoincb2  eoincb2l;
label define eoincb2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aoincb2  aoincb2l;
label define aoincb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
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
	4           "Statistical or logical"        
;
label values epartb12 epartb1k;
label define epartb1k
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values epartb22 epartb2k;
label define epartb2k
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values epartb32 epartb3k;
label define epartb3k
	-1          "Not in universe"               
	9999        "Unable to identify person # of"
;
label values tbsind2  tbsind2l;
label define tbsind2l
	-1          "Not in universe"               
	1           "Agriculture, forestry and"     
	2           "Mining"                        
	3           "Construction"                  
	4           "Manufacturing: nondurable goods"
	5           "Manufacturing: durable goods"  
	6           "Transportation, communications"
	7           "Wholesale Trade: durable goods"
	8           "Wholesale trade: nondurable"   
	9           "Retail trade"                  
	10          "Finance, insurance and real"   
	11          "Business and repair services"  
	12          "Personal services"             
	13          "Entertainment and recreation"  
	14          "Professional and related"      
	15          "Public administration"         
;
label values absind2  absind2l;
label define absind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values absocc2  absocc2l;
label define absocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical"        
;
label values euectyp5 euectypm;
label define euectypm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values auectyp5 auectypm;
label define auectypm
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values euectyp7 euectypk;
label define euectypk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values auectyp7 auectypk;
label define auectypk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values elmptyp1 elmptypm;
label define elmptypm
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp1 almptypm;
label define almptypm
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values elmptyp2 elmptypk;
label define elmptypk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp2 almptypk;
label define almptypk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values elmptyp3 elmptypl;
label define elmptypl
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values almptyp3 almptypl;
label define almptypl
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values essself  essself;
label define essself 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assself  assself;
label define assself 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esschild esschild;
label define esschild
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asschild asschild;
label define asschild
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values essichld essichld;
label define essichld
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assichld assichld;
label define assichld
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values essiself essiself;
label define essiself
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values assiself assiself;
label define assiself
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values estssi   estssi; 
label define estssi  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values astssi   astssi; 
label define astssi  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rwcmprsn rwcmprsn;
label define rwcmprsn
	-1          "Not in universe"               
	1           "Disability"                    
	3           "Survivor"                      
	5           "Disability and Survivor"       
	8           "No payment"                    
;
label values awcmprsn awcmprsn;
label define awcmprsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rinsrsn  rinsrsn;
label define rinsrsn 
	-1          "Not in universe"               
	1           "Disability"                    
	8           "No payment received"           
;
label values ainsrsn  ainsrsn;
label define ainsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rempdrsn rempdrsn;
label define rempdrsn
	-1          "Not in universe"               
	1           "Disability"                    
	8           "No payment"                    
;
label values aempdrsn aempdrsn;
label define aempdrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rpensrsn rpensrsn;
label define rpensrsn
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values apensrsn apensrsn;
label define apensrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rfcsrsn  rfcsrsn;
label define rfcsrsn 
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values afcsrsn  afcsrsn;
label define afcsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rstatrsn rstatrsn;
label define rstatrsn
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values astatrsn astatrsn;
label define astatrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rlgovrsn rlgovrsn;
label define rlgovrsn
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values algovrsn algovrsn;
label define algovrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rmilrsn  rmilrsn;
label define rmilrsn 
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values amilrsn  amilrsn;
label define amilrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rrrsn    rrrsn;  
label define rrrsn   
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values arrrsn   arrrsn; 
label define arrrsn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rblklrsn rblklrsn;
label define rblklrsn
	-1          "Not in universe"               
	1           "Disability"                    
	3           "Survivor"                      
	5           "Disability and survivor"       
	8           "No payment received"           
;
label values ablklrsn ablklrsn;
label define ablklrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rothrrsn rothrrsn;
label define rothrrsn
	-1          "Not in universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values aothrrsn aothrrsn;
label define aothrrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rlifirsn rlifirsn;
label define rlifirsn
	-1          "Not in universe"               
	2           "Retirement"                    
	3           "Survivor"                      
	6           "Retirement and survivor"       
	8           "No payment received"           
;
label values alifirsn alifirsn;
label define alifirsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rvetsrsn rvetsrsn;
label define rvetsrsn
	-1          "Not in universe"               
	3           "Survivor"                      
	8           "No payment received"           
;
label values avetsrsn avetsrsn;
label define avetsrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values restarsn restarsn;
label define restarsn
	-1          "Not in universe"               
	3           "Survivor"                      
	8           "No payment received"           
;
label values aestarsn aestarsn;
label define aestarsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values efccyn   efccyn; 
label define efccyn  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afccyn   afccyn; 
label define afccyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ecsagree ecsagree;
label define ecsagree
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acsagree acsagree;
label define acsagree
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ecsyn    ecsyn;  
label define ecsyn   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acsyn    acsyn;  
label define acsyn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ealiyn   ealiyn; 
label define ealiyn  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aaliyn   aaliyn; 
label define aaliyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values efsyn    efsyn;  
label define efsyn   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values afsyn    afsyn;  
label define afsyn   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epssthru epssthru;
label define epssthru
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apssthru apssthru;
label define apssthru
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ewicyn   ewicyn; 
label define ewicyn  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values awicyn   awicyn; 
label define awicyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epatyn   epatyn; 
label define epatyn  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatyn   apatyn; 
label define apatyn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epatyp1  epatyp1l;
label define epatyp1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatyp1  apatyp1l;
label define apatyp1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epatyp2  epatyp2l;
label define epatyp2l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatyp2  apatyp2l;
label define apatyp2l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epatyp3  epatyp3l;
label define epatyp3l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatyp3  apatyp3l;
label define apatyp3l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values epatyp4  epatyp4l;
label define epatyp4l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values apatyp4  apatyp4l;
label define apatyp4l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values easetdrw easetdrw;
label define easetdrw
	-1          "Not in universe"               
	1           "Lump Sum"                      
	2           "Regular distribution"          
	3           "Both"                          
	4           "No"                            
;
label values aasetdrw aasetdrw;
label define aasetdrw
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ejntssyn ejntssyn;
label define ejntssyn
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajntssyn ajntssyn;
label define ajntssyn
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er01a    er01a;  
label define er01a   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar01a    ar01a;  
label define ar01a   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er01k    er01k;  
label define er01k   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar01k    ar01k;  
label define ar01k   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er02     er02l;  
label define er02l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar02     ar02l;  
label define ar02l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er03a    er03a;  
label define er03a   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar03a    ar03a;  
label define ar03a   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er03k    er03k;  
label define er03k   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar03k    ar03k;  
label define ar03k   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er04     er04l;  
label define er04l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar04     ar04l;  
label define ar04l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er05     er05l;  
label define er05l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar05     ar05l;  
label define ar05l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er07     er07l;  
label define er07l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar07     ar07l;  
label define ar07l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er08     er08l;  
label define er08l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar08     ar08l;  
label define ar08l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er09     er09l;  
label define er09l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar09     ar09l;  
label define ar09l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er10     er10l;  
label define er10l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar10     ar10l;  
label define ar10l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er12     er12l;  
label define er12l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar12     ar12l;  
label define ar12l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er13     er13l;  
label define er13l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar13     ar13l;  
label define ar13l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er14     er14l;  
label define er14l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar14     ar14l;  
label define ar14l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er15     er15l;  
label define er15l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar15     ar15l;  
label define ar15l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er20     er20l;  
label define er20l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar20     ar20l;  
label define ar20l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er21     er21l;  
label define er21l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar21     ar21l;  
label define ar21l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er23     er23l;  
label define er23l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar23     ar23l;  
label define ar23l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er24     er24l;  
label define er24l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar24     ar24l;  
label define ar24l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er25     er25l;  
label define er25l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar25     ar25l;  
label define ar25l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er26     er26l;  
label define er26l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar26     ar26l;  
label define ar26l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er27     er27l;  
label define er27l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar27     ar27l;  
label define ar27l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er28     er28l;  
label define er28l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar28     ar28l;  
label define ar28l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er29     er29l;  
label define er29l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar29     ar29l;  
label define ar29l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er30     er30l;  
label define er30l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar30     ar30l;  
label define ar30l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er31     er31l;  
label define er31l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar31     ar31l;  
label define ar31l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er32     er32l;  
label define er32l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar32     ar32l;  
label define ar32l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er34     er34l;  
label define er34l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar34     ar34l;  
label define ar34l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er35     er35l;  
label define er35l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar35     ar35l;  
label define ar35l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er36     er36l;  
label define er36l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar36     ar36l;  
label define ar36l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er37     er37l;  
label define er37l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar37     ar37l;  
label define ar37l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er38     er38l;  
label define er38l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar38     ar38l;  
label define ar38l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er39     er39l;  
label define er39l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar39     ar39l;  
label define ar39l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er42     er42l;  
label define er42l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar42     ar42l;  
label define ar42l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er50     er50l;  
label define er50l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar50     ar50l;  
label define ar50l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er51     er51l;  
label define er51l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar51     ar51l;  
label define ar51l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er52     er52l;  
label define er52l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar52     ar52l;  
label define ar52l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er53     er53l;  
label define er53l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar53     ar53l;  
label define ar53l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er55     er55l;  
label define er55l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar55     ar55l;  
label define ar55l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er56     er56l;  
label define er56l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar56     ar56l;  
label define ar56l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values er75     er75l;  
label define er75l   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ar75     ar75l;  
label define ar75l   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t01amta  t01amta;
label define t01amta 
	0           "None or not in universe"       
;
label values a01amta  a01amta;
label define a01amta 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t01amtk  t01amtk;
label define t01amtk 
	0           "None or not in universe"       
;
label values a01amtk  a01amtk;
label define a01amtk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t02amt   t02amt; 
label define t02amt  
	0           "None or not in universe"       
;
label values a02amt   a02amt; 
label define a02amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t03amta  t03amta;
label define t03amta 
	0           "None or not in universe"       
;
label values a03amta  a03amta;
label define a03amta 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t03amtk  t03amtk;
label define t03amtk 
	0           "None or not in universe"       
;
label values a03amtk  a03amtk;
label define a03amtk 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t04amt   t04amt; 
label define t04amt  
	0           "None or not in universe"       
;
label values a04amt   a04amt; 
label define a04amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t05amt   t05amt; 
label define t05amt  
	0           "None or not in universe"       
;
label values a05amt   a05amt; 
label define a05amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t07amt   t07amt; 
label define t07amt  
	0           "None or not in universe"       
;
label values a07amt   a07amt; 
label define a07amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t08amt   t08amt; 
label define t08amt  
	0           "None or not in universe"       
;
label values a08amt   a08amt; 
label define a08amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t09amt   t09amt; 
label define t09amt  
	0           "None or not in universe"       
;
label values a09amt   a09amt; 
label define a09amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t10amt   t10amt; 
label define t10amt  
	0           "None or not in universe"       
;
label values a10amt   a10amt; 
label define a10amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t12amt   t12amt; 
label define t12amt  
	0           "None or not in universe"       
;
label values a12amt   a12amt; 
label define a12amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t13amt   t13amt; 
label define t13amt  
	0           "None or not in universe"       
;
label values a13amt   a13amt; 
label define a13amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t14amt   t14amt; 
label define t14amt  
	0           "None or not in universe"       
;
label values a14amt   a14amt; 
label define a14amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t15amt   t15amt; 
label define t15amt  
	0           "None or not in universe"       
;
label values a15amt   a15amt; 
label define a15amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t20amt   t20amt; 
label define t20amt  
	0           "None or not in universe"       
;
label values a20amt   a20amt; 
label define a20amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t21amt   t21amt; 
label define t21amt  
	0           "None or not in universe"       
;
label values a21amt   a21amt; 
label define a21amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t23amt   t23amt; 
label define t23amt  
	0           "None or not in universe"       
;
label values a23amt   a23amt; 
label define a23amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t24amt   t24amt; 
label define t24amt  
	0           "None or not in universe"       
;
label values a24amt   a24amt; 
label define a24amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t25amt   t25amt; 
label define t25amt  
	0           "None or not in universe"       
;
label values a25amt   a25amt; 
label define a25amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t26amt   t26amt; 
label define t26amt  
	0           "None or not in universe"       
;
label values a26amt   a26amt; 
label define a26amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t27amt   t27amt; 
label define t27amt  
	0           "None or not in universe"       
;
label values a27amt   a27amt; 
label define a27amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t28amt   t28amt; 
label define t28amt  
	0           "None or not in universe"       
;
label values a28amt   a28amt; 
label define a28amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t29amt   t29amt; 
label define t29amt  
	0           "None or not in universe"       
;
label values a29amt   a29amt; 
label define a29amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t30amt   t30amt; 
label define t30amt  
	0           "None or not in universe"       
;
label values a30amt   a30amt; 
label define a30amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t31amt   t31amt; 
label define t31amt  
	0           "None or not in universe"       
;
label values a31amt   a31amt; 
label define a31amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t32amt   t32amt; 
label define t32amt  
	0           "None or not in universe"       
;
label values a32amt   a32amt; 
label define a32amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t34amt   t34amt; 
label define t34amt  
	0           "None or not in universe"       
;
label values a34amt   a34amt; 
label define a34amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t35amt   t35amt; 
label define t35amt  
	0           "None or not in universe"       
;
label values a35amt   a35amt; 
label define a35amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t36amt   t36amt; 
label define t36amt  
	0           "None or not in universe"       
;
label values a36amt   a36amt; 
label define a36amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t37amt   t37amt; 
label define t37amt  
	0           "None or not in universe"       
;
label values a37amt   a37amt; 
label define a37amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t38amt   t38amt; 
label define t38amt  
	0           "None or not in universe"       
;
label values a38amt   a38amt; 
label define a38amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t39amt   t39amt; 
label define t39amt  
	0           "None or not in universe"       
;
label values a39amt   a39amt; 
label define a39amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t42amt   t42amt; 
label define t42amt  
	0           "None or not in universe"       
;
label values a42amt   a42amt; 
label define a42amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t50amt   t50amt; 
label define t50amt  
	0           "None or not in universe"       
;
label values a50amt   a50amt; 
label define a50amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t51amt   t51amt; 
label define t51amt  
	0           "None or not in universe"       
;
label values a51amt   a51amt; 
label define a51amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t52amt   t52amt; 
label define t52amt  
	0           "None or not in universe"       
;
label values a52amt   a52amt; 
label define a52amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t53amt   t53amt; 
label define t53amt  
	0           "None or not in universe"       
;
label values a53amt   a53amt; 
label define a53amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t55amt   t55amt; 
label define t55amt  
	0           "None or not in universe"       
;
label values a55amt   a55amt; 
label define a55amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t56amt   t56amt; 
label define t56amt  
	0           "None or not in universe"       
;
label values a56amt   a56amt; 
label define a56amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values t75amt   t75amt; 
label define t75amt  
	0           "None or not in universe"       
;
label values a75amt   a75amt; 
label define a75amt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tcsagy   tcsagy; 
label define tcsagy  
	0           "None or not in universe"       
;
label values acsagy   acsagy; 
label define acsagy  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values erolovr1 erolovry;
label define erolovry
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arolovr1 arolovry;
label define arolovry
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values erolovr2 erolovrk;
label define erolovrk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values arolovr2 arolovrk;
label define arolovrk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values trollamt trollamt;
label define trollamt
	0           "None or not in universe"       
;
label values arollamt arollamt;
label define arollamt
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rab1r1   rab1r1l;
label define rab1r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rab1r2   rab1r2l;
label define rab1r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rab2r1   rab2r1l;
label define rab2r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rab2r2   rab2r2l;
label define rab2r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values ras1     ras1l;  
label define ras1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values ras2     ras2l;  
label define ras2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rwb1r1   rwb1r1l;
label define rwb1r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rwb1r2   rwb1r2l;
label define rwb1r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rwb2r1   rwb2r1l;
label define rwb2r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rwb2r2   rwb2r2l;
label define rwb2r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rws1     rws1l;  
label define rws1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rws2     rws2l;  
label define rws2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rfb1r1   rfb1r1l;
label define rfb1r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rfb1r2   rfb1r2l;
label define rfb1r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rfb2r1   rfb2r1l;
label define rfb2r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rfb2r2   rfb2r2l;
label define rfb2r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rfs1     rfs1l;  
label define rfs1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rfs2     rfs2l;  
label define rfs2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rgb1r1   rgb1r1l;
label define rgb1r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rgb1r2   rgb1r2l;
label define rgb1r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rgb2r1   rgb2r1l;
label define rgb2r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rgb2r2   rgb2r2l;
label define rgb2r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rgs1     rgs1l;  
label define rgs1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rgs2     rgs2l;  
label define rgs2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rob1r1   rob1r1l;
label define rob1r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rob1r2   rob1r2l;
label define rob1r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rob2r1   rob2r1l;
label define rob2r1l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values rob2r2   rob2r2l;
label define rob2r2l 
	-1          "Not in universe"               
	2           "Pregnancy/birth of child"      
	3           "Began receiving for another"   
	4           "Separated or divorced from"    
	5           "Loss of job/wages/other income"
	6           "Loss of other support income"  
	7           "Just learned about program"    
	8           "Just got around to applying"   
	9           "Became disabled"               
	10          "Other, specify"                
;
label values ros1     ros1l;  
label define ros1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values ros2     ros2l;  
label define ros2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rsb1r1   rsb1r1l;
label define rsb1r1l 
	-1          "Not in universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb1r2   rsb1r2l;
label define rsb1r2l 
	-1          "Not in universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb2r1   rsb2r1l;
label define rsb2r1l 
	-1          "Not in universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb2r2   rsb2r2l;
label define rsb2r2l 
	-1          "Not in universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rss1     rss1l;  
label define rss1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values rss2     rss2l;  
label define rss2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Because of family changes"     
	3           "Still eligible but could/chose"
	4           "Other, specify"                
;
label values east1a   east1a; 
label define east1a  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1a   aast1a; 
label define aast1a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east1b   east1b; 
label define east1b  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1b   aast1b; 
label define aast1b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east1c   east1c; 
label define east1c  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast1c   aast1c; 
label define aast1c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east2a   east2a; 
label define east2a  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2a   aast2a; 
label define aast2a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east2b   east2b; 
label define east2b  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2b   aast2b; 
label define aast2b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east2c   east2c; 
label define east2c  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2c   aast2c; 
label define aast2c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east2d   east2d; 
label define east2d  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast2d   aast2d; 
label define aast2d  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east3a   east3a; 
label define east3a  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3a   aast3a; 
label define aast3a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east3b   east3b; 
label define east3b  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3b   aast3b; 
label define aast3b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east3c   east3c; 
label define east3c  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3c   aast3c; 
label define aast3c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east3d   east3d; 
label define east3d  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3d   aast3d; 
label define aast3d  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east3e   east3e; 
label define east3e  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast3e   aast3e; 
label define aast3e  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east4a   east4a; 
label define east4a  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4a   aast4a; 
label define aast4a  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east4b   east4b; 
label define east4b  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4b   aast4b; 
label define aast4b  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values east4c   east4c; 
label define east4c  
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aast4c   aast4c; 
label define aast4c  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ejntrnt  ejntrnt;
label define ejntrnt 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ajntrnt  ajntrnt;
label define ajntrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tjarnt   tjarnt; 
label define tjarnt  
	0           "None or not in universe"       
;
label values ajarnt   ajarnt; 
label define ajarnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tjaclr   tjaclr; 
label define tjaclr  
	0           "None or not in universe"       
;
label values ajaclr   ajaclr; 
label define ajaclr  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eownrnt  eownrnt;
label define eownrnt 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values aownrnt  aownrnt;
label define aownrnt 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values toarnt   toarnt; 
label define toarnt  
	0           "None or not in universe"       
;
label values aoarnt   aoarnt; 
label define aoarnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values toaclr   toaclr; 
label define toaclr  
	0           "None or not in universe"       
;
label values aoaclr   aoaclr; 
label define aoaclr  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tjaclr2  tjaclr2l;
label define tjaclr2l
	0           "None or not in universe"       
;
label values ajaclr2  ajaclr2l;
label define ajaclr2l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmijnt   tmijnt; 
label define tmijnt  
	0           "None or not in universe"       
;
label values amijnt   amijnt; 
label define amijnt  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
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
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmiown   tmiown; 
label define tmiown  
	0           "None or not in universe"       
;
label values amiown   amiown; 
label define amiown  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values trndup1  trndup1l;
label define trndup1l
	0           "None or not in universe"       
;
label values arndup1  arndup1l;
label define arndup1l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values trndup2  trndup2l;
label define trndup2l
	0           "None or not in universe"       
;
label values arndup2  arndup2l;
label define arndup2l
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tothprop tothprop;
label define tothprop
	0           "None or not in universe"       
;
label values eckjt    eckjt;  
label define eckjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ackjt    ackjt;  
label define ackjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tckjtint tckjtint;
label define tckjtint
	0           "None or not in universe"       
;
label values ackjtint ackjtint;
label define ackjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values eckoast  eckoast;
label define eckoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ackoast  ackoast;
label define ackoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tckoint  tckoint;
label define tckoint 
	0           "None or not in universe"       
;
label values ackoint  ackoint;
label define ackoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esvjt    esvjt;  
label define esvjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asvjt    asvjt;  
label define asvjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsvjtint tsvjtint;
label define tsvjtint
	0           "None or not in universe"       
;
label values asvjtint asvjtint;
label define asvjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esvoast  esvoast;
label define esvoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asvoast  asvoast;
label define asvoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsvoint  tsvoint;
label define tsvoint 
	0           "None or not in universe"       
;
label values asvoint  asvoint;
label define asvoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values emdjt    emdjt;  
label define emdjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amdjt    amdjt;  
label define amdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmdjtint tmdjtint;
label define tmdjtint
	0           "None or not in universe"       
;
label values amdjtint amdjtint;
label define amdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values emdoast  emdoast;
label define emdoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amdoast  amdoast;
label define amdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmdoint  tmdoint;
label define tmdoint 
	0           "None or not in universe"       
;
label values amdoint  amdoint;
label define amdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ecdjt    ecdjt;  
label define ecdjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acdjt    acdjt;  
label define acdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tcdjtint tcdjtint;
label define tcdjtint
	0           "None or not in universe"       
;
label values acdjtint acdjtint;
label define acdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ecdoast  ecdoast;
label define ecdoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values acdoast  acdoast;
label define acdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tcdoint  tcdoint;
label define tcdoint 
	0           "None or not in universe"       
;
label values acdoint  acdoint;
label define acdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ebdjt    ebdjt;  
label define ebdjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abdjt    abdjt;  
label define abdjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tbdjtint tbdjtint;
label define tbdjtint
	0           "None or not in universe"       
;
label values abdjtint abdjtint;
label define abdjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ebdoast  ebdoast;
label define ebdoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values abdoast  abdoast;
label define abdoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tbdoint  tbdoint;
label define tbdoint 
	0           "None or not in universe"       
;
label values abdoint  abdoint;
label define abdoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values egvjt    egvjt;  
label define egvjt   
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvjt    agvjt;  
label define agvjt   
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tgvjtint tgvjtint;
label define tgvjtint
	0           "None or not in universe"       
;
label values agvjtint agvjtint;
label define agvjtint
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values egvoast  egvoast;
label define egvoast 
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values agvoast  agvoast;
label define agvoast 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tgvoint  tgvoint;
label define tgvoint 
	0           "None or not in universe"       
;
label values agvoint  agvoint;
label define agvoint 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tintinc  tintinc;
label define tintinc 
	0           "None or not in univerese"      
;
label values emanychk emanychk;
label define emanychk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amanychk amanychk;
label define amanychk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmjntdiv tmjntdiv;
label define tmjntdiv
	0           "None or not in universe"       
;
label values amjntdiv amjntdiv;
label define amjntdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmowndiv tmowndiv;
label define tmowndiv
	0           "None or not in universe"       
;
label values amowndiv amowndiv;
label define amowndiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values emothdiv emothdiv;
label define emothdiv
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values amothdiv amothdiv;
label define amothdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmjadiv  tmjadiv;
label define tmjadiv 
	0           "None or not in universe"       
;
label values amjadiv  amjadiv;
label define amjadiv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tmownadv tmownadv;
label define tmownadv
	0           "None or not in universe"       
;
label values amownadv amownadv;
label define amownadv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esanychk esanychk;
label define esanychk
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asanychk asanychk;
label define asanychk
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsjntdiv tsjntdiv;
label define tsjntdiv
	0           "None or not in universe"       
;
label values asjntdiv asjntdiv;
label define asjntdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsowndiv tsowndiv;
label define tsowndiv
	0           "None or not in universe"       
;
label values asowndiv asowndiv;
label define asowndiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values esothdiv esothdiv;
label define esothdiv
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values asothdiv asothdiv;
label define asothdiv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsjadiv  tsjadiv;
label define tsjadiv 
	0           "None or not in universe"       
;
label values asjadiv  asjadiv;
label define asjadiv 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tsownadv tsownadv;
label define tsownadv
	0           "None or not in universe"       
;
label values asownadv asownadv;
label define asownadv
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values tdivinc  tdivinc;
label define tdivinc 
	0           "None or not in universe"       
;
label values ecrmth   ecrmth; 
label define ecrmth  
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values acrmth   acrmth; 
label define acrmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rmedcode rmedcode;
label define rmedcode
	-1          "Not in universe"               
	1           "Retired or disabled worker"    
	2           "Spouse of retired or disabled" 
	3           "Widow of retired or disabled"  
	4           "Adult disabled as a child"     
	5           "Uninsured"                     
	7           "Other or invalid code"         
	9           "Missing code"                  
;
label values ecdmth   ecdmth; 
label define ecdmth  
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values acdmth   acdmth; 
label define acdmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ecdunt1  ecdunt1l;
label define ecdunt1l
	-1          "Not in universe"               
;
label values ecdunt2  ecdunt2l;
label define ecdunt2l
	-1          "Not in universe"               
;
label values ecdunt3  ecdunt3l;
label define ecdunt3l
	-1          "Not in universe"               
;
label values ehimth   ehimth; 
label define ehimth  
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahimth   ahimth; 
label define ahimth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehiowner ehiowner;
label define ehiowner
	1           "Covered in own name"           
	2           "Covered by someone else's plan"
	3           "Covered both in own name and by"
	4           "Not covered"                   
;
label values ahiowner ahiowner;
label define ahiowner
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values enonhh   enonhh; 
label define enonhh  
	1           "Yes"                           
	2           "No"                            
;
label values rchampm  rchampm;
label define rchampm 
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No"                            
;
label values ehiunt1  ehiunt1l;
label define ehiunt1l
	-1          "Not in universe"               
;
label values ehiunt2  ehiunt2l;
label define ehiunt2l
	-1          "Not in universe"               
;
label values ehiunt3  ehiunt3l;
label define ehiunt3l
	-1          "Not in universe"               
;
label values ehemply  ehemply;
label define ehemply 
	-1          "Not in universe"               
	1           "Current employer or work"      
	2           "Former employer"               
	3           "Union"                         
	4           "CHAMPUS"                       
	5           "CHAMPVA"                       
	6           "Military/VA health care"       
	7           "Privately purchased"           
	8           "Other"                         
;
label values ahemply  ahemply;
label define ahemply 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehicost  ehicost;
label define ehicost 
	-1          "Not in universe"               
	1           "All"                           
	2           "Part"                          
	3           "None"                          
;
label values ahicost  ahicost;
label define ahicost 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehiother ehiother;
label define ehiother
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahiother ahiother;
label define ahiother
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehispse  ehispse;
label define ehispse 
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahispse  ahispse;
label define ahispse 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehioldkd ehioldkd;
label define ehioldkd
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahioldkd ahioldkd;
label define ahioldkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehiyngkd ehiyngkd;
label define ehiyngkd
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahiyngkd ahiyngkd;
label define ahiyngkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehiothr  ehiothr;
label define ehiothr 
	-1          "Not in universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahiothr  ahiothr;
label define ahiothr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values ehirsn01 ehirsn0r;
label define ehirsn0r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn02 ehirsn0k;
label define ehirsn0k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn03 ehirsn0l;
label define ehirsn0l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn04 ehirsn0m;
label define ehirsn0m
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn05 ehirsn0n;
label define ehirsn0n
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn06 ehirsn0o;
label define ehirsn0o
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn07 ehirsn0p;
label define ehirsn0p
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn08 ehirsn0q;
label define ehirsn0q
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn09 ehirsn0s;
label define ehirsn0s
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn10 ehirsn1r;
label define ehirsn1r
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn11 ehirsn1k;
label define ehirsn1k
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ehirsn12 ehirsn1l;
label define ehirsn1l
	-1          "Not in universe"               
	1           "Yes"                           
	2           "No"                            
;
label values ahirsn   ahirsn; 
label define ahirsn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot"   
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical"        
;
label values rprvhi   rprvhi; 
label define rprvhi  
	-1          "Not in universe"               
	1           "Employer or union provided"    
	2           "Privately purchased"           
;

#delimit cr
saveold `dta_name' , replace
/*
Copyright 2003 shared by the National Bureau of Economic Research and Jean Roth

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
