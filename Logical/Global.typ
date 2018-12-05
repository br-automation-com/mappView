
TYPE
	typMotor : 	STRUCT 
		Position : REAL;
		Acceleration : UINT;
		Velocity : UINT;
		IsVisible : BOOL;
	END_STRUCT;
	ClientInfoType : 	STRUCT 
		userId : WSTRING[80];
		isValid : BOOL;
		ipAddress : WSTRING[15];
		languageId : WSTRING[2];
		screenResolution : WSTRING[32];
		slotId : SINT;
	END_STRUCT;
END_TYPE
