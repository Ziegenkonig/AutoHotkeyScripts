#Persistent

CoordMode, Mouse, Screen
SetTimer, Cursor, 50
Return

Cursor:

	MouseGetPos, XPos, YPos
	
	;From Left to Right
	If (XPos == -2880) 
	{
		MouseMove, 4799, YPos, 0
	}
	;From Right to Left
	If (XPos == 4799)
	{
		MouseMove, -2880, YPos, 0
	}
	;From Up to Down on Large Monitors
	If (YPos == 0) and (XPos < 2880)
	{
		MouseMove, XPos, 1799, 0
	}
	;From Down To Up on Large Monitors
	If (YPos == 1799) and (XPos < 2880)
	{
		MouseMove, XPos, 0, 0
	}
	;From Up to Down on Laptop
	If (YPos == 0) and (XPos >= 2880)
	{
		MouseMove, XPos, 1079, 0
	}
	;From Up to Down on Laptop
	If (YPos == 1079) and (XPos >= 2880)
	{
		MouseMove, XPos, 0, 0
	}

Return