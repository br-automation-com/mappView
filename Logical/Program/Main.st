
PROGRAM _INIT
	TestVar1 := TestVar1 + 1;
	 
END_PROGRAM

PROGRAM _CYCLIC
	// Test variables
	TestVar2 := TestVar1 - 1;
	
	// Main function call for mappAudit
	MpAuditTrail_0(MpLink := ADR(gAuditTrail), Enable := 1, DeviceName := ADR('HD'), Export := cmdExport);
	cmdExport := FALSE;
	
	// Create a custom event when TestVar3 is 0
	IF(TestVar3 = 0 AND TestVar3old <> 0) THEN
		MpAuditCustomEvent(MpLink := gAuditTrail, Type := "ValueChange", Message := "Test Variable 3 was set to 0", Comment := "");
	END_IF
	TestVar3old := TestVar3;
END_PROGRAM

