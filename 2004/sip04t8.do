
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
label values eawrunv  eawrunv;
label define eawrunv 
	-1          "Not in Universe"               
	1           "In universe"                   
;
label values iinccat  iinccat;
label define iinccat 
	6           "$50,000 or more"               
	5           "$40,000 to $50,000"            
	4           "$30,000 to $40,000"            
	3           "$20,000 to $30,000"            
	2           "$10,000 to $20,000"            
	1           "less than  $10,000"            
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipayn    ipayn;  
label define ipayn   
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipayn2   ipayn2l;
label define ipayn2l 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values itraihyn itraihyn;
label define itraihyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ihlphire ihlphire;
label define ihlphire
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihlptrai ihlptrai;
label define ihlptrai
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihlpwage ihlpwage;
label define ihlpwage
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihlpdk   ihlpdk; 
label define ihlpdk  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ifoodhyn ifoodhyn;
label define ifoodhyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iclothyn iclothyn;
label define iclothyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ihoushyn ihoushyn;
label define ihoushyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsuphyn icsuphyn;
label define icsuphyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iothhyn  iothhyn;
label define iothhyn 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijobhelp ijobhelp;
label define ijobhelp
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ireqinc  ireqinc;
label define ireqinc 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ireqcs   ireqcs; 
label define ireqcs  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ireqpat  ireqpat;
label define ireqpat 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ireqdt   ireqdt; 
label define ireqdt  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhrusu  ijhrusu;
label define ijhrusu 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhint   ijhint; 
label define ijhint  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhdres  ijhdres;
label define ijhdres 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhself  ijhself;
label define ijhself 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhcomp  ijhcomp;
label define ijhcomp 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhcler  ijhcler;
label define ijhcler 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhmach  ijhmach;
label define ijhmach 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhojs   ijhojs; 
label define ijhojs  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhged   ijhged; 
label define ijhged  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhcol   ijhcol; 
label define ijhcol  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhlit   ijhlit; 
label define ijhlit  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhlis   ijhlis; 
label define ijhlis  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijheng   ijheng; 
label define ijheng  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhoth   ijhoth; 
label define ijhoth  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijcomptr ijcomptr;
label define ijcomptr
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhjobyn ijhjobyn;
label define ijhjobyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ijhpayyn ijhpayyn;
label define ijhpayyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values inumpay  inumpay;
label define inumpay 
	2           "More than one"                 
	1           "Single payment"                
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values igasvyn  igasvyn;
label define igasvyn 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values itokyn   itokyn; 
label define itokyn  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icaryn   icaryn; 
label define icaryn  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values irideyn  irideyn;
label define irideyn 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iothtyn  iothtyn;
label define iothtyn 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icctype  icctype;
label define icctype 
	4           "Both"                          
	3           "Neither"                       
	2           "Free child care"               
	1           "Paid part of the cost"         
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccpayyn iccpayyn;
label define iccpayyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccempyn iccempyn;
label define iccempyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccwho   iccwho; 
label define iccwho  
	5           "Other"                         
	4           "A friend"                      
	3           "A relative"                    
	2           "A charity"                     
	1           "An employer"                   
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov01 icccov0o;
label define icccov0o
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov02 icccov0k;
label define icccov0k
	9999        "Invalid entry"                 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov03 icccov0l;
label define icccov0l
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov04 icccov0m;
label define icccov0m
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov05 icccov0n;
label define icccov0n
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov06 icccov0p;
label define icccov0p
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icccov07 icccov0q;
label define icccov0q
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccrel   iccrel; 
label define iccrel  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccdayc  iccdayc;
label define iccdayc 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccsitt  iccsitt;
label define iccsitt 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iccaft   iccaft; 
label define iccaft  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ifavou   ifavou; 
label define ifavou  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ifagroc  ifagroc;
label define ifagroc 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ifameal  ifameal;
label define ifameal 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ifaoth   ifaoth; 
label define ifaoth  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ivouga   ivouga; 
label define ivouga  
	1           "Yes"                           
	0           "Not answered"                  
;
label values ivouhar  ivouhar;
label define ivouhar 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ivoufam  ivoufam;
label define ivoufam 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ivouoth  ivouoth;
label define ivouoth 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ivouthh  ivouthh;
label define ivouthh 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icaga    icaga;  
label define icaga   
	1           "Yes"                           
	0           "Not answered"                  
;
label values icachar  icachar;
label define icachar 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icafam   icafam; 
label define icafam  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icaemp   icaemp; 
label define icaemp  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icaoth   icaoth; 
label define icaoth  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icaothh  icaothh;
label define icaothh 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ihatype  ihatype;
label define ihatype 
	3           "Not sure/Don't know"           
	2           "Other rental assistance"       
	1           "Section 8"                     
	0           "Not answered"                  
	-2          "Refused"                       
;
label values ihatype2 ihatypee;
label define ihatypee
	4           "Not sure/Don't know"           
	3           "Other housing program"         
	2           "Other rental assistance"       
	1           "Section 8"                     
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ihaga    ihaga;  
label define ihaga   
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihahous  ihahous;
label define ihahous 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihachar  ihachar;
label define ihachar 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihaoth   ihaoth; 
label define ihaoth  
	1           "Yes"                           
	0           "Not answered"                  
;
label values ihaothh  ihaothh;
label define ihaothh 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icashsc  icashsc;
label define icashsc 
	3           "Someplace else"                
	2           "Family or friends"             
	1           "Government agency"             
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icashhm  icashhm;
label define icashhm 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icashal  icashal;
label define icashal 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icashuse icashuse;
label define icashuse
	2           "Whatever was needed"           
	1           "Particular use"                
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icashren icashren;
label define icashren
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashfoo icashfoo;
label define icashfoo
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashcs  icashcs;
label define icashcs 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashck  icashck;
label define icashck 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashcar icashcar;
label define icashcar
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashoth icashoth;
label define icashoth
	1           "Yes"                           
	0           "Not answered"                  
;
label values icashohh icashohh;
label define icashohh
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsagen  icsagen;
label define icsagen 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icswelf  icswelf;
label define icswelf 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsoth   icsoth; 
label define icsoth  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsothh  icsothh;
label define icsothh 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icspat   icspat; 
label define icspat  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsabs   icsabs; 
label define icsabs  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icscourt icscourt;
label define icscourt
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icscoll  icscoll;
label define icscoll 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsoth2  icsoth2l;
label define icsoth2l
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsgov   icsgov; 
label define icsgov  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icschar  icschar;
label define icschar 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsfam   icsfam; 
label define icsfam  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icselse  icselse;
label define icselse 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icselsee icselsee;
label define icselsee
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tcsamt   tcsamt; 
label define tcsamt  
	4           "501-9999 Amount in dollars"    
	3           "251-500 Amount in dollars"     
	2           "101-250 Amount in dollars"     
	1           "1-100 Amount in dollars"       
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsncash icsncash;
label define icsncash
	1           "No cash value"                 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsearl  icsearl;
label define icsearl 
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icspart  icspart;
label define icspart 
	2           "Whatever was needed"           
	1           "Particular use"                
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values icsrent  icsrent;
label define icsrent 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsfood  icsfood;
label define icsfood 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsclos  icsclos;
label define icsclos 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsclok  icsclok;
label define icsclok 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icscar   icscar; 
label define icscar  
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsouse  icsouse;
label define icsouse 
	1           "Yes"                           
	0           "Not answered"                  
;
label values icsousee icsousee;
label define icsousee
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iwftype  iwftype;
label define iwftype 
	3           "Or a non-profit organization," 
	2           "A private, for profit company" 
	1           "A Government organization,"    
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iwforg   iwforg; 
label define iwforg  
	7           "Or something else?"            
	6           "Religion"                      
	5           "Health"                        
	4           "Recreation"                    
	3           "Public Safety"                 
	2           "Social Service"                
	1           "Education"                     
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iwfind   iwfind; 
label define iwfind  
	5           "or something else?"            
	4           "Service"                       
	3           "Retail trade"                  
	2           "Wholesale trade"               
	1           "Manufacturing"                 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iwfjob   iwfjob; 
label define iwfjob  
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iwfcore  iwfcore;
label define iwfcore 
	3           "Not sure"                      
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iinqcomp iinqcomp;
label define iinqcomp
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iinqcomo iinqcomo;
label define iinqcomo
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iincafdc iincafdc;
label define iincafdc
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincga   iincga; 
label define iincga  
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincssi  iincssi;
label define iincssi 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincfs   iincfs; 
label define iincfs  
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincmcd  iincmcd;
label define iincmcd 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincwic  iincwic;
label define iincwic 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincunem iincunem;
label define iincunem
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincoph  iincoph;
label define iincoph 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincener iincener;
label define iincener
	1           "Yes"                           
	0           "Not answered"                  
;
label values iinceduc iinceduc;
label define iinceduc
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincqcc  iincqcc;
label define iincqcc 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iinctran iinctran;
label define iinctran
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincmeal iincmeal;
label define iincmeal
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincoth  iincoth;
label define iincoth 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iincothh iincothh;
label define iincothh
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ininlimt ininlimt;
label define ininlimt
	1           "Yes"                           
	0           "Not answered"                  
;
label values inindn   inindn; 
label define inindn  
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininimm  ininimm;
label define ininimm 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininelig ininelig;
label define ininelig
	1           "Yes"                           
	0           "Not answered"                  
;
label values inindk   inindk; 
label define inindk  
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininhas  ininhas;
label define ininhas 
	1           "Yes"                           
	0           "Not answered"                  
;
label values inintran inintran;
label define inintran
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininchar ininchar;
label define ininchar
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininwort ininwort;
label define ininwort
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininplan ininplan;
label define ininplan
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininavai ininavai;
label define ininavai
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininoth  ininoth;
label define ininoth 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ininothh ininothh;
label define ininothh
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipbredyn ipbredyn;
label define ipbredyn
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values iredincr iredincr;
label define iredincr
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredwkrq iredwkrq;
label define iredwkrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredcsrq iredcsrq;
label define iredcsrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredinfo iredinfo;
label define iredinfo
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredsign iredsign;
label define iredsign
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredssi  iredssi;
label define iredssi 
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredlimt iredlimt;
label define iredlimt
	1           "Yes"                           
	0           "Not answered"                  
;
label values iredoth  iredoth;
label define iredoth 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ireddk   ireddk; 
label define ireddk  
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ipastpub ipastpub;
label define ipastpub
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values tpastyr  tpastyr;
label define tpastyr 
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values inotlimt inotlimt;
label define inotlimt
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotwkrq inotwkrq;
label define inotwkrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotcsrq inotcsrq;
label define inotcsrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotinfo inotinfo;
label define inotinfo
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotbank inotbank;
label define inotbank
	1           "Yes"                           
	0           "Not answered"                  
;
label values inothigh inothigh;
label define inothigh
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotmax  inotmax;
label define inotmax 
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotsign inotsign;
label define inotsign
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotmarr inotmarr;
label define inotmarr
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotneed inotneed;
label define inotneed
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotold  inotold;
label define inotold 
	1           "Yes"                           
	0           "Not answered"                  
;
label values inototh  inototh;
label define inototh 
	1           "Yes"                           
	0           "Not answered"                  
;
label values inotdk   inotdk; 
label define inotdk  
	1           "Persons completing 'mark all that"
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "End of respondent's entries"   
;
label values ielignum ielignum;
label define ielignum
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values teligyr  teligyr;
label define teligyr 
	2011        "2011-2020 Year"                
	2010        "2010 Year"                     
	2009        "2008-2009 Year"                
	2007        "2007 Year"                     
	2006        "2006 Year"                     
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ialwaych ialwaych;
label define ialwaych
	2           "No"                            
	1           "Yes"                           
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values ikidwkrq ikidwkrq;
label define ikidwkrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidcsrq ikidcsrq;
label define ikidcsrq
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidimmi ikidimmi;
label define ikidimmi
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidinfo ikidinfo;
label define ikidinfo
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidsign ikidsign;
label define ikidsign
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidssi  ikidssi;
label define ikidssi 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidlimt ikidlimt;
label define ikidlimt
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikidoth  ikidoth;
label define ikidoth 
	1           "Yes"                           
	0           "Not answered"                  
;
label values ikiddk   ikiddk; 
label define ikiddk  
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
	-3          "End of respondent's entries"   
;
label values tkdstrty tkdstrty;
label define tkdstrty
	2006        "2006 Year"                     
	2005        "2005 Year"                     
	2004        "2003-2004 Year"                
	2002        "2002 Year"                     
	2001        "1997-2001 Year"                
	0           "Not answered"                  
	-1          "Don't know"                    
	-2          "Refused"                       
;
label values epcwunv  epcwunv;
label define epcwunv 
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values edaycare edaycare;
label define edaycare
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaycare adaycare;
label define adaycare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecaremth ecaremth;
label define ecaremth
	-1          "Not in Universe"               
;
label values acaremth acaremth;
label define acaremth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrscare ehrscare;
label define ehrscare
	-1          "Not in Universe"               
;
label values ahrscare ahrscare;
label define ahrscare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elivapat elivapat;
label define elivapat
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alivapat alivapat;
label define alivapat
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enotable enotable;
label define enotable
	3           "Sometimes yes, sometimes no"   
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values anotable anotable;
label define anotable
	3           "Logical imputation"            
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epastmon epastmon;
label define epastmon
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apastmon apastmon;
label define apastmon
	3           "Logical imputation (derivation)"
	2           "Cold deck"                     
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eouting  eouting;
label define eouting 
	0           "None"                          
	-1          "Not in Universe"               
;
label values aouting  aouting;
label define aouting 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etotread etotread;
label define etotread
	0           "None"                          
	-1          "Not in Universe"               
;
label values atotread atotread;
label define atotread
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparread eparread;
label define eparread
	0           "None"                          
	-1          "Not in Universe"               
;
label values aparread aparread;
label define aparread
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edadread edadread;
label define edadread
	0           "None"                          
	-1          "Not in Universe"               
;
label values adadread adadread;
label define adadread
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etvrules etvrules;
label define etvrules
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atvrules atvrules;
label define atvrules
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etimestv etimestv;
label define etimestv
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values atimestv atimestv;
label define atimestv
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehoustv  ehoustv;
label define ehoustv 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ahoustv  ahoustv;
label define ahoustv 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eeatbkf  eeatbkf;
label define eeatbkf 
	0           "None"                          
	-1          "Not in Universe"               
;
label values aeatbkf  aeatbkf;
label define aeatbkf 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eeatdinn eeatdinn;
label define eeatdinn
	0           "None"                          
	-1          "Not in Universe"               
;
label values aeatdinn aeatdinn;
label define aeatdinn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edadbrkf edadbrkf;
label define edadbrkf
	0           "None"                          
	-1          "Not in Universe"               
;
label values adadbrkf adadbrkf;
label define adadbrkf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaddinn edaddinn;
label define edaddinn
	0           "None"                          
	-1          "Not in Universe"               
;
label values adaddinn adaddinn;
label define adaddinn
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efuntime efuntime;
label define efuntime
	5           "Many times each day"           
	4           "One or two times a day"        
	3           "A few times a week"            
	2           "About once a week (or less)"   
	1           "Never"                         
	-1          "Not in Universe"               
;
label values afuntime afuntime;
label define afuntime
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edadfun  edadfun;
label define edadfun 
	5           "Many times each day"           
	4           "One or two times a day"        
	3           "A few times a week"            
	2           "About once a week (or less)"   
	1           "Never"                         
	-1          "Not in Universe"               
;
label values adadfun  adadfun;
label define adadfun 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epraise  epraise;
label define epraise 
	5           "Many times each day"           
	4           "One or two times a day"        
	3           "A few times a week"            
	2           "About once a week (or less)"   
	1           "Never"                         
	-1          "Not in Universe"               
;
label values apraise  apraise;
label define apraise 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edadprai edadprai;
label define edadprai
	5           "Many times each day"           
	4           "One or two times a day"        
	3           "A few times a week"            
	2           "About once a week (or less)"   
	1           "Never"                         
	-1          "Not in Universe"               
;
label values adadprai adadprai;
label define adadprai
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efarscho efarscho;
label define efarscho
	5           "Take further education or"     
	4           "Graduate from college"         
	3           "Get some college or other training"
	2           "Graduate from high school"     
	1           "Leave school before graduation"
	-1          "Not in Universe"               
;
label values afarscho afarscho;
label define afarscho
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edadfar  edadfar;
label define edadfar 
	5           "Take further education or"     
	4           "Graduate from college"         
	3           "Get some college or other training"
	2           "Graduate from high school"     
	1           "Leave school before graduation"
	-1          "Not in Universe"               
;
label values adadfar  adadfar;
label define adadfar 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ethinksc ethinksc;
label define ethinksc
	5           "Take further education or"     
	4           "Graduate from college"         
	3           "Get some college or other training"
	2           "Graduate from high school"     
	1           "Leave school before graduation"
	-1          "Not in Universe"               
;
label values athinksc athinksc;
label define athinksc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eatkindg eatkindg;
label define eatkindg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aatkindg aatkindg;
label define aatkindg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekindage ekindage;
label define ekindage
	-1          "Not in Universe"               
;
label values akindage akindage;
label define akindage
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values efirgrad efirgrad;
label define efirgrad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values afirgrad afirgrad;
label define afirgrad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values estrtage estrtage;
label define estrtage
	-1          "Not in Universe"               
;
label values astrtage astrtage;
label define astrtage
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekindele ekindele;
label define ekindele
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values akindele akindele;
label define akindele
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehighgra ehighgra;
label define ehighgra
	14          "College, one year or more"     
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None (No Grade completed)"     
	-1          "Not in Universe"               
;
label values ahighgra ahighgra;
label define ahighgra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecurrerl ecurrerl;
label define ecurrerl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values acurrerl acurrerl;
label define acurrerl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egrdeatt egrdeatt;
label define egrdeatt
	14          "College, one year or more"     
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	-1          "Not in Universe"               
;
label values agrdeatt agrdeatt;
label define agrdeatt
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
label values eassschl eassschl;
label define eassschl
	3           "Both -- assigned school is school"
	2           "Chosen"                        
	1           "Assigned"                      
	-1          "Not in Universe"               
;
label values aassschl aassschl;
label define aassschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelisch erelisch;
label define erelisch
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arelisch arelisch;
label define arelisch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values especsch especsch;
label define especsch
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aspecsch aspecsch;
label define aspecsch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esportea esportea;
label define esportea
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values asportea asportea;
label define asportea
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elessons elessons;
label define elessons
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alessons alessons;
label define alessons
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubsch eclubsch;
label define eclubsch
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aclubsch aclubsch;
label define aclubsch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelig   erelig; 
label define erelig  
	5           "Everyday or almost everyday"   
	4           "About once a week"             
	3           "About once a month"            
	2           "Several times a year"          
	1           "Never"                         
	-1          "Not in Universe"               
;
label values arelig   arelig; 
label define arelig  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elikesch elikesch;
label define elikesch
	3           "Often true"                    
	2           "Sometimes true"                
	1           "Not true"                      
	-1          "Not in Universe"               
;
label values alikesch alikesch;
label define alikesch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eintschl eintschl;
label define eintschl
	3           "Often true"                    
	2           "Sometimes true"                
	1           "Not true"                      
	-1          "Not in Universe"               
;
label values aintschl aintschl;
label define aintschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewkshard ewkshard;
label define ewkshard
	3           "Often true"                    
	2           "Sometimes true"                
	1           "Not true"                      
	-1          "Not in Universe"               
;
label values awkshard awkshard;
label define awkshard
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values echgschl echgschl;
label define echgschl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values achgschl achgschl;
label define achgschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etimchan etimchan;
label define etimchan
	-1          "Not in Universe"               
;
label values atimchan atimchan;
label define atimchan
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erepgrad erepgrad;
label define erepgrad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values arepgrad arepgrad;
label define arepgrad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egrdrpt1 egrdrptd;
label define egrdrptd
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None"                          
	-1          "Not in Universe"               
;
label values egrdrpt2 egrdrptk;
label define egrdrptk
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None"                          
	-1          "Not in Universe"               
;
label values egrdrpt3 egrdrptl;
label define egrdrptl
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None"                          
	-1          "Not in Universe"               
;
label values egrdrpt4 egrdrptm;
label define egrdrptm
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None"                          
	-1          "Not in Universe"               
;
label values egrdrpt5 egrdrptn;
label define egrdrptn
	13          "Twelfth grade"                 
	12          "Eleventh grade"                
	11          "Tenth grade"                   
	10          "Ninth grade"                   
	9           "Eighth grade"                  
	8           "Seventh grade"                 
	7           "Sixth grade"                   
	6           "Fifth grade"                   
	5           "Fourth grade"                  
	4           "Third grade"                   
	3           "Second grade"                  
	2           "First grade"                   
	1           "Kindergarten"                  
	0           "None"                          
	-1          "Not in Universe"               
;
label values agrdrpt  agrdrpt;
label define agrdrpt 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eexpschl eexpschl;
label define eexpschl
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aexpschl aexpschl;
label define aexpschl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ttimexp  ttimexp;
label define ttimexp 
	6           "Six or more times"             
	5           "Five times"                    
	4           "Four times"                    
	3           "Three times"                   
	2           "Two Times"                     
	1           "One time"                      
	-1          "Not in Universe"               
;
label values atimexp  atimexp;
label define atimexp 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehardcar ehardcar;
label define ehardcar
	4           "Very often"                    
	3           "Often"                         
	2           "Sometimes"                     
	1           "Never"                         
	-1          "Not in Universe"               
;
label values ahardcar ahardcar;
label define ahardcar
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebother  ebother;
label define ebother 
	4           "Very often"                    
	3           "Often"                         
	2           "Sometimes"                     
	1           "Never"                         
	-1          "Not in Universe"               
;
label values abother  abother;
label define abother 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egivuplf egivuplf;
label define egivuplf
	4           "Very often"                    
	3           "Often"                         
	2           "Sometimes"                     
	1           "Never"                         
	-1          "Not in Universe"               
;
label values agivuplf agivuplf;
label define agivuplf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eangrycl eangrycl;
label define eangrycl
	4           "Very often"                    
	3           "Often"                         
	2           "Sometimes"                     
	1           "Never"                         
	-1          "Not in Universe"               
;
label values aangrycl aangrycl;
label define aangrycl
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehelpech ehelpech;
label define ehelpech
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values ahelpech ahelpech;
label define ahelpech
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewatchot ewatchot;
label define ewatchot
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values awatchot awatchot;
label define awatchot
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ecounton ecounton;
label define ecounton
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values acounton acounton;
label define acounton
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ebadpeop ebadpeop;
label define ebadpeop
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values abadpeop abadpeop;
label define abadpeop
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etrustpe etrustpe;
label define etrustpe
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values atrustpe atrustpe;
label define atrustpe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekeepins ekeepins;
label define ekeepins
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values akeepins akeepins;
label define akeepins
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esafepla esafepla;
label define esafepla
	5           "Have no opinion"               
	4           "Strongly Disagree"             
	3           "Disagree"                      
	2           "Agree"                         
	1           "Strongly agree"                
	-1          "Not in Universe"               
;
label values asafepla asafepla;
label define asafepla
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eccunv   eccunv; 
label define eccunv  
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values ehrwksch ehrwksch;
label define ehrwksch
	0           "None"                          
	-1          "Not in Universe"               
	-5          "Hours varied"                  
	-6          "Not enrolled"                  
;
label values ahrwksch ahrwksch;
label define ahrwksch
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values rrhrswk  rrhrswk;
label define rrhrswk 
	0           "Not working or not in school"  
	-1          "Not in Universe"               
;
label values ehrwkjob ehrwkjob;
label define ehrwkjob
	-1          "Not in Universe"               
	-5          "Hours varied"                  
	-6          "Did not look for job last month"
;
label values ahrwkjob ahrwkjob;
label define ahrwkjob
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eccagea  eccagea;
label define eccagea 
	-1          "Not in Universe"               
;
label values eccageb  eccageb;
label define eccageb 
	-1          "Not in Universe"               
;
label values eccagec  eccagec;
label define eccagec 
	-1          "Not in Universe"               
;
label values eccaged  eccaged;
label define eccaged 
	-1          "Not in Universe"               
;
label values eccagee  eccagee;
label define eccagee 
	-1          "Not in Universe"               
;
label values eckd01a  eckd01a;
label define eckd01a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01b  eckd01b;
label define eckd01b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01c  eckd01c;
label define eckd01c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01d  eckd01d;
label define eckd01d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01e  eckd01e;
label define eckd01e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02a  eckd02a;
label define eckd02a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02b  eckd02b;
label define eckd02b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02c  eckd02c;
label define eckd02c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02d  eckd02d;
label define eckd02d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02e  eckd02e;
label define eckd02e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03a  eckd03a;
label define eckd03a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03b  eckd03b;
label define eckd03b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03c  eckd03c;
label define eckd03c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03d  eckd03d;
label define eckd03d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03e  eckd03e;
label define eckd03e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04a  eckd04a;
label define eckd04a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04b  eckd04b;
label define eckd04b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04c  eckd04c;
label define eckd04c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04d  eckd04d;
label define eckd04d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04e  eckd04e;
label define eckd04e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05a  eckd05a;
label define eckd05a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05b  eckd05b;
label define eckd05b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05c  eckd05c;
label define eckd05c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05d  eckd05d;
label define eckd05d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05e  eckd05e;
label define eckd05e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06a  eckd06a;
label define eckd06a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06b  eckd06b;
label define eckd06b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06c  eckd06c;
label define eckd06c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06d  eckd06d;
label define eckd06d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06e  eckd06e;
label define eckd06e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07a  eckd07a;
label define eckd07a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07b  eckd07b;
label define eckd07b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07c  eckd07c;
label define eckd07c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07d  eckd07d;
label define eckd07d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07e  eckd07e;
label define eckd07e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08a  eckd08a;
label define eckd08a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08b  eckd08b;
label define eckd08b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08c  eckd08c;
label define eckd08c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08d  eckd08d;
label define eckd08d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08e  eckd08e;
label define eckd08e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09a  eckd09a;
label define eckd09a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09b  eckd09b;
label define eckd09b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09c  eckd09c;
label define eckd09c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09d  eckd09d;
label define eckd09d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09e  eckd09e;
label define eckd09e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10a  eckd10a;
label define eckd10a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10b  eckd10b;
label define eckd10b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10c  eckd10c;
label define eckd10c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10d  eckd10d;
label define eckd10d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10e  eckd10e;
label define eckd10e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11a  eckd11a;
label define eckd11a 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11b  eckd11b;
label define eckd11b 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11c  eckd11c;
label define eckd11c 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11d  eckd11d;
label define eckd11d 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11e  eckd11e;
label define eckd11e 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values accarea  accarea;
label define accarea 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accareb  accareb;
label define accareb 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accarec  accarec;
label define accarec 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accared  accared;
label define accared 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accaree  accaree;
label define accaree 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhepara ewhepara;
label define ewhepara
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhepara awhepara;
label define awhepara
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparb ewheparb;
label define ewheparb
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparb awheparb;
label define awheparb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparc ewheparc;
label define ewheparc
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparc awheparc;
label define awheparc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhepard ewhepard;
label define ewhepard
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhepard awhepard;
label define awhepard
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhepare ewhepare;
label define ewhepare
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhepare awhepare;
label define awhepare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1a eparhr1a;
label define eparhr1a
	-1          "Not in Universe"               
;
label values aparhr1a aparhr1a;
label define aparhr1a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1b eparhr1b;
label define eparhr1b
	-1          "Not in Universe"               
;
label values aparhr1b aparhr1b;
label define aparhr1b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1c eparhr1c;
label define eparhr1c
	-1          "Not in Universe"               
;
label values aparhr1c aparhr1c;
label define aparhr1c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1d eparhr1d;
label define eparhr1d
	-1          "Not in Universe"               
;
label values aparhr1d aparhr1d;
label define aparhr1d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1e eparhr1e;
label define eparhr1e
	-1          "Not in Universe"               
;
label values aparhr1e aparhr1e;
label define aparhr1e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2a eparhr2a;
label define eparhr2a
	-1          "Not in Universe"               
;
label values aparhr2a aparhr2a;
label define aparhr2a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2b eparhr2b;
label define eparhr2b
	-1          "Not in Universe"               
;
label values aparhr2b aparhr2b;
label define aparhr2b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2c eparhr2c;
label define eparhr2c
	-1          "Not in Universe"               
;
label values aparhr2c aparhr2c;
label define aparhr2c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2d eparhr2d;
label define eparhr2d
	-1          "Not in Universe"               
;
label values aparhr2d aparhr2d;
label define aparhr2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2e eparhr2e;
label define eparhr2e
	-1          "Not in Universe"               
;
label values aparhr2e aparhr2e;
label define aparhr2e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfa ewhselfa;
label define ewhselfa
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfa awhselfa;
label define awhselfa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfb ewhselfb;
label define ewhselfb
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfb awhselfb;
label define awhselfb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfc ewhselfc;
label define ewhselfc
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfc awhselfc;
label define awhselfc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfd ewhselfd;
label define ewhselfd
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfd awhselfd;
label define awhselfd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfe ewhselfe;
label define ewhselfe
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfe awhselfe;
label define awhselfe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhra eselfhra;
label define eselfhra
	-1          "Not in Universe"               
;
label values aselfhra aselfhra;
label define aselfhra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrb eselfhrb;
label define eselfhrb
	-1          "Not in Universe"               
;
label values aselfhrb aselfhrb;
label define aselfhrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrc eselfhrc;
label define eselfhrc
	-1          "Not in Universe"               
;
label values aselfhrc aselfhrc;
label define aselfhrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrd eselfhrd;
label define eselfhrd
	-1          "Not in Universe"               
;
label values aselfhrd aselfhrd;
label define aselfhrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhre eselfhre;
label define eselfhre
	-1          "Not in Universe"               
;
label values aselfhre aselfhre;
label define aselfhre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15a ewhsb15a;
label define ewhsb15a
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15a awhsb15a;
label define awhsb15a
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15b ewhsb15b;
label define ewhsb15b
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15b awhsb15b;
label define awhsb15b
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15c ewhsb15c;
label define ewhsb15c
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15c awhsb15c;
label define awhsb15c
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15d ewhsb15d;
label define ewhsb15d
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15d awhsb15d;
label define awhsb15d
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15e ewhsb15e;
label define ewhsb15e
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15e awhsb15e;
label define awhsb15e
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhra ewhsbhra;
label define ewhsbhra
	-1          "Not in Universe"               
;
label values awhsbhra awhsbhra;
label define awhsbhra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrb ewhsbhrb;
label define ewhsbhrb
	-1          "Not in Universe"               
;
label values awhsbhrb awhsbhrb;
label define awhsbhrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrc ewhsbhrc;
label define ewhsbhrc
	-1          "Not in Universe"               
;
label values awhsbhrc awhsbhrc;
label define awhsbhrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrd ewhsbhrd;
label define ewhsbhrd
	-1          "Not in Universe"               
;
label values awhsbhrd awhsbhrd;
label define awhsbhrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhre ewhsbhre;
label define ewhsbhre
	-1          "Not in Universe"               
;
label values awhsbhre awhsbhre;
label define awhsbhre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15a ehrsb15a;
label define ehrsb15a
	-1          "Not in Universe"               
;
label values ahrsb15a ahrsb15a;
label define ahrsb15a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15b ehrsb15b;
label define ehrsb15b
	-1          "Not in Universe"               
;
label values ahrsb15b ahrsb15b;
label define ahrsb15b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15c ehrsb15c;
label define ehrsb15c
	-1          "Not in Universe"               
;
label values ahrsb15c ahrsb15c;
label define ahrsb15c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15d ehrsb15d;
label define ehrsb15d
	-1          "Not in Universe"               
;
label values ahrsb15d ahrsb15d;
label define ahrsb15d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15e ehrsb15e;
label define ehrsb15e
	-1          "Not in Universe"               
;
label values ahrsb15e ahrsb15e;
label define ahrsb15e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14a ewhsb14a;
label define ewhsb14a
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14a awhsb14a;
label define awhsb14a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14b ewhsb14b;
label define ewhsb14b
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14b awhsb14b;
label define awhsb14b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14c ewhsb14c;
label define ewhsb14c
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14c awhsb14c;
label define awhsb14c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14d ewhsb14d;
label define ewhsb14d
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14d awhsb14d;
label define awhsb14d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14e ewhsb14e;
label define ewhsb14e
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14e awhsb14e;
label define awhsb14e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hra esb14hra;
label define esb14hra
	-1          "Not in Universe"               
;
label values asb14hra asb14hra;
label define asb14hra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrb esb14hrb;
label define esb14hrb
	-1          "Not in Universe"               
;
label values asb14hrb asb14hrb;
label define asb14hrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrc esb14hrc;
label define esb14hrc
	-1          "Not in Universe"               
;
label values asb14hrc asb14hrc;
label define asb14hrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrd esb14hrd;
label define esb14hrd
	-1          "Not in Universe"               
;
label values asb14hrd asb14hrd;
label define asb14hrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hre esb14hre;
label define esb14hre
	-1          "Not in Universe"               
;
label values asb14hre asb14hre;
label define asb14hre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14a ehrsb14a;
label define ehrsb14a
	-1          "Not in Universe"               
;
label values ahrsb14a ahrsb14a;
label define ahrsb14a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14b ehrsb14b;
label define ehrsb14b
	-1          "Not in Universe"               
;
label values ahrsb14b ahrsb14b;
label define ahrsb14b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14c ehrsb14c;
label define ehrsb14c
	-1          "Not in Universe"               
;
label values ahrsb14c ahrsb14c;
label define ahrsb14c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14d ehrsb14d;
label define ehrsb14d
	-1          "Not in Universe"               
;
label values ahrsb14d ahrsb14d;
label define ahrsb14d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14e ehrsb14e;
label define ehrsb14e
	-1          "Not in Universe"               
;
label values ahrsb14e ahrsb14e;
label define ahrsb14e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgrana ewhgrana;
label define ewhgrana
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgrana awhgrana;
label define awhgrana
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgranb ewhgranb;
label define ewhgranb
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgranb awhgranb;
label define awhgranb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgranc ewhgranc;
label define ewhgranc
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgranc awhgranc;
label define awhgranc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgrand ewhgrand;
label define ewhgrand
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgrand awhgrand;
label define awhgrand
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgrane ewhgrane;
label define ewhgrane
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgrane awhgrane;
label define awhgrane
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhra egranhra;
label define egranhra
	-1          "Not in Universe"               
;
label values agranhra agranhra;
label define agranhra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrb egranhrb;
label define egranhrb
	-1          "Not in Universe"               
;
label values agranhrb agranhrb;
label define agranhrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrc egranhrc;
label define egranhrc
	-1          "Not in Universe"               
;
label values agranhrc agranhrc;
label define agranhrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrd egranhrd;
label define egranhrd
	-1          "Not in Universe"               
;
label values agranhrd agranhrd;
label define agranhrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhre egranhre;
label define egranhre
	-1          "Not in Universe"               
;
label values agranhre agranhre;
label define agranhre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgrana ehrgrana;
label define ehrgrana
	-1          "Not in Universe"               
;
label values ahrgrana ahrgrana;
label define ahrgrana
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgranb ehrgranb;
label define ehrgranb
	-1          "Not in Universe"               
;
label values ahrgranb ahrgranb;
label define ahrgranb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgranc ehrgranc;
label define ehrgranc
	-1          "Not in Universe"               
;
label values ahrgranc ahrgranc;
label define ahrgranc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgrand ehrgrand;
label define ehrgrand
	-1          "Not in Universe"               
;
label values ahrgrand ahrgrand;
label define ahrgrand
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgrane ehrgrane;
label define ehrgrane
	-1          "Not in Universe"               
;
label values ahrgrane ahrgrane;
label define ahrgrane
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygraa epaygraa;
label define epaygraa
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygraa apaygraa;
label define apaygraa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrab epaygrab;
label define epaygrab
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrab apaygrab;
label define apaygrab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrac epaygrac;
label define epaygrac
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrac apaygrac;
label define apaygrac
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrad epaygrad;
label define epaygrad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrad apaygrad;
label define apaygrad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrae epaygrae;
label define epaygrae
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrae apaygrae;
label define apaygrae
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgraa tamtgraa;
label define tamtgraa
	0           "None or not in universe"       
;
label values aamtgraa aamtgraa;
label define aamtgraa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgrab tamtgrab;
label define tamtgrab
	0           "None or not in universe"       
;
label values aamtgrab aamtgrab;
label define aamtgrab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgrac tamtgrac;
label define tamtgrac
	0           "Suppressed"                    
;
label values aamtgrac aamtgrac;
label define aamtgrac
	0           "Suppressed"                    
;
label values tamtgrad tamtgrad;
label define tamtgrad
	0           "Suppressed"                    
;
label values aamtgrad aamtgrad;
label define aamtgrad
	0           "Suppressed"                    
;
label values tamtgrae tamtgrae;
label define tamtgrae
	0           "Suppressed"                    
;
label values aamtgrae aamtgrae;
label define aamtgrae
	0           "Suppressed"                    
;
label values ewhrelaa ewhrelaa;
label define ewhrelaa
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelaa awhrelaa;
label define awhrelaa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelab ewhrelab;
label define ewhrelab
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelab awhrelab;
label define awhrelab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelac ewhrelac;
label define ewhrelac
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelac awhrelac;
label define awhrelac
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelad ewhrelad;
label define ewhrelad
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelad awhrelad;
label define awhrelad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelae ewhrelae;
label define ewhrelae
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelae awhrelae;
label define awhrelae
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1a erelhr1a;
label define erelhr1a
	-1          "Not in Universe"               
;
label values arelhr1a arelhr1a;
label define arelhr1a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1b erelhr1b;
label define erelhr1b
	-1          "Not in Universe"               
;
label values arelhr1b arelhr1b;
label define arelhr1b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1c erelhr1c;
label define erelhr1c
	-1          "Not in Universe"               
;
label values arelhr1c arelhr1c;
label define arelhr1c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1d erelhr1d;
label define erelhr1d
	-1          "Not in Universe"               
;
label values arelhr1d arelhr1d;
label define arelhr1d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1e erelhr1e;
label define erelhr1e
	-1          "Not in Universe"               
;
label values arelhr1e arelhr1e;
label define arelhr1e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2a erelhr2a;
label define erelhr2a
	-1          "Not in Universe"               
;
label values arelhr2a arelhr2a;
label define arelhr2a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2b erelhr2b;
label define erelhr2b
	-1          "Not in Universe"               
;
label values arelhr2b arelhr2b;
label define arelhr2b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2c erelhr2c;
label define erelhr2c
	-1          "Not in Universe"               
;
label values arelhr2c arelhr2c;
label define arelhr2c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2d erelhr2d;
label define erelhr2d
	-1          "Not in Universe"               
;
label values arelhr2d arelhr2d;
label define arelhr2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2e erelhr2e;
label define erelhr2e
	-1          "Not in Universe"               
;
label values arelhr2e arelhr2e;
label define arelhr2e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrela epayrela;
label define epayrela
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrela apayrela;
label define apayrela
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelb epayrelb;
label define epayrelb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelb apayrelb;
label define apayrelb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelc epayrelc;
label define epayrelc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelc apayrelc;
label define apayrelc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayreld epayreld;
label define epayreld
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayreld apayreld;
label define apayreld
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrele epayrele;
label define epayrele
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrele apayrele;
label define apayrele
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtrela tamtrela;
label define tamtrela
	0           "None or not in universe"       
;
label values aamtrela aamtrela;
label define aamtrela
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtrelb tamtrelb;
label define tamtrelb
	0           "Suppressed"                    
;
label values aamtrelb aamtrelb;
label define aamtrelb
	0           "Suppressed"                    
;
label values tamtrelc tamtrelc;
label define tamtrelc
	0           "Suppressed"                    
;
label values aamtrelc aamtrelc;
label define aamtrelc
	0           "Suppressed"                    
;
label values tamtreld tamtreld;
label define tamtreld
	0           "Suppressed"                    
;
label values aamtreld aamtreld;
label define aamtreld
	0           "Suppressed"                    
;
label values tamtrele tamtrele;
label define tamtrele
	0           "Suppressed"                    
;
label values aamtrele aamtrele;
label define aamtrele
	0           "Suppressed"                    
;
label values ehrfam1a ehrfam1a;
label define ehrfam1a
	-1          "Not in Universe"               
;
label values ahrfam1a ahrfam1a;
label define ahrfam1a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1b ehrfam1b;
label define ehrfam1b
	-1          "Not in Universe"               
;
label values ahrfam1b ahrfam1b;
label define ahrfam1b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1c ehrfam1c;
label define ehrfam1c
	-1          "Not in Universe"               
;
label values ahrfam1c ahrfam1c;
label define ahrfam1c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1d ehrfam1d;
label define ehrfam1d
	-1          "Not in Universe"               
;
label values ahrfam1d ahrfam1d;
label define ahrfam1d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1e ehrfam1e;
label define ehrfam1e
	-1          "Not in Universe"               
;
label values ahrfam1e ahrfam1e;
label define ahrfam1e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2a ehrfam2a;
label define ehrfam2a
	-1          "Not in Universe"               
;
label values ahrfam2a ahrfam2a;
label define ahrfam2a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2b ehrfam2b;
label define ehrfam2b
	-1          "Not in Universe"               
;
label values ahrfam2b ahrfam2b;
label define ahrfam2b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2c ehrfam2c;
label define ehrfam2c
	-1          "Not in Universe"               
;
label values ahrfam2c ahrfam2c;
label define ahrfam2c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2d ehrfam2d;
label define ehrfam2d
	-1          "Not in Universe"               
;
label values ahrfam2d ahrfam2d;
label define ahrfam2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2e ehrfam2e;
label define ehrfam2e
	-1          "Not in Universe"               
;
label values ahrfam2e ahrfam2e;
label define ahrfam2e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfama epayfama;
label define epayfama
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfama apayfama;
label define apayfama
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamb epayfamb;
label define epayfamb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamb apayfamb;
label define apayfamb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamc epayfamc;
label define epayfamc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamc apayfamc;
label define apayfamc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamd epayfamd;
label define epayfamd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamd apayfamd;
label define apayfamd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfame epayfame;
label define epayfame
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfame apayfame;
label define apayfame
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtfama tamtfama;
label define tamtfama
	0           "None or not in universe"       
;
label values aamtfama aamtfama;
label define aamtfama
	3           "Logical  imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtfamb tamtfamb;
label define tamtfamb
	0           "None or not in universe"       
;
label values aamtfamb aamtfamb;
label define aamtfamb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtfamc tamtfamc;
label define tamtfamc
	0           "Suppressed"                    
;
label values aamtfamc aamtfamc;
label define aamtfamc
	0           "Suppressed"                    
;
label values tamtfamd tamtfamd;
label define tamtfamd
	0           "Suppressed"                    
;
label values aamtfamd aamtfamd;
label define aamtfamd
	0           "Suppressed"                    
;
label values tamtfame tamtfame;
label define tamtfame
	0           "Suppressed"                    
;
label values aamtfame aamtfame;
label define aamtfame
	0           "Suppressed"                    
;
label values ewhdayca ewhdayca;
label define ewhdayca
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdayca awhdayca;
label define awhdayca
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaycb ewhdaycb;
label define ewhdaycb
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycb awhdaycb;
label define awhdaycb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaycc ewhdaycc;
label define ewhdaycc
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycc awhdaycc;
label define awhdaycc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaycd ewhdaycd;
label define ewhdaycd
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycd awhdaycd;
label define awhdaycd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdayce ewhdayce;
label define ewhdayce
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdayce awhdayce;
label define awhdayce
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsa edayhrsa;
label define edayhrsa
	-1          "Not in Universe"               
;
label values adayhrsa adayhrsa;
label define adayhrsa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsb edayhrsb;
label define edayhrsb
	-1          "Not in Universe"               
;
label values adayhrsb adayhrsb;
label define adayhrsb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsc edayhrsc;
label define edayhrsc
	-1          "Not in Universe"               
;
label values adayhrsc adayhrsc;
label define adayhrsc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsd edayhrsd;
label define edayhrsd
	-1          "Not in Universe"               
;
label values adayhrsd adayhrsd;
label define adayhrsd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrse edayhrse;
label define edayhrse
	-1          "Not in Universe"               
;
label values adayhrse adayhrse;
label define adayhrse
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdayca ehrdayca;
label define ehrdayca
	-1          "Not in Universe"               
;
label values ahrdayca ahrdayca;
label define ahrdayca
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycb ehrdaycb;
label define ehrdaycb
	-1          "Not in Universe"               
;
label values ahrdaycb ahrdaycb;
label define ahrdaycb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycc ehrdaycc;
label define ehrdaycc
	-1          "Not in Universe"               
;
label values ahrdaycc ahrdaycc;
label define ahrdaycc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycd ehrdaycd;
label define ehrdaycd
	-1          "Not in Universe"               
;
label values ahrdaycd ahrdaycd;
label define ahrdaycd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdayce ehrdayce;
label define ehrdayce
	-1          "Not in Universe"               
;
label values ahrdayce ahrdayce;
label define ahrdayce
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaydaya epaydaya;
label define epaydaya
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydaya apaydaya;
label define apaydaya
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayb epaydayb;
label define epaydayb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayb apaydayb;
label define apaydayb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayc epaydayc;
label define epaydayc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayc apaydayc;
label define apaydayc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayd epaydayd;
label define epaydayd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayd apaydayd;
label define apaydayd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydaye epaydaye;
label define epaydaye
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydaye apaydaye;
label define apaydaye
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values tamtdaya tamtdaya;
label define tamtdaya
	0           "None or not in universe"       
;
label values aamtdaya aamtdaya;
label define aamtdaya
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtdayb tamtdayb;
label define tamtdayb
	0           "None or not in universe"       
;
label values aamtdayb aamtdayb;
label define aamtdayb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtdayc tamtdayc;
label define tamtdayc
	0           "Suppressed"                    
;
label values aamtdayc aamtdayc;
label define aamtdayc
	0           "Suppressed"                    
;
label values tamtdayd tamtdayd;
label define tamtdayd
	0           "Suppressed"                    
;
label values aamtdayd aamtdayd;
label define aamtdayd
	0           "Suppressed"                    
;
label values tamtdaye tamtdaye;
label define tamtdaye
	0           "Suppressed"                    
;
label values aamtdaye aamtdaye;
label define aamtdaye
	0           "Suppressed"                    
;
label values ewhnursa ewhnursa;
label define ewhnursa
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhnursa awhnursa;
label define awhnursa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhnursb ewhnursb;
label define ewhnursb
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhnursb awhnursb;
label define awhnursb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhnursc ewhnursc;
label define ewhnursc
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhnursc awhnursc;
label define awhnursc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhnursd ewhnursd;
label define ewhnursd
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhnursd awhnursd;
label define awhnursd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhnurse ewhnurse;
label define ewhnurse
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhnurse awhnurse;
label define awhnurse
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enurhrsa enurhrsa;
label define enurhrsa
	-1          "Not in Universe"               
;
label values anurhrsa anurhrsa;
label define anurhrsa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enurhrsb enurhrsb;
label define enurhrsb
	-1          "Not in Universe"               
;
label values anurhrsb anurhrsb;
label define anurhrsb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enurhrsc enurhrsc;
label define enurhrsc
	-1          "Not in Universe"               
;
label values anurhrsc anurhrsc;
label define anurhrsc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enurhrsd enurhrsd;
label define enurhrsd
	-1          "Not in Universe"               
;
label values anurhrsd anurhrsd;
label define anurhrsd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values enurhrse enurhrse;
label define enurhrse
	-1          "Not in Universe"               
;
label values anurhrse anurhrse;
label define anurhrse
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrnursa ehrnursa;
label define ehrnursa
	-1          "Not in Universe"               
;
label values ahrnursa ahrnursa;
label define ahrnursa
	3           "Logic imputation (derivation)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrnursb ehrnursb;
label define ehrnursb
	-1          "Not in Universe"               
;
label values ahrnursb ahrnursb;
label define ahrnursb
	3           "Logic imputation (derivation)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrnursc ehrnursc;
label define ehrnursc
	-1          "Not in Universe"               
;
label values ahrnursc ahrnursc;
label define ahrnursc
	3           "Logic imputation (derivation)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrnursd ehrnursd;
label define ehrnursd
	-1          "Not in Universe"               
;
label values ahrnursd ahrnursd;
label define ahrnursd
	3           "Logic imputation (derivation)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrnurse ehrnurse;
label define ehrnurse
	-1          "Not in Universe"               
;
label values ahrnurse ahrnurse;
label define ahrnurse
	3           "Logic imputation (derivation)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaynura epaynura;
label define epaynura
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaynura apaynura;
label define apaynura
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaynurb epaynurb;
label define epaynurb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaynurb apaynurb;
label define apaynurb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaynurc epaynurc;
label define epaynurc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaynurc apaynurc;
label define apaynurc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaynurd epaynurd;
label define epaynurd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaynurd apaynurd;
label define apaynurd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaynure epaynure;
label define epaynure
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaynure apaynure;
label define apaynure
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtnura tamtnura;
label define tamtnura
	0           "None or not in universe"       
;
label values aamtnura aamtnura;
label define aamtnura
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtnurb tamtnurb;
label define tamtnurb
	0           "None or not in universe"       
;
label values aamtnurb aamtnurb;
label define aamtnurb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtnurc tamtnurc;
label define tamtnurc
	0           "Suppressed"                    
;
label values aamtnurc aamtnurc;
label define aamtnurc
	0           "Suppressed"                    
;
label values tamtnurd tamtnurd;
label define tamtnurd
	0           "Suppressed"                    
;
label values aamtnurd aamtnurd;
label define aamtnurd
	0           "Suppressed"                    
;
label values tamtnure tamtnure;
label define tamtnure
	0           "Suppressed"                    
;
label values aamtnure aamtnure;
label define aamtnure
	0           "Suppressed"                    
;
label values eheadhra eheadhra;
label define eheadhra
	-1          "Not in Universe"               
;
label values aheadhra aheadhra;
label define aheadhra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eheadhrb eheadhrb;
label define eheadhrb
	-1          "Not in Universe"               
;
label values aheadhrb aheadhrb;
label define aheadhrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eheadhrc eheadhrc;
label define eheadhrc
	-1          "Not in Universe"               
;
label values aheadhrc aheadhrc;
label define aheadhrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eheadhrd eheadhrd;
label define eheadhrd
	-1          "Not in Universe"               
;
label values aheadhrd aheadhrd;
label define aheadhrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eheadhre eheadhre;
label define eheadhre
	-1          "Not in Universe"               
;
label values aheadhre aheadhre;
label define aheadhre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrstara ehrstara;
label define ehrstara
	-1          "Not in Universe"               
;
label values ahrstara ahrstara;
label define ahrstara
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrstarb ehrstarb;
label define ehrstarb
	-1          "Not in Universe"               
;
label values ahrstarb ahrstarb;
label define ahrstarb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrstarc ehrstarc;
label define ehrstarc
	-1          "Not in Universe"               
;
label values ahrstarc ahrstarc;
label define ahrstarc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrstard ehrstard;
label define ehrstard
	-1          "Not in Universe"               
;
label values ahrstard ahrstard;
label define ahrstard
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrstare ehrstare;
label define ehrstare
	-1          "Not in Universe"               
;
label values ahrstare ahrstare;
label define ahrstare
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaystaa epaystaa;
label define epaystaa
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaystaa apaystaa;
label define apaystaa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaystab epaystab;
label define epaystab
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaystab apaystab;
label define apaystab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaystac epaystac;
label define epaystac
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaystac apaystac;
label define apaystac
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaystad epaystad;
label define epaystad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaystad apaystad;
label define apaystad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaystae epaystae;
label define epaystae
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaystae apaystae;
label define apaystae
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtstaa tamtstaa;
label define tamtstaa
	0           "Suppressed"                    
;
label values aamtstaa aamtstaa;
label define aamtstaa
	0           "Suppressed"                    
;
label values tamtstab tamtstab;
label define tamtstab
	0           "Suppressed"                    
;
label values aamtstab aamtstab;
label define aamtstab
	0           "Suppressed"                    
;
label values tamtstac tamtstac;
label define tamtstac
	0           "Suppressed"                    
;
label values aamtstac aamtstac;
label define aamtstac
	0           "Suppressed"                    
;
label values tamtstad tamtstad;
label define tamtstad
	0           "Suppressed"                    
;
label values aamtstad aamtstad;
label define aamtstad
	0           "Suppressed"                    
;
label values tamtstae tamtstae;
label define tamtstae
	0           "Suppressed"                    
;
label values aamtstae aamtstae;
label define aamtstae
	0           "Suppressed"                    
;
label values ewhothea ewhothea;
label define ewhothea
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothea awhothea;
label define awhothea
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhotheb ewhotheb;
label define ewhotheb
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhotheb awhotheb;
label define awhotheb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhothec ewhothec;
label define ewhothec
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothec awhothec;
label define awhothec
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhothed ewhothed;
label define ewhothed
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothed awhothed;
label define awhothed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhothee ewhothee;
label define ewhothee
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothee awhothee;
label define awhothee
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehra eothehra;
label define eothehra
	-1          "Not in Universe"               
;
label values aothehra aothehra;
label define aothehra
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrb eothehrb;
label define eothehrb
	-1          "Not in Universe"               
;
label values aothehrb aothehrb;
label define aothehrb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrc eothehrc;
label define eothehrc
	-1          "Not in Universe"               
;
label values aothehrc aothehrc;
label define aothehrc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrd eothehrd;
label define eothehrd
	-1          "Not in Universe"               
;
label values aothehrd aothehrd;
label define aothehrd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehre eothehre;
label define eothehre
	-1          "Not in Universe"               
;
label values aothehre aothehre;
label define aothehre
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothea ehrothea;
label define ehrothea
	-1          "Not in Universe"               
;
label values ahrothea ahrothea;
label define ahrothea
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrotheb ehrotheb;
label define ehrotheb
	-1          "Not in Universe"               
;
label values ahrotheb ahrotheb;
label define ahrotheb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothec ehrothec;
label define ehrothec
	-1          "Not in Universe"               
;
label values ahrothec ahrothec;
label define ahrothec
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothed ehrothed;
label define ehrothed
	-1          "Not in Universe"               
;
label values ahrothed ahrothed;
label define ahrothed
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothee ehrothee;
label define ehrothee
	-1          "Not in Universe"               
;
label values ahrothee ahrothee;
label define ahrothee
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayotha epayotha;
label define epayotha
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayotha apayotha;
label define apayotha
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothb epayothb;
label define epayothb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothb apayothb;
label define apayothb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothc epayothc;
label define epayothc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothc apayothc;
label define apayothc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothd epayothd;
label define epayothd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothd apayothd;
label define apayothd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothe epayothe;
label define epayothe
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothe apayothe;
label define apayothe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtotha tamtotha;
label define tamtotha
	0           "Not In Universe"               
;
label values aamtotha aamtotha;
label define aamtotha
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtothb tamtothb;
label define tamtothb
	0           "Not In Universe"               
;
label values aamtothb aamtothb;
label define aamtothb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtothc tamtothc;
label define tamtothc
	0           "Suppressed"                    
;
label values aamtothc aamtothc;
label define aamtothc
	0           "Suppressed"                    
;
label values tamtothd tamtothd;
label define tamtothd
	0           "Suppressed"                    
;
label values aamtothd aamtothd;
label define aamtothd
	0           "Suppressed"                    
;
label values tamtothe tamtothe;
label define tamtothe
	0           "Suppressed"                    
;
label values aamtothe aamtothe;
label define aamtothe
	0           "Suppressed"                    
;
label values eschoowa eschoowa;
label define eschoowa
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowa aschoowa;
label define aschoowa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowb eschoowb;
label define eschoowb
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowb aschoowb;
label define aschoowb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowc eschoowc;
label define eschoowc
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowc aschoowc;
label define aschoowc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowd eschoowd;
label define eschoowd
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowd aschoowd;
label define aschoowd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowe eschoowe;
label define eschoowe
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowe aschoowe;
label define aschoowe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwa ehrschwa;
label define ehrschwa
	-1          "Not in Universe"               
;
label values ahrschwa ahrschwa;
label define ahrschwa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwb ehrschwb;
label define ehrschwb
	-1          "Not in Universe"               
;
label values ahrschwb ahrschwb;
label define ahrschwb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwc ehrschwc;
label define ehrschwc
	-1          "Not in Universe"               
;
label values ahrschwc ahrschwc;
label define ahrschwc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwd ehrschwd;
label define ehrschwd
	-1          "Not in Universe"               
;
label values ahrschwd ahrschwd;
label define ahrschwd
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwe ehrschwe;
label define ehrschwe
	-1          "Not in Universe"               
;
label values ahrschwe ahrschwe;
label define ahrschwe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoa ehrschoa;
label define ehrschoa
	-1          "Not in Universe"               
;
label values ahrschoa ahrschoa;
label define ahrschoa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschob ehrschob;
label define ehrschob
	-1          "Not in Universe"               
;
label values ahrschob ahrschob;
label define ahrschob
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoc ehrschoc;
label define ehrschoc
	-1          "Not in Universe"               
;
label values ahrschoc ahrschoc;
label define ahrschoc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschod ehrschod;
label define ehrschod
	-1          "Not in Universe"               
;
label values ahrschod ahrschod;
label define ahrschod
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoe ehrschoe;
label define ehrschoe
	-1          "Not in Universe"               
;
label values ahrschoe ahrschoe;
label define ahrschoe
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcaa eselfcaa;
label define eselfcaa
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcaa aselfcaa;
label define aselfcaa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcab eselfcab;
label define eselfcab
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcab aselfcab;
label define aselfcab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcac eselfcac;
label define eselfcac
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcac aselfcac;
label define aselfcac
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcad eselfcad;
label define eselfcad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcad aselfcad;
label define aselfcad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcae eselfcae;
label define eselfcae
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcae aselfcae;
label define aselfcae
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1a ekidhr1a;
label define ekidhr1a
	-1          "Not in Universe"               
;
label values akidhr1a akidhr1a;
label define akidhr1a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1b ekidhr1b;
label define ekidhr1b
	-1          "Not in Universe"               
;
label values akidhr1b akidhr1b;
label define akidhr1b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1c ekidhr1c;
label define ekidhr1c
	-1          "Not in Universe"               
;
label values akidhr1c akidhr1c;
label define akidhr1c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1d ekidhr1d;
label define ekidhr1d
	-1          "Not in Universe"               
;
label values akidhr1d akidhr1d;
label define akidhr1d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1e ekidhr1e;
label define ekidhr1e
	-1          "Not in Universe"               
;
label values akidhr1e akidhr1e;
label define akidhr1e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2a ekidhr2a;
label define ekidhr2a
	-1          "Not in Universe"               
;
label values akidhr2a akidhr2a;
label define akidhr2a
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2b ekidhr2b;
label define ekidhr2b
	-1          "Not in Universe"               
;
label values akidhr2b akidhr2b;
label define akidhr2b
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2c ekidhr2c;
label define ekidhr2c
	-1          "Not in Universe"               
;
label values akidhr2c akidhr2c;
label define akidhr2c
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2d ekidhr2d;
label define ekidhr2d
	-1          "Not in Universe"               
;
label values akidhr2d akidhr2d;
label define akidhr2d
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2e ekidhr2e;
label define ekidhr2e
	-1          "Not in Universe"               
;
label values akidhr2e akidhr2e;
label define akidhr2e
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychaa edaychaa;
label define edaychaa
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychaa adaychaa;
label define adaychaa
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychab edaychab;
label define edaychab
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychab adaychab;
label define adaychab
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychac edaychac;
label define edaychac
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychac adaychac;
label define adaychac
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychad edaychad;
label define edaychad
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychad adaychad;
label define adaychad
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychae edaychae;
label define edaychae
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychae adaychae;
label define adaychae
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhela epayhela;
label define epayhela
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhela apayhela;
label define apayhela
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelb epayhelb;
label define epayhelb
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelb apayhelb;
label define apayhelb
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelc epayhelc;
label define epayhelc
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelc apayhelc;
label define apayhelc
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayheld epayheld;
label define epayheld
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayheld apayheld;
label define apayheld
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhele epayhele;
label define epayhele
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhele apayhele;
label define apayhele
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1a ewhopa1a;
label define ewhopa1a
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2a ewhopa2a;
label define ewhopa2a
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3a ewhopa3a;
label define ewhopa3a
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4a ewhopa4a;
label define ewhopa4a
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopaa  awhopaa;
label define awhopaa 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1b ewhopa1b;
label define ewhopa1b
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2b ewhopa2b;
label define ewhopa2b
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3b ewhopa3b;
label define ewhopa3b
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4b ewhopa4b;
label define ewhopa4b
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopab  awhopab;
label define awhopab 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1c ewhopa1c;
label define ewhopa1c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2c ewhopa2c;
label define ewhopa2c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3c ewhopa3c;
label define ewhopa3c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4c ewhopa4c;
label define ewhopa4c
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopac  awhopac;
label define awhopac 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1d ewhopa1d;
label define ewhopa1d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2d ewhopa2d;
label define ewhopa2d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3d ewhopa3d;
label define ewhopa3d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4d ewhopa4d;
label define ewhopa4d
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopad  awhopad;
label define awhopad 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1e ewhopa1e;
label define ewhopa1e
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2e ewhopa2e;
label define ewhopa2e
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3e ewhopa3e;
label define ewhopa3e
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4e ewhopa4e;
label define ewhopa4e
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopae  awhopae;
label define awhopae 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esatisa  esatisa;
label define esatisa 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisb  esatisb;
label define esatisb 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisc  esatisc;
label define esatisc 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisd  esatisd;
label define esatisd 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatise  esatise;
label define esatise 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values elista   elista; 
label define elista  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alista   alista; 
label define alista  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elistb   elistb; 
label define elistb  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistb   alistb; 
label define alistb  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elistc   elistc; 
label define elistc  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistc   alistc; 
label define alistc  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elistd   elistd; 
label define elistd  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistd   alistd; 
label define alistd  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eliste   eliste; 
label define eliste  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aliste   aliste; 
label define aliste  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eccunv2  eccunv2l;
label define eccunv2l
	1           "In universe"                   
	-1          "Not in Universe"               
;
label values eccagef  eccagef;
label define eccagef 
	-1          "Not in Universe"               
;
label values eccageg  eccageg;
label define eccageg 
	-1          "Not in Universe"               
;
label values eccageh  eccageh;
label define eccageh 
	-1          "Not in Universe"               
;
label values eccagei  eccagei;
label define eccagei 
	-1          "Not in Universe"               
;
label values eccagej  eccagej;
label define eccagej 
	-1          "Not in Universe"               
;
label values eckd01f  eckd01f;
label define eckd01f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01g  eckd01g;
label define eckd01g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01h  eckd01h;
label define eckd01h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01i  eckd01i;
label define eckd01i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd01j  eckd01j;
label define eckd01j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02f  eckd02f;
label define eckd02f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02g  eckd02g;
label define eckd02g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02h  eckd02h;
label define eckd02h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02i  eckd02i;
label define eckd02i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd02j  eckd02j;
label define eckd02j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03f  eckd03f;
label define eckd03f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03g  eckd03g;
label define eckd03g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03h  eckd03h;
label define eckd03h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03i  eckd03i;
label define eckd03i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd03j  eckd03j;
label define eckd03j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04f  eckd04f;
label define eckd04f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04g  eckd04g;
label define eckd04g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04h  eckd04h;
label define eckd04h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04i  eckd04i;
label define eckd04i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd04j  eckd04j;
label define eckd04j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05f  eckd05f;
label define eckd05f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05g  eckd05g;
label define eckd05g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05h  eckd05h;
label define eckd05h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05i  eckd05i;
label define eckd05i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd05j  eckd05j;
label define eckd05j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06f  eckd06f;
label define eckd06f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06g  eckd06g;
label define eckd06g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06h  eckd06h;
label define eckd06h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06i  eckd06i;
label define eckd06i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd06j  eckd06j;
label define eckd06j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07f  eckd07f;
label define eckd07f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07g  eckd07g;
label define eckd07g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07h  eckd07h;
label define eckd07h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07i  eckd07i;
label define eckd07i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd07j  eckd07j;
label define eckd07j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08f  eckd08f;
label define eckd08f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08g  eckd08g;
label define eckd08g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08h  eckd08h;
label define eckd08h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08i  eckd08i;
label define eckd08i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd08j  eckd08j;
label define eckd08j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09f  eckd09f;
label define eckd09f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09g  eckd09g;
label define eckd09g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09h  eckd09h;
label define eckd09h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09i  eckd09i;
label define eckd09i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd09j  eckd09j;
label define eckd09j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10f  eckd10f;
label define eckd10f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10g  eckd10g;
label define eckd10g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10h  eckd10h;
label define eckd10h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10i  eckd10i;
label define eckd10i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd10j  eckd10j;
label define eckd10j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11f  eckd11f;
label define eckd11f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11g  eckd11g;
label define eckd11g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11h  eckd11h;
label define eckd11h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11i  eckd11i;
label define eckd11i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd11j  eckd11j;
label define eckd11j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd12f  eckd12f;
label define eckd12f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd12g  eckd12g;
label define eckd12g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd12h  eckd12h;
label define eckd12h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd12i  eckd12i;
label define eckd12i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd12j  eckd12j;
label define eckd12j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd13f  eckd13f;
label define eckd13f 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd13g  eckd13g;
label define eckd13g 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd13h  eckd13h;
label define eckd13h 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd13i  eckd13i;
label define eckd13i 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values eckd13j  eckd13j;
label define eckd13j 
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values accaref  accaref;
label define accaref 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accareg  accareg;
label define accareg 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accareh  accareh;
label define accareh 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accarei  accarei;
label define accarei 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values accarej  accarej;
label define accarej 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparf ewheparf;
label define ewheparf
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparf awheparf;
label define awheparf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparg ewheparg;
label define ewheparg
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparg awheparg;
label define awheparg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparh ewheparh;
label define ewheparh
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparh awheparh;
label define awheparh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhepari ewhepari;
label define ewhepari
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhepari awhepari;
label define awhepari
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewheparj ewheparj;
label define ewheparj
	4           "Someplace else"                
	3           "Another person's home"         
	2           "Other parent's home (parent"   
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awheparj awheparj;
label define awheparj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1f eparhr1f;
label define eparhr1f
	-1          "Not in Universe"               
;
label values aparhr1f aparhr1f;
label define aparhr1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1g eparhr1g;
label define eparhr1g
	-1          "Not in Universe"               
;
label values aparhr1g aparhr1g;
label define aparhr1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1h eparhr1h;
label define eparhr1h
	-1          "Not in Universe"               
;
label values aparhr1h aparhr1h;
label define aparhr1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1i eparhr1i;
label define eparhr1i
	-1          "Not in Universe"               
;
label values aparhr1i aparhr1i;
label define aparhr1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr1j eparhr1j;
label define eparhr1j
	-1          "Not in Universe"               
;
label values aparhr1j aparhr1j;
label define aparhr1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2f eparhr2f;
label define eparhr2f
	-1          "Not in Universe"               
;
label values aparhr2f aparhr2f;
label define aparhr2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2g eparhr2g;
label define eparhr2g
	-1          "Not in Universe"               
;
label values aparhr2g aparhr2g;
label define aparhr2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2h eparhr2h;
label define eparhr2h
	-1          "Not in Universe"               
;
label values aparhr2h aparhr2h;
label define aparhr2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2i eparhr2i;
label define eparhr2i
	-1          "Not in Universe"               
;
label values aparhr2i aparhr2i;
label define aparhr2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eparhr2j eparhr2j;
label define eparhr2j
	-1          "Not in Universe"               
;
label values aparhr2j aparhr2j;
label define aparhr2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselff ewhselff;
label define ewhselff
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselff awhselff;
label define awhselff
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfg ewhselfg;
label define ewhselfg
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfg awhselfg;
label define awhselfg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfh ewhselfh;
label define ewhselfh
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfh awhselfh;
label define awhselfh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfi ewhselfi;
label define ewhselfi
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfi awhselfi;
label define awhselfi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhselfj ewhselfj;
label define ewhselfj
	3           "Someplace else"                
	2           "At work or at school"          
	1           "In the person's home"          
	-1          "Not in Universe"               
;
label values awhselfj awhselfj;
label define awhselfj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrf eselfhrf;
label define eselfhrf
	-1          "Not in Universe"               
;
label values aselfhrf aselfhrf;
label define aselfhrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrg eselfhrg;
label define eselfhrg
	-1          "Not in Universe"               
;
label values aselfhrg aselfhrg;
label define aselfhrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrh eselfhrh;
label define eselfhrh
	-1          "Not in Universe"               
;
label values aselfhrh aselfhrh;
label define aselfhrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhri eselfhri;
label define eselfhri
	-1          "Not in Universe"               
;
label values aselfhri aselfhri;
label define aselfhri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfhrj eselfhrj;
label define eselfhrj
	-1          "Not in Universe"               
;
label values aselfhrj aselfhrj;
label define aselfhrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15f ewhsb15f;
label define ewhsb15f
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15f awhsb15f;
label define awhsb15f
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15g ewhsb15g;
label define ewhsb15g
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15g awhsb15g;
label define awhsb15g
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15h ewhsb15h;
label define ewhsb15h
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15h awhsb15h;
label define awhsb15h
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15i ewhsb15i;
label define ewhsb15i
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15i awhsb15i;
label define awhsb15i
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb15j ewhsb15j;
label define ewhsb15j
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb15j awhsb15j;
label define awhsb15j
	3           "Logical imputation derivation" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrf ewhsbhrf;
label define ewhsbhrf
	-1          "Not in Universe"               
;
label values awhsbhrf awhsbhrf;
label define awhsbhrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrg ewhsbhrg;
label define ewhsbhrg
	-1          "Not in Universe"               
;
label values awhsbhrg awhsbhrg;
label define awhsbhrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrh ewhsbhrh;
label define ewhsbhrh
	-1          "Not in Universe"               
;
label values awhsbhrh awhsbhrh;
label define awhsbhrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhri ewhsbhri;
label define ewhsbhri
	-1          "Not in Universe"               
;
label values awhsbhri awhsbhri;
label define awhsbhri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsbhrj ewhsbhrj;
label define ewhsbhrj
	-1          "Not in Universe"               
;
label values awhsbhrj awhsbhrj;
label define awhsbhrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15f ehrsb15f;
label define ehrsb15f
	-1          "Not in Universe"               
;
label values ahrsb15f ahrsb15f;
label define ahrsb15f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15g ehrsb15g;
label define ehrsb15g
	-1          "Not in Universe"               
;
label values ahrsb15g ahrsb15g;
label define ahrsb15g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15h ehrsb15h;
label define ehrsb15h
	-1          "Not in Universe"               
;
label values ahrsb15h ahrsb15h;
label define ahrsb15h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15i ehrsb15i;
label define ehrsb15i
	-1          "Not in Universe"               
;
label values ahrsb15i ahrsb15i;
label define ahrsb15i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb15j ehrsb15j;
label define ehrsb15j
	-1          "Not in Universe"               
;
label values ahrsb15j ahrsb15j;
label define ahrsb15j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14f ewhsb14f;
label define ewhsb14f
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14f awhsb14f;
label define awhsb14f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14g ewhsb14g;
label define ewhsb14g
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14g awhsb14g;
label define awhsb14g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14h ewhsb14h;
label define ewhsb14h
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14h awhsb14h;
label define awhsb14h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14i ewhsb14i;
label define ewhsb14i
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14i awhsb14i;
label define awhsb14i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsb14j ewhsb14j;
label define ewhsb14j
	3           "Someplace else"                
	2           "Other home"                    
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhsb14j awhsb14j;
label define awhsb14j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrf esb14hrf;
label define esb14hrf
	-1          "Not in Universe"               
;
label values asb14hrf asb14hrf;
label define asb14hrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrg esb14hrg;
label define esb14hrg
	-1          "Not in Universe"               
;
label values asb14hrg asb14hrg;
label define asb14hrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrh esb14hrh;
label define esb14hrh
	-1          "Not in Universe"               
;
label values asb14hrh asb14hrh;
label define asb14hrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hri esb14hri;
label define esb14hri
	-1          "Not in Universe"               
;
label values asb14hri asb14hri;
label define asb14hri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esb14hrj esb14hrj;
label define esb14hrj
	-1          "Not in Universe"               
;
label values asb14hrj asb14hrj;
label define asb14hrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14f ehrsb14f;
label define ehrsb14f
	-1          "Not in Universe"               
;
label values ahrsb14f ahrsb14f;
label define ahrsb14f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14g ehrsb14g;
label define ehrsb14g
	-1          "Not in Universe"               
;
label values ahrsb14g ahrsb14g;
label define ahrsb14g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14h ehrsb14h;
label define ehrsb14h
	-1          "Not in Universe"               
;
label values ahrsb14h ahrsb14h;
label define ahrsb14h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14i ehrsb14i;
label define ehrsb14i
	-1          "Not in Universe"               
;
label values ahrsb14i ahrsb14i;
label define ahrsb14i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsb14j ehrsb14j;
label define ehrsb14j
	-1          "Not in Universe"               
;
label values ahrsb14j ahrsb14j;
label define ahrsb14j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgranf ewhgranf;
label define ewhgranf
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgranf awhgranf;
label define awhgranf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgrang ewhgrang;
label define ewhgrang
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgrang awhgrang;
label define awhgrang
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgranh ewhgranh;
label define ewhgranh
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgranh awhgranh;
label define awhgranh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgrani ewhgrani;
label define ewhgrani
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgrani awhgrani;
label define awhgrani
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhgranj ewhgranj;
label define ewhgranj
	3           "Someplace else"                
	2           "Grandparent's home"            
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhgranj awhgranj;
label define awhgranj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrf egranhrf;
label define egranhrf
	-1          "Not in Universe"               
;
label values agranhrf agranhrf;
label define agranhrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrg egranhrg;
label define egranhrg
	-1          "Not in Universe"               
;
label values agranhrg agranhrg;
label define agranhrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrh egranhrh;
label define egranhrh
	-1          "Not in Universe"               
;
label values agranhrh agranhrh;
label define agranhrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhri egranhri;
label define egranhri
	-1          "Not in Universe"               
;
label values agranhri agranhri;
label define agranhri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values egranhrj egranhrj;
label define egranhrj
	-1          "Not in Universe"               
;
label values agranhrj agranhrj;
label define agranhrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgranf ehrgranf;
label define ehrgranf
	-1          "Not in Universe"               
;
label values ahrgranf ahrgranf;
label define ahrgranf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgrang ehrgrang;
label define ehrgrang
	-1          "Not in Universe"               
;
label values ahrgrang ahrgrang;
label define ahrgrang
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgranh ehrgranh;
label define ehrgranh
	-1          "Not in Universe"               
;
label values ahrgranh ahrgranh;
label define ahrgranh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgrani ehrgrani;
label define ehrgrani
	-1          "Not in Universe"               
;
label values ahrgrani ahrgrani;
label define ahrgrani
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrgranj ehrgranj;
label define ehrgranj
	-1          "Not in Universe"               
;
label values ahrgranj ahrgranj;
label define ahrgranj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygraf epaygraf;
label define epaygraf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygraf apaygraf;
label define apaygraf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrag epaygrag;
label define epaygrag
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrag apaygrag;
label define apaygrag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrah epaygrah;
label define epaygrah
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrah apaygrah;
label define apaygrah
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygrai epaygrai;
label define epaygrai
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygrai apaygrai;
label define apaygrai
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaygraj epaygraj;
label define epaygraj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaygraj apaygraj;
label define apaygraj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgraf tamtgraf;
label define tamtgraf
	0           "None or not in universe"       
;
label values aamtgraf aamtgraf;
label define aamtgraf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgrag tamtgrag;
label define tamtgrag
	0           "None or not in universe"       
;
label values aamtgrag aamtgrag;
label define aamtgrag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtgrah tamtgrah;
label define tamtgrah
	0           "Suppressed"                    
;
label values aamtgrah aamtgrah;
label define aamtgrah
	0           "Suppressed"                    
;
label values tamtgrai tamtgrai;
label define tamtgrai
	0           "Suppressed"                    
;
label values aamtgrai aamtgrai;
label define aamtgrai
	0           "Suppressed"                    
;
label values tamtgraj tamtgraj;
label define tamtgraj
	0           "Suppressed"                    
;
label values aamtgraj aamtgraj;
label define aamtgraj
	0           "Suppressed"                    
;
label values ewhrelaf ewhrelaf;
label define ewhrelaf
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelaf awhrelaf;
label define awhrelaf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelag ewhrelag;
label define ewhrelag
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelag awhrelag;
label define awhrelag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelah ewhrelah;
label define ewhrelah
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelah awhrelah;
label define awhrelah
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelai ewhrelai;
label define ewhrelai
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelai awhrelai;
label define awhrelai
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhrelaj ewhrelaj;
label define ewhrelaj
	3           "Someplace else"                
	2           "Other relative's home"         
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhrelaj awhrelaj;
label define awhrelaj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1f erelhr1f;
label define erelhr1f
	-1          "Not in Universe"               
;
label values arelhr1f arelhr1f;
label define arelhr1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1g erelhr1g;
label define erelhr1g
	-1          "Not in Universe"               
;
label values arelhr1g arelhr1g;
label define arelhr1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1h erelhr1h;
label define erelhr1h
	-1          "Not in Universe"               
;
label values arelhr1h arelhr1h;
label define arelhr1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1i erelhr1i;
label define erelhr1i
	-1          "Not in Universe"               
;
label values arelhr1i arelhr1i;
label define arelhr1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr1j erelhr1j;
label define erelhr1j
	-1          "Not in Universe"               
;
label values arelhr1j arelhr1j;
label define arelhr1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2f erelhr2f;
label define erelhr2f
	-1          "Not in Universe"               
;
label values arelhr2f arelhr2f;
label define arelhr2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2g erelhr2g;
label define erelhr2g
	-1          "Not in Universe"               
;
label values arelhr2g arelhr2g;
label define arelhr2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2h erelhr2h;
label define erelhr2h
	-1          "Not in Universe"               
;
label values arelhr2h arelhr2h;
label define arelhr2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2i erelhr2i;
label define erelhr2i
	-1          "Not in Universe"               
;
label values arelhr2i arelhr2i;
label define arelhr2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values erelhr2j erelhr2j;
label define erelhr2j
	-1          "Not in Universe"               
;
label values arelhr2j arelhr2j;
label define arelhr2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelf epayrelf;
label define epayrelf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelf apayrelf;
label define apayrelf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelg epayrelg;
label define epayrelg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelg apayrelg;
label define apayrelg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelh epayrelh;
label define epayrelh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelh apayrelh;
label define apayrelh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayreli epayreli;
label define epayreli
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayreli apayreli;
label define apayreli
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayrelj epayrelj;
label define epayrelj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayrelj apayrelj;
label define apayrelj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtrelf tamtrelf;
label define tamtrelf
	0           "None or not in universe"       
;
label values aamtrelf aamtrelf;
label define aamtrelf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtrelg tamtrelg;
label define tamtrelg
	0           "Suppressed"                    
;
label values aamtrelg aamtrelg;
label define aamtrelg
	0           "Suppressed"                    
;
label values tamtrelh tamtrelh;
label define tamtrelh
	0           "Suppressed"                    
;
label values aamtrelh aamtrelh;
label define aamtrelh
	0           "Suppressed"                    
;
label values tamtreli tamtreli;
label define tamtreli
	0           "Suppressed"                    
;
label values aamtreli aamtreli;
label define aamtreli
	0           "Suppressed"                    
;
label values tamtrelj tamtrelj;
label define tamtrelj
	0           "Suppressed"                    
;
label values aamtrelj aamtrelj;
label define aamtrelj
	0           "Suppressed"                    
;
label values ehrfam1f ehrfam1f;
label define ehrfam1f
	-1          "Not in Universe"               
;
label values ahrfam1f ahrfam1f;
label define ahrfam1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1g ehrfam1g;
label define ehrfam1g
	-1          "Not in Universe"               
;
label values ahrfam1g ahrfam1g;
label define ahrfam1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1h ehrfam1h;
label define ehrfam1h
	-1          "Not in Universe"               
;
label values ahrfam1h ahrfam1h;
label define ahrfam1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1i ehrfam1i;
label define ehrfam1i
	-1          "Not in Universe"               
;
label values ahrfam1i ahrfam1i;
label define ahrfam1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam1j ehrfam1j;
label define ehrfam1j
	-1          "Not in Universe"               
;
label values ahrfam1j ahrfam1j;
label define ahrfam1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2f ehrfam2f;
label define ehrfam2f
	-1          "Not in Universe"               
;
label values ahrfam2f ahrfam2f;
label define ahrfam2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2g ehrfam2g;
label define ehrfam2g
	-1          "Not in Universe"               
;
label values ahrfam2g ahrfam2g;
label define ahrfam2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2h ehrfam2h;
label define ehrfam2h
	-1          "Not in Universe"               
;
label values ahrfam2h ahrfam2h;
label define ahrfam2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2i ehrfam2i;
label define ehrfam2i
	-1          "Not in Universe"               
;
label values ahrfam2i ahrfam2i;
label define ahrfam2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrfam2j ehrfam2j;
label define ehrfam2j
	-1          "Not in Universe"               
;
label values ahrfam2j ahrfam2j;
label define ahrfam2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamf epayfamf;
label define epayfamf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamf apayfamf;
label define apayfamf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamg epayfamg;
label define epayfamg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamg apayfamg;
label define apayfamg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamh epayfamh;
label define epayfamh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamh apayfamh;
label define apayfamh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfami epayfami;
label define epayfami
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfami apayfami;
label define apayfami
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayfamj epayfamj;
label define epayfamj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayfamj apayfamj;
label define apayfamj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtfamf tamtfamf;
label define tamtfamf
	0           "None or not in universe"       
;
label values aamtfamf aamtfamf;
label define aamtfamf
	3           "Logical  imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtfamg tamtfamg;
label define tamtfamg
	0           "Suppressed"                    
;
label values aamtfamg aamtfamg;
label define aamtfamg
	0           "Suppressed"                    
;
label values tamtfamh tamtfamh;
label define tamtfamh
	0           "Suppressed"                    
;
label values aamtfamh aamtfamh;
label define aamtfamh
	0           "Suppressed"                    
;
label values tamtfami tamtfami;
label define tamtfami
	0           "Suppressed"                    
;
label values aamtfami aamtfami;
label define aamtfami
	0           "Suppressed"                    
;
label values tamtfamj tamtfamj;
label define tamtfamj
	0           "Suppressed"                    
;
label values aamtfamj aamtfamj;
label define aamtfamj
	0           "Suppressed"                    
;
label values ewhdaycf ewhdaycf;
label define ewhdaycf
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycf awhdaycf;
label define awhdaycf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaycg ewhdaycg;
label define ewhdaycg
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycg awhdaycg;
label define awhdaycg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaych ewhdaych;
label define ewhdaych
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaych awhdaych;
label define awhdaych
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdayci ewhdayci;
label define ewhdayci
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdayci awhdayci;
label define awhdayci
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhdaycj ewhdaycj;
label define ewhdaycj
	3           "Someplace else, including working"
	2           "At a church or religious"      
	1           "At work or at school"          
	-1          "Not in Universe"               
;
label values awhdaycj awhdaycj;
label define awhdaycj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsf edayhrsf;
label define edayhrsf
	-1          "Not in Universe"               
;
label values adayhrsf adayhrsf;
label define adayhrsf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsg edayhrsg;
label define edayhrsg
	-1          "Not in Universe"               
;
label values adayhrsg adayhrsg;
label define adayhrsg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsh edayhrsh;
label define edayhrsh
	-1          "Not in Universe"               
;
label values adayhrsh adayhrsh;
label define adayhrsh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsi edayhrsi;
label define edayhrsi
	-1          "Not in Universe"               
;
label values adayhrsi adayhrsi;
label define adayhrsi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edayhrsj edayhrsj;
label define edayhrsj
	-1          "Not in Universe"               
;
label values adayhrsj adayhrsj;
label define adayhrsj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycf ehrdaycf;
label define ehrdaycf
	-1          "Not in Universe"               
;
label values ahrdaycf ahrdaycf;
label define ahrdaycf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycg ehrdaycg;
label define ehrdaycg
	-1          "Not in Universe"               
;
label values ahrdaycg ahrdaycg;
label define ahrdaycg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaych ehrdaych;
label define ehrdaych
	-1          "Not in Universe"               
;
label values ahrdaych ahrdaych;
label define ahrdaych
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdayci ehrdayci;
label define ehrdayci
	-1          "Not in Universe"               
;
label values ahrdayci ahrdayci;
label define ahrdayci
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrdaycj ehrdaycj;
label define ehrdaycj
	-1          "Not in Universe"               
;
label values ahrdaycj ahrdaycj;
label define ahrdaycj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaydayf epaydayf;
label define epaydayf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayf apaydayf;
label define apaydayf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayg epaydayg;
label define epaydayg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayg apaydayg;
label define apaydayg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayh epaydayh;
label define epaydayh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayh apaydayh;
label define apaydayh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayi epaydayi;
label define epaydayi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayi apaydayi;
label define apaydayi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values epaydayj epaydayj;
label define epaydayj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaydayj apaydayj;
label define apaydayj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "None or not imputed"           
;
label values tamtdayf tamtdayf;
label define tamtdayf
	0           "None or not in universe"       
;
label values aamtdayf aamtdayf;
label define aamtdayf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtdayg tamtdayg;
label define tamtdayg
	0           "None or not in universe"       
;
label values aamtdayg aamtdayg;
label define aamtdayg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtdayh tamtdayh;
label define tamtdayh
	0           "Suppressed"                    
;
label values aamtdayh aamtdayh;
label define aamtdayh
	0           "Suppressed"                    
;
label values tamtdayi tamtdayi;
label define tamtdayi
	0           "Suppressed"                    
;
label values aamtdayi aamtdayi;
label define aamtdayi
	0           "Suppressed"                    
;
label values tamtdayj tamtdayj;
label define tamtdayj
	0           "Suppressed"                    
;
label values aamtdayj aamtdayj;
label define aamtdayj
	0           "Suppressed"                    
;
label values ewhsporf ewhsporf;
label define ewhsporf
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhsporf awhsporf;
label define awhsporf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsporg ewhsporg;
label define ewhsporg
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhsporg awhsporg;
label define awhsporg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsporh ewhsporh;
label define ewhsporh
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhsporh awhsporh;
label define awhsporh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhspori ewhspori;
label define ewhspori
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhspori awhspori;
label define awhspori
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhsporj ewhsporj;
label define ewhsporj
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhsporj awhsporj;
label define awhsporj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehsportf ehsportf;
label define ehsportf
	-1          "Not in Universe"               
;
label values ahsportf ahsportf;
label define ahsportf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehsportg ehsportg;
label define ehsportg
	-1          "Not in Universe"               
;
label values ahsportg ahsportg;
label define ahsportg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehsporth ehsporth;
label define ehsporth
	-1          "Not in Universe"               
;
label values ahsporth ahsporth;
label define ahsporth
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehsporti ehsporti;
label define ehsporti
	-1          "Not in Universe"               
;
label values ahsporti ahsporti;
label define ahsporti
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehsportj ehsportj;
label define ehsportj
	-1          "Not in Universe"               
;
label values ahsportj ahsportj;
label define ahsportj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsporf ehrsporf;
label define ehrsporf
	-1          "Not in Universe"               
;
label values ahrsporf ahrsporf;
label define ahrsporf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsporg ehrsporg;
label define ehrsporg
	-1          "Not in Universe"               
;
label values ahrsporg ahrsporg;
label define ahrsporg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsporh ehrsporh;
label define ehrsporh
	-1          "Not in Universe"               
;
label values ahrsporh ahrsporh;
label define ahrsporh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrspori ehrspori;
label define ehrspori
	-1          "Not in Universe"               
;
label values ahrspori ahrspori;
label define ahrspori
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsporj ehrsporj;
label define ehrsporj
	-1          "Not in Universe"               
;
label values ahrsporj ahrsporj;
label define ahrsporj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayspof epayspof;
label define epayspof
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayspof apayspof;
label define apayspof
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayspog epayspog;
label define epayspog
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayspog apayspog;
label define apayspog
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayspoh epayspoh;
label define epayspoh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayspoh apayspoh;
label define apayspoh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayspoi epayspoi;
label define epayspoi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayspoi apayspoi;
label define apayspoi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayspoj epayspoj;
label define epayspoj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayspoj apayspoj;
label define apayspoj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtspof tamtspof;
label define tamtspof
	0           "None or not in universe"       
;
label values aamtspof aamtspof;
label define aamtspof
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtspog tamtspog;
label define tamtspog
	0           "None or not in universe"       
;
label values aamtspog aamtspog;
label define aamtspog
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtspoh tamtspoh;
label define tamtspoh
	0           "None or not in universe"       
;
label values aamtspoh aamtspoh;
label define aamtspoh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtspoi tamtspoi;
label define tamtspoi
	0           "Suppressed"                    
;
label values aamtspoi aamtspoi;
label define aamtspoi
	0           "Suppressed"                    
;
label values tamtspoj tamtspoj;
label define tamtspoj
	0           "Suppressed"                    
;
label values aamtspoj aamtspoj;
label define aamtspoj
	0           "Suppressed"                    
;
label values ewhlessf ewhlessf;
label define ewhlessf
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhlessf awhlessf;
label define awhlessf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhlessg ewhlessg;
label define ewhlessg
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhlessg awhlessg;
label define awhlessg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhlessh ewhlessh;
label define ewhlessh
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhlessh awhlessh;
label define awhlessh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhlessi ewhlessi;
label define ewhlessi
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhlessi awhlessi;
label define awhlessi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhlessj ewhlessj;
label define ewhlessj
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhlessj awhlessj;
label define awhlessj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles1f ehrles1f;
label define ehrles1f
	-1          "Not in Universe"               
;
label values ahrles1f ahrles1f;
label define ahrles1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles1g ehrles1g;
label define ehrles1g
	-1          "Not in Universe"               
;
label values ahrles1g ahrles1g;
label define ahrles1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles1h ehrles1h;
label define ehrles1h
	-1          "Not in Universe"               
;
label values ahrles1h ahrles1h;
label define ahrles1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles1i ehrles1i;
label define ehrles1i
	-1          "Not in Universe"               
;
label values ahrles1i ahrles1i;
label define ahrles1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles1j ehrles1j;
label define ehrles1j
	-1          "Not in Universe"               
;
label values ahrles1j ahrles1j;
label define ahrles1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles2f ehrles2f;
label define ehrles2f
	-1          "Not in Universe"               
;
label values ahrles2f ahrles2f;
label define ahrles2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles2g ehrles2g;
label define ehrles2g
	-1          "Not in Universe"               
;
label values ahrles2g ahrles2g;
label define ahrles2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles2h ehrles2h;
label define ehrles2h
	-1          "Not in Universe"               
;
label values ahrles2h ahrles2h;
label define ahrles2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles2i ehrles2i;
label define ehrles2i
	-1          "Not in Universe"               
;
label values ahrles2i ahrles2i;
label define ahrles2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrles2j ehrles2j;
label define ehrles2j
	-1          "Not in Universe"               
;
label values ahrles2j ahrles2j;
label define ahrles2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaylesf epaylesf;
label define epaylesf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaylesf apaylesf;
label define apaylesf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaylesg epaylesg;
label define epaylesg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaylesg apaylesg;
label define apaylesg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaylesh epaylesh;
label define epaylesh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaylesh apaylesh;
label define apaylesh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaylesi epaylesi;
label define epaylesi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaylesi apaylesi;
label define apaylesi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaylesj epaylesj;
label define epaylesj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaylesj apaylesj;
label define apaylesj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtlesf tamtlesf;
label define tamtlesf
	0           "None or not in universe"       
;
label values aamtlesf aamtlesf;
label define aamtlesf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtlesg tamtlesg;
label define tamtlesg
	0           "None or not in universe"       
;
label values aamtlesg aamtlesg;
label define aamtlesg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtlesh tamtlesh;
label define tamtlesh
	0           "Suppressed"                    
;
label values aamtlesh aamtlesh;
label define aamtlesh
	0           "Suppressed"                    
;
label values tamtlesi tamtlesi;
label define tamtlesi
	0           "Suppressed"                    
;
label values aamtlesi aamtlesi;
label define aamtlesi
	0           "Suppressed"                    
;
label values tamtlesj tamtlesj;
label define tamtlesj
	0           "Suppressed"                    
;
label values aamtlesj aamtlesj;
label define aamtlesj
	0           "Suppressed"                    
;
label values ewhclubf ewhclubf;
label define ewhclubf
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhclubf awhclubf;
label define awhclubf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhclubg ewhclubg;
label define ewhclubg
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhclubg awhclubg;
label define awhclubg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhclubh ewhclubh;
label define ewhclubh
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhclubh awhclubh;
label define awhclubh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhclubi ewhclubi;
label define ewhclubi
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhclubi awhclubi;
label define awhclubi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhclubj ewhclubj;
label define ewhclubj
	2           "Someplace else"                
	1           "At school"                     
	-1          "Not in Universe"               
;
label values awhclubj awhclubj;
label define awhclubj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubhrf eclubhrf;
label define eclubhrf
	-1          "Not in Universe"               
;
label values aclubhrf aclubhrf;
label define aclubhrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubhrg eclubhrg;
label define eclubhrg
	-1          "Not in Universe"               
;
label values aclubhrg aclubhrg;
label define aclubhrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubhrh eclubhrh;
label define eclubhrh
	-1          "Not in Universe"               
;
label values aclubhrh aclubhrh;
label define aclubhrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubhri eclubhri;
label define eclubhri
	-1          "Not in Universe"               
;
label values aclubhri aclubhri;
label define aclubhri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eclubhrj eclubhrj;
label define eclubhrj
	-1          "Not in Universe"               
;
label values aclubhrj aclubhrj;
label define aclubhrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrclubf ehrclubf;
label define ehrclubf
	-1          "Not in Universe"               
;
label values ahrclubf ahrclubf;
label define ahrclubf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrclubg ehrclubg;
label define ehrclubg
	-1          "Not in Universe"               
;
label values ahrclubg ahrclubg;
label define ahrclubg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrclubh ehrclubh;
label define ehrclubh
	-1          "Not in Universe"               
;
label values ahrclubh ahrclubh;
label define ahrclubh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrclubi ehrclubi;
label define ehrclubi
	-1          "Not in Universe"               
;
label values ahrclubi ahrclubi;
label define ahrclubi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrclubj ehrclubj;
label define ehrclubj
	-1          "Not in Universe"               
;
label values ahrclubj ahrclubj;
label define ahrclubj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaycluf epaycluf;
label define epaycluf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaycluf apaycluf;
label define apaycluf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayclug epayclug;
label define epayclug
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayclug apayclug;
label define apayclug
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaycluh epaycluh;
label define epaycluh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaycluh apaycluh;
label define apaycluh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayclui epayclui;
label define epayclui
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayclui apayclui;
label define apayclui
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epaycluj epaycluj;
label define epaycluj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apaycluj apaycluj;
label define apaycluj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtcluf tamtcluf;
label define tamtcluf
	0           "None or not in universe"       
;
label values aamtcluf aamtcluf;
label define aamtcluf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtclug tamtclug;
label define tamtclug
	0           "None or not in universe"       
;
label values aamtclug aamtclug;
label define aamtclug
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtcluh tamtcluh;
label define tamtcluh
	0           "Suppressed"                    
;
label values aamtcluh aamtcluh;
label define aamtcluh
	0           "Suppressed"                    
;
label values tamtclui tamtclui;
label define tamtclui
	0           "Suppressed"                    
;
label values aamtclui aamtclui;
label define aamtclui
	0           "Suppressed"                    
;
label values tamtcluj tamtcluj;
label define tamtcluj
	0           "Suppressed"                    
;
label values aamtcluj aamtcluj;
label define aamtcluj
	0           "Suppressed"                    
;
label values ewhschof ewhschof;
label define ewhschof
	3           "Someplace else"                
	2           "At child's school"             
	1           "At work or school"             
	-1          "Not in Universe"               
;
label values awhschof awhschof;
label define awhschof
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhschog ewhschog;
label define ewhschog
	3           "Someplace else"                
	2           "At child's school"             
	1           "At work or school"             
	-1          "Not in Universe"               
;
label values awhschog awhschog;
label define awhschog
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhschoh ewhschoh;
label define ewhschoh
	3           "Someplace else"                
	2           "At child's school"             
	1           "At work or school"             
	-1          "Not in Universe"               
;
label values awhschoh awhschoh;
label define awhschoh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhschoi ewhschoi;
label define ewhschoi
	3           "Someplace else"                
	2           "At child's school"             
	1           "At work or school"             
	-1          "Not in Universe"               
;
label values awhschoi awhschoi;
label define awhschoi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhschoj ewhschoj;
label define ewhschoj
	3           "Someplace else"                
	2           "At child's school"             
	1           "At work or school"             
	-1          "Not in Universe"               
;
label values awhschoj awhschoj;
label define awhschoj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehscho1f ehscho1f;
label define ehscho1f
	-1          "Not in Universe"               
;
label values ahscho1f ahscho1f;
label define ahscho1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehscho1g ehscho1g;
label define ehscho1g
	-1          "Not in Universe"               
;
label values ahscho1g ahscho1g;
label define ahscho1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehscho1h ehscho1h;
label define ehscho1h
	-1          "Not in Universe"               
;
label values ahscho1h ahscho1h;
label define ahscho1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehscho1i ehscho1i;
label define ehscho1i
	-1          "Not in Universe"               
;
label values ahscho1i ahscho1i;
label define ahscho1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehscho1j ehscho1j;
label define ehscho1j
	-1          "Not in Universe"               
;
label values ahscho1j ahscho1j;
label define ahscho1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsch2f ehrsch2f;
label define ehrsch2f
	-1          "Not in Universe"               
;
label values ahrsch2f ahrsch2f;
label define ahrsch2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsch2g ehrsch2g;
label define ehrsch2g
	-1          "Not in Universe"               
;
label values ahrsch2g ahrsch2g;
label define ahrsch2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsch2h ehrsch2h;
label define ehrsch2h
	-1          "Not in Universe"               
;
label values ahrsch2h ahrsch2h;
label define ahrsch2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsch2i ehrsch2i;
label define ehrsch2i
	-1          "Not in Universe"               
;
label values ahrsch2i ahrsch2i;
label define ahrsch2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrsch2j ehrsch2j;
label define ehrsch2j
	-1          "Not in Universe"               
;
label values ahrsch2j ahrsch2j;
label define ahrsch2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayschf epayschf;
label define epayschf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayschf apayschf;
label define apayschf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayschg epayschg;
label define epayschg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayschg apayschg;
label define apayschg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayschh epayschh;
label define epayschh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayschh apayschh;
label define apayschh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayschi epayschi;
label define epayschi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayschi apayschi;
label define apayschi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayschj epayschj;
label define epayschj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayschj apayschj;
label define apayschj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtschf tamtschf;
label define tamtschf
	0           "None or not in universe"       
;
label values aamtschf aamtschf;
label define aamtschf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtschg tamtschg;
label define tamtschg
	0           "None or not in universe"       
;
label values aamtschg aamtschg;
label define aamtschg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtschh tamtschh;
label define tamtschh
	0           "Suppressed"                    
;
label values aamtschh aamtschh;
label define aamtschh
	0           "Suppressed"                    
;
label values tamtschi tamtschi;
label define tamtschi
	0           "Suppressed"                    
;
label values aamtschi aamtschi;
label define aamtschi
	0           "Suppressed"                    
;
label values tamtschj tamtschj;
label define tamtschj
	0           "Suppressed"                    
;
label values aamtschj aamtschj;
label define aamtschj
	0           "Suppressed"                    
;
label values ewhothef ewhothef;
label define ewhothef
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothef awhothef;
label define awhothef
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhotheg ewhotheg;
label define ewhotheg
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhotheg awhotheg;
label define awhotheg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhotheh ewhotheh;
label define ewhotheh
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhotheh awhotheh;
label define awhotheh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhothei ewhothei;
label define ewhothei
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothei awhothei;
label define awhothei
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhothej ewhothej;
label define ewhothej
	3           "Someplace else"                
	2           "The non-relative's home"       
	1           "Child's home"                  
	-1          "Not in Universe"               
;
label values awhothej awhothej;
label define awhothej
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrf eothehrf;
label define eothehrf
	-1          "Not in Universe"               
;
label values aothehrf aothehrf;
label define aothehrf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrg eothehrg;
label define eothehrg
	-1          "Not in Universe"               
;
label values aothehrg aothehrg;
label define aothehrg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrh eothehrh;
label define eothehrh
	-1          "Not in Universe"               
;
label values aothehrh aothehrh;
label define aothehrh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehri eothehri;
label define eothehri
	-1          "Not in Universe"               
;
label values aothehri aothehri;
label define aothehri
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eothehrj eothehrj;
label define eothehrj
	-1          "Not in Universe"               
;
label values aothehrj aothehrj;
label define aothehrj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothef ehrothef;
label define ehrothef
	-1          "Not in Universe"               
;
label values ahrothef ahrothef;
label define ahrothef
	3           "Logical imputation (hot deck)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrotheg ehrotheg;
label define ehrotheg
	-1          "Not in Universe"               
;
label values ahrotheg ahrotheg;
label define ahrotheg
	3           "Logical imputation (hot deck)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrotheh ehrotheh;
label define ehrotheh
	-1          "Not in Universe"               
;
label values ahrotheh ahrotheh;
label define ahrotheh
	3           "Logical imputation (hot deck)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothei ehrothei;
label define ehrothei
	-1          "Not in Universe"               
;
label values ahrothei ahrothei;
label define ahrothei
	3           "Logical imputation (hot deck)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrothej ehrothej;
label define ehrothej
	-1          "Not in Universe"               
;
label values ahrothej ahrothej;
label define ahrothej
	3           "Logical imputation (hot deck)" 
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothf epayothf;
label define epayothf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothf apayothf;
label define apayothf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothg epayothg;
label define epayothg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothg apayothg;
label define apayothg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothh epayothh;
label define epayothh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothh apayothh;
label define apayothh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothi epayothi;
label define epayothi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothi apayothi;
label define apayothi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayothj epayothj;
label define epayothj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayothj apayothj;
label define apayothj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtothf tamtothf;
label define tamtothf
	0           "None or not in universe"       
;
label values aamtothf aamtothf;
label define aamtothf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtothg tamtothg;
label define tamtothg
	0           "None or not in universe"       
;
label values aamtothg aamtothg;
label define aamtothg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values tamtothh tamtothh;
label define tamtothh
	0           "Suppressed"                    
;
label values aamtothh aamtothh;
label define aamtothh
	0           "Suppressed"                    
;
label values tamtothi tamtothi;
label define tamtothi
	0           "Suppressed"                    
;
label values aamtothi aamtothi;
label define aamtothi
	0           "Suppressed"                    
;
label values tamtothj tamtothj;
label define tamtothj
	0           "Suppressed"                    
;
label values aamtothj aamtothj;
label define aamtothj
	0           "Suppressed"                    
;
label values eschoowf eschoowf;
label define eschoowf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowf aschoowf;
label define aschoowf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowg eschoowg;
label define eschoowg
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowg aschoowg;
label define aschoowg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowh eschoowh;
label define eschoowh
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowh aschoowh;
label define aschoowh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowi eschoowi;
label define eschoowi
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowi aschoowi;
label define aschoowi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eschoowj eschoowj;
label define eschoowj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aschoowj aschoowj;
label define aschoowj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwf ehrschwf;
label define ehrschwf
	-1          "Not in Universe"               
;
label values ahrschwf ahrschwf;
label define ahrschwf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwg ehrschwg;
label define ehrschwg
	-1          "Not in Universe"               
;
label values ahrschwg ahrschwg;
label define ahrschwg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwh ehrschwh;
label define ehrschwh
	-1          "Not in Universe"               
;
label values ahrschwh ahrschwh;
label define ahrschwh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwi ehrschwi;
label define ehrschwi
	-1          "Not in Universe"               
;
label values ahrschwi ahrschwi;
label define ahrschwi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschwj ehrschwj;
label define ehrschwj
	-1          "Not in Universe"               
;
label values ahrschwj ahrschwj;
label define ahrschwj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschof ehrschof;
label define ehrschof
	-1          "Not in Universe"               
;
label values ahrschof ahrschof;
label define ahrschof
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschog ehrschog;
label define ehrschog
	-1          "Not in Universe"               
;
label values ahrschog ahrschog;
label define ahrschog
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoh ehrschoh;
label define ehrschoh
	-1          "Not in Universe"               
;
label values ahrschoh ahrschoh;
label define ahrschoh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoi ehrschoi;
label define ehrschoi
	-1          "Not in Universe"               
;
label values ahrschoi ahrschoi;
label define ahrschoi
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ehrschoj ehrschoj;
label define ehrschoj
	-1          "Not in Universe"               
;
label values ahrschoj ahrschoj;
label define ahrschoj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcaf eselfcaf;
label define eselfcaf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcaf aselfcaf;
label define aselfcaf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcag eselfcag;
label define eselfcag
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcag aselfcag;
label define aselfcag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcah eselfcah;
label define eselfcah
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcah aselfcah;
label define aselfcah
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcai eselfcai;
label define eselfcai
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcai aselfcai;
label define aselfcai
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eselfcaj eselfcaj;
label define eselfcaj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aselfcaj aselfcaj;
label define aselfcaj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1f ekidhr1f;
label define ekidhr1f
	-1          "Not in Universe"               
;
label values akidhr1f akidhr1f;
label define akidhr1f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1g ekidhr1g;
label define ekidhr1g
	-1          "Not in Universe"               
;
label values akidhr1g akidhr1g;
label define akidhr1g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1h ekidhr1h;
label define ekidhr1h
	-1          "Not in Universe"               
;
label values akidhr1h akidhr1h;
label define akidhr1h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1i ekidhr1i;
label define ekidhr1i
	-1          "Not in Universe"               
;
label values akidhr1i akidhr1i;
label define akidhr1i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr1j ekidhr1j;
label define ekidhr1j
	-1          "Not in Universe"               
;
label values akidhr1j akidhr1j;
label define akidhr1j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2f ekidhr2f;
label define ekidhr2f
	-1          "Not in Universe"               
;
label values akidhr2f akidhr2f;
label define akidhr2f
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2g ekidhr2g;
label define ekidhr2g
	-1          "Not in Universe"               
;
label values akidhr2g akidhr2g;
label define akidhr2g
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2h ekidhr2h;
label define ekidhr2h
	-1          "Not in Universe"               
;
label values akidhr2h akidhr2h;
label define akidhr2h
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2i ekidhr2i;
label define ekidhr2i
	-1          "Not in Universe"               
;
label values akidhr2i akidhr2i;
label define akidhr2i
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ekidhr2j ekidhr2j;
label define ekidhr2j
	-1          "Not in Universe"               
;
label values akidhr2j akidhr2j;
label define akidhr2j
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychaf edaychaf;
label define edaychaf
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychaf adaychaf;
label define adaychaf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychag edaychag;
label define edaychag
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychag adaychag;
label define adaychag
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychah edaychah;
label define edaychah
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychah adaychah;
label define adaychah
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychai edaychai;
label define edaychai
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychai adaychai;
label define adaychai
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values edaychaj edaychaj;
label define edaychaj
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values adaychaj adaychaj;
label define adaychaj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelf epayhelf;
label define epayhelf
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelf apayhelf;
label define apayhelf
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelg epayhelg;
label define epayhelg
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelg apayhelg;
label define apayhelg
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelh epayhelh;
label define epayhelh
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelh apayhelh;
label define apayhelh
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayheli epayheli;
label define epayheli
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayheli apayheli;
label define apayheli
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values epayhelj epayhelj;
label define epayhelj
	3           "Did not use any arrangements"  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values apayhelj apayhelj;
label define apayhelj
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1f ewhopa1f;
label define ewhopa1f
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2f ewhopa2f;
label define ewhopa2f
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3f ewhopa3f;
label define ewhopa3f
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4f ewhopa4f;
label define ewhopa4f
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopaf  awhopaf;
label define awhopaf 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1g ewhopa1g;
label define ewhopa1g
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2g ewhopa2g;
label define ewhopa2g
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3g ewhopa3g;
label define ewhopa3g
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4g ewhopa4g;
label define ewhopa4g
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopag  awhopag;
label define awhopag 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1h ewhopa1h;
label define ewhopa1h
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2h ewhopa2h;
label define ewhopa2h
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3h ewhopa3h;
label define ewhopa3h
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4h ewhopa4h;
label define ewhopa4h
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopah  awhopah;
label define awhopah 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1i ewhopa1i;
label define ewhopa1i
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2i ewhopa2i;
label define ewhopa2i
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3i ewhopa3i;
label define ewhopa3i
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4i ewhopa4i;
label define ewhopa4i
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopai  awhopai;
label define awhopai 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values ewhopa1j ewhopa1j;
label define ewhopa1j
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa2j ewhopa2j;
label define ewhopa2j
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa3j ewhopa3j;
label define ewhopa3j
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values ewhopa4j ewhopa4j;
label define ewhopa4j
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values awhopaj  awhopaj;
label define awhopaj 
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values esatisf  esatisf;
label define esatisf 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisg  esatisg;
label define esatisg 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatish  esatish;
label define esatish 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisi  esatisi;
label define esatisi 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values esatisj  esatisj;
label define esatisj 
	5           "Very dissatisfied"             
	4           "Somewhat dissatisfied"         
	3           "Neither satisfied nor dissatisfied"
	2           "Somewhat satisfied"            
	1           "Very satisfied"                
	0           "No answer"                     
	-1          "Not in Universe"               
;
label values elistf   elistf; 
label define elistf  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistf   alistf; 
label define alistf  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elistg   elistg; 
label define elistg  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistg   alistg; 
label define alistg  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elisth   elisth; 
label define elisth  
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alisth   alisth; 
label define alisth  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elisti   elisti; 
label define elisti  
	2           "N0"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alisti   alisti; 
label define alisti  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values elistj   elistj; 
label define elistj  
	2           "N0"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values alistj   alistj; 
label define alistj  
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values eworkmor eworkmor;
label define eworkmor
	2           "No"                            
	1           "Yes"                           
	-1          "Not in Universe"               
;
label values aworkmor aworkmor;
label define aworkmor
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etiamt01 etiamt0r;
label define etiamt0r
	-7          "None"                          
	-1          "Not in Universe"               
;
label values atiamt01 atiamt0r;
label define atiamt0r
	3           "Logical imputation (derivation)"
	2           "Cold deck imputation"          
	1           "Statistical imputation (hot deck)"
	0           "Not imputed"                   
;
label values etiamt02 etiamt0k;
label define etiamt0k
	4           "Months"                        
	3           "Weeks"                         
	2           "Days"                          
	1           "Hours"                         
	0           "None"                          
	-1          "Not in Universe"               
;
label values atiamt02 atiamt0k;
label define atiamt0k
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
