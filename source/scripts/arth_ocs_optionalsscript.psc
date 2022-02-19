Scriptname ARTH_OCS_OptionalsScript extends Quest Conditional
{Script for use with SkyUI's MCM system, Also doubles as a first time mod setup script for anything that may need it.}

ARTH_UTILS_LightSwitchToggle Property LightingSystem Auto

bool Property OBGatesEnabled Auto Conditional Hidden
bool Property AttendantsEnabled Auto Conditional Hidden
bool Property LightingEnabled Auto Conditional Hidden

bool Property GateState Auto Conditional Hidden
bool Property AttendantsState Auto Conditional Hidden
bool Property LightingState Auto Conditional Hidden

Location Property SolitudeLocation Auto
Keyword Property CWOwner Auto

ObjectReference Property OCSOBGatesMarker Auto
ObjectReference Property SolitudeGate1 Auto
ObjectReference Property SolitudeGate2 Auto
ObjectReference Property SolitudeGate3 Auto

ObjectReference Property OCSAttendantsMarker Auto
ARTH_OCS_WhiterunGateLockScript Property OCSWhiterunGateTrigger Auto
Quest Property DialogueWhiterunGuardGateStop Auto

ReferenceAlias Property WhiterunCow Auto
ObjectReference Property OCSWhiterunCowMoveMarker Auto

Event OnInit()
	OCSWhiterunGateTrigger.DialogueWhiterunGuardGateStop = DialogueWhiterunGuardGateStop
	WhiterunCow.TryToMoveTo(OCSWhiterunCowMoveMarker)
	DisableOBGates()
	DisableAttendants()
	EnableLighting()
EndEvent

Function EnableOBGates()
	OBGatesEnabled = True
	GateState = True
	
	OCSOBGatesMarker.Enable()

	if( SolitudeLocation.GetKeywordData(CWOwner) == 1 )
		SolitudeGate1.Enable()
		SolitudeGate2.Disable()
		SolitudeGate3.Disable()
	Else
		SolitudeGate1.Disable()
		SolitudeGate2.Enable()
		SolitudeGate3.Enable()
	EndIf
EndFunction

Function DisableOBGates()
	OBGatesEnabled = False
	GateState = False
	
	OCSOBGatesMarker.Disable()

	SolitudeGate1.Disable()
	SolitudeGate2.Disable()
	SolitudeGate3.Disable()
EndFunction

Function EnableAttendants()
	AttendantsEnabled = True
	AttendantsState = True
	
	OCSAttendantsMarker.Enable()
EndFunction

Function DisableAttendants()
	AttendantsEnabled = False
	AttendantsState = False
	
	OCSAttendantsMarker.Disable()
EndFunction

Function EnableLighting()
	LightingEnabled = True
	LightingState = True
	LightingSystem.EnableSystem()
EndFunction

Function DisableLighting()
	LightingEnabled = False
	LightingState = False
	LightingSystem.DisableSystem()
EndFunction
