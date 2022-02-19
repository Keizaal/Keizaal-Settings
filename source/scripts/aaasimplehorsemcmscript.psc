Scriptname aaaSimpleHorseMCMScript extends MCM_ConfigBase

GlobalVariable property aaaSimpleHorseKeyCode auto
GlobalVariable property aaaSimpleHorseCalm auto
Quest Property aaaSimpleHorse auto
Quest property aaaSimpleHorseFollowerQuest auto
Spell property aaaSimpleHorseCallSpell auto
aaaSimpleHorseAddSpellScript property keyScript auto
ObjectReference property HorseWaitPoint auto

function LoadSettings()
	aaaSimpleHorseCalm.SetValueInt((self.GetModSettingBool("bCalm:SH")) as int)
	KeyScript.UnRegistKey()
	aaaSimpleHorseKeyCode.SetvalueInt(self.GetModSettingint("iCallkey:SH"))
	KeyScript.RegistKey()
int togglevalue1 = (self.GetModSettingBool("bFollower:SH")) as int
int togglevalue2 = (self.GetModSettingBool("bActivateMod:SH")) as int
	
	if togglevalue1 == 0
		if aaaSimpleHorseFollowerQuest.IsRunning()
			GobackAll()
		endif
	elseif togglevalue1 == 1
			aaaSimpleHorseFollowerQuest.Start()
	endif
	if togglevalue2  == 0
		if aaaSimpleHorse.IsRunning()
			aaaSimpleHorse.Stop()
			Game.GetPlayer().RemoveSpell(aaaSimpleHorseCallSpell)
			GobackAll()
		else
			aaaSimpleHorse.Start()
       	EndIf
	endif
endfunction

Event OnSettingChange(String a_ID)

	if a_ID == "bCalm:SH"
		aaaSimpleHorseCalm.SetValueInt(self.GetModSettingBool(a_ID) as int)
	elseif a_ID == "iCallkey:SH"
		KeyScript.UnRegistKey()
	aaaSimpleHorseKeyCode.SetvalueInt(self.GetModSettingint("iCallkey:SH"))
		KeyScript.RegistKey()
	elseIf a_ID == "bFollower:SH"
	int togglevalue1 = (self.GetModSettingBool("bFollower:SH")) as int
		if togglevalue1 == 0
			if aaaSimpleHorseFollowerQuest.IsRunning()
			GobackAll()
			endif
		elseif togglevalue1 == 1
			aaaSimpleHorseFollowerQuest.Start()
		endif
	elseIf a_ID == "bActivateMod:SH"
	int togglevalue2 = (self.GetModSettingBool("bActivateMod:SH")) as int
		if togglevalue2  == 0
			if aaaSimpleHorse.IsRunning()
			aaaSimpleHorse.Stop()
			Game.GetPlayer().RemoveSpell(aaaSimpleHorseCallSpell)
			GobackAll()
			endif
		elseif togglevalue2 == 1
			aaaSimpleHorse.Start()
       	EndIf
	endif
		
Endevent

Function GobackAll()
	int i = 2
	While i < 13
		(aaaSimpleHorseFollowerQuest.GetAlias(i) as ReferenceAlias).TryToMoveTo(HorseWaitPoint)
		i += 2
	endWhile
	aaaSimpleHorseFollowerQuest.Stop()
EndFunction

function OnConfigInit()

	self.LoadSettings()
endFunction

function OnGameReload()

	parent.OnGameReload()
	self.LoadSettings()
endFunction