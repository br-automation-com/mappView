
PROGRAM _INIT

END_PROGRAM

PROGRAM _CYCLIC
	// Get PLC time and date
	IF(visGetDateTime) THEN
		DTGetTime_01.enable := 1;
		DTGetTime_01();
		IF(DTGetTime_01.status = 0) THEN
			visGetDateTime := 0;
			visDateTime := DTGetTime_01.DT1;
		END_IF
	END_IF
	
	// Get PLC time and date
	IF(visSetDateTime) THEN
		DTSetTime_01.enable := 1;
		DTSetTime_01.DT1 := visDateTime;
		DTSetTime_01();
		IF(DTSetTime_01.status = 0) THEN
			visSetDateTime := 0;
		END_IF
	END_IF

END_PROGRAM


