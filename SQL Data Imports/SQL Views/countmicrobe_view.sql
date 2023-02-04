/*
Created the Master Cell Count view in order to create Microbial Abundance Per Ml views Formula.
The Formula was found in the Neon PDF documentation.
*/

create or replace view masterCellCount as 
select 
ac."domainID"
,ac."siteID"
,ac."collectDate"
,ac."cellCountSampleID" as "acSampleID"
,ac."rawMicrobialAbundance"
,fcc."cellCountSampleID" as "fccSampleID"
,fcc."cellCountSampleVolume"
,fcc."cellCountPreservantVolume"  
,((ac."rawMicrobialAbundance" * (fcc."cellCountSampleVolume" + fcc."cellCountPreservantVolume") / fcc."cellCountSampleVolume")) as "microbialAbundancePerMl"
from count_microbe.amc_fieldCellCounts fcc 
full join count_microbe.amc_cellcounts ac on fcc."cellCountSampleID" = ac."cellCountSampleID";

/*
Created 3 Count Microbe views table by year (2018, 2019, 2020), 
we then selected the columns that we were interested in that we could used for modeling.
*/

create or replace view countmicrobe2018 as 
select 
date(m."collectDate") as date,
m."domainID",
m."siteID",
avg(m."microbialAbundancePerMl") as "microbialAbundancePerMl"
from mastercellcount m 
where date_part('year',m."collectDate") = 2018
group by date
,m."domainID" 
,m."siteID" 
order by 1;

create or replace view countmicrobe2019 as 
select 
date(m."collectDate") as date,
m."domainID",
m."siteID",
avg(m."microbialAbundancePerMl") as "microbialAbundancePerMl"
from mastercellcount m 
where date_part('year',m."collectDate") = 2019
group by date
,m."domainID" 
,m."siteID" 
order by 1;

create or replace view countmicrobe2020 as 
select 
date(m."collectDate") as date,
m."domainID",
m."siteID",
avg(m."microbialAbundancePerMl") as "microbialAbundancePerMl"
from mastercellcount m 
where date_part('year',m."collectDate") = 2020
group by date
,m."domainID" 
,m."siteID" 
order by 1;
