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

select * from countmicrobe2018 c 