create schema if not exists group_abund_microbe;

create table if not exists group_abund_microbe.mga_swGroupAbundances(
"uid" text
,"namedLocation" text
,"domainID" text
,"siteID" text
,"collectDate" timestamp
,"processedDate" date
,"sampleMaterial" text
,"geneticSampleID" text
,"laboratoryName" text
,"dnaSampleID" text
,"dnaSampleCode" text
,"internalLabID" text
,"batchID" text
,"testProtocolVersion" text
,"nucleicAcidConcentration" numeric
,"inhibitorRemovalRequired" text
,"targetGene" text
,"targetTaxonGroup" text
,"sampleCondition" text
,"meanCopyNumber" numeric
,"copyNumberStandardDeviation" numeric
,"meanCqValue" numeric
,"processedBy" text
,"reviewedBy" text
,"remarks" text
,"dataQF" text
,"publicationDate" text
,"release" text
);

copy group_abund_microbe.mga_swGroupAbundances(
"uid"
,"namedLocation"
,"domainID"
,"siteID"
,"collectDate"
,"processedDate"
,"sampleMaterial"
,"geneticSampleID"
,"laboratoryName"
,"dnaSampleID"
,"dnaSampleCode"
,"internalLabID"
,"batchID"
,"testProtocolVersion"
,"nucleicAcidConcentration"
,"inhibitorRemovalRequired"
,"targetGene"
,"targetTaxonGroup"
,"sampleCondition"
,"meanCopyNumber"
,"copyNumberStandardDeviation"
,"meanCqValue"
,"processedBy"
,"reviewedBy"
,"remarks"
,"dataQF"
,"publicationDate"
,"release")
from '/project/datastuff/group_abund_microbe/mga_swGroupAbundances.csv'
delimiter ',' csv header;

create table if not exists group_abund_microbe.mga_batchResults(
"uid" text
,"laboratoryName" text
,"startDate" timestamp
,"endDate" timestamp
,"vbatchID" text
,"noTemplateControlCq" numeric
,"calCurveSlope" numeric
,"calCurveIntercept" numeric
,"standardDescription" text
,"linearDynamicRangeLower" numeric
,"linearDynamicRangeUpper" numeric
,"lodCqVar" numeric
,"negControl1Result" text
,"negControl2Result" text
,"negControl3Result" text
,"negControl4Result" text
,"negControl5Result" text
,"calCurveRsquared" numeric
,"pcrEfficiency" numeric
,"pcrEfficiencyConfInt" numeric
,"dataQF" numeric
,"publicationDate" text
);

copy group_abund_microbe.mga_batchResults(
"uid"
,"laboratoryName"
,"startDate"
,"endDate"
,"vbatchID"
,"noTemplateControlCq"
,"calCurveSlope"
,"calCurveIntercept"
,"standardDescription"
,"linearDynamicRangeLower"
,"linearDynamicRangeUpper"
,"lodCqVar"
,"negControl1Result"
,"negControl2Result"
,"negControl3Result"
,"negControl4Result"
,"negControl5Result"
,"calCurveRsquared"
,"pcrEfficiency"
,"pcrEfficiencyConfInt"
,"dataQF"
,"publicationDate")
from 
'/project/datastuff/group_abund_microbe/mga_batchResults.csv'
delimiter ',' csv header;

create table if not exists group_abund_microbe.mga_labSummary(
"uid" text
,"targetTaxonGroup" text 
,"labSpecificStartDate" date
,"labSpecificEndDate" date
,"laboratoryName" text 
,"qpcrDetectionMethod" text 
,"primerConcentration" numeric
,"forwardPrimer" text 
,"reversePrimer" text 
,"ampliconLength" numeric
,"dNTPConcentration" numeric
,"probeConcentration" numeric
,"mgConcentration" numeric
,"polymeraseType" text 
,"polymeraseUnitNumber" text 
,"bufferID" text 
,"bufferComposition" text 
,"reactionVolume" numeric
,"qpcrMethod" text 
,"instrument" text 
,"primerSpecificity" text 
,"detectionLimit" numeric
,"multiplexStatus" text 
,"qPCRAnalysisProgram" text 
,"cqMethod" text 
,"recordedBy" text 
,"dataQF" text 
,"publicationDate" text 
);

copy group_abund_microbe.mga_labSummary(
"uid"
,"targetTaxonGroup"
,"labSpecificStartDate"
,"labSpecificEndDate"
,"laboratoryName"
,"qpcrDetectionMethod"
,"primerConcentration"
,"forwardPrimer"
,"reversePrimer"
,"ampliconLength"
,"dNTPConcentration"
,"probeConcentration"
,"mgConcentration"
,"polymeraseType"
,"polymeraseUnitNumber"
,"bufferID"
,"bufferComposition"
,"reactionVolume"
,"qpcrMethod"
,"instrument"
,"primerSpecificity"
,"detectionLimit"
,"multiplexStatus"
,"qPCRAnalysisProgram"
,"cqMethod"
,"recordedBy"
,"dataQF"
,"publicationDate"
)
from '/project/datastuff/group_abund_microbe/mga_labSummary.csv'
delimiter ',' csv header;
