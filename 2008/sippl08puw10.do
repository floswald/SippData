**------------------------------------------------;

**  This program reads the 2008 SIPP Wave 1 Core Data File 
**  Note:  This program is distributed under the GNU GPL. See end of
**  this file and http://www.gnu.org/licenses/ for details.
**  by Jean Roth Wed Nov  3 16:01:45 EDT 2010
**  Please report errors to jroth@nber.org
**  run with do sippl08puw1

**-----------------------------------------------;

** The following line should contain
**   the complete path and name of the raw data file.
**   On a PC, use backslashes in paths as in C:\  

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
label values rhtype   rhtype; 
label define rhtype  
	1           "Family hh - Married couple"    
	2           "Family hh - Male householder"  
	3           "Family hh - Female householder"
	4           "Nonfamily hh - Male householder"
	5           "Nonfamily hh - Female householder"
	6           "Group Quarters"                
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
	1           "Owned or being bought by ... or"
	2           "Rented"                        
	3           "Occupied without payment of cash"
;
label values atenure  atenure;
label define atenure 
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ewrsect8 ewrsectt;
label define ewrsectt
	-1          "Not in Universe"               
	1           "Section 8"                     
	2           "Some other government program" 
;
label values awrsect8 awrsectt;
label define awrsectt
	0           "No imputation"                 
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values efrerdln efrerdln;
label define efrerdln
	-1          "Not in Universe"               
	1           "Free lunch"                    
	2           "Reduced-price lunch"           
;
label values afrerdln afrerdln;
label define afrerdln
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values efrerdbk efrerdbk;
label define efrerdbk
	-1          "Not in Universe"               
	1           "Free breakfast"                
	2           "Reduced-price breakfast"       
;
label values afrerdbk afrerdbk;
label define afrerdbk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
label values rfpov    rfpov;  
label define rfpov   
	0           "Not In Universe"               
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
	-1          "Not in Universe"               
	9999        "No spouse in subfamily"        
;
label values esftype  esftype;
label define esftype 
	-1          "Not in Universe"               
	2           "Related Subfamily"             
;
label values esfkind  esfkind;
label define esfkind 
	-1          "Not in Universe"               
	1           "Headed by Husband/Wife"        
	2           "Male Headed"                   
	3           "Female Headed"                 
;
label values rschange rschange;
label define rschange
	0           "Not In Universe"               
	1           "Change occurred"               
	2           "No change occurred"            
;
label values esownkid esownkid;
label define esownkid
	-1          "Not in Universe"               
	0           "No children"                   
;
label values esoklt18 esoklt1d;
label define esoklt1d
	-1          "Not in Universe"               
	0           "No children"                   
;
label values wsfinwgt wsfinwgt;
label define wsfinwgt
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
	4           "Noninterview - pseudo Type Z." 
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
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values abyear   abyear; 
label define abyear  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values esex     esex;   
label define esex    
	1           "Male"                          
	2           "Female"                        
;
label values asex     asex;   
label define asex    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values eorigin  eorigin;
label define eorigin 
	1           "Yes"                           
	2           "No"                            
;
label values aorigin  aorigin;
label define aorigin 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ebornus  ebornus;
label define ebornus 
	1           "Yes"                           
	2           "No"                            
;
label values abornus  abornus;
label define abornus 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ecitizen ecitizen;
label define ecitizen
	1           "Yes"                           
	2           "No"                            
;
label values acitizen acitizen;
label define acitizen
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values enatcit  enatcit;
label define enatcit 
	-1          "Not in Universe"               
	1           "Naturalized"                   
	2           "Through you or your spouse's"  
	3           "Adopted by U.S. citizen parent or"
	4           "Born in a U.S. Island Area or" 
	5           "Born abroad of U.S. citizen"   
;
label values anatcit  anatcit;
label define anatcit 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values tlang1   tlang1l;
label define tlang1l 
	-1          "Not in Universe"               
	1           "Spanish"                       
	2           "French (include Creole)"       
	3           "German"                        
	4           "Slavic languages (Polish,"     
	5           "Other Indo-European languages" 
	6           "Chinese, Mandarin, Cantonese"  
	7           "Tagalog, Philipino"            
	8           "Vietnamese"                    
	9           "Other Asian languages (Japanese,"
	10          "Other And Unspecified Languages"
;
label values alang1   alang1l;
label define alang1l 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ehowwell ehowwell;
label define ehowwell
	-1          "Not in Universe"               
	1           "Very well"                     
	2           "Well"                          
	3           "Not well"                      
	4           "Not at all"                    
;
label values ahowwell ahowwell;
label define ahowwell
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rlngisol rlngisol;
label define rlngisol
	-1          "Not in Universe"               
	1           "In linguistically isolated"    
	2           "Not in linguistically isolated"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values uaf1     uaf1l;  
label define uaf1l   
	0           "Not answered"                  
	1           "August 1990 to the present"    
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
	4           "August 1964 to April 1975"     
;
label values uaf5     uaf5l;  
label define uaf5l   
	0           "Not answered"                  
	5           "Some other time period (other" 
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
	4           "Statistical or logical imputation"
;
label values evettyp  evettyp;
label define evettyp 
	-1          "Not in Universe"               
	1           "Service-connected disability"  
	2           "Survivor Benefits"             
	3           "Veteran's Pension"             
	4           "Other Veteran's Payments"      
;
label values avettyp  avettyp;
label define avettyp 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values esfr     esfr;   
label define esfr    
	0           "Not In Universe"               
	1           "Reference person of a related or"
	2           "Spouse of reference person of a"
	3           "Child (under 18) of reference" 
;
label values esft     esft;   
label define esft    
	0           "Primary family"                
	1           "Secondary individual (not a"   
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
	4           "Statistical or logical imputation"
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
label values arrp     arrp;   
label define arrp    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epnspous epnspous;
label define epnspous
	9999        "Spouse not in household or person"
;
label values apnspous apnspous;
label define apnspous
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epnguard epnguard;
label define epnguard
	-1          "Not in Universe"               
	9999        "Guardian not in household"     
;
label values apnguard apnguard;
label define apnguard
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values etypmom  etypmom;
label define etypmom 
	-1          "Not in Universe"               
	1           "Biological child"              
	2           "Stepchild"                     
	3           "Adopted child"                 
;
label values atypmom  atypmom;
label define atypmom 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values etypdad  etypdad;
label define etypdad 
	-1          "Not in Universe"               
	1           "Biological child"              
	2           "Stepchild"                     
	3           "Adopted child"                 
;
label values atypdad  atypdad;
label define atypdad 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	3           "Returned to household after"   
	4           "Due to separation or divorce"  
	5           "From an institution"           
	6           "From Armed  Forces barracks"   
	7           "From outside the U.S."         
	8           "Should have been listed as member"
	9           "Became employed/unemployed"    
	10          "Job change - other"            
	11          "Lived at this address before"  
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
	1           "Enrolled full-time"            
	2           "Enrolled part-time"            
	3           "Not enrolled"                  
;
label values arenroll arenroll;
label define arenroll
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values renrlma  renrlma;
label define renrlma 
	-1          "Not in Universe"               
	1           "Yes"                           
	2           "No"                            
;
label values eenlevel eenlevel;
label define eenlevel
	-1          "Not in Universe"               
	1           "Elementary grades 1-8"         
	2           "High school grades 9-12"       
	3           "College year 1 (freshman)"     
	4           "College year 2 (sophomore)"    
	5           "College year 3 (junior)"       
	6           "College year 4 (senior)"       
	7           "First year graduate or"        
	8           "Second year or higher in graduate"
	9           "Vocational, technical, or"     
	10          "Enrolled in college, but not"  
;
label values aenlevel aenlevel;
label define aenlevel
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values easst01  easst01l;
label define easst01l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst03  easst03l;
label define easst03l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst04  easst04l;
label define easst04l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst05  easst05l;
label define easst05l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst06  easst06l;
label define easst06l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst07  easst07l;
label define easst07l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst08  easst08l;
label define easst08l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst09  easst09l;
label define easst09l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst10  easst10l;
label define easst10l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst11  easst11l;
label define easst11l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values easst12  easst12l;
label define easst12l
	-1          "Not in Universe"               
	1           "Received"                      
	2           "Did not receive"               
;
label values aedasst  aedasst;
label define aedasst 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
label values aeducate aeducate;
label define aeducate
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rged     rged;   
label define rged    
	-1          "Not in Universe"               
	1           "Yes (GED)"                     
	2           "No (Graduated from high school)"
;
label values aged     aged;   
label define aged    
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rcollvoc rcollvoc;
label define rcollvoc
	-1          "Not in Universe"               
	1           "No vocational certificate or"  
	2           "No vocational certificate or"  
	3           "No vocational certificate or"  
	4           "No vocational certificate or"  
	5           "No vocational certificate or"  
	6           "Vocational certificate, less than"
	7           "Vocational certificate, high"  
	8           "Vocational certificate, less than"
	9           "Vocational certificate, one or"
	10          "Vocational certificate, associate"
;
label values acollvoc acollvoc;
label define acollvoc
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	5           "Edited value set equal to 2."  
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
	-1          "Not in Universe"               
	0           "Owned contingent business(es) only"
;
label values ejobcntr ejobcntr;
label define ejobcntr
	-1          "Not in Universe"               
	0           "Contingent worker"             
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ersnowrk ersnowrk;
label define ersnowrk
	-1          "Not in Universe"               
	1           "Temporarily unable to work"    
	2           "Temporarily unable to work"    
	3           "Unable to work because of chronic"
	4           "Retired"                       
	5           "Pregnancy/childbirth"          
	6           "Taking care of children/other" 
	7           "Going to school"               
	8           "Unable to find work"           
	9           "On layoff (temporary or"       
	10          "Not interested in working at a job"
	11          "Other"                         
;
label values arsnowrk arsnowrk;
label define arsnowrk
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values eabre    eabre;  
label define eabre   
	-1          "Not in Universe"               
	1           "On layoff (temporary or"       
	2           "Slack work or business conditions"
	3           "Own injury"                    
	4           "Own illness/medical problems"  
	5           "Pregnancy/childbirth"          
	6           "Taking care of children"       
	7           "On vacation/personal days"     
	8           "Bad weather"                   
	9           "Labor Dispute"                 
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values eptresn  eptresn;
label define eptresn 
	-1          "Not in Universe"               
	1           "Could not find full-time job"  
	2           "Wanted to work part time"      
	3           "Temporarily unable to work"    
	4           "Temporarily unable to work"    
	5           "Unable to work full-time because"
	6           "Taking care of children/other" 
	7           "Full-time workweek is less than"
	8           "Slack work or material shortage"
	9           "Participated in a job sharing" 
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
	0           "Not reported"                  
	1           "Waiting for a new job to begin"
	2           "Own Temporary Illness"         
	3           "School"                        
	4           "OTHER"                         
;
label values ehrsall  ehrsall;
label define ehrsall 
	-1          "Not in Universe"               
	0           "Not Determined"                
;
label values ahrsall  ahrsall;
label define ahrsall 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
	1           "With a job entire month, worked"
	2           "With a job entire month, absent"
	3           "With a job entire month, absent"
	4           "With a job at least 1 but not all"
	5           "With a job at least 1 but not all"
	6           "No job all month, on layoff or"
	7           "No job all month, at least one"
	8           "No job all month, no time on"  
;
label values rwkesr1  rwkesr1l;
label define rwkesr1l
	-1          "Not applicable for week 18"    
	1           "With job - working"            
	2           "With job - not on layoff, absent"
	3           "With job - on layoff, absent"  
	4           "No job - looking for work or on"
	5           "No job - not looking for work and"
;
label values rwkesr2  rwkesr2l;
label define rwkesr2l
	-1          "Not applicable for week 18"    
	1           "With job - working"            
	2           "With job - not on layoff, absent"
	3           "With job - on layoff, absent"  
	4           "No job - looking for work or on"
	5           "No job - not looking for work and"
;
label values rwkesr3  rwkesr3l;
label define rwkesr3l
	-1          "Not applicable for week 18"    
	1           "With job - working"            
	2           "With job - not on layoff, absent"
	3           "With job - on layoff, absent"  
	4           "No job - looking for work or on"
	5           "No job - not looking for work and"
;
label values rwkesr4  rwkesr4l;
label define rwkesr4l
	-1          "Not applicable for week 18"    
	1           "With job - working"            
	2           "With job - not on layoff, absent"
	3           "With job - on layoff, absent"  
	4           "No job - looking for work or on"
	5           "No job - not looking for work and"
;
label values rwkesr5  rwkesr5l;
label define rwkesr5l
	-1          "Not applicable for week 18"    
	1           "With job - working"            
	2           "With job - not on layoff, absent"
	3           "With job - on layoff, absent"  
	4           "No job - looking for work or on"
	5           "No job - not looking for work and"
;
label values rmwkwjb  rmwkwjb;
label define rmwkwjb 
	-1          "Not in Universe"               
	0           "0 weeks (that is, did not look"
	1           "1 week"                        
	2           "2 weeks"                       
	3           "3 weeks"                       
	4           "4 weeks"                       
	5           "5 weeks (if applicable)"       
;
label values rmwksab  rmwksab;
label define rmwksab 
	-1          "Not in Universe"               
	0           "0 weeks (that is, did not have a"
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
	4           "Statistical or logical imputation"
;
label values rmwklkg  rmwklkg;
label define rmwklkg 
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
;
label values rmhrswk  rmhrswk;
label define rmhrswk 
	-1          "Not in Universe"               
	0           "Did not work (did not have a job,"
	1           "All weeks 35+"                 
	2           "All weeks 1-34 hours"          
	3           "Some weeks 35+ and some weeks" 
	4           "Some weeks 35+, some weeks 1-34"
	5           "At least 1 but not all weeks 35+"
	6           "At least 1 week but not all weeks"
;
label values rwksperm rwksperm;
label define rwksperm
	-1          "Not in Universe"               
	4           "Four weeks"                    
	5           "Five weeks"                    
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ersend1  ersend1l;
label define ersend1l
	-1          "Not in Universe"               
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
;
label values arsend1  arsend1l;
label define arsend1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values tempall1 tempallm;
label define tempallm
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
;
label values tempsiz1 tempsizm;
label define tempsizm
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epayhr1  epayhr1l;
label define epayhr1l
	-1          "Not in Universe"               
	1           "Yes (paid by the hour)"        
	2           "No (set annual salary or other"
;
label values apayhr1  apayhr1l;
label define apayhr1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rpyper1  rpyper1l;
label define rpyper1l
	-1          "Not in Universe"               
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
;
label values ejbind1  ejbind1l;
label define ejbind1l
	-1          "Not in Universe"               
	0170        "Crop production (111)"         
	0180        "Animal production (112)"       
	0190        "Forestry except logging"       
	0270        "Logging (1133)"                
	0280        "Fishing, hunting, and trapping"
	0290        "Support activities for"        
	0370        "Oil and gas extraction (211)"  
	0380        "Coal mining (2121)"            
	0390        "Metal ore mining (2122)"       
	0470        "Nonmetallic mineral mining and"
	0480        "Not specified type of mining"  
	0490        "Support activities for mining" 
	0570        "Electric power generation,"    
	0580        "Natural gas distribution (2212)"
	0590        "Electric and gas, and other"   
	0670        "Water, steam, air-conditioning,"
	0680        "Sewage treatment facilities"   
	0690        "Not specified utilities (Part 22)"
	0770        "Construction (23)"             
	1070        "Animal food, grain and oilseed"
	1080        "Sugar and confectionery products"
	1090        "Fruit and vegetable preserving"
	1170        "Dairy product manufacturing (3115)"
	1180        "Animal slaughtering and"       
	1190        "Retail bakeries (311811)"      
	1270        "Bakeries, except retail  (3118"
	1280        "Seafood and other miscellaneous"
	1290        "Not specified food industries" 
	1370        "Beverage manufacturing (3121)" 
	1390        "Tobacco manufacturing (3122)"  
	1470        "Fiber, yarn, and thread mills" 
	1480        "Fabric mills, except knitting" 
	1490        "Textile and fabric finishing and"
	1570        "Carpet and rug mills (31411)"  
	1590        "Textile product mills, except" 
	1670        "Knitting mills (31324, 3151)"  
	1680        "Cut and sew apparel manufacturing"
	1690        "Apparel accessories and other" 
	1770        "Footwear manufacturing (3162)" 
	1790        "Leather tanning and products," 
	1870        "Pulp, paper, and paperboard mills"
	1880        "Paperboard containers and boxes"
	1890        "Miscellaneous paper and pulp"  
	1990        "Printing and related support"  
	2070        "Petroleum refining (32411)"    
	2090        "Miscellaneous petroleum and coal"
	2170        "Resin, synthetic rubber and"   
	2180        "Agricultural chemical"         
	2190        "Pharmaceutical and medicine"   
	2270        "Paint, coating, and adhesive"  
	2280        "Soap, cleaning compound, and"  
	2290        "Industrial and miscellaneous"  
	2370        "Plastics product manufacturing"
	2380        "Tire manufacturing (32621)"    
	2390        "Rubber products, except tires,"
	2470        "Pottery, ceramics, and related"
	2480        "Structural clay product"       
	2490        "Glass and glass product"       
	2570        "Cement, concrete, lime, and"   
	2590        "Miscellaneous nonmetallic mineral"
	2670        "Iron and steel mills and steel"
	2680        "Aluminum production and"       
	2690        "Nonferrous metal, except"      
	2770        "Foundries (3315)"              
	2780        "Metal forgings and stampings"  
	2790        "Cutlery and hand tool"         
	2870        "Structural metals, and tank and"
	2880        "Machine shops; turned product;"
	2890        "Coating, engraving, heat treating"
	2970        "Ordnance (332992, 332993, 332994,"
	2980        "Miscellaneous fabricated metal"
	2990        "Not specified metal industries"
	3070        "Agricultural implement"        
	3080        "Construction, mining and oil"  
	3090        "Commercial and service industry"
	3170        "Metalworking machinery"        
	3180        "Engines, turbines, and power"  
	3190        "Machinery manufacturing, n.e.c."
	3290        "Not specified machinery"       
	3360        "Computer and peripheral equipment"
	3370        "Communications, audio, and video"
	3380        "Navigational, measuring,"      
	3390        "Electronic component and product"
	3470        "Household appliance manufacturing"
	3490        "Electrical lighting, equipment,"
	3570        "Motor vehicles and motor vehicle"
	3580        "Aircraft and parts manufacturing"
	3590        "Aerospace products and parts"  
	3670        "Railroad rolling stock"        
	3680        "Ship and boat building (3366)" 
	3690        "Other transportation equipment"
	3770        "Sawmills and wood preservation"
	3780        "Veneer, plywood, and engineered"
	3790        "Prefabricated wood buildings and"
	3870        "Miscellaneous wood products (3219"
	3890        "Furniture and related product" 
	3960        "Medical equipment and supplies"
	3970        "Toys, amusement, and sporting" 
	3980        "Miscellaneous manufacturing,"  
	3990        "Not specified manufacturing"   
	4070        "Motor vehicles, parts and"     
	4080        "Furniture and home furnishing,"
	4090        "Lumber and other construction" 
	4170        "Professional and commercial"   
	4180        "Metals and minerals, except"   
	4190        "Electrical goods, merchant"    
	4260        "Hardware, plumbing and heating"
	4270        "Machinery, equipment, and"     
	4280        "Recyclable material, merchant" 
	4290        "Miscellaneous durable goods,"  
	4370        "Paper and paper products,"     
	4380        "Drugs, sundries, and chemical and"
	4390        "Apparel, fabrics, and notions,"
	4470        "Groceries and related products,"
	4480        "Farm product raw materials,"   
	4490        "Petroleum and petroleum products,"
	4560        "Alcoholic beverages, merchant" 
	4570        "Farm supplies, merchant"       
	4580        "Miscellaneous nondurable goods,"
	4585        "Wholesale electronic markets," 
	4590        "Not specified wholesale trade" 
	4670        "Automobile dealers (4411)"     
	4680        "Other motor vehicle dealers (4412)"
	4690        "Auto parts, accessories, and tire"
	4770        "Furniture and home furnishings"
	4780        "Household appliance stores"    
	4790        "Radio, TV, and computer stores"
	4870        "Building material and supplies"
	4880        "Hardware stores (44413)"       
	4890        "Lawn and garden equipment and" 
	4970        "Grocery stores (4451)"         
	4980        "Specialty food stores (4452)"  
	4990        "Beer, wine, and liquor stores" 
	5070        "Pharmacies and drug stores (4461)"
	5080        "Health and personal care, except"
	5090        "Gasoline stations (447)"       
	5170        "Clothing and accessories, except"
	5180        "Shoe stores (44821)"           
	5190        "Jewelry, luggage, and leather" 
	5270        "Sporting goods, camera, and hobby"
	5280        "Sewing, needlework, and piece" 
	5290        "Music stores (45114, 45122)"   
	5370        "Book stores and news dealers"  
	5380        "Department stores and discount"
	5390        "Miscellaneous general merchandise"
	5470        "Retail florists (4531)"        
	5480        "Office supplies and stationery"
	5490        "Used merchandise stores (4533)"
	5570        "Gift, novelty, and souvenir shops"
	5580        "Miscellaneous retail stores (4539)"
	5590        "Electronic shopping   (454111)"
	5591        "Electronic auctions   (454112)"
	5592        "Mail order houses (454113)"    
	5670        "Vending machine operators (4542)"
	5680        "Fuel dealers (45431)"          
	5690        "Other direct selling"          
	5790        "Not specified retail trade (Part"
	6070        "Air transportation (481)"      
	6080        "Rail transportation (482)"     
	6090        "Water transportation (483)"    
	6170        "Truck transportation (484)"    
	6180        "Bus service and urban transit" 
	6190        "Taxi and limousine service (4853)"
	6270        "Pipeline transportation (486)" 
	6280        "Scenic and sightseeing"        
	6290        "Services incidental to"        
	6370        "Postal Service (491)"          
	6380        "Couriers and messengers (492)" 
	6390        "Warehousing and storage (493)" 
	6470        "Newspaper publishers (51111)"  
	6480        "Publishing, except newspapers and"
	6490        "Software publishing (5112)"    
	6570        "Motion pictures and video"     
	6590        "Sound recording industries (5122)"
	6670        "Radio and television broadcasting"
	6675        "Internet publishing and"       
	6680        "Wired telecommunications carriers"
	6690        "Other telecommunications services"
	6692        "Internet service providers (5181)"
	6695        "Data processing, hosting, and" 
	6770        "Libraries and archives (51912)"
	6780        "Other information services (5191"
	6870        "Banking and related activities"
	6880        "Savings institutions, including"
	6890        "Non-depository credit and related"
	6970        "Securities, commodities, funds,"
	6990        "Insurance carriers and related"
	7070        "Real estate (531)"             
	7080        "Automotive equipment rental and"
	7170        "Video tape and disk rental (53223)"
	7180        "Other consumer goods rental"   
	7190        "Commercial, industrial, and other"
	7270        "Legal services (5411)"         
	7280        "Accounting, tax preparation,"  
	7290        "Architectural, engineering, and"
	7370        "Specialized design services (5414)"
	7380        "Computer systems design and"   
	7390        "Management, scientific, and"   
	7460        "Scientific research and"       
	7470        "Advertising and related services"
	7480        "Veterinary services (54194)"   
	7490        "Other professional, scientific,"
	7570        "Management of companies and"   
	7580        "Employment services (5613)"    
	7590        "Business support services (5614)"
	7670        "Travel arrangements and"       
	7680        "Investigation and security"    
	7690        "Services to buildings and"     
	7770        "Landscaping services (56173)"  
	7780        "Other administrative and other"
	7790        "Waste management and remediation"
	7860        "Elementary and secondary schools"
	7870        "Colleges and universities,"    
	7880        "Business, technical, and trade"
	7890        "Other schools, instruction, and"
	7970        "Offices of physicians (6211)"  
	7980        "Offices of dentists (6212)"    
	7990        "Offices of chiropractors (62131)"
	8070        "Offices of optometrists (62132)"
	8080        "Offices of other health"       
	8090        "Outpatient care centers (6214)"
	8170        "Home health care services (6216)"
	8180        "Other health care services (6215,"
	8190        "Hospitals (622)"               
	8270        "Nursing care facilities (6231)"
	8290        "Residential care facilities,"  
	8370        "Individual and family services"
	8380        "Community food and housing, and"
	8390        "Vocational rehabilitation"     
	8470        "Child day care services (6244)"
	8560        "Independent artists, performing"
	8570        "Museums, art galleries,"       
	8580        "Bowling centers (71395)"       
	8590        "Other amusement, gambling, and"
	8660        "Traveler accommodation (7211)" 
	8670        "Recreational vehicle parks and"
	8680        "Restaurants and other food"    
	8690        "Drinking places, alcoholic"    
	8770        "Automotive repair and maintenance"
	8780        "Car washes (811192)"           
	8790        "Electronic and precision"      
	8870        "Commercial and industrial"     
	8880        "Personal and household goods"  
	8890        "Footwear and leather goods repair"
	8970        "Barber shops (812111)"         
	8980        "Beauty salons (812112)"        
	8990        "Nail salons and other personal"
	9070        "Drycleaning and laundry services"
	9080        "Funeral homes, cemeteries, and"
	9090        "Other personal services (8129)"
	9160        "Religious organizations (8131)"
	9170        "Civic, social, advocacy"       
	9180        "Labor unions (81393)"          
	9190        "Business, professional,"       
	9290        "Private households (814)"      
	9370        "Executive offices and legislative"
	9380        "Public finance activities (92113)"
	9390        "Other general government and"  
	9470        "Justice, public order, and safety"
	9480        "Administration of human resource"
	9490        "Administration of environmental"
	9570        "Administration of economic"    
	9590        "National security and"         
	9890        "Persons whose last job was Armed"
;
label values ajbind1  ajbind1l;
label define ajbind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
;
label values tjbocc1  tjbocc1l;
label define tjbocc1l
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
;
label values ajbocc1  ajbocc1l;
label define ajbocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ersend2  ersend2l;
label define ersend2l
	-1          "Not in Universe"               
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
;
label values arsend2  arsend2l;
label define arsend2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values tempall2 tempallk;
label define tempallk
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
;
label values tempsiz2 tempsizk;
label define tempsizk
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epayhr2  epayhr2l;
label define epayhr2l
	-1          "Not in Universe"               
	1           "Yes (paid by the hour)"        
	2           "No (set annual salary or other"
;
label values apayhr2  apayhr2l;
label define apayhr2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rpyper2  rpyper2l;
label define rpyper2l
	-1          "Not in Universe"               
	1           "Once a week"                   
	2           "Once every two weeks"          
	3           "Once a month"                  
	4           "Twice a month"                 
	5           "Unpaid in a family business or"
	6           "On commission"                 
	7           "Some other way"                
	8           "Not reported"                  
;
label values ejbind2  ejbind2l;
label define ejbind2l
	-1          "Not in Universe"               
	0170        "Crop production (111)"         
	0180        "Animal production (112)"       
	0190        "Forestry except logging"       
	0270        "Logging (1133)"                
	0280        "Fishing, hunting, and trapping"
	0290        "Support activities for"        
	0370        "Oil and gas extraction (211)"  
	0380        "Coal mining (2121)"            
	0390        "Metal ore mining (2122)"       
	0470        "Nonmetallic mineral mining and"
	0480        "Not specified type of mining"  
	0490        "Support activities for mining" 
	0570        "Electric power generation,"    
	0580        "Natural gas distribution (2212)"
	0590        "Electric and gas, and other"   
	0670        "Water, steam, air-conditioning,"
	0680        "Sewage treatment facilities"   
	0690        "Not specified utilities (Part 22)"
	0770        "Construction (23)"             
	1070        "Animal food, grain and oilseed"
	1080        "Sugar and confectionery products"
	1090        "Fruit and vegetable preserving"
	1170        "Dairy product manufacturing (3115)"
	1180        "Animal slaughtering and"       
	1190        "Retail bakeries (311811)"      
	1270        "Bakeries, except retail  (3118"
	1280        "Seafood and other miscellaneous"
	1290        "Not specified food industries" 
	1370        "Beverage manufacturing (3121)" 
	1390        "Tobacco manufacturing (3122)"  
	1470        "Fiber, yarn, and thread mills" 
	1480        "Fabric mills, except knitting" 
	1490        "Textile and fabric finishing and"
	1570        "Carpet and rug mills (31411)"  
	1590        "Textile product mills, except" 
	1670        "Knitting mills (31324, 3151)"  
	1680        "Cut and sew apparel manufacturing"
	1690        "Apparel accessories and other" 
	1770        "Footwear manufacturing (3162)" 
	1790        "Leather tanning and products," 
	1870        "Pulp, paper, and paperboard mills"
	1880        "Paperboard containers and boxes"
	1890        "Miscellaneous paper and pulp"  
	1990        "Printing and related support"  
	2070        "Petroleum refining (32411)"    
	2090        "Miscellaneous petroleum and coal"
	2170        "Resin, synthetic rubber and"   
	2180        "Agricultural chemical"         
	2190        "Pharmaceutical and medicine"   
	2270        "Paint, coating, and adhesive"  
	2280        "Soap, cleaning compound, and"  
	2290        "Industrial and miscellaneous"  
	2370        "Plastics product manufacturing"
	2380        "Tire manufacturing (32621)"    
	2390        "Rubber products, except tires,"
	2470        "Pottery, ceramics, and related"
	2480        "Structural clay product"       
	2490        "Glass and glass product"       
	2570        "Cement, concrete, lime, and"   
	2590        "Miscellaneous nonmetallic mineral"
	2670        "Iron and steel mills and steel"
	2680        "Aluminum production and"       
	2690        "Nonferrous metal, except"      
	2770        "Foundries (3315)"              
	2780        "Metal forgings and stampings"  
	2790        "Cutlery and hand tool"         
	2870        "Structural metals, and tank and"
	2880        "Machine shops; turned product;"
	2890        "Coating, engraving, heat treating"
	2970        "Ordnance (332992, 332993, 332994,"
	2980        "Miscellaneous fabricated metal"
	2990        "Not specified metal industries"
	3070        "Agricultural implement"        
	3080        "Construction, mining and oil"  
	3090        "Commercial and service industry"
	3170        "Metalworking machinery"        
	3180        "Engines, turbines, and power"  
	3190        "Machinery manufacturing, n.e.c."
	3290        "Not specified machinery"       
	3360        "Computer and peripheral equipment"
	3370        "Communications, audio, and video"
	3380        "Navigational, measuring,"      
	3390        "Electronic component and product"
	3470        "Household appliance manufacturing"
	3490        "Electrical lighting, equipment,"
	3570        "Motor vehicles and motor vehicle"
	3580        "Aircraft and parts manufacturing"
	3590        "Aerospace products and parts"  
	3670        "Railroad rolling stock"        
	3680        "Ship and boat building (3366)" 
	3690        "Other transportation equipment"
	3770        "Sawmills and wood preservation"
	3780        "Veneer, plywood, and engineered"
	3790        "Prefabricated wood buildings and"
	3870        "Miscellaneous wood products (3219"
	3890        "Furniture and related product" 
	3960        "Medical equipment and supplies"
	3970        "Toys, amusement, and sporting" 
	3980        "Miscellaneous manufacturing,"  
	3990        "Not specified manufacturing"   
	4070        "Motor vehicles, parts and"     
	4080        "Furniture and home furnishing,"
	4090        "Lumber and other construction" 
	4170        "Professional and commercial"   
	4180        "Metals and minerals, except"   
	4190        "Electrical goods, merchant"    
	4260        "Hardware, plumbing and heating"
	4270        "Machinery, equipment, and"     
	4280        "Recyclable material, merchant" 
	4290        "Miscellaneous durable goods,"  
	4370        "Paper and paper products,"     
	4380        "Drugs, sundries, and chemical and"
	4390        "Apparel, fabrics, and notions,"
	4470        "Groceries and related products,"
	4480        "Farm product raw materials,"   
	4490        "Petroleum and petroleum products,"
	4560        "Alcoholic beverages, merchant" 
	4570        "Farm supplies, merchant"       
	4580        "Miscellaneous nondurable goods,"
	4585        "Wholesale electronic markets," 
	4590        "Not specified wholesale trade" 
	4670        "Automobile dealers (4411)"     
	4680        "Other motor vehicle dealers (4412)"
	4690        "Auto parts, accessories, and tire"
	4770        "Furniture and home furnishings"
	4780        "Household appliance stores"    
	4790        "Radio, TV, and computer stores"
	4870        "Building material and supplies"
	4880        "Hardware stores (44413)"       
	4890        "Lawn and garden equipment and" 
	4970        "Grocery stores (4451)"         
	4980        "Specialty food stores (4452)"  
	4990        "Beer, wine, and liquor stores" 
	5070        "Pharmacies and drug stores (4461)"
	5080        "Health and personal care, except"
	5090        "Gasoline stations (447)"       
	5170        "Clothing and accessories, except"
	5180        "Shoe stores (44821)"           
	5190        "Jewelry, luggage, and leather" 
	5270        "Sporting goods, camera, and hobby"
	5280        "Sewing, needlework, and piece" 
	5290        "Music stores (45114, 45122)"   
	5370        "Book stores and news dealers"  
	5380        "Department stores and discount"
	5390        "Miscellaneous general merchandise"
	5470        "Retail florists (4531)"        
	5480        "Office supplies and stationery"
	5490        "Used merchandise stores (4533)"
	5570        "Gift, novelty, and souvenir shops"
	5580        "Miscellaneous retail stores (4539)"
	5590        "Electronic shopping (454111)"  
	5591        "Electronic auctions (454112)"  
	5592        "Mail order houses (454113)"    
	5670        "Vending machine operators (4542)"
	5680        "Fuel dealers (45431)"          
	5690        "Other direct selling"          
	5790        "Not specified retail trade (Part"
	6070        "Air transportation (481)"      
	6080        "Rail transportation (482)"     
	6090        "Water transportation (483)"    
	6170        "Truck transportation (484)"    
	6180        "Bus service and urban transit" 
	6190        "Taxi and limousine service (4853)"
	6270        "Pipeline transportation (486)" 
	6280        "Scenic and sightseeing"        
	6290        "Services incidental to"        
	6370        "Postal Service (491)"          
	6380        "Couriers and messengers (492)" 
	6390        "Warehousing and storage (493)" 
	6470        "Newspaper publishers (51111)"  
	6480        "Publishing, except newspapers and"
	6490        "Software publishing (5112)"    
	6570        "Motion pictures and video"     
	6590        "Sound recording industries (5122)"
	6670        "Radio and television broadcasting"
	6675        "Internet publishing and"       
	6680        "Wired telecommunications carriers"
	6690        "Other telecommunications services"
	6692        "Internet service providers (5181)"
	6695        "Data processing, hosting, and" 
	6770        "Libraries and archives (51912)"
	6780        "Other information services (5191"
	6870        "Banking and related activities"
	6880        "Savings institutions, including"
	6890        "Non-depository credit and related"
	6970        "Securities, commodities, funds,"
	6990        "Insurance carriers and related"
	7070        "Real estate (531)"             
	7080        "Automotive equipment rental and"
	7170        "Video tape and disk rental (53223)"
	7180        "Other consumer goods rental"   
	7190        "Commercial, industrial, and other"
	7270        "Legal services (5411)"         
	7280        "Accounting, tax preparation,"  
	7290        "Architectural, engineering, and"
	7370        "Specialized design services (5414)"
	7380        "Computer systems design and"   
	7390        "Management, scientific, and"   
	7460        "Scientific research and"       
	7470        "Advertising and related services"
	7480        "Veterinary services (54194)"   
	7490        "Other professional, scientific,"
	7570        "Management of companies and"   
	7580        "Employment services (5613)"    
	7590        "Business support services (5614)"
	7670        "Travel arrangements and"       
	7680        "Investigation and security"    
	7690        "Services to buildings and"     
	7770        "Landscaping services (56173)"  
	7780        "Other administrative and other"
	7790        "Waste management and remediation"
	7860        "Elementary and secondary schools"
	7870        "Colleges and universities,"    
	7880        "Business, technical, and trade"
	7890        "Other schools, instruction, and"
	7970        "Offices of physicians (6211)"  
	7980        "Offices of dentists (6212)"    
	7990        "Offices of chiropractors (62131)"
	8070        "Offices of optometrists (62132)"
	8080        "Offices of other health"       
	8090        "Outpatient care centers (6214)"
	8170        "Home health care services (6216)"
	8180        "Other health care services (6215,"
	8190        "Hospitals (622)"               
	8270        "Nursing care facilities (6231)"
	8290        "Residential care facilities,"  
	8370        "Individual and family services"
	8380        "Community food and housing, and"
	8390        "Vocational rehabilitation"     
	8470        "Child day care services (6244)"
	8560        "Independent artists, performing"
	8570        "Museums, art galleries,"       
	8580        "Bowling centers (71395)"       
	8590        "Other amusement, gambling, and"
	8660        "Traveler accommodation (7211)" 
	8670        "Recreational vehicle parks and"
	8680        "Restaurants and other food"    
	8690        "Drinking places, alcoholic"    
	8770        "Automotive repair and maintenance"
	8780        "Car washes (811192)"           
	8790        "Electronic and precision"      
	8870        "Commercial and industrial"     
	8880        "Personal and household goods"  
	8890        "Footwear and leather goods repair"
	8970        "Barber shops (812111)"         
	8980        "Beauty salons (812112)"        
	8990        "Nail salons and other personal"
	9070        "Drycleaning and laundry services"
	9080        "Funeral homes, cemeteries, and"
	9090        "Other personal services (8129)"
	9160        "Religious organizations (8131)"
	9170        "Civic, social, advocacy"       
	9180        "Labor unions (81393)"          
	9190        "Business, professional,"       
	9290        "Private households (814)"      
	9370        "Executive offices and legislative"
	9380        "Public finance activities (92113)"
	9390        "Other general government and"  
	9470        "Justice, public order, and safety"
	9480        "Administration of human resource"
	9490        "Administration of environmental"
	9570        "Administration of economic"    
	9590        "National security and"         
	9890        "Persons whose last job was Armed"
;
label values ajbind2  ajbind2l;
label define ajbind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
;
label values tjbocc2  tjbocc2l;
label define tjbocc2l
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
;
label values ajbocc2  ajbocc2l;
label define ajbocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values erendb1  erendb1l;
label define erendb1l
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values tempb1   tempb1l;
label define tempb1l 
	-1          "Not in Universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempb1   aempb1l;
label define aempb1l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epropb1  epropb1l;
label define epropb1l
	-1          "Not in Universe"               
	1           "Alone"                         
	2           "Partnership"                   
;
label values apropb1  apropb1l;
label define apropb1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epartb11 epartb1m;
label define epartb1m
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values epartb21 epartb2m;
label define epartb2m
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values epartb31 epartb3m;
label define epartb3m
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values tbsind1  tbsind1l;
label define tbsind1l
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
	11          "Educational services, health care"
	12          "Arts, entertainment, recreation,"
	13          "Other services (except public" 
	14          "Public administration"         
	15          "Active duty military"          
;
label values absind1  absind1l;
label define absind1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
;
label values tbsocc1  tbsocc1l;
label define tbsocc1l
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
	0140        "Industrial production managers"
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
;
label values absocc1  absocc1l;
label define absocc1l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values erendb2  erendb2l;
label define erendb2l
	-1          "Not in Universe"               
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values tempb2   tempb2l;
label define tempb2l 
	-1          "Not in Universe"               
	1           "Under 25 employees"            
	2           "25 to 99 employees"            
	3           "100+ employees"                
;
label values aempb2   aempb2l;
label define aempb2l 
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epropb2  epropb2l;
label define epropb2l
	-1          "Not in Universe"               
	1           "Alone"                         
	2           "Partnership"                   
;
label values apropb2  apropb2l;
label define apropb2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epartb12 epartb1k;
label define epartb1k
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values epartb22 epartb2k;
label define epartb2k
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values epartb32 epartb3k;
label define epartb3k
	-1          "Not in Universe"               
	9999        "Unable to identify person number"
;
label values tbsind2  tbsind2l;
label define tbsind2l
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
	11          "Educational, health care and"  
	12          "Arts, entertainment, recreation,"
	13          "Other services (except public" 
	14          "Public administration"         
	15          "Active duty military"          
;
label values absind2  absind2l;
label define absind2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
;
label values tbsocc2  tbsocc2l;
label define tbsocc2l
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
	0140        "Industrial production managers"
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
;
label values absocc2  absocc2l;
label define absocc2l
	0           "Not imputed"                   
	1           "Statistical imputation(hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation(derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rwcmprsn rwcmprsn;
label define rwcmprsn
	-1          "Not in Universe"               
	1           "Disability"                    
	3           "Suvivor"                       
	5           "Disability and Suvivor"        
	8           "No payment"                    
;
label values awcmprsn awcmprsn;
label define awcmprsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rinsrsn  rinsrsn;
label define rinsrsn 
	-1          "Not in Universe"               
	1           "Disability"                    
	8           "No payment received"           
;
label values ainsrsn  ainsrsn;
label define ainsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rempdrsn rempdrsn;
label define rempdrsn
	-1          "Not in Universe"               
	1           "Disability"                    
	8           "No payment"                    
;
label values aempdrsn aempdrsn;
label define aempdrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rpensrsn rpensrsn;
label define rpensrsn
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values apensrsn apensrsn;
label define apensrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rfcsrsn  rfcsrsn;
label define rfcsrsn 
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values afcsrsn  afcsrsn;
label define afcsrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rstatrsn rstatrsn;
label define rstatrsn
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values astatrsn astatrsn;
label define astatrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rlgovrsn rlgovrsn;
label define rlgovrsn
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values algovrsn algovrsn;
label define algovrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rmilrsn  rmilrsn;
label define rmilrsn 
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values amilrsn  amilrsn;
label define amilrsn 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rrrsn    rrrsn;  
label define rrrsn   
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Survivor"                      
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values arrrsn   arrrsn; 
label define arrrsn  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rothrrsn rothrrsn;
label define rothrrsn
	-1          "Not in Universe"               
	1           "Disability"                    
	2           "Retirement"                    
	3           "Suvivor"                       
	4           "Disability and retirement"     
	5           "Disability and Survivor"       
	6           "Retirement and survivor"       
	7           "Disability, retirement, and"   
	8           "No payment received"           
;
label values aothrrsn aothrrsn;
label define aothrrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rlifirsn rlifirsn;
label define rlifirsn
	-1          "Not in Universe"               
	2           "Retirement"                    
	3           "Suvivor"                       
	6           "Retirement and survivor"       
	8           "No payment received"           
;
label values alifirsn alifirsn;
label define alifirsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rvetsrsn rvetsrsn;
label define rvetsrsn
	-1          "Not in Universe"               
	3           "Suvivor"                       
	8           "No payment received"           
;
label values avetsrsn avetsrsn;
label define avetsrsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values restarsn restarsn;
label define restarsn
	-1          "Not in Universe"               
	3           "Survivor"                      
	8           "No payment received"           
;
label values aestarsn aestarsn;
label define aestarsn
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	-1          "Not in Universe"               
	1           "Required to"                   
	2           "Chose to"                      
	3           "Both required and chose"       
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
	-1          "Not in Universe"               
	1           "First job"                     
	2           "Second job"                    
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
	-1          "Not in Universe"               
	1           "Required to do work experience"
	2           "Chose to do work experience"   
	3           "Both required and chose"       
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
	-1          "Not in Universe"               
	1           "First job"                     
	2           "Second job"                    
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values easetdrw easetdrw;
label define easetdrw
	-1          "Not in Universe"               
	1           "Lump Sum"                      
	2           "Regular distribution"          
	3           "Both"                          
	4           "No"                            
;
label values aasetdrw aasetdrw;
label define aasetdrw
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values eresnss1 eresnssw;
label define eresnssw
	-1          "Not in Universe"               
	1           "Retired"                       
	2           "Disabled"                      
	3           "Widowed or surviving child"    
	4           "Spouse or dependent child"     
	5           "Some other reason"             
;
label values aresnss1 aresnssw;
label define aresnssw
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values eresnss2 eresnssk;
label define eresnssk
	-1          "Not in Universe"               
	0           "Persons providing only one reason"
	1           "Retired"                       
	2           "Disabled"                      
	3           "Widowed or surviving child"    
	4           "Spouse or dependent child"     
	5           "Some other reason"             
;
label values aresnss2 aresnssk;
label define aresnssk
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values eclothtp eclothtp;
label define eclothtp
	-1          "Not in Universe"               
	1           "Clothes"                       
	2           "Money or vouchers"             
	3           "Both clothes and money or vouchers"
;
label values aclothtp aclothtp;
label define aclothtp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values epubhstp epubhstp;
label define epubhstp
	-1          "Not in Universe"               
	1           "Section 8"                     
	2           "Other rental assistance"       
	3           "Other housing program"         
	4           "Not sure; don't know"          
;
label values apubhstp apubhstp;
label define apubhstp
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ecashgvt ecashgvt;
label define ecashgvt
	-1          "Not in Universe"               
	1           "Federal"                       
	2           "State"                         
	3           "Local"                         
;
label values acashgvt acashgvt;
label define acashgvt
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rab1r1   rab1r1l;
label define rab1r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce, or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Other"                         
;
label values rab1r2   rab1r2l;
label define rab1r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Other"                         
;
label values rab2r1   rab2r1l;
label define rab2r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Other"                         
;
label values rab2r2   rab2r2l;
label define rab2r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Need to re-certify"            
	9           "Other"                         
;
label values ras1     ras1l;  
label define ras1l   
	-1          "Not in Universe"               
	1           "Got a job or earnings increased"
	2           "Family situation changed"      
	3           "Others in household earned enough"
	4           "Penalized or sanctioned for"   
	5           "Eligibility ran out because of"
	6           "Didn't want to use up time limit"
	7           "Chose not to participate"      
	8           "The money is not worth it"     
	9           "Other"                         
;
label values ras2     ras2l;  
label define ras2l   
	-1          "Not in Universe"               
	1           "Got a job or earnings increased"
	2           "Family situation changed"      
	3           "Others in household earned enough"
	4           "Penalized or sanctioned for"   
	5           "Eligibility ran out because of"
	6           "Didn't want to use up time limit"
	7           "Chose not to participate"      
	8           "The money is not worth it"     
	9           "Other"                         
;
label values rwb1r1   rwb1r1l;
label define rwb1r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rwb1r2   rwb1r2l;
label define rwb1r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rwb2r1   rwb2r1l;
label define rwb2r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rwb2r2   rwb2r2l;
label define rwb2r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rws1     rws1l;  
label define rws1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Couldn't get to the WIC clinic"
	5           "Benefits are not worth it"     
	6           "Other, specify"                
;
label values rws2     rws2l;  
label define rws2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Couldn't get to the WIC clinic"
	5           "Benefits are not worth it"     
	6           "Other, specify"                
;
label values rfb1r1   rfb1r1l;
label define rfb1r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rfb1r2   rfb1r2l;
label define rfb1r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rfb2r1   rfb2r1l;
label define rfb2r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rfb2r2   rfb2r2l;
label define rfb2r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rfs1     rfs1l;  
label define rfs1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rfs2     rfs2l;  
label define rfs2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rgb1r1   rgb1r1l;
label define rgb1r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rgb1r2   rgb1r2l;
label define rgb1r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rgb2r1   rgb2r1l;
label define rgb2r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rgb2r2   rgb2r2l;
label define rgb2r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorce or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rgs1     rgs1l;  
label define rgs1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rgs2     rgs2l;  
label define rgs2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rob1r1   rob1r1l;
label define rob1r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rob1r2   rob1r2l;
label define rob1r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rob2r1   rob2r1l;
label define rob2r1l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values rob2r2   rob2r2l;
label define rob2r2l 
	-1          "Not in Universe"               
	1           "New child (or other dependent) or"
	2           "Separation, divorced or widowed"
	3           "Job loss or wages reduced"     
	4           "Loss or reduction of other income"
	5           "Became disabled or otherwise"  
	6           "No change - just decided it was"
	7           "No change - just heard about the"
	8           "Needed to re-certify"          
	9           "Other"                         
;
label values ros1     ros1l;  
label define ros1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values ros2     ros2l;  
label define ros2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineligible because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rsb1r1   rsb1r1l;
label define rsb1r1l 
	-1          "Not in Universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb1r2   rsb1r2l;
label define rsb1r2l 
	-1          "Not in Universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb2r1   rsb2r1l;
label define rsb2r1l 
	-1          "Not in Universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rsb2r2   rsb2r2l;
label define rsb2r2l 
	-1          "Not in Universe"               
	2           "Became disabled/blind"         
	3           "Over 65"                       
	4           "Other, specify"                
;
label values rss1     rss1l;  
label define rss1l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineleigble because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
;
label values rss2     rss2l;  
label define rss2l   
	-1          "Not in Universe"               
	1           "Became ineligible because of"  
	2           "Became ineleigble because of"  
	3           "Still eligible but could"      
	4           "Became ineligible because program"
	5           "Eligibility ran out because of"
	6           "The money is not worth it"     
	7           "Other, specify"                
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
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
	4           "Statistical or logical imputation"
	6           "Derived from range based values"
;
label values tdivinc  tdivinc;
label define tdivinc 
	0           "None or not in universe"       
;
label values ecrmth   ecrmth; 
label define ecrmth  
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values acrmth   acrmth; 
label define acrmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values rmedcode rmedcode;
label define rmedcode
	-1          "Not in Universe"               
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
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values acdmth   acdmth; 
label define acdmth  
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values emcocov  emcocov;
label define emcocov 
	-1          "Not in Universe"               
	1           "Medicaid"                      
	2           "State Children's Health Insurance"
	3           "Other public health insurance" 
;
label values amcocov  amcocov;
label define amcocov 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
	5           "Indicates children's coverage" 
;
label values ehiowner ehiowner;
label define ehiowner
	-1          "Not in Universe"               
	1           "Covered in own name"           
	2           "Covered by someone else's plan"
	3           "Covered both in own name and by"
	4           "Not covered"                   
;
label values ahiowner ahiowner;
label define ahiowner
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values enonhh   enonhh; 
label define enonhh  
	1           "Yes"                           
	2           "No"                            
;
label values rchampm  rchampm;
label define rchampm 
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No"                            
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
	-1          "Not in Universe"               
	1           "Current employer or work"      
	2           "Former employer"               
	3           "Union"                         
	4           "TRICARE/CHAMPUS"               
	5           "CHAMPVA"                       
	6           "Military/VA health care"       
	7           "Privately purchased"           
	8           "Other"                         
;
label values ahemply  ahemply;
label define ahemply 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ehicost  ehicost;
label define ehicost 
	-1          "Not in Universe"               
	1           "All"                           
	2           "Part"                          
	3           "None"                          
;
label values ahicost  ahicost;
label define ahicost 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values ehispse  ehispse;
label define ehispse 
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahispse  ahispse;
label define ahispse 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ehioldkd ehioldkd;
label define ehioldkd
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahioldkd ahioldkd;
label define ahioldkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ehiyngkd ehiyngkd;
label define ehiyngkd
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahiyngkd ahiyngkd;
label define ahiyngkd
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
;
label values ehiothr  ehiothr;
label define ehiothr 
	-1          "Not in Universe"               
	1           "Yes, covered"                  
	2           "No, not covered"               
;
label values ahiothr  ahiothr;
label define ahiothr 
	0           "Not imputed"                   
	1           "Statistical imputation (hot deck)"
	2           "Cold deck imputation"          
	3           "Logical imputation (derivation)"
	4           "Statistical or logical imputation"
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
	4           "Statistical or logical imputation"
;
label values rprvhi   rprvhi; 
label define rprvhi  
	-1          "Not in Universe"               
	1           "Employer or union provided"    
	2           "Privately purchased"           
	3           "Military related"              
	4           "OTHER"                         
;
label values rprvhi2  rprvhi2l;
label define rprvhi2l
	-1          "Not in Universe"               
	1           "Employer or union provided"    
	2           "Privately purchased"           
	3           "Military related"              
	4           "OTHER"                         
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

#delimit cr
desc,short

sort ssuid shhadid eentaid epppnum swave srotaton srefmon 
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
