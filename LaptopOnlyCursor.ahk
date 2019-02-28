#Persistent

CoordMode, Mouse, Screen
SetTimer, Cursor, 50
Return

Cursor:

	MouseGetPos, XPos, YPos
	
	;From Up to Down on Laptop
	If (YPos == 0)
	{
		MouseMove, XPos, 1079, 0
	}
	;From Up to Down on Laptop
	If (YPos == 1079)
	{
		MouseMove, XPos, 0, 0
	}

Return