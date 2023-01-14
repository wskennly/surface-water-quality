create schema if not exists count_microbe;

create table if not exists count_microbe.amc_cellCountLabSummary(
"uid" text
,"labSpecificStartDate" timestamp
,"labSpecificEndDate" timestamp
,"laboratoryName" text
,"testProtocolVersion" text
,"cellCountMethod" text
,"referenceImageID" text
,"referenceImageCount" numeric
,"countStandardDeviation" numeric
,"longTermEnumerationDifference" numeric
,"enumerationDifferenceMin" numeric
,"enumerationDifferenceMax" numeric
,"enumerationDifferenceMean" numeric
,"recordedBy" text
,"enteredBy" text
,"publicationDate" text
);


copy count_microbe.amc_cellCountLabSummary (
"uid"
,"labSpecificStartDate"
,"labSpecificEndDate"
,"laboratoryName"
,"testProtocolVersion"
,"cellCountMethod"
,"referenceImageID"
,"referenceImageCount"
,"countStandardDeviation"
,"longTermEnumerationDifference"
,"enumerationDifferenceMin"
,"enumerationDifferenceMax"
,"enumerationDifferenceMean"
,"recordedBy"
,"enteredBy"
,"publicationDate"
)
from '/project/datastuff/count-microbe/amc_cellCountLabSummary.csv'
delimiter ',' csv header;


create table if not exists count_microbe.amc_cellCounts(
"uid" text
,"laboratoryName" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"testedDate" timestamp
,"sampleCondition" text
,"cellCountSampleID" text
,"testProtocolVersion" text
,"cellCountMethod" text
,"filterSize" numeric
,"dilutionFactor" numeric
,"numberOfFieldsAnalyzed" numeric
,"analysisMagnification" numeric
,"rawMicrobialAbundance" numeric
,"enumerationDifference" numeric
,"qaqcStatus" text
,"remarks" text
,"analyzedBy" text
,"qcAnalyzedBy" text
,"reviewedBy" text
,"publicationDate" text
,"release" text
);

copy count_microbe.amc_cellCounts(
"uid"
,"laboratoryName"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"testedDate"
,"sampleCondition"
,"cellCountSampleID"
,"testProtocolVersion"
,"cellCountMethod"
,"filterSize"
,"dilutionFactor"
,"numberOfFieldsAnalyzed"
,"analysisMagnification"
,"rawMicrobialAbundance"
,"enumerationDifference"
,"qaqcStatus"
,"remarks"
,"analyzedBy"
,"qcAnalyzedBy"
,"reviewedBy"
,"publicationDate"
,"release")
from '/project/datastuff/count-microbe/amc_cellCounts.csv'
delimiter ',' csv header;

create table if not exists count_microbe.amc_fieldCellCounts(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"parentSampleID" text
,"cellCountSampleCond" text
,"cellCountSampleID" text
,"cellCountSampleVolume" numeric
,"cellCountPreservantVolume" numeric
,"archiveSampleCond" text
,"archiveID" text
,"geneticSampleCond" text
,"geneticSampleID" text
,"publicationDate" text
,"release" text
);


copy  count_microbe.amc_fieldCellCounts(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"parentSampleID"
,"cellCountSampleCond"
,"cellCountSampleID"
,"cellCountSampleVolume"
,"cellCountPreservantVolume"
,"archiveSampleCond"
,"archiveID"
,"geneticSampleCond"
,"geneticSampleID"
,"publicationDate"
,"release"
)
from '/project/datastuff/count-microbe/amc_fieldCellCounts.csv'
delimiter ',' csv header;

create table if not exists count_microbe.amc_fieldSuperParent(
"uid" text
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
,"altLocation"text
,"altLatitude" numeric 
,"altLongitude" numeric 
,"altCoordinateUncertainty" numeric 
,"altGeodeticDatum" text
,"collectDate" timestamp
,"aquaticSiteType" text
,"samplingImpractical" text
,"microbeSamplesCollected" text
,"parentSampleID" text
,"parentSampleCode" text
,"eventID" text
,"samplerType" text
,"dissolvedOxygen" numeric 
,"dissolvedOxygenSaturation" numeric 
,"specificConductance" numeric 
,"waterTemp" numeric 
,"amcSamplingProtocolVersion" text
,"lowerSegmentDepth" numeric 
,"upperSegmentDepth" numeric 
,"maxDepth" numeric 
,"lakeSampleDepth1" numeric 
,"lakeSampleDepth2" numeric 
,"aCollectedBy" text
,"bCollectedBy" text
,"remarks" text
,"publicationDate" text
,"release" text
);

copy count_microbe.amc_fieldSuperParent(
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
,"altLongitude"
,"altCoordinateUncertainty"
,"altGeodeticDatum"
,"collectDate"
,"aquaticSiteType"
,"samplingImpractical"
,"microbeSamplesCollected"
,"parentSampleID"
,"parentSampleCode"
,"eventID"
,"samplerType"
,"dissolvedOxygen"
,"dissolvedOxygenSaturation"
,"specificConductance"
,"waterTemp"
,"amcSamplingProtocolVersion"
,"lowerSegmentDepth"
,"upperSegmentDepth"
,"maxDepth"
,"lakeSampleDepth1"
,"lakeSampleDepth2"
,"aCollectedBy"
,"bCollectedBy"
,"remarks"
,"publicationDate"
,"release")
from '/project/datastuff/count-microbe/amc_fieldSuperParent.csv'
delimiter ',' csv header;
