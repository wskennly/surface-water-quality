create schema if not exists water_quality;

create table if not exists  water_quality.maintable (
"domainID" text
,"vsiteID" text
,"horizontalPosition" numeric
,"verticalPosition" numeric
,"startDateTime" timestamp
,"endDateTime" timestamp
,"sensorDepth" numeric
,"sensorDepthExpUncert" numeric
,"sensorDepthRangeQF" numeric
,"sensorDepthNullQF" numeric
,"sensorDepthGapQF" numeric
,"sensorDepthValidCalQF" numeric
,"sensorDepthSuspectCalQF" numeric
,"sensorDepthPersistQF" numeric
,"sensorDepthAlphaQF" numeric
,"sensorDepthBetaQF" numeric
,"sensorDepthFinalQF" numeric
,"sensorDepthFinalQFSciRvw" numeric
,"specificConductance" numeric
,"specificConductanceExpUncert" numeric
,"specificConductanceRangeQF" numeric
,"specificConductanceStepQF" numeric
,"specificConductanceNullQF" numeric
,"specificConductanceGapQF" numeric
,"specificConductanceSpikeQF" numeric
,"specificConductanceValidCalQF" numeric
,"specificCondSuspectCalQF" numeric
,"specificConductancePersistQF" numeric
,"specificConductanceAlphaQF" numeric
,"specificConductanceBetaQF" numeric
,"specificCondFinalQF" numeric
,"specificCondFinalQFSciRvw" numeric
,"dissolvedOxygen" numeric
,"dissolvedOxygenExpUncert" numeric
,"dissolvedOxygenRangeQF" numeric
,"dissolvedOxygenStepQF" numeric
,"dissolvedOxygenNullQF" numeric
,"dissolvedOxygenGapQF" numeric
,"dissolvedOxygenSpikeQF" numeric
,"dissolvedOxygenValidCalQF" numeric
,"dissolvedOxygenSuspectCalQF" numeric
,"dissolvedOxygenPersistenceQF" numeric
,"dissolvedOxygenAlphaQF" numeric
,"dissolvedOxygenBetaQF" numeric
,"dissolvedOxygenFinalQF" numeric
,"dissolvedOxygenFinalQFSciRvw" numeric 
,"seaLevelDissolvedOxygenSat" numeric
,"seaLevelDOSatExpUncert" numeric
,"seaLevelDOSatRangeQF" numeric
,"seaLevelDOSatStepQF" numeric
,"seaLevelDOSatNullQF" numeric
,"seaLevelDOSatGapQF" numeric
,"seaLevelDOSatSpikeQF" numeric
,"seaLevelDOSatValidCalQF" numeric
,"seaLevelDOSatSuspectCalQF" numeric
,"seaLevelDOSatPersistQF" numeric
,"seaLevelDOSatAlphaQF" numeric
,"seaLevelDOSatBetaQF" numeric
,"seaLevelDOSatFinalQF" numeric
,"seaLevelDOSatFinalQFSciRvw" numeric
,"localDissolvedOxygenSat" numeric
,"localDOSatExpUncert" numeric
,"localDOSatRangeQF" numeric
,"localDOSatStepQF" numeric
,"localDOSatNullQF" numeric
,"localDOSatGapQF" numeric
,"localDOSatSpikeQF" numeric
,"localDOSatValidCalQF" numeric
,"localDOSatSuspectCalQF" numeric
,"localDOSatPersistQF" numeric
,"localDOSatAlphaQF" numeric
,"localDOSatBetaQF" numeric
,"localDOSatFinalQF" numeric
,"localDOSatFinalQFSciRvw" numeric
,"pH" numeric
,"pHExpUncert" numeric
,"pHRangeQF" numeric
,"pHStepQF" numeric
,"pHNullQF" numeric
,"pHGapQF" numeric
,"pHSpikeQF" numeric
,"pHValidCalQF" numeric
,"pHSuspectCalQF" numeric
,"pHPersistenceQF" numeric
,"pHAlphaQF" numeric
,"pHBetaQF" numeric
,"pHFinalQF" numeric
,"pHFinalQFSciRvw" numeric
,"chlorophyll" numeric
,"chlorophyllExpUncert" numeric
,"chlorophyllRangeQF" numeric
,"chlorophyllStepQF" numeric
,"chlorophyllNullQF" numeric
,"chlorophyllGapQF" numeric
,"chlorophyllSpikeQF" numeric
,"chlorophyllValidCalQF" numeric
,"chlorophyllSuspectCalQF" numeric
,"chlorophyllPersistenceQF" numeric
,"chlorophyllAlphaQF" numeric
,"chlorophyllBetaQF" numeric
,"chlorophyllFinalQF" numeric
,"chlorophyllFinalQFSciRvw" numeric
,"chlaRelativeFluorescence" numeric
,"chlaRelFluoroExpUncert" numeric
,"chlaRelFluoroRangeQF" numeric
,"chlaRelFluoroStepQF" numeric
,"chlaRelFluoroNullQF" numeric
,"chlaRelFluoroGapQF" numeric
,"chlaRelFluoroSpikeQF" numeric
,"chlaRelFluoroValidCalQF" numeric
,"chlaRelFluoroSuspectCalQF" numeric
,"chlaRelFluoroPersistenceQF" numeric
,"chlaRelFluoroAlphaQF" numeric
,"chlaRelFluoroBetaQF" numeric
,"chlaRelFluoroFinalQF" numeric
,"chlaRelFluoroFinalQFSciRvw" numeric
,"turbidity" numeric
,"turbidityExpUncert" numeric
,"turbidityRangeQF" numeric
,"turbidityStepQF" numeric 
,"turbidityNullQF" numeric
,"turbidityGapQF" numeric
,"turbiditySpikeQF" numeric
,"turbidityValidCalQF" numeric
,"turbiditySuspectCalQF" numeric
,"turbidityPersistenceQF" numeric
,"turbidityAlphaQF" numeric
,"turbidityBetaQF" numeric
,"turbidityFinalQF" numeric
,"turbidityFinalQFSciRvw" numeric
,"fDOM" numeric
,"rawCalibratedfDOM" numeric
,"fDOMExpUncert" numeric
,"fDOMRangeQF" numeric
,"fDOMStepQF" numeric
,"fDOMNullQF" numeric
,"fDOMGapQF" numeric 
,"fDOMSpikeQF" numeric
,"fDOMValidCalQF" numeric
,"fDOMSuspectCalQF" numeric
,"fDOMPersistenceQF" numeric
,"fDOMAlphaQF" numeric
,"fDOMBetaQF" numeric
,"fDOMTempQF" numeric
,"fDOMAbsQF" numeric
,"fDOMFinalQF" numeric
,"fDOMFinalQFSciRvw" numeric
,"buoyNAFlag" numeric
,"spectrumCount" numeric
,"publicationDate" text
,"release" text
);

copy water_quality.maintable(
"domainID" 
,"vsiteID" 
,"horizontalPosition" 
,"verticalPosition" 
,"startDateTime" 
,"endDateTime" 
,"sensorDepth" 
,"sensorDepthExpUncert" 
,"sensorDepthRangeQF" 
,"sensorDepthNullQF" 
,"sensorDepthGapQF" 
,"sensorDepthValidCalQF" 
,"sensorDepthSuspectCalQF" 
,"sensorDepthPersistQF" 
,"sensorDepthAlphaQF" 
,"sensorDepthBetaQF" 
,"sensorDepthFinalQF" 
,"sensorDepthFinalQFSciRvw" 
,"specificConductance" 
,"specificConductanceExpUncert" 
,"specificConductanceRangeQF" 
,"specificConductanceStepQF" 
,"specificConductanceNullQF" 
,"specificConductanceGapQF" 
,"specificConductanceSpikeQF" 
,"specificConductanceValidCalQF" 
,"specificCondSuspectCalQF" 
,"specificConductancePersistQF" 
,"specificConductanceAlphaQF" 
,"specificConductanceBetaQF" 
,"specificCondFinalQF" 
,"specificCondFinalQFSciRvw" 
,"dissolvedOxygen" 
,"dissolvedOxygenExpUncert" 
,"dissolvedOxygenRangeQF" 
,"dissolvedOxygenStepQF" 
,"dissolvedOxygenNullQF" 
,"dissolvedOxygenGapQF" 
,"dissolvedOxygenSpikeQF" 
,"dissolvedOxygenValidCalQF" 
,"dissolvedOxygenSuspectCalQF" 
,"dissolvedOxygenPersistenceQF" 
,"dissolvedOxygenAlphaQF" 
,"dissolvedOxygenBetaQF" 
,"dissolvedOxygenFinalQF" 
,"dissolvedOxygenFinalQFSciRvw"  
,"seaLevelDissolvedOxygenSat" 
,"seaLevelDOSatExpUncert" 
,"seaLevelDOSatRangeQF" 
,"seaLevelDOSatStepQF" 
,"seaLevelDOSatNullQF" 
,"seaLevelDOSatGapQF" 
,"seaLevelDOSatSpikeQF" 
,"seaLevelDOSatValidCalQF" 
,"seaLevelDOSatSuspectCalQF" 
,"seaLevelDOSatPersistQF" 
,"seaLevelDOSatAlphaQF" 
,"seaLevelDOSatBetaQF" 
,"seaLevelDOSatFinalQF" 
,"seaLevelDOSatFinalQFSciRvw" 
,"localDissolvedOxygenSat" 
,"localDOSatExpUncert" 
,"localDOSatRangeQF" 
,"localDOSatStepQF" 
,"localDOSatNullQF" 
,"localDOSatGapQF" 
,"localDOSatSpikeQF" 
,"localDOSatValidCalQF" 
,"localDOSatSuspectCalQF" 
,"localDOSatPersistQF" 
,"localDOSatAlphaQF" 
,"localDOSatBetaQF" 
,"localDOSatFinalQF" 
,"localDOSatFinalQFSciRvw" 
,"pH" 
,"pHExpUncert" 
,"pHRangeQF" 
,"pHStepQF" 
,"pHNullQF" 
,"pHGapQF" 
,"pHSpikeQF" 
,"pHValidCalQF" 
,"pHSuspectCalQF" 
,"pHPersistenceQF" 
,"pHAlphaQF" 
,"pHBetaQF" 
,"pHFinalQF" 
,"pHFinalQFSciRvw" 
,"chlorophyll" 
,"chlorophyllExpUncert" 
,"chlorophyllRangeQF" 
,"chlorophyllStepQF" 
,"chlorophyllNullQF" 
,"chlorophyllGapQF" 
,"chlorophyllSpikeQF" 
,"chlorophyllValidCalQF" 
,"chlorophyllSuspectCalQF" 
,"chlorophyllPersistenceQF" 
,"chlorophyllAlphaQF" 
,"chlorophyllBetaQF" 
,"chlorophyllFinalQF" 
,"chlorophyllFinalQFSciRvw" 
,"chlaRelativeFluorescence" 
,"chlaRelFluoroExpUncert" 
,"chlaRelFluoroRangeQF" 
,"chlaRelFluoroStepQF" 
,"chlaRelFluoroNullQF" 
,"chlaRelFluoroGapQF" 
,"chlaRelFluoroSpikeQF" 
,"chlaRelFluoroValidCalQF" 
,"chlaRelFluoroSuspectCalQF" 
,"chlaRelFluoroPersistenceQF" 
,"chlaRelFluoroAlphaQF" 
,"chlaRelFluoroBetaQF" 
,"chlaRelFluoroFinalQF" 
,"chlaRelFluoroFinalQFSciRvw" 
,"turbidity" 
,"turbidityExpUncert" 
,"turbidityRangeQF" 
,"turbidityStepQF"  
,"turbidityNullQF" 
,"turbidityGapQF" 
,"turbiditySpikeQF" 
,"turbidityValidCalQF" 
,"turbiditySuspectCalQF" 
,"turbidityPersistenceQF" 
,"turbidityAlphaQF" 
,"turbidityBetaQF" 
,"turbidityFinalQF" 
,"turbidityFinalQFSciRvw" 
,"fDOM" 
,"rawCalibratedfDOM" 
,"fDOMExpUncert" 
,"fDOMRangeQF" 
,"fDOMStepQF" 
,"fDOMNullQF" 
,"fDOMGapQF"  
,"fDOMSpikeQF" 
,"fDOMValidCalQF" 
,"fDOMSuspectCalQF" 
,"fDOMPersistenceQF" 
,"fDOMAlphaQF" 
,"fDOMBetaQF" 
,"fDOMTempQF" 
,"fDOMAbsQF" 
,"fDOMFinalQF" 
,"fDOMFinalQFSciRvw" 
,"buoyNAFlag" 
,"spectrumCount" 
,"publicationDate" 
,"release" 
)
from program
'awk FNR-1 /project/datastuff/water_quality/waq_instantaneous*.csv'
delimiter ',' csv header;