/*
Creating schema called Neon nitrate.
*/

create schema if not exists nitrate;

/*
Creating the main table called Neon nitrate with its column 
names in order to import Neon nitrate dataset. 
*/

create table if not exists nitrate.main_table (
"domainID" text
,"siteID" text
,"horizontalPosition" numeric
,"verticalPosition" numeric
,"startDateTime" timestamp
,"endDateTime" timestamp
,"surfWaterNitrateMean" numeric
,"surfWaterNitrateMinimum" numeric
,"surfWaterNitrateMaximum" numeric
,"surfWaterNitrateVariance" numeric
,"surfWaterNitrateNumPts" numeric
,"surfWaterNitrateExpUncert" numeric
,"surfWaterNitrateStdErMean" numeric
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
,"nitrateInternalHumidityPassQM" numeric
,"nitrateInternalHumidityFailQM" numeric
,"nitrateInternalHumidityNAQM" numeric
,"nitrateLightDarkSpectralRatioPassQM" numeric
,"nitrateLightDarkSpectralRatioFailQM" numeric
,"nitrateLightDarkSpectralRatioNAQM" numeric
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

/*
Using the copy command to import the NEON nitrate table into postgres database.
*/

copy nitrate.main_table (
"domainID"
,"siteID"
,"horizontalPosition"
,"verticalPosition"
,"startDateTime"
,"endDateTime"
,"surfWaterNitrateMean"
,"surfWaterNitrateMinimum"
,"surfWaterNitrateMaximum"
,"surfWaterNitrateVariance"
,"surfWaterNitrateNumPts"
,"surfWaterNitrateExpUncert"
,"surfWaterNitrateStdErMean"
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
,"nitrateInternalHumidityPassQM"
,"nitrateInternalHumidityFailQM"
,"nitrateInternalHumidityNAQM"
,"nitrateLightDarkSpectralRatioPassQM"
,"nitrateLightDarkSpectralRatioFailQM"
,"nitrateLightDarkSpectralRatioNAQM"
,"validCalFailQM"
,"validCalPassQM"
,"validCalNAQM"
,"alphaQM"
,"betaQM"
,"finalQF"
,"finalQFSciRvw"
,"publicationDate"
,"release"
)
from 
'/project/datastuff/Nitrate/NSW_15_minute.csv'
delimiter ',' csv header;
