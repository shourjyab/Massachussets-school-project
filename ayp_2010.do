
//2010 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2010.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A==""

split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A L M

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability


rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name
save ayp_2010

clear

//2009 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2009.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A==""

split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A L M

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2009
clear

//2008 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2008.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="Choice"
drop if A=="Required"
drop if A=="CPI"
drop if A=="Status"

split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A L M

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2008
clear

//2007 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2007.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="Choice"
drop if A=="Required"
drop if A=="CPI"
drop if A=="Status"

split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A L M

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2007
clear

//2006 data

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2006.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="CPI"


split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A 

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2006
clear

//2005 data

import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2005.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="CPI"


split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A 

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2005
clear

//2004 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2004.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="CPI"


split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A 

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2004
clear

//2003 data
import excel "C:\Users\Shourjya Deb\Dropbox\massachusetts schools project\raw data\ayp\ayp_2003.xlsx", sheet("Sheet1")

drop if A=="SCHOOL"
drop if A=="CPI"


split A, parse(-)
egen school_name=concat (A2 A3 A4)
drop A2 A3 A4
rename A1 district_name
move school_name A
move district_name A
drop A 

rename B e_cpi
rename C e_cpichange
rename D e_aypagg
rename E e_aypsub
rename F e_accountability

rename G m_cpi
rename H m_cpichange
rename I m_aypagg
rename J m_aypsub
rename K m_accountability

destring e_cpi e_cpichange m_cpi m_cpichange, replace ignore ("- .")
format e_cpi e_cpichange m_cpi m_cpichange %15.0f

sort school_name

save ayp_2003
clear















