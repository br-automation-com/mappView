
PROGRAM _INIT
	ClientInfoCurrent;
	ClientInfo;

END_PROGRAM

PROGRAM _CYCLIC
	Motor[idx].Position := Motor[idx].Position + 1;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

