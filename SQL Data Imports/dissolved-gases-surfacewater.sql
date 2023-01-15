create schema if not exists dissolved_gases;

create table if not exists dissolved_gases.sdg_fieldData(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"parentSampleID" text
,"waterSampleID" text
,"waterSampleCode" text
,"sdgFieldDataQF" text
,"publicationDate" text
,"release" text
);

copy dissolved_gases.sdg_fieldData(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"parentSampleID"
,"waterSampleID"
,"waterSampleCode"
,"sdgFieldDataQF"
,"publicationDate"
,"release")
from 
'/project/datastuff/dissolved_gases/sdg_fieldData.csv'
delimiter ',' csv header;


create table if not exists dissolved_gases.sdg_fieldDataAir(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"referenceAirSampleID" text
,"referenceAirSampleCode" text
,"airVolumeSample" text
,"remarks" text
,"lowAirVolumeQF" numeric
,"sdgAirDataQF" text
,"publicationDate" text
,"release" text
);

copy dissolved_gases.sdg_fieldDataAir(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"referenceAirSampleID"
,"referenceAirSampleCode"
,"airVolumeSample"
,"remarks"
,"lowAirVolumeQF"
,"sdgAirDataQF"
,"publicationDate"
,"release")
from 
'/project/datastuff/dissolved_gases/sdg_fieldDataAir.csv'
delimiter ',' csv header;


create table if not exists dissolved_gases.sdg_fieldDataProc(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" timestamp
,"processedDate" timestamp
,"sampleProcessingLocation" text
,"sampleEquilibrationLocation" text
,"waterSampleID" text
,"waterSampleCode" text
,"vequilibratedAirSampleID" text
,"equilibratedAirSampleCode" text
,"referenceAirSampleID" text
,"referenceAirSampleCode" text
,"storageWaterTemp" numeric 
,"ptBarometricPressure" numeric 
,"procBarometricPressure" numeric 
,"syringeWaterTemp" numeric 
,"waterVolumeSyringe" numeric 
,"gasVolumeSyringe" numeric 
,"gasVolumeSample" numeric 
,"lowGasVolumeQF" numeric 
,"sdgProcessDataQF" numeric 
,"publicationDate" text
,"release" text
);

copy dissolved_gases.sdg_fieldDataProc(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"processedDate"
,"sampleProcessingLocation"
,"sampleEquilibrationLocation"
,"waterSampleID"
,"waterSampleCode"
,"vequilibratedAirSampleID"
,"equilibratedAirSampleCode"
,"referenceAirSampleID"
,"referenceAirSampleCode"
,"storageWaterTemp"
,"ptBarometricPressure"
,"procBarometricPressure"
,"syringeWaterTemp"
,"waterVolumeSyringe"
,"gasVolumeSyringe"
,"gasVolumeSample"
,"lowGasVolumeQF"
,"sdgProcessDataQF"
,"publicationDate"
,"release")
from 
'/project/datastuff/dissolved_gases/sdg_fieldDataProc.csv'
delimiter ',' csv header;


create table if not exists dissolved_gases.sdg_fieldSuperParent(
"uid" text
,"vdomainID" text
,"siteID" text
,"namedLocation" text
,"decimalLatitude" numeric 
,"decimalLongitude" numeric 
,"vcoordinateUncertainty" numeric 
,"additionalCoordUncertainty" numeric 
,"elevation" numeric 
,"elevationUncertainty" numeric 
,"geodeticDatum" text
,"altLocation" text
,"altLatitude" numeric 
,"altLongitude" numeric 
,"altCoordinateUncertainty" numeric 
,"altGeodeticDatum" text
,"collectDate" timestamp
,"aquaticSiteType"  text
,"samplingImpractical" text
,"sdgSampleCollected" text
,"parentSampleID" text
,"eventID" text
,"measurementDepth" text
,"samplerType" text
,"dissolvedOxygen" numeric 
,"dissolvedOxygenSaturation" numeric 
,"specificConductance" numeric 
,"waterTemp" numeric 
,"ptBarometricPressure" numeric 
,"maxDepth" numeric 
,"lakeSampleDepth1" numeric 
,"lakeSampleDepth2" numeric 
,"aCollectedBy" text
,"bCollectedBy" text
,"remarks" text
,"publicationDate" text
,"release" text
);

copy dissolved_gases.sdg_fieldSuperParent(
"uid"
,"vdomainID"
,"siteID"
,"namedLocation"
,"decimalLatitude"
,"decimalLongitude"
,"vcoordinateUncertainty"
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
,"sdgSampleCollected"
,"parentSampleID"
,"eventID"
,"measurementDepth"
,"samplerType"
,"dissolvedOxygen"
,"dissolvedOxygenSaturation"
,"specificConductance"
,"waterTemp"
,"ptBarometricPressure"
,"maxDepth"
,"lakeSampleDepth1"
,"lakeSampleDepth2"
,"aCollectedBy"
,"bCollectedBy"
,"remarks"
,"publicationDate"
,"release")
from 
'/project/datastuff/dissolved_gases/sdg_fieldSuperParent.csv'
delimiter ',' csv header;

create table if not exists dissolved_gases.sdg_externalLabData(
"uid" text
,"domainID" text
,"siteID" text
,"namedLocation" text
,"collectDate" text
,"analysisDate" date
,"internalLabID" numeric
,"internalSampleName" text
,"internalLabFileName" text
,"sampleID" text
,"sampleCode" text
,"concentrationCH4" numeric
,"runDetectionLimitCH4" numeric
,"precisionCH4" numeric
,"concentrationCO2" numeric
,"runDetectionLimitCO2" numeric
,"precisionCO2" numeric
,"concentrationN2O" numeric
,"runDetectionLimitN2O" numeric
,"precisionN2O" numeric
,"sampleCondition" text
,"laboratoryName" text
,"analyzedBy" text
,"externalRemarks" text
,"volumeGasAnalyzed" numeric
,"gasStandardAccuracy" numeric
,"CH4CheckStandardPercentDev" numeric
,"CH4CheckStandardQF" numeric
,"CO2CheckStandardPercentDev" numeric
,"CO2CheckStandardQF" numeric
,"N2OCheckStandardPercentDev" numeric
,"N2OCheckStandardQF" numeric
,"publicationDate" text
,"release" text
);

copy dissolved_gases.sdg_externalLabData(
"uid"
,"domainID"
,"siteID"
,"namedLocation"
,"collectDate"
,"analysisDate"
,"internalLabID"
,"internalSampleName"
,"internalLabFileName"
,"sampleID"
,"sampleCode"
,"concentrationCH4"
,"runDetectionLimitCH4"
,"precisionCH4"
,"concentrationCO2"
,"runDetectionLimitCO2"
,"precisionCO2"
,"concentrationN2O"
,"runDetectionLimitN2O"
,"precisionN2O"
,"sampleCondition"
,"laboratoryName"
,"analyzedBy"
,"externalRemarks"
,"volumeGasAnalyzed"
,"gasStandardAccuracy"
,"CH4CheckStandardPercentDev"
,"CH4CheckStandardQF"
,"CO2CheckStandardPercentDev"
,"CO2CheckStandardQF"
,"N2OCheckStandardPercentDev"
,"N2OCheckStandardQF"
,"publicationDate"
,"release"
)
from
'/project/datastuff/dissolved_gases/sdg_externalLabData - Copy.csv' 
delimiter ',' csv header;

create table if not exists dissolved_gases.sdg_externalLabSummaryData(
"uid" text
,"laboratoryName" text
,"startDate" timestamp
,"endDate" timestamp
,"analyte" text
,"method" text
,"methodDetectionLimit" numeric 
,"methodDetectionLimitUnits" text
,"instrument" text
,"precision" numeric 
,"precisionUnits" text
,"measurementUncertainty" numeric 
,"measurementUncertaintyUnits" text
,"labSpecificStartDate" date
,"labSpecificEndDate" date
,"remarks" text
,"dataQF" numeric
,"publicationDate" text
);

copy dissolved_gases.sdg_externalLabSummaryData(
"uid"
,"laboratoryName"
,"startDate"
,"endDate"
,"analyte"
,"method"
,"methodDetectionLimit"
,"methodDetectionLimitUnits"
,"instrument"
,"precision"
,"precisionUnits"
,"measurementUncertainty"
,"measurementUncertaintyUnits"
,"labSpecificStartDate"
,"labSpecificEndDate"
,"remarks"
,"dataQF"
,"publicationDate")
from
'/project/datastuff/dissolved_gases/sdg_externalLabSummaryData.csv'
delimiter ',' csv header;

