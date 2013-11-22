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
label values emdunv   emdunv; 
label define emdunv  
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values tdonorid tdonorid;
label define tdonorid
	1           "Received data from a donor"    
	0           "Not in universe or did not"    
;
label values ehouspay ehouspay;
label define ehouspay
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahouspay ahouspay;
label define ahouspay
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efoodpay efoodpay;
label define efoodpay
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values afoodpay afoodpay;
label define afoodpay
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eexppay  eexppay;
label define eexppay 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aexppay  aexppay;
label define aexppay 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehhpay   ehhpay; 
label define ehhpay  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahhpay   ahhpay; 
label define ahhpay  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopy01 ewhopy0y;
label define ewhopy0y
	-1          "Not in Universe"               
;
label values ewhopy02 ewhopy0k;
label define ewhopy0k
	-1          "Not in Universe"               
;
label values ewhopy03 ewhopy0l;
label define ewhopy0l
	-1          "Not in Universe"               
;
label values ewhopy04 ewhopy0m;
label define ewhopy0m
	-1          "Not in Universe"               
;
label values ewhopy05 ewhopy0n;
label define ewhopy0n
	-1          "Not in Universe"               
;
label values ewhopy06 ewhopy0o;
label define ewhopy0o
	-1          "Not in Universe"               
;
label values ewhopy07 ewhopy0p;
label define ewhopy0p
	-1          "Not in Universe"               
;
label values ewhopy08 ewhopy0q;
label define ewhopy0q
	-1          "Not in Universe"               
;
label values ewhopy09 ewhopy0r;
label define ewhopy0r
	-1          "Not in Universe"               
;
label values ewhopy10 ewhopy1y;
label define ewhopy1y
	-1          "Not in Universe"               
;
label values ewhopy11 ewhopy1k;
label define ewhopy1k
	-1          "Not in Universe"               
;
label values ewhopy12 ewhopy1l;
label define ewhopy1l
	-1          "Not in Universe"               
;
label values ewhopy13 ewhopy1m;
label define ewhopy1m
	-1          "Not in Universe"               
;
label values ewhopy14 ewhopy1n;
label define ewhopy1n
	-1          "Not in Universe"               
;
label values ewhopy15 ewhopy1o;
label define ewhopy1o
	-1          "Not in Universe"               
;
label values ewhopy16 ewhopy1p;
label define ewhopy1p
	-1          "Not in Universe"               
;
label values ewhopy17 ewhopy1q;
label define ewhopy1q
	-1          "Not in Universe"               
;
label values ewhopy18 ewhopy1r;
label define ewhopy1r
	-1          "Not in Universe"               
;
label values ewhopy19 ewhopy1s;
label define ewhopy1s
	-1          "Not in Universe"               
;
label values ewhopy20 ewhopy2y;
label define ewhopy2y
	-1          "Not in Universe"               
;
label values ewhopy21 ewhopy2k;
label define ewhopy2k
	-1          "Not in Universe"               
;
label values ewhopy22 ewhopy2l;
label define ewhopy2l
	-1          "Not in Universe"               
;
label values ewhopy23 ewhopy2m;
label define ewhopy2m
	-1          "Not in Universe"               
;
label values ewhopy24 ewhopy2n;
label define ewhopy2n
	-1          "Not in Universe"               
;
label values ewhopy25 ewhopy2o;
label define ewhopy2o
	-1          "Not in Universe"               
;
label values ewhopy26 ewhopy2p;
label define ewhopy2p
	-1          "Not in Universe"               
;
label values ewhopy27 ewhopy2q;
label define ewhopy2q
	-1          "Not in Universe"               
;
label values ewhopy28 ewhopy2r;
label define ewhopy2r
	-1          "Not in Universe"               
;
label values ewhopy29 ewhopy2s;
label define ewhopy2s
	-1          "Not in Universe"               
;
label values ewhopy30 ewhopy3y;
label define ewhopy3y
	-1          "Not in Universe"               
;
label values awhopy   awhopy; 
label define awhopy  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehltstat ehltstat;
label define ehltstat
	5           "Poor"                          
	4           "Fair"                          
	3           "Good"                          
	2           "Very Good"                     
	1           "Excellent"                     
	-1          "Not in Universe"               
;
label values ahltstat ahltstat;
label define ahltstat
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehospsta ehospsta;
label define ehospsta
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahospsta ahospsta;
label define ahospsta
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehospnit ehospnit;
label define ehospnit
	0           "None or not in universe"       
;
label values ahospnit ahospnit;
label define ahospnit
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas1  ehreas1l;
label define ehreas1l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas1  ahreas1l;
label define ahreas1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas2  ehreas2l;
label define ehreas2l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas2  ahreas2l;
label define ahreas2l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas3  ehreas3l;
label define ehreas3l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas3  ahreas3l;
label define ahreas3l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas4  ehreas4l;
label define ehreas4l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas4  ahreas4l;
label define ahreas4l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas5  ehreas5l;
label define ehreas5l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas5  ahreas5l;
label define ahreas5l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreas6  ehreas6l;
label define ehreas6l
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahreas6  ahreas6l;
label define ahreas6l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edocnum  edocnum;
label define edocnum 
	0           "None or not in universe"       
;
label values adocnum  adocnum;
label define adocnum 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thipay   thipay; 
label define thipay  
	0           "Not in universe or none"       
;
label values ahipay   ahipay; 
label define ahipay  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epresdrg epresdrg;
label define epresdrg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apresdrg apresdrg;
label define apresdrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edalydrg edalydrg;
label define edalydrg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adalydrg adalydrg;
label define adalydrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evisdent evisdent;
label define evisdent
	0           "None or not in universe"       
;
label values avisdent avisdent;
label define avisdent
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edenseal edenseal;
label define edenseal
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adenseal adenseal;
label define adenseal
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elostth  elostth;
label define elostth 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alostth  alostth;
label define alostth 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eallth   eallth; 
label define eallth  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aallth   aallth; 
label define aallth  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evisdoc  evisdoc;
label define evisdoc 
	0           "None or not in universe"       
;
label values avisdoc  avisdoc;
label define avisdoc 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emdspnd  emdspnd;
label define emdspnd 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amdspnd  amdspnd;
label define amdspnd 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emdspnds emdspnds;
label define emdspnds
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amdspnds amdspnds;
label define amdspnds
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaysick edaysick;
label define edaysick
	0           "None or not in universe"       
;
label values adaysick adaysick;
label define adaysick
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmdpay   tmdpay; 
label define tmdpay  
	0           "Not in universe or none"       
;
label values amdpay   amdpay; 
label define amdpay  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ereimb   ereimb; 
label define ereimb  
	3           "Expects to get reimbursed but has"
	2           "Got Reimbursed"                
	1           "Total actual Cost"             
	-1          "Not in Universe"               
;
label values areimb   areimb; 
label define areimb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values treimbur treimbur;
label define treimbur
	0           "None or not in universe"       
;
label values areimbur areimbur;
label define areimbur
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehspstas ehspstas;
label define ehspstas
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahspstas ahspstas;
label define ahspstas
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eprsdrgs eprsdrgs;
label define eprsdrgs
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aprsdrgs aprsdrgs;
label define aprsdrgs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evsdents evsdents;
label define evsdents
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values avsdents avsdents;
label define avsdents
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values evsdocs  evsdocs;
label define evsdocs 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values avsdocs  avsdocs;
label define avsdocs 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enowkyr  enowkyr;
label define enowkyr 
	2           "less than a year"              
	1           "A year or longer"              
	-1          "Not in Universe"               
;
label values anowkyr  anowkyr;
label define anowkyr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewkfutr  ewkfutr;
label define ewkfutr 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awkfutr  awkfutr;
label define awkfutr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trmoops  trmoops;
label define trmoops 
	0           "None or not in universe"       
;
label values enoindnt enoindnt;
label define enoindnt
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoindnt anoindnt;
label define anoindnt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoindoc enoindoc;
label define enoindoc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoindoc anoindoc;
label define anoindoc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enointrt enointrt;
label define enointrt
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anointrt anointrt;
label define anointrt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoinchk enoinchk;
label define enoinchk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoinchk anoinchk;
label define anoinchk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoindrg enoindrg;
label define enoindrg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoindrg anoindrg;
label define anoindrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoinpay enoinpay;
label define enoinpay
	3           "Both (if respondent volunteers)"
	2           "Paid something"                
	1           "Free"                          
	-1          "Not in Universe"               
;
label values anoinpay anoinpay;
label define anoinpay
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoindis enoindis;
label define enoindis
	3           "Don't know"                    
	2           "Reduced price"                 
	1           "Full price"                    
	-1          "Not in Universe"               
;
label values anoindis anoindis;
label define anoindis
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoininc enoininc;
label define enoininc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoininc anoininc;
label define anoininc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enoincln enoincln;
label define enoincln
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoiner  enoiner;
label define enoiner 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinhsp enoinhsp;
label define enoinhsp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinva  enoinva;
label define enoinva 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoindr  enoindr;
label define enoindr 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoindds enoindds;
label define enoindds
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values enoinoth enoinoth;
label define enoinoth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anoinloc anoinloc;
label define anoinloc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eapvunv  eapvunv;
label define eapvunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values epvwk1   epvwk1l;
label define epvwk1l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvwk2   epvwk2l;
label define epvwk2l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvwk3   epvwk3l;
label define epvwk3l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvwk4   epvwk4l;
label define epvwk4l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvwk5   epvwk5l;
label define epvwk5l 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvwk    apvwk;  
label define apvwk   
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvmilwk epvmilwk;
label define epvmilwk
	-1          "Not in Universe"               
;
label values apvmilwk apvmilwk;
label define apvmilwk
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvpaprk epvpaprk;
label define epvpaprk
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvpaprk apvpaprk;
label define apvpaprk
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvpaywk epvpaywk;
label define epvpaywk
	0           "Not In Universe"               
;
label values apvpaywk apvpaywk;
label define apvpaywk
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvcomut epvcomut;
label define epvcomut
	0           "Not In Universe"               
;
label values apvcomut apvcomut;
label define apvcomut
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvwkexp epvwkexp;
label define epvwkexp
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvwkexp apvwkexp;
label define apvwkexp
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvanexp epvanexp;
label define epvanexp
	0           "Not In Universe"               
;
label values apvanexp apvanexp;
label define apvanexp
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvchild epvchild;
label define epvchild
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvchild apvchild;
label define apvchild
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvmancd epvmancd;
label define epvmancd
	-1          "Not in Universe"               
;
label values apvmancd apvmancd;
label define apvmancd
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvmosup epvmosup;
label define epvmosup
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvmosup apvmosup;
label define apvmosup
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values tpvchpa1 tpvchpap;
label define tpvchpap
	0           "None or not in universe"       
;
label values tpvchpa2 tpvchpak;
label define tpvchpak
	0           "None or not in universe"       
;
label values tpvchpa3 tpvchpal;
label define tpvchpal
	0           "None or not in universe"       
;
label values tpvchpa4 tpvchpam;
label define tpvchpam
	0           "None or not in universe"       
;
label values apvchpa  apvchpa;
label define apvchpa 
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvccarr epvccarr;
label define epvccarr
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvccarr apvccarr;
label define apvccarr
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values tpvccfp1 tpvccfpr;
label define tpvccfpr
	0           "None or not in universe"       
;
label values apvccfp1 apvccfpr;
label define apvccfpr
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values tpvccfp2 tpvccfpk;
label define tpvccfpk
	0           "None or not in universe"       
;
label values apvccfp2 apvccfpk;
label define apvccfpk
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values tpvccfp3 tpvccfpl;
label define tpvccfpl
	0           "None or not in universe"       
;
label values apvccfp3 apvccfpl;
label define apvccfpl
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values tpvccfp4 tpvccfpm;
label define tpvccfpm
	0           "None or not in universe"       
;
label values apvccfp4 apvccfpm;
label define apvccfpm
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvccoth epvccoth;
label define epvccoth
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvccoth apvccoth;
label define apvccoth
	4           "Imputed from the previous wave"
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvcwho1 epvcwhoh;
label define epvcwhoh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvcwho2 epvcwhok;
label define epvcwhok
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvcwho3 epvcwhol;
label define epvcwhol
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvcwho4 epvcwhom;
label define epvcwhom
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values epvcwho5 epvcwhon;
label define epvcwhon
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apvcwho  apvcwho;
label define apvcwho 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values epvdays  epvdays;
label define epvdays 
	-1          "Not in Universe"               
;
label values epvweeks epvweeks;
label define epvweeks
	-1          "Not in Universe"               
;
label values epvmnths epvmnths;
label define epvmnths
	-1          "Not in Universe"               
;
label values apvdwm   apvdwm; 
label define apvdwm  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "No imputation"                 
;
label values ealunv   ealunv; 
label define ealunv  
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values ealow    ealow;  
label define ealow   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalow    aalow;  
label define aalow   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealowa   ealowa; 
label define ealowa  
	0           "Not In Universe"               
;
label values aalowa   aalowa; 
label define aalowa  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealsb    ealsb;  
label define ealsb   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalsb    aalsb;  
label define aalsb   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talsbv   talsbv; 
label define talsbv  
	0           "Not In Universe"               
;
label values aalsbv   aalsbv; 
label define aalsbv  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjch   ealjch; 
label define ealjch  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaljch   aaljch; 
label define aaljch  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values taljcha  taljcha;
label define taljcha 
	0           "None or not in universe"       
;
label values aaljcha  aaljcha;
label define aaljcha 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdb   ealjdb; 
label define ealjdb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaljdb   aaljdb; 
label define aaljdb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdl   ealjdl; 
label define ealjdl  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaljdl   aaljdl; 
label define aaljdl  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdo   ealjdo; 
label define ealjdo  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aaljdo   aaljdo; 
label define aaljdo  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdab  ealjdab;
label define ealjdab 
	0           "Not In Universe"               
;
label values aaljdab  aaljdab;
label define aaljdab 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdal  ealjdal;
label define ealjdal 
	0           "Not In Universe"               
;
label values aaljdal  aaljdal;
label define aaljdal 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealjdao  ealjdao;
label define ealjdao 
	0           "Not In Universe"               
;
label values aaljdao  aaljdao;
label define aaljdao 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealich   ealich; 
label define ealich  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalich   aalich; 
label define aalich  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talicha  talicha;
label define talicha 
	0           "None or not in universe"       
;
label values aalicha  aalicha;
label define aalicha 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealil    ealil;  
label define ealil   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalil    aalil;  
label define aalil   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealidb   ealidb; 
label define ealidb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalidb   aalidb; 
label define aalidb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealidl   ealidl; 
label define ealidl  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalidl   aalidl; 
label define aalidl  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealido   ealido; 
label define ealido  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalido   aalido; 
label define aalido  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealidab  ealidab;
label define ealidab 
	0           "Not In Universe"               
;
label values aalidab  aalidab;
label define aalidab 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealidal  ealidal;
label define ealidal 
	0           "Not In Universe"               
;
label values aalidal  aalidal;
label define aalidal 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealidao  ealidao;
label define ealidao 
	0           "Not In Universe"               
;
label values aalidao  aalidao;
label define aalidao 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealr     ealr;   
label define ealr    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalr     aalr;   
label define aalr    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealry    ealry;  
label define ealry   
	-1          "Not in Universe"               
;
label values aalry    aalry;  
label define aalry   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talrb    talrb;  
label define talrb   
	0           "None or not in universe"       
;
label values aalrb    aalrb;  
label define aalrb   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealra1   ealra1l;
label define ealra1l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalra1   aalra1l;
label define aalra1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealra2   ealra2l;
label define ealra2l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalra2   aalra2l;
label define aalra2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealra3   ealra3l;
label define ealra3l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalra3   aalra3l;
label define aalra3l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealra4   ealra4l;
label define ealra4l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalra4   aalra4l;
label define aalra4l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealk     ealk;   
label define ealk    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalk     aalk;   
label define aalk    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealky    ealky;  
label define ealky   
	-1          "Not in Universe"               
;
label values aalky    aalky;  
label define aalky   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talkb    talkb;  
label define talkb   
	0           "None or not in universe"       
;
label values aalkb    aalkb;  
label define aalkb   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealka1   ealka1l;
label define ealka1l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalka1   aalka1l;
label define aalka1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealka2   ealka2l;
label define ealka2l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalka2   aalka2l;
label define aalka2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealka3   ealka3l;
label define ealka3l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalka3   aalka3l;
label define aalka3l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealka4   ealka4l;
label define ealka4l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalka4   aalka4l;
label define aalka4l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealt     ealt;   
label define ealt    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalt     aalt;   
label define aalt    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealty    ealty;  
label define ealty   
	-1          "Not in Universe"               
;
label values aalty    aalty;  
label define aalty   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values taltb    taltb;  
label define taltb   
	0           "None or not in universe"       
;
label values aaltb    aaltb;  
label define aaltb   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealta1   ealta1l;
label define ealta1l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalta1   aalta1l;
label define aalta1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealta2   ealta2l;
label define ealta2l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalta2   aalta2l;
label define aalta2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealta3   ealta3l;
label define ealta3l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalta3   aalta3l;
label define aalta3l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealta4   ealta4l;
label define ealta4l 
	7           "Other assets"                  
	6           "Stocks or mutual fund shares"  
	5           "U.S. Savings Bonds"            
	4           "Municipal or corporate bonds"  
	3           "U.S. Government securities"    
	2           "Money market funds"            
	1           "Certificates of deposit or other"
	-1          "Not in Universe"               
;
label values aalta4   aalta4l;
label define aalta4l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ealli    ealli;  
label define ealli   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aalli    aalli;  
label define aalli   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talliv   talliv; 
label define talliv  
	0           "Zero or not in universe"       
;
label values aalliv   aalliv; 
label define aalliv  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eallit   eallit; 
label define eallit  
	3           "Both types"                    
	2           "Whole life only"               
	1           "Term only"                     
	-1          "Not in Universe"               
;
label values aallit   aallit; 
label define aallit  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eallie   eallie; 
label define eallie  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aallie   aallie; 
label define aallie  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values talliev  talliev;
label define talliev 
	0           "Zero or not in universe"       
;
label values aalliev  aalliev;
label define aalliev 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehreunv  ehreunv;
label define ehreunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values eremobho eremobho;
label define eremobho
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aremobho aremobho;
label define aremobho
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehowner1 ehownero;
label define ehownero
	-1          "Not in Universe"               
;
label values ahowner1 ahownero;
label define ahownero
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehowner2 ehownerk;
label define ehownerk
	-1          "Not in Universe"               
;
label values ahowner2 ahownerk;
label define ahownerk
	3           "Logical imputation (derivation)}"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehowner3 ehownerl;
label define ehownerl
	-1          "Not in Universe"               
;
label values ehbuymo  ehbuymo;
label define ehbuymo 
	-1          "Not in Universe"               
;
label values ahbuymo  ahbuymo;
label define ahbuymo 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehbuyyr  ehbuyyr;
label define ehbuyyr 
	-1          "Not in Universe"               
;
label values ahbuyyr  ahbuyyr;
label define ahbuyyr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehmort   ehmort; 
label define ehmort  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahmort   ahmort; 
label define ahmort  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enummort enummort;
label define enummort
	-1          "Not in Universe"               
;
label values anummort anummort;
label define anummort
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmor1pr  tmor1pr;
label define tmor1pr 
	0           "Not In Universe"               
;
label values amor1pr  amor1pr;
label define amor1pr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1yr  emor1yr;
label define emor1yr 
	-1          "Not in Universe"               
;
label values amor1yr  amor1yr;
label define amor1yr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1mo  emor1mo;
label define emor1mo 
	-1          "Not in Universe"               
;
label values amor1mo  amor1mo;
label define amor1mo 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmor1amt tmor1amt;
label define tmor1amt
	0           "None or not in universe"       
;
label values amor1amt amor1amt;
label define amor1amt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1yrs emor1yrs;
label define emor1yrs
	-1          "Not in Universe"               
;
label values amor1yrs amor1yrs;
label define amor1yrs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1int emor1int;
label define emor1int
	-1          "Not in Universe"               
;
label values amor1int amor1int;
label define amor1int
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1var emor1var;
label define emor1var
	2           "Fixed interest rate"           
	1           "Variable interest rate"        
	-1          "Not in Universe"               
;
label values amor1var amor1var;
label define amor1var
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor1pgm emor1pgm;
label define emor1pgm
	3           "NO"                            
	2           "Yes - VA LOAN"                 
	1           "Yes - FHA LOAN"                
	-1          "Not in Universe"               
;
label values amor1pgm amor1pgm;
label define amor1pgm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmor2pr  tmor2pr;
label define tmor2pr 
	1           "Flag indicating principal on"  
	0           "Not In Universe"               
;
label values amor2pr  amor2pr;
label define amor2pr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2yr  emor2yr;
label define emor2yr 
	-1          "Not in Universe"               
;
label values amor2yr  amor2yr;
label define amor2yr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2mo  emor2mo;
label define emor2mo 
	-1          "Not in Universe"               
;
label values amor2mo  amor2mo;
label define amor2mo 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmor2amt tmor2amt;
label define tmor2amt
	1           "Flag indicating second mortgage"
	0           "None or not in universe"       
;
label values amor2amt amor2amt;
label define amor2amt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2yrs emor2yrs;
label define emor2yrs
	-1          "Not in Universe"               
;
label values amor2yrs amor2yrs;
label define amor2yrs
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2int emor2int;
label define emor2int
	-1          "Not in Universe"               
;
label values amor2int amor2int;
label define amor2int
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2var emor2var;
label define emor2var
	2           "Fixed interest rate"           
	1           "Variable interest rate"        
	-1          "Not in Universe"               
;
label values amor2var amor2var;
label define amor2var
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emor2pgm emor2pgm;
label define emor2pgm
	3           "NO"                            
	2           "Yes-VA LOAN"                   
	1           "Yes-FHA LOAN"                  
	-1          "Not in Universe"               
;
label values amor2pgm amor2pgm;
label define amor2pgm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmor3pr  tmor3pr;
label define tmor3pr 
	1           "Flag indicating principal reported"
	0           "None or not in universe"       
;
label values amor3pr  amor3pr;
label define amor3pr 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tpropval tpropval;
label define tpropval
	0           "None or not in universe"       
;
label values apropval apropval;
label define apropval
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emhloan  emhloan;
label define emhloan 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values amhloan  amhloan;
label define amhloan 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values emhtype  emhtype;
label define emhtype 
	3           "Site and home"                 
	2           "Site only"                     
	1           "Mobile home only"              
	-1          "Not in Universe"               
;
label values amhtype  amhtype;
label define amhtype 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmhpr    tmhpr;  
label define tmhpr   
	0           "None or not in universe"       
;
label values amhpr    amhpr;  
label define amhpr   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmhval   tmhval; 
label define tmhval  
	0           "None or not in universe"       
;
label values amhval   amhval; 
label define amhval  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thomeamt thomeamt;
label define thomeamt
	0           "None or not in universe"       
;
label values ahomeamt ahomeamt;
label define ahomeamt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tutils   tutils; 
label define tutils  
	0           "None or not in universe"       
;
label values autils   autils; 
label define autils  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eperspay eperspay;
label define eperspay
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aperspay aperspay;
label define aperspay
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eperspya eperspya;
label define eperspya
	-1          "Not in Universe"               
;
label values aperspya aperspya;
label define aperspya
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eperspy1 eperspyk;
label define eperspyk
	-1          "Not in Universe"               
;
label values aperspy1 aperspyk;
label define aperspyk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eperspy2 eperspyl;
label define eperspyl
	-1          "Not in Universe"               
;
label values eperspy3 eperspym;
label define eperspym
	-1          "Not in Universe"               
;
label values tpersam1 tpersama;
label define tpersama
	0           "None or not in universe"       
;
label values apersam1 apersama;
label define apersama
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tpersam2 tpersamk;
label define tpersamk
	0           "None or not in universe"       
;
label values apersam2 apersamk;
label define apersamk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tpersam3 tpersaml;
label define tpersaml
	0           "None or not in universe"       
;
label values apersam3 apersaml;
label define apersaml
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaycare epaycare;
label define epaycare
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaycare apaycare;
label define apaycare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tcarecst tcarecst;
label define tcarecst
	0           "None or not in universe"       
;
label values acarecst acarecst;
label define acarecst
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothre   eothre; 
label define eothre  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothre   aothre; 
label define aothre  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothreo1 eothreoe;
label define eothreoe
	-1          "Not in Universe"               
;
label values aothreo1 aothreoe;
label define aothreoe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothreo2 eothreok;
label define eothreok
	-1          "Not in Universe"               
;
label values eothreo3 eothreol;
label define eothreol
	-1          "Not in Universe"               
;
label values tothreva tothreva;
label define tothreva
	0           "None or not in universe"       
;
label values aothreva aothreva;
label define aothreva
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eautoown eautoown;
label define eautoown
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aautoown aautoown;
label define aautoown
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eautonum eautonum;
label define eautonum
	-1          "Not in Universe"               
;
label values aautonum aautonum;
label define aautonum
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea1own1  ea1own1l;
label define ea1own1l
	-1          "Not in Universe"               
;
label values aa1own1  aa1own1l;
label define aa1own1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea1own2  ea1own2l;
label define ea1own2l
	-1          "Not in Universe"               
;
label values tcarval1 tcarvalm;
label define tcarvalm
	0           "None or not in universe"       
;
label values acarval1 acarvalm;
label define acarvalm
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta1year  ta1year;
label define ta1year 
	9999        "Dont Know, Refusal, Blanks from"
	-1          "Not in Universe"               
;
label values ea1owed  ea1owed;
label define ea1owed 
	2           "Free and clear"                
	1           "Money owed"                    
	-1          "Not in Universe"               
;
label values aa1owed  aa1owed;
label define aa1owed 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta1amt   ta1amt; 
label define ta1amt  
	0           "None or not in universe"       
;
label values aa1amt   aa1amt; 
label define aa1amt  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea1use   ea1use; 
label define ea1use  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aa1use   aa1use; 
label define aa1use  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea2own1  ea2own1l;
label define ea2own1l
	-1          "Not in Universe"               
;
label values aa2own1  aa2own1l;
label define aa2own1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea2own2  ea2own2l;
label define ea2own2l
	-1          "Not in Universe"               
;
label values tcarval2 tcarvale;
label define tcarvale
	0           "None or not in universe"       
;
label values acarval2 acarvale;
label define acarvale
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta2year  ta2year;
label define ta2year 
	9999        "Dont Know, Refusal, Blanks from"
	1986        "Recode for year 1982-1986"     
	1982        "Recode for year less than 1982"
	-1          "Not in Universe"               
;
label values ea2owed  ea2owed;
label define ea2owed 
	2           "Free and clear"                
	1           "Money owed"                    
	-1          "Not in Universe"               
;
label values aa2owed  aa2owed;
label define aa2owed 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta2amt   ta2amt; 
label define ta2amt  
	0           "None or not in universe"       
;
label values aa2amt   aa2amt; 
label define aa2amt  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea2use   ea2use; 
label define ea2use  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aa2use   aa2use; 
label define aa2use  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea3own1  ea3own1l;
label define ea3own1l
	-1          "Not in Universe"               
;
label values aa3own1  aa3own1l;
label define aa3own1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea3own2  ea3own2l;
label define ea3own2l
	-1          "Not in Universe"               
;
label values tcarval3 tcarvalk;
label define tcarvalk
	0           "None or not in universe"       
;
label values acarval3 acarvalk;
label define acarvalk
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta3year  ta3year;
label define ta3year 
	9999        "Dont Know, Refusal, Blanks from"
	1986        "Recode for year 1985-1986"     
	1984        "Recode for year 1979-1984"     
	1978        "Recode for year 1975-1978"     
	1974        "Recode for year 1968-1974"     
	1968        "Recode for year less than 1968"
	-1          "Not in Universe"               
;
label values ea3owed  ea3owed;
label define ea3owed 
	2           "Free and clear"                
	1           "Money owed"                    
	-1          "Not in Universe"               
;
label values aa3owed  aa3owed;
label define aa3owed 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ta3amt   ta3amt; 
label define ta3amt  
	0           "None or not in universe"       
;
label values aa3amt   aa3amt; 
label define aa3amt  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ea3use   ea3use; 
label define ea3use  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aa3use   aa3use; 
label define aa3use  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothveh  eothveh;
label define eothveh 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aothveh  aothveh;
label define aothveh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eovmtrcy eovmtrcy;
label define eovmtrcy
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aovmtrcy aovmtrcy;
label define aovmtrcy
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eovboat  eovboat;
label define eovboat 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aovboat  aovboat;
label define aovboat 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eovrv    eovrv;  
label define eovrv   
	2           "Not"                           
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aovrv    aovrv;  
label define aovrv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eovothrv eovothrv;
label define eovothrv
	2           "Not"                           
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aovothrv aovothrv;
label define aovothrv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov1own1 eov1ownv;
label define eov1ownv
	-1          "Not in Universe"               
;
label values aov1own1 aov1ownv;
label define aov1ownv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov1own2 eov1ownk;
label define eov1ownk
	-1          "Not in Universe"               
;
label values tov1val  tov1val;
label define tov1val 
	0           "None or not in universe"       
;
label values aov1val  aov1val;
label define aov1val 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov1owe  eov1owe;
label define eov1owe 
	2           "Free and clear"                
	1           "Money owed"                    
	-1          "Not in Universe"               
;
label values aov1owe  aov1owe;
label define aov1owe 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tov1amt  tov1amt;
label define tov1amt 
	0           "None or not in universe"       
;
label values aov1amt  aov1amt;
label define aov1amt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov2own1 eov2ownt;
label define eov2ownt
	-1          "Not in Universe"               
;
label values aov2own1 aov2ownt;
label define aov2ownt
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov2own2 eov2ownk;
label define eov2ownk
	-1          "Not in Universe"               
;
label values tov2val  tov2val;
label define tov2val 
	0           "None or not in universe"       
;
label values aov2val  aov2val;
label define aov2val 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eov2owe  eov2owe;
label define eov2owe 
	2           "Free and clear"                
	1           "Money owed"                    
	-1          "Not in Universe"               
;
label values aov2owe  aov2owe;
label define aov2owe 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tov2amt  tov2amt;
label define tov2amt 
	0           "None or not in universe"       
;
label values aov2amt  aov2amt;
label define aov2amt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values thhtnw   thhtnw; 
label define thhtnw  
	0           "None or not in universe"       
;
label values thhtwlth thhtwlth;
label define thhtwlth
	0           "None or not in universe"       
;
label values thhtheq  thhtheq;
label define thhtheq 
	0           "None or not in universe"       
;
label values thhmortg thhmortg;
label define thhmortg
	0           "None or not in universe"       
;
label values thhvehcl thhvehcl;
label define thhvehcl
	0           "None or not in universe"       
;
label values thhbeq   thhbeq; 
label define thhbeq  
	0           "None or not in universe"       
;
label values thhintbk thhintbk;
label define thhintbk
	0           "None or not in universe"       
;
label values thhintot thhintot;
label define thhintot
	0           "None or not in universe"       
;
label values rhhstk   rhhstk; 
label define rhhstk  
	0           "None or not in universe"       
;
label values thhore   thhore; 
label define thhore  
	0           "None or not in universe"       
;
label values thhotast thhotast;
label define thhotast
	0           "None or not in universe"       
;
label values thhira   thhira; 
label define thhira  
	0           "None or not in universe"       
;
label values thhthrif thhthrif;
label define thhthrif
	0           "None or not in universe"       
;
label values thhdebt  thhdebt;
label define thhdebt 
	0           "None or not in universe"       
;
label values thhscdbt thhscdbt;
label define thhscdbt
	0           "None or not in universe"       
;
label values rhhuscbt rhhuscbt;
label define rhhuscbt
	0           "None or not in universe"       
;
label values evbunv1  evbunv1l;
label define evbunv1l
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values evbno1   evbno1l;
label define evbno1l 
	-1          "Not in Universe"               
;
label values evbow1   evbow1l;
label define evbow1l 
	0           "Not In Universe"               
;
label values avbow1   avbow1l;
label define avbow1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values tvbva1   tvbva1l;
label define tvbva1l 
	0           "None or not in universe"       
;
label values avbva1   avbva1l;
label define avbva1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values tvbde1   tvbde1l;
label define tvbde1l 
	0           "None or not in universe"       
;
label values avbde1   avbde1l;
label define avbde1l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values evbunv2  evbunv2l;
label define evbunv2l
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values evbno2   evbno2l;
label define evbno2l 
	-1          "Not in Universe"               
;
label values evbow2   evbow2l;
label define evbow2l 
	0           "Not In Universe"               
;
label values avbow2   avbow2l;
label define avbow2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values tvbva2   tvbva2l;
label define tvbva2l 
	0           "None or not in universe"       
;
label values avbva2   avbva2l;
label define avbva2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values tvbde2   tvbde2l;
label define tvbde2l 
	0           "None or not in universe"       
;
label values avbde2   avbde2l;
label define avbde2l 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputed (hot deck)"
	0           "Not imputed"                   
;
label values eaoaunv  eaoaunv;
label define eaoaunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values eoaeq    eoaeq;  
label define eoaeq   
	0           "None or not in universe"       
;
label values aoaeq    aoaeq;  
label define aoaeq   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tiajta   tiajta; 
label define tiajta  
	0           "None or not in universe"       
;
label values aiajta   aiajta; 
label define aiajta  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tiaita   tiaita; 
label define tiaita  
	0           "None or not in universe"       
;
label values aiaita   aiaita; 
label define aiaita  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values timja    timja;  
label define timja   
	0           "None or not in universe"       
;
label values aimja    aimja;  
label define aimja   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values timia    timia;  
label define timia   
	0           "None or not in universe"       
;
label values aimia    aimia;  
label define aimia   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmjm    esmjm;  
label define esmjm   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asmjm    asmjm;  
label define asmjm   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmjs    esmjs;  
label define esmjs   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asmjs    asmjs;  
label define asmjs   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmjv    esmjv;  
label define esmjv   
	0           "None or not in universe"       
;
label values asmjv    asmjv;  
label define asmjv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmjma   esmjma; 
label define esmjma  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asmjma   asmjma; 
label define asmjma  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmjmav  esmjmav;
label define esmjmav 
	0           "None or not in universe"       
;
label values asmjmav  asmjmav;
label define asmjmav 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmi     esmi;   
label define esmi    
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asmi     asmi;   
label define asmi    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmiv    esmiv;  
label define esmiv   
	0           "None or not in universe"       
;
label values asmiv    asmiv;  
label define asmiv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmima   esmima; 
label define esmima  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asmima   asmima; 
label define asmima  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esmimav  esmimav;
label define esmimav 
	0           "None or not in universe"       
;
label values asmimav  asmimav;
label define asmimav 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjown   erjown; 
label define erjown  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arjown   arjown; 
label define arjown  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjnum   erjnum; 
label define erjnum  
	0           "None or not in universe"       
;
label values arjnum   arjnum; 
label define arjnum  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp1  erjtyp1l;
label define erjtyp1l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp1  arjtyp1l;
label define arjtyp1l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp2  erjtyp2l;
label define erjtyp2l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp2  arjtyp2l;
label define arjtyp2l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp3  erjtyp3l;
label define erjtyp3l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp3  arjtyp3l;
label define arjtyp3l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp4  erjtyp4l;
label define erjtyp4l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp4  arjtyp4l;
label define arjtyp4l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp5  erjtyp5l;
label define erjtyp5l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp5  arjtyp5l;
label define arjtyp5l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjtyp6  erjtyp6l;
label define erjtyp6l
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arjtyp6  arjtyp6l;
label define arjtyp6l
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjat    erjat;  
label define erjat   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arjat    arjat;  
label define arjat   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjata   erjata; 
label define erjata  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arjata   arjata; 
label define arjata  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trjmv    trjmv;  
label define trjmv   
	0           "None or not in universe"       
;
label values arjmv    arjmv;  
label define arjmv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erjdeb   erjdeb; 
label define erjdeb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arjdeb   arjdeb; 
label define arjdeb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trjpri   trjpri; 
label define trjpri  
	0           "None or not in universe"       
;
label values arjpri   arjpri; 
label define arjpri  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eriown   eriown; 
label define eriown  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ariown   ariown; 
label define ariown  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erinum   erinum; 
label define erinum  
	0           "None or not in universe"       
;
label values arinum   arinum; 
label define arinum  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype1 eritypem;
label define eritypem
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype1 aritypem;
label define aritypem
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype2 eritypek;
label define eritypek
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype2 aritypek;
label define aritypek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype3 eritypel;
label define eritypel
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype3 aritypel;
label define aritypel
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype4 eritypen;
label define eritypen
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype4 aritypen;
label define aritypen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype5 eritypeo;
label define eritypeo
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype5 aritypeo;
label define aritypeo
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eritype6 eritypep;
label define eritypep
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values aritype6 aritypep;
label define aritypep
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eriat    eriat;  
label define eriat   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ariat    ariat;  
label define ariat   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eriata   eriata; 
label define eriata  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ariata   ariata; 
label define ariata  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trimv    trimv;  
label define trimv   
	0           "None or not in universe"       
;
label values arimv    arimv;  
label define arimv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erideb   erideb; 
label define erideb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arideb   arideb; 
label define arideb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tripri   tripri; 
label define tripri  
	0           "None or not in universe"       
;
label values aripri   aripri; 
label define aripri  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ertown   ertown; 
label define ertown  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values artown   artown; 
label define artown  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ertnum   ertnum; 
label define ertnum  
	0           "None or not in universe"       
;
label values artnum   artnum; 
label define artnum  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype1 erttypem;
label define erttypem
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype1 arttypem;
label define arttypem
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype2 erttypek;
label define erttypek
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype2 arttypek;
label define arttypek
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype3 erttypel;
label define erttypel
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype3 arttypel;
label define arttypel
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype4 erttypen;
label define erttypen
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype4 arttypen;
label define arttypen
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype5 erttypeo;
label define erttypeo
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype5 arttypeo;
label define arttypeo
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erttype6 erttypep;
label define erttypep
	6           "Other"                         
	5           "Equipment"                     
	4           "Commercial property"           
	3           "Farm property"                 
	2           "Other residential property"    
	1           "Vacation home"                 
	-1          "Not in Universe"               
;
label values arttype6 arttypep;
label define arttypep
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trtmv    trtmv;  
label define trtmv   
	0           "None or not in universe"       
;
label values artmv    artmv;  
label define artmv   
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ertdeb   ertdeb; 
label define ertdeb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values artdeb   artdeb; 
label define artdeb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trtpri   trtpri; 
label define trtpri  
	0           "None or not in universe"       
;
label values artpri   artpri; 
label define artpri  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values trtsha   trtsha; 
label define trtsha  
	0           "None or not in universe"       
;
label values artsha   artsha; 
label define artsha  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmjp     tmjp;   
label define tmjp    
	0           "None or not in universe"       
;
label values amjp     amjp;   
label define amjp    
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tmip     tmip;   
label define tmip    
	0           "None or not in universe"       
;
label values amip     amip;   
label define amip    
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
