// files have to be downloaded and then editing of the files
//is done on excel - minor editing such as dropping of first
//few lines of text and some lines in the end which have total 
//figures

//no observation are added or deleted during the work done on microsoft excel
// symbols such as(†,–, ‡) are replaced by "."

//the edited file is in csv format - it is changed to an excel format and saved

//2010 data

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\rawdata\massachusets\m_2010.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename URBANCENTRICL~L urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white mixed_race, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2010
clear

//2009 data

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\rawdata\massachusets\m_2009.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename URBANCENTRICL~L urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white mixed_race, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2009
clear

//2008 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2008.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename URBANCENTRICL~L urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2008
clear

//2007 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2007.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename URBANCENTRICL~L urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2007
clear

//2006 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2006.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code


destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2006
clear

//2005 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2005.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2005
clear

//2004 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2004.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2004
clear

//2003 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2003.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2003
clear


//2002 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2002.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2002
clear

//2001 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2001.xlsx", sheet("Sheet1") firstrow


rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2001
clear

//2000 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_2000.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_2000
clear

//1999 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_1999.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
rename SCHOOLWIDETIT~L school_wide
rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
rename REDUCEDPRICEL~C reduced_price
rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_1999
clear

//1998 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_1998.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
//rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
//rename SCHOOLWIDETIT~L school_wide
//rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
//rename REDUCEDPRICEL~C reduced_price
//rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch reduced_price free_reduced, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_1998
clear

//1997 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_1997.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
//rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
//rename SCHOOLWIDETIT~L school_wide
//rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
//rename REDUCEDPRICEL~C reduced_price
//rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_1997
clear

//1996 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_1996.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
//rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
//rename SCHOOLWIDETIT~L school_wide
//rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
//rename REDUCEDPRICEL~C reduced_price
//rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_1996
clear

//1995 data
// symbols such as(†,–, ‡) are replaced by "."

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\massachusets\m_1995.xlsx", sheet("Sheet1") firstrow

rename SCHOOLNAMEBYS~H school_name
rename AGENCYNAMEBYS~S agency_name
rename STATEABBRSCHOOL state 
rename COUNTYNAMESCH~L county_name
rename COUNTYNUMBERS~L county_number
rename SCHOOLTYPEMOS~S school_type
rename AGENCYTYPEMOS~D agency_type
rename SCHOOLIDNCESA~L school_id
rename AGENCYIDNCESD~T agency_id
//rename CHARTERSCHOOL~L charter_school
rename LOCALESCHOOL urban_centric
//rename SCHOOLWIDETIT~L school_wide
//rename TITLEIELIGIBL~L title_eligible
rename OPERATIONALST~L operational_status
rename TOTALSTUDENTS~L total_students
rename AMERICANINDIA~E native_students
rename ASIANPACIFICI~S asian_pacific
rename BLACKSTUDENTS~L black
rename HISPANICSTUDE~L hispanic
rename WHITESTUDENTS~L white
// not present in 2008 rename TWOMORERACESS~L mixed_race
rename FREELUNCHELIG~L free_lunch
//rename REDUCEDPRICEL~C reduced_price
//rename FREEANDREDUCE~L free_reduced
rename PUPILTEACHERR~L pupilteacher_ratio
rename FTETEACHERSSC~L fte
rename SCHOOLLEVELCO~L schoolvl_code

move school_name agency_name

destring school_id, replace
destring agency_id, replace
format school_id %12.0f
destring total_students native_students asian_pacific, replace ignore (".")  
destring black hispanic white, replace ignore (".")  
destring free_lunch, replace ignore (".")  
destring pupilteacher_ratio fte, replace ignore (".")  
format fte %12.0f

save m_1995
clear


