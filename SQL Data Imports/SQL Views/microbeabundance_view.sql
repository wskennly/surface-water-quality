create or replace view microbe16s2018 as 
select 
date(m."collectDate") as date
,m."domainID"
,m."siteID"
,m."nucleicAcidConcentration"
,m."targetGene"
,m."targetTaxonGroup"
,m."meanCopyNumber"
,m."copyNumberStandardDeviation"
from group_abund_microbe.mga_swgroupabundances m
where lower(m."targetGene") = '16s' and date_part('year',m."collectDate") = 2018
group by date
,m."domainID" 
,m."siteID" 
,m."nucleicAcidConcentration"
,m."meanCopyNumber"
,m."targetGene"
,m."targetTaxonGroup"
,m."copyNumberStandardDeviation"
order by 1;

create or replace view microbe16s2019 as 
select 
date(m."collectDate") as date
,m."domainID"
,m."siteID"
,m."nucleicAcidConcentration"
,m."targetGene"
,m."targetTaxonGroup"
,m."meanCopyNumber"
,m."copyNumberStandardDeviation"
from group_abund_microbe.mga_swgroupabundances m
where lower(m."targetGene") = '16s' and date_part('year',m."collectDate") = 2019
group by date
,m."domainID" 
,m."siteID" 
,m."nucleicAcidConcentration"
,m."meanCopyNumber"
,m."targetGene"
,m."targetTaxonGroup"
,m."copyNumberStandardDeviation"
order by 1;

create or replace view microbeits2018 as 
select 
date(m."collectDate") as date
,m."domainID"
,m."siteID"
,m."nucleicAcidConcentration"
,m."targetGene"
,m."targetTaxonGroup"
,m."meanCopyNumber"
,m."copyNumberStandardDeviation"
from group_abund_microbe.mga_swgroupabundances m
where lower(m."targetGene") = 'its' and date_part('year',m."collectDate") = 2018
group by date
,m."domainID" 
,m."siteID" 
,m."nucleicAcidConcentration"
,m."meanCopyNumber"
,m."targetGene"
,m."targetTaxonGroup"
,m."copyNumberStandardDeviation"
order by 1;

create or replace view microbeits2019 as 
select 
date(m."collectDate") as date
,m."domainID"
,m."siteID"
,m."nucleicAcidConcentration"
,m."targetGene"
,m."targetTaxonGroup"
,m."meanCopyNumber"
,m."copyNumberStandardDeviation"
from group_abund_microbe.mga_swgroupabundances m
where lower(m."targetGene") = 'its' and date_part('year',m."collectDate") = 2019
group by date
,m."domainID" 
,m."siteID" 
,m."nucleicAcidConcentration"
,m."meanCopyNumber"
,m."targetGene"
,m."targetTaxonGroup"
,m."copyNumberStandardDeviation"
order by 1;
