
PROGRAM _INIT
	ClientInfoCurrent;
	ClientInfo;
	NewValue := FALSE;
	TestVar1 := TestVar1 + 1;
	 
END_PROGRAM

PROGRAM _CYCLIC
	TestVar2 := TestVar1 - 1;
	TestVar3 := TestVar1 + 0.1;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

