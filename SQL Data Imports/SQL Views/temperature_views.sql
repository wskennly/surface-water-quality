/*
Created 3 views of the Temp table by year (2018, 2019, 2020), 
we then selected the columns that we were interested in that 
we could used for modeling.
*/

create or replace view temp2018 as 
select 
date(t."startDateTime") as "date"
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition" 
,avg(t."surfWaterTempMean") as "surfWaterTempMean"
,avg(t."surfWaterTempVariance") as "surfWaterTempVariance"
from temperature.main_table t
where date_part('year',"startDateTime") = 2018
group by date
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition";

create or replace view temp2019 as 
select 
date(t."startDateTime") as "date"
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition" 
,avg(t."surfWaterTempMean") as "surfWaterTempMean"
,avg(t."surfWaterTempVariance") as "surfWaterTempVariance"
from temperature.main_table t
where date_part('year',"startDateTime") = 2019
group by date
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition";

create or replace view temp2020 as 
select 
date(t."startDateTime") as "date"
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition" 
,avg(t."surfWaterTempMean") as "surfWaterTempMean"
,avg(t."surfWaterTempVariance") as "surfWaterTempVariance"
from temperature.main_table t
where date_part('year',"startDateTime") = 2020
group by date
,t."domainID" 
,t."siteID" 
,t."horizontalPosition" 
,t."verticalPosition";
