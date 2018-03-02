//merger file - preparation

use m_2010
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2010.xls"
clear

use m_2009
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2009.xls"
clear

use m_2008
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2008.xls"
clear

use m_2007
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2007.xls"
clear

use m_2006
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2006.xls"
clear

use m_2005
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2005.xls"
clear

use m_2004
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2004.xls"
clear

use m_2003
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2003.xls"
clear

use m_2002
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2002.xls"
clear

use m_2001
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2001.xls"
clear

use m_2000
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m2000.xls"
clear

use m_1999
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m1999.xls"
clear

use m_1998
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m1998.xls"
clear

use m_1997
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m1997.xls"
clear

use m_1996
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m1996.xls"
clear

use m_1995
sort agency_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_m1995.xls"
clear

use ayp_2010
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2010.xls"
clear

use ayp_2009
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2009.xls"
clear

use ayp_2008
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2008.xls"
clear

use ayp_2007
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2007.xls"
clear

use ayp_2006
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2006.xls"
clear

use ayp_2005
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2005.xls"
clear

use ayp_2004
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2004.xls"
clear

use ayp_2003
sort district_name school_name
save, replace
export excel using "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2003.xls"
clear

//use ayp as the template and add the nces m_   data on that

//import the merger files and try to merge with the m_files

//2010 merger

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2010.xls", sheet("Sheet1")

save merger_2010
clear

use merger_2010
rename A school_name
rename B agency_name
save, replace
clear

use merger_2010
merge 1:1 school_name agency_name using m_2010
save, replace
clear



use merger_2010

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

drop _merge
generate ayp_status=1
save, replace
clear

//2009 merger

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2009.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

save merger_2009

use merger_2009
merge 1:1 school_name agency_name using m_2009
drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save, replace
clear

//2008 merger
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2008.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

save merger_2008

use merger_2008
merge m:m school_name agency_name using m_2008
drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save, replace
clear

//2007 merger

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2007.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

merge m:m school_name agency_name using m_2007

drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save merger_2007
clear

//2006 merger
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2006.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

merge m:m school_name agency_name using m_2006

drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save merger_2006
clear

//2005 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2005.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

merge m:m school_name agency_name using m_2005

drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save merger_2005
clear

//2004 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\merger_ayp2004.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

merge m:m school_name agency_name using m_2004

drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save merger_2004
clear


//2003 merger
use ayp_2003
move school_name district_name 
move agency_name district_name 
export excel using "ayp_m_2003"
save, replace
clear

use m_2003
export excel using "m_m_2003"
save, replace
clear

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\massachussets schools data\ayp_m_2003.xls", sheet("Sheet1")

rename A school_name
rename B agency_name

merge m:m school_name agency_name using m_2003

drop _merge

rename E e_cpi
rename F e_cpichange
rename G e_aypagg
rename H e_aypsub
rename I e_accountability

rename J m_cpi
rename K m_cpichange
rename L m_aypagg
rename M m_aypsub
rename N m_accountability

generate ayp_status=1

save merger_2003
clear



//years and addition of the ayp status on the others
use merger_2010
generate year=2010
move year school_name 
save, replace 
clear
 
use merger_2009
generate year=2009
move year school_name 
save, replace 
clear

use merger_2008
generate year=2008
move year school_name 
save, replace 
clear

use merger_2007
generate year=2007
move year school_name 
save, replace 
clear

use merger_2006
generate year=2006
move year school_name 
save, replace 
clear

use merger_2005
generate year=2005
move year school_name 
save, replace 
clear

use merger_2004
generate year=2004
move year school_name 
save, replace 
clear

use merger_2003
generate year=2003
move year school_name 
save, replace 
clear

use m_2002
generate year=2002
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_2001
generate year=2001
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_2000
generate year=2000
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_1999
generate year=1999
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_1998
generate year=1998
generate ayp_status=0
move year school_name 
move school_name agency_name
move year school_name
save, replace 
clear

use m_1997
generate year=1997
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_1996
generate year=1996
generate ayp_status=0
move year school_name 
save, replace 
clear

use m_1995
generate year=1995
generate ayp_status=0
move year school_name 
save, replace 
clear

//merging the data sets 
use merger_2010
append using merger_2009
append using merger_2008
append using merger_2007
append using merger_2006
append using merger_2005
append using merger_2004
append using merger_2003
append using m_2002
append using m_2001
append using m_2000
append using m_1999
append using m_1998
append using m_1997
append using m_1996
append using m_1995
save final_mass_data
clear

use final_mass_data
label variable e_cpi "English CPI"
label variable e_cpichange "English CPI Change"
label variable e_aypagg "English AYP Aggregate"
label variable e_aypsub "English AYB Subgroup"
label variable e_accountability "English Accountability Status"

label variable m_cpi "Maths CPI"
label variable m_cpichange "Maths CPI Change"
label variable m_aypagg "Maths AYP Aggregate"
label variable m_aypsub "Maths AYB Subgroup"
label variable m_accountability "Maths Accountability Status"

label variable C "school name 2 - cane be removed"
label variable D "agency name 2 - cane be removed"
label variable ayp_status "1. status report available,0. unavailable"
save, replace
clear
