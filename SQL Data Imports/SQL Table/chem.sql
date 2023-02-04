/*
Creating schema called Chem in order to import the Water Chemistry Data.
*/

create schema if not exists chem;

/*
Creating the main table called Water Chemistry POM Field Data with its column 
names in order to import Water Chemistry POM Field Data dataset. 
*/

create table if not exists chem.swc_asiPOMFieldData(
"uid" text 
,"domainID" text 
,"siteID" text 
,"namedLocation" text 
,"collectDate" timestamp
,"parentSampleID" text 
,"parentSampleCode" text 
,"isotopePOMRep2SampleCond" text 
,"isotopePOMRep2SampleID" text 
,"isotopePOMRep2SampleCode" text 
,"isotopePOMSampleCond" text 
,"isotopePOMSampleID" text 
,"isotopePOMSampleCode" text 
,"processedDateFilters" timestamp
,"sampleVolumeFilteredPOMRep1" numeric 
,"sampleVolumeFilteredPOMRep2" numeric 
,"fieldDataQF" numeric 
,"publicationDate" text 
,"release" text 
);

/*
Using the copy command to import the Water Chemistry POM Field Data table into postgres database.
*/

copy chem.swc_asiPOMFieldData(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"parentSampleID"
,"parentSampleCode"
,"isotopePOMRep2SampleCond"
,"isotopePOMRep2SampleID"
,"isotopePOMRep2SampleCode"
,"isotopePOMSampleCond"
,"isotopePOMSampleID"
,"isotopePOMSampleCode"
,"processedDateFilters"
,"sampleVolumeFilteredPOMRep1"
,"sampleVolumeFilteredPOMRep2"
,"fieldDataQF"
,"publicationDate"
,"release"
) 
from '/project/datastuff/chem/swc_asiPOMFieldData.csv'
delimiter ',' csv header;

/*
Creating the main table called Water Chemistry Domain Lab Data with its column 
names in order to import Water Chemistry Domain Lab Data dataset. 
*/

create table if not exists chem.swc_domainLabData(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"titrationDate" timestamp
,"parentSampleID"  text
,"domainSampleID" text
,"domainSampleCode" text
,"titrationLocation" text
,"sampleType" text
,"initialSamplepH" numeric 
,"initialSampleTemp" numeric 
,"normality" numeric 
,"sampleVolume" numeric 
,"methodType" text
,"remarks" text
,"measuredBy" text
,"alkMeqPerL" numeric 
,"alkMgPerL" numeric 
,"ancMeqPerL" numeric 
,"ancMgPerL" numeric 
,"dataQF" numeric 
,"publicationDate" text
,"release" text
);

/*
Using the copy command to import the Water Chemistry Domain Lab Data table into postgres database.
*/

copy chem.swc_domainLabData(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"titrationDate"
,"parentSampleID"
,"domainSampleID"
,"domainSampleCode"
,"titrationLocation"
,"sampleType"
,"initialSamplepH"
,"initialSampleTemp"
,"normality"
,"sampleVolume"
,"methodType"
,"remarks"
,"measuredBy"
,"alkMeqPerL"
,"alkMgPerL"
,"ancMeqPerL"
,"ancMgPerL"
,"dataQF"
,"publicationDate"
,"release"
) 
from '/project/datastuff/chem/swc_domainLabData.csv'
delimiter ',' csv header;

/*
Creating the main table called Water Chemistry External Lab Data with its column 
names in order to import Water Chemistry External Lab Data dataset. 
*/

create table if not exists chem.swc_externalLabDataByAnalyte(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"sampleID" text
,"sampleCode" text
,"startDate" timestamp
,"collectDate" text
,"laboratoryName" text
,"analyte" text
,"analyteConcentration" numeric 
,"analyteUnits" text
,"coolerTemp" numeric
,"remarks" text
,"shipmentWarmQF" numeric
,"externalLabDataQF" text
,"sampleCondition" text
,"publicationDate" text
,"release" text
,"analysisDate" date
,"belowDetectionQF" text
);

/*
Using the copy command to import the Water Chemistry External Lab Data table into postgres database.
*/

copy chem.swc_externalLabDataByAnalyte(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"sampleID"
,"sampleCode"
,"startDate"
,"collectDate"
,"laboratoryName"
,"analyte"
,"analyteConcentration"
,"analyteUnits"
,"coolerTemp"
,"remarks"
,"shipmentWarmQF"
,"externalLabDataQF"
,"sampleCondition"
,"publicationDate"
,"release"
,"analysisDate"
,"belowDetectionQF")
from '/project/datastuff/chem/swc_externalLabDataByAnalyte.csv'
delimiter ',' csv header;

/*
Creating the main table called Water Chemistry External Lab Summary Data with its column 
names in order to import Water Chemistry External Lab Summary Data dataset. 
*/

create table if not exists chem.swc_externalLabSummaryData(
"uid" text
,"laboratoryName" text
,"startDate" timestamp
,"endDate" timestamp
,"analyte" text
,"instrument" text
,"method" text
,"methodModification" text
,"methodDetectionLimit" numeric
,"analyteUnits" text
,"precision" numeric 
,"precisionRepeatabilityUnits" text
,"absorbancePrecision" text
,"measurementUncertainty" numeric
,"measurementUncertaintyUnits" text
,"internalLabName" text
,"labSpecificStartDate" date
,"labSpecificEndDate" date
,"publicationDate" text
);

/*
Using the copy command to import the Water Chemistry External Lab Summary Data table into postgres database.
*/

copy chem.swc_externalLabSummaryData(
"uid"
,"laboratoryName"
,"startDate"
,"endDate"
,"analyte"
,"instrument"
,"method"
,"methodModification"
,"methodDetectionLimit"
,"analyteUnits"
,"precision"
,"precisionRepeatabilityUnits"
,"absorbancePrecision"
,"measurementUncertainty"
,"measurementUncertaintyUnits"
,"internalLabName"
,"labSpecificStartDate"
,"labSpecificEndDate"
,"publicationDate"
)
from '/project/datastuff/chem/swc_externalLabSummaryData.csv'
delimiter ',' csv header;

/*
Creating the main table called Water Chemistry SWC Field Data with its column 
names in order to import Water Chemistry SWC Field Data dataset. 
*/

create table if not exists chem.swc_fieldData(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"parentSampleID" text
,"sampleCondition" text
,"sampleID" text
,"replicateNumber" numeric
,"processedDate" timestamp
,"processedDateFilters" timestamp
,"sampleVolumeFiltered" numeric
,"shipmentTimeRange" text
,"filtSampleCond" text
,"filtSampleID" text
,"filtSampleCode" text
,"filtNutSampleCond" text
,"filtNutSampleID" text
,"filtNutSampleBarcode" text
,"rawSampleCond" text
,"rawSampleID" text
,"rawSampleCode" text
,"rawNutSampleCond" text
,"rawNutSampleID" text
,"rawNutSampleBarcode" text
,"pcnSampleCond" text
,"pcnSampleID" text
,"pcnSampleCode" text
,"fieldDataQF" text
,"publicationDate" text
,"release" text
,"remarks" text
);

/*
Using the copy command to import the Water Chemistry SWC Field Data table into postgres database.
*/

copy  chem.swc_fieldData(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"parentSampleID"
,"sampleCondition"
,"sampleID"
,"replicateNumber"
,"processedDate"
,"processedDateFilters"
,"sampleVolumeFiltered"
,"shipmentTimeRange"
,"filtSampleCond"
,"filtSampleID"
,"filtSampleCode"
,"filtNutSampleCond"
,"filtNutSampleID"
,"filtNutSampleBarcode"
,"rawSampleCond"
,"rawSampleID"
,"rawSampleCode"
,"rawNutSampleCond"
,"rawNutSampleID"
,"rawNutSampleBarcode"
,"pcnSampleCond"
,"pcnSampleID"
,"pcnSampleCode"
,"fieldDataQF"
,"publicationDate"
,"release"
,"remarks"
)
from '/project/datastuff/chem/swc_fieldData.csv'
delimiter ',' csv header;

/*
Creating the main table called Water Chemistry Field Super Parent Data with its column 
names in order to import Water Chemistry Field Super Parent Data dataset. 
*/

create table if not exists chem.swc_fieldSuperParent(
"uid"  text 
,"domainID" text
,"siteID" text
,"namedLocation" text
,"decimalLatitude" numeric
,"decimalLongitude" numeric
,"coordinateUncertainty" numeric
,"additionalCoordUncertainty" numeric
,"elevation" numeric
,"elevationUncertainty" numeric
,"geodeticDatum" text
,"altLocation" text
,"altLatitude" numeric
,"valtLongitude" numeric
,"altCoordinateUncertainty"  numeric
,"altGeodeticDatum" text
,"collectDate" timestamp
,"aquaticSiteType" text
,"samplingImpractical" text
,"waterChemSamplesCollected" text
,"parentSampleID" text
,"eventID" text
,"samplerType" text
,"dissolvedOxygen" numeric
,"dissolvedOxygenSaturation" numeric
,"specificConductance" numeric
,"waterTemp" numeric
,"swcSamplingProtocolVersion" text
,"lowerSegmentDepth" numeric
,"upperSegmentDepth" numeric
,"maxDepth" numeric
,"lakeSampleDepth1" numeric
,"lakeSampleDepth2" numeric
,"aCollectedBy" text
,"bCollectedBy" text
,"remarks" text
,"fieldDataQF" text
,"publicationDate" text
,"release" text
);

/*
Using the copy command to import the Water Chemistry Field Super Parent Data table into postgres database.
*/

copy  chem.swc_fieldSuperParent(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"decimalLatitude"
,"decimalLongitude"
,"coordinateUncertainty"
,"additionalCoordUncertainty"
,"elevation"
,"elevationUncertainty"
,"geodeticDatum"
,"altLocation"
,"altLatitude"
,"valtLongitude"
,"altCoordinateUncertainty"
,"altGeodeticDatum"
,"collectDate"
,"aquaticSiteType"
,"samplingImpractical"
,"waterChemSamplesCollected"
,"parentSampleID"
,"eventID"
,"samplerType"
,"dissolvedOxygen"
,"dissolvedOxygenSaturation"
,"specificConductance"
,"waterTemp"
,"swcSamplingProtocolVersion"
,"lowerSegmentDepth"
,"upperSegmentDepth"
,"maxDepth"
,"lakeSampleDepth1"
,"lakeSampleDepth2"
,"aCollectedBy"
,"bCollectedBy"
,"remarks"
,"fieldDataQF"
,"publicationDate"
,"release")
from '/project/datastuff/chem/swc_fieldSuperParent.csv'
delimiter ',' csv header;
