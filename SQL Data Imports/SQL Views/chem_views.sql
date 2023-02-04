/*
Created 3 views of the Chem table by year (2018, 2019, 2020), 
we then selected the columns that we were interested in that 
we could used for modeling.
*/

create or replace view chem2018 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2018;
 
create or replace view chem2019 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2019;

create or replace view chem2020 as 
select 
date(se."startDate") as date
,se."domainID"
,se."siteID"
,se."laboratoryName"
,se."analyte"
,concat(se."analyteConcentration",', ' ,se."analyteUnits") as "analyteCon"
from chem.swc_externallabdatabyanalyte se
 where date_part('year',se."startDate" ) = 2020;
