create or replace view nitrate2018 as 
select 
date(nt."startDateTime") as "date"
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition" 
,avg(nt."surfWaterNitrateMean") as "surfWaterNitrateMean"
,avg(nt."surfWaterNitrateVariance") as "surfWaterNitrateVariance"
from nitrate.main_table nt
where date_part('year',"startDateTime") = 2018
group by date
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition";

create or replace view nitrate2019 as 
select 
date(nt."startDateTime") as "date"
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition" 
,avg(nt."surfWaterNitrateMean") as "surfWaterNitrateMean"
,avg(nt."surfWaterNitrateVariance") as "surfWaterNitrateVariance"
from nitrate.main_table nt
where date_part('year',"startDateTime") = 2019
group by date
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition";

create or replace view nitrate2020 as 
select 
date(nt."startDateTime") as "date"
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition" 
,avg(nt."surfWaterNitrateMean") as "surfWaterNitrateMean"
,avg(nt."surfWaterNitrateVariance") as "surfWaterNitrateVariance"
from nitrate.main_table nt
where date_part('year',"startDateTime") = 2020
group by date
,nt."domainID" 
,nt."siteID" 
,nt."horizontalPosition" 
,nt."verticalPosition";

select * from nitrate2018 n 