create or replace view waterquality2018 as 
select 
date(m."startDateTime") as "date"
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition" 
,avg(m."specificConductance") as "specificConductance"
,avg(m."dissolvedOxygen") as "dissolvedOxygen"
,avg(m."seaLevelDissolvedOxygenSat") as "seaLevelDissolvedOxygenSat"
,avg(m."localDissolvedOxygenSat") as "localDissolvedOxygenSat"
,avg(m."pH") as "pH"
,avg(m."chlorophyll") as "chlorophyll"
,avg(m."chlaRelativeFluorescence") as "chlaRelativeFluorescence"
,avg(m."turbidity") as "turbidity"
,avg(m."fDOM") as "fDOM"
,avg(m."spectrumCount") as "spectrumCount"
from water_quality.maintable m
where date_part('year',"startDateTime") = 2018
group by date
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition";

create or replace view waterquality2019 as 
select 
date(m."startDateTime") as "date"
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition" 
,avg(m."specificConductance") as "specificConductance"
,avg(m."dissolvedOxygen") as "dissolvedOxygen"
,avg(m."seaLevelDissolvedOxygenSat") as "seaLevelDissolvedOxygenSat"
,avg(m."localDissolvedOxygenSat") as "localDissolvedOxygenSat"
,avg(m."pH") as "pH"
,avg(m."chlorophyll") as "chlorophyll"
,avg(m."chlaRelativeFluorescence") as "chlaRelativeFluorescence"
,avg(m."turbidity") as "turbidity"
,avg(m."fDOM") as "fDOM"
,avg(m."spectrumCount") as "spectrumCount"
from water_quality.maintable m
where date_part('year',"startDateTime") = 2019
group by date
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition";

create or replace view waterquality2020 as 
select 
date(m."startDateTime") as "date"
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition" 
,avg(m."specificConductance") as "specificConductance"
,avg(m."dissolvedOxygen") as "dissolvedOxygen"
,avg(m."seaLevelDissolvedOxygenSat") as "seaLevelDissolvedOxygenSat"
,avg(m."localDissolvedOxygenSat") as "localDissolvedOxygenSat"
,avg(m."pH") as "pH"
,avg(m."chlorophyll") as "chlorophyll"
,avg(m."chlaRelativeFluorescence") as "chlaRelativeFluorescence"
,avg(m."turbidity") as "turbidity"
,avg(m."fDOM") as "fDOM"
,avg(m."spectrumCount") as "spectrumCount"
from water_quality.maintable m
where date_part('year',"startDateTime") = 2020
group by date
,m."domainID" 
,m."siteID" 
,m."horizontalPosition" 
,m."verticalPosition";

select * from waterquality2018 w 