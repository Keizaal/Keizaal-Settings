Scriptname aaaSimpleHorseMCMScript extends SKI_ConfigBase  

int CallKeyID
int CalmID
int ActivateModID
int FollowerID

int CallKey = 51	; N key
bool Calm = false
GlobalVariable property aaaSimpleHorseKeyCode auto
GlobalVariable property aaaSimpleHorseCalm auto
Quest Property aaaSimpleHorse auto
Quest property aaaSimpleHorseFollowerQuest auto
Spell property aaaSimpleHorseCallSpell auto
aaaSimpleHorseAddSpellScript property keyScript auto
ObjectReference property HorseWaitPoint auto

;no use
bool Follower


int function GetVersion()
	return 1 
endFunction

;Event OnVersionUpdate(int version)
;EndEvent
;event OnConfigInit()
;endEvent

Event OnPageReset(string a_page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	CallKeyID = AddKeyMapOption("$SH_CallKey", CallKey)
	CalmID = AddToggleOption("$SH_Calm", Calm)
	FollowerID = AddToggleOption("$SH_Follower", aaaSimpleHorseFollowerQuest.IsRunning())
	ActivateModID = AddToggleOption("$SH_ActivateMod", aaaSimpleHorse.IsRunning())
EndEvent

Event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
	if (option == CallKeyID)
		keyScript.UnRegistKey()
		CallKey = keyCode
		SetKeyMapOptionValue(CallKeyID, CallKey)
		aaaSimpleHorseKeyCode.SetValueInt(CallKey)
		keyScript.RegistKey()
	endIf
EndEvent

Event OnOptionSelect(int option)
	if (option == CalmID)
		Calm = !Calm
		SetToggleOptionValue(CalmID, Calm)
		aaaSimpleHorseCalm.SetValueInt(Calm as int)
	elseif option == FollowerID
		if aaaSimpleHorseFollowerQuest.IsRunning()
			GobackAll()
		else
			SetToggleOptionValue(FollowerID, true)
			aaaSimpleHorseFollowerQuest.Start()
		endif
	elseif (option == ActivateModID)
		if aaaSimpleHorse.IsRunning()
			SetToggleOptionValue(ActivateModID, false)
			aaaSimpleHorse.Stop()
			Game.GetPlayer().RemoveSpell(aaaSimpleHorseCallSpell)
			GobackAll()
		else
	       	SetToggleOptionValue(ActivateModID, true)
			aaaSimpleHorse.Start()
       	EndIf
	endIf
EndEvent

Event OnOptionDefault(int option)
	if option == CallKeyID
		keyScript.UnRegistKey()
		SetKeyMapOptionValue(CallKeyID, 35)
		aaaSimpleHorseKeyCode.SetValueInt(35)
		keyScript.RegistKey()
	elseif (option == CalmID)
		SetToggleOptionValue(CalmID, true)
		aaaSimpleHorseCalm.SetValueInt(1)
	elseif (option == FollowerID)
		GobackAll()
	elseif (option == ActivateModID)
		if aaaSimpleHorse.IsRunning() == false
	       	SetToggleOptionValue(ActivateModID, true)
			aaaSimpleHorse.Start()
       	endif
	endif
EndEvent

Event OnOptionHighlight(int option)
	If(option == CallKeyID)
		SetInfoText("$SH_CallKeyDesc")
	Elseif(option == CalmID)
		SetInfoText("$SH_CalmDesc")
	Elseif(option == FollowerID)
		SetInfoText("$SH_FollowerDesc")
	Elseif(option == ActivateModID)
	       if (aaaSimpleHorse.IsRunning() == false)
	           SetInfoText("$SH_ActivateModDesc")
	       else
	           SetInfoText("$SH_DeactivateModDesc")
	       endif
	EndIf
EndEvent

Function GobackAll()
	int i = 2
	While i < 13
		(aaaSimpleHorseFollowerQuest.GetAlias(i) as ReferenceAlias).TryToMoveTo(HorseWaitPoint)
		i += 2
	endWhile
	SetToggleOptionValue(FollowerID, false)
	aaaSimpleHorseFollowerQuest.Stop()
EndFunction


