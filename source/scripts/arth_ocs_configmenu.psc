Scriptname ARTH_OCS_ConfigMenu extends SKI_ConfigBase  

ARTH_OCS_OptionalsScript Property OptionsScript Auto

int Function GetVersion()
	return 2
EndFunction

Event OnConfigInit()
	ModName = "Open Cities Skyrim"
	Pages = New String[1]
	Pages[0] = "$Options"
EndEvent

Event OnVersionUpdate(int a_version)
	if( a_version >= 2 && CurrentVersion < 2 )
		Pages[0] = "$Options"
	EndIf
EndEvent

Event OnPageReset(String Page)
	If Page == ""
		LoadCustomContent( "OpenCitiesSkyrim/Title.dds" )
		Return
	Else
		UnloadCustomContent()
	EndIf

	If Page == "$Options"
		SetCursorFillMode( TOP_TO_BOTTOM )

		AddHeaderOption( "$Settings" )
		AddToggleOptionST( "Gate_State", "$OblivionGates", OptionsScript.GateState )
		AddToggleOptionST( "Attendants_State", "$CityAttendants", OptionsScript.AttendantsState )
		AddToggleOptionST( "Lighting_State", "$CityLighting", OptionsScript.LightingState )
	EndIf
EndEvent

State Gate_State
	Event OnSelectST()
		OptionsScript.GateState = !OptionsScript.GateState
		
		SetToggleOptionValueST(OptionsScript.GateState)
	EndEvent
	
	Event OnDefaultST()
		OptionsScript.GateState = True
		
		SetToggleOptionValueST(OptionsScript.GateState)
	EndEvent
	
	Event OnHighlightST()
		SetInfoText( "$OBGatesDesc" )
	EndEvent
EndState

State Attendants_State
	Event OnSelectST()
		OptionsScript.AttendantsState = !OptionsScript.AttendantsState
		
		SetToggleOptionValueST(OptionsScript.AttendantsState)
	EndEvent
	
	Event OnDefaultST()
		OptionsScript.AttendantsState = True
		
		SetToggleOptionValueST(OptionsScript.AttendantsState)
	EndEvent
	
	Event OnHighlightST()
		SetInfoText( "$AttendantsDesc" )
	EndEvent
EndState

State Lighting_State
	Event OnSelectST()
		OptionsScript.LightingState = !OptionsScript.LightingState
		
		SetToggleOptionValueST(OptionsScript.LightingState)
	EndEvent
	
	Event OnDefaultST()
		OptionsScript.LightingState = True
		
		SetToggleOptionValueST(OptionsScript.LightingState)
	EndEvent
	
	Event OnHighlightST()
		SetInfoText( "$LightingDesc" )
	EndEvent
EndState

Event OnConfigClose()
	ApplySettings()
EndEvent

Function ApplySettings()
	if( OptionsScript.GateState == true )
		OptionsScript.EnableOBGates()
	else
		OptionsScript.DisableOBGates()
	EndIf
	
	if( OptionsScript.AttendantsState == true )
		OptionsScript.EnableAttendants()
	Else
		OptionsScript.DisableAttendants()
	EndIf
	
	if( OptionsScript.LightingState == true )
		OptionsScript.EnableLighting()
	Else
		OptionsScript.DisableLighting()
	EndIf
EndFunction
