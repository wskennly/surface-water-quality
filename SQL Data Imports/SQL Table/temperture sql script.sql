create schema if not exists temperature;

create table if not exists temperature.main_table(
"domainID" text
,"siteID" text
,"horizontalPosition" numeric
,"verticalPosition" numeric
,"startDateTime" timestamp
,"endDateTime" timestamp
,"surfWaterTempMean" numeric
,"surfWaterTempMinimum" numeric
,"surfWaterTempMaximum" numeric
,"surfWaterTempVariance" numeric
,"surfWaterTempNumPts" numeric
,"surfWaterTempExpUncert" numeric
,"surfWaterTempStdErMean" numeric
,"rangeFailQM" numeric
,"rangePassQM" numeric
,"rangeNAQM" numeric
,"persistenceFailQM" numeric
,"persistencePassQM" numeric
,"persistenceNAQM" numeric
,"stepFailQM" numeric
,"stepPassQM" numeric
,"stepNAQM" numeric
,"nullFailQM" numeric
,"nullPassQM" numeric
,"nullNAQM" numeric
,"gapFailQM" numeric
,"gapPassQM" numeric
,"gapNAQM" numeric
,"spikeFailQM" numeric
,"spikePassQM" numeric
,"spikeNAQM" numeric
,"validCalFailQM" numeric
,"validCalPassQM" numeric
,"validCalNAQM" numeric
,"alphaQM" numeric
,"betaQM" numeric
,"finalQF" numeric
,"finalQFSciRvw" numeric
,"publicationDate" text
,"release" text
);


copy temperature.main_table (
"domainID"
,"siteID"
,"horizontalPosition"
,"verticalPosition"
,"startDateTime"
,"endDateTime"
,"surfWaterTempMean"
,"surfWaterTempMinimum"
,"surfWaterTempMaximum"
,"surfWaterTempVariance"
,"surfWaterTempNumPts"
,"surfWaterTempExpUncert"
,"surfWaterTempStdErMean"
,"rangeFailQM"
,"rangePassQM"
,"rangeNAQM"
,"persistenceFailQM"
,"persistencePassQM"
,"persistenceNAQM"
,"stepFailQM"
,"stepPassQM"
,"stepNAQM"
,"nullFailQM"
,"nullPassQM"
,"nullNAQM"
,"gapFailQM"
,"gapPassQM"
,"gapNAQM"
,"spikeFailQM"
,"spikePassQM"
,"spikeNAQM"
,"validCalFailQM"
,"validCalPassQM"
,"validCalNAQM"
,"alphaQM"
,"betaQM"
,"finalQF"
,"finalQFSciRvw"
,"publicationDate"
,"release")
from program
'awk FNR-1 /project/datastuff/Temperature/TSW_*.csv'
delimiter ',' csv header;

