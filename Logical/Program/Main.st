
PROGRAM _INIT
	TestVar1 := 30;
	 
END_PROGRAM

PROGRAM _CYCLIC
	TestVar2 := 100 - TestVar1;
	TestVar3 := TestVar3 + 0.1;
	
	// Create chart sample data
	ChartData[idx] := idy;
	idy := idy + 1;
	IF(idy > 50) THEN
		idy := 0;
	END_IF
	idx := idx + 1;
	IF(idx > 99) THEN
		idx := 0;
	END_IF
	ChartXaxis[idx] := USINT_TO_TIME(idx);
	
	MpReportCore_0(MpLink := ADR(gReport), Enable := 1, Name := ADR('MyReport'), Language := ADR('en'), DeviceName := ADR('SIM_DEVICE'));
	 
END_PROGRAM

PROGRAM _EXIT
	 MpReportCore_0(MpLink := ADR(gReport), Enable := 0);
END_PROGRAM

