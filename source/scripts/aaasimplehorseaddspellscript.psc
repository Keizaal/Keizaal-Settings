Scriptname aaaSimpleHorseAddSpellScript extends Quest  

Spell property aaaSimpleHorseCallSpell auto
Actor property player auto
GlobalVariable property aaaSimpleHorseKeyCode auto


Event OnInit()
	;if player.HasSpell(aaaSimpleHorseCallSpell) == False
		;player.AddSpell(aaaSimpleHorseCallSpell)
	;endif
	int callkey = aaaSimpleHorseKeyCode.GetValueInt()
	RegistKey()
EndEvent

Function RegistKey()
	int callkey = aaaSimpleHorseKeyCode.GetValueInt()
	RegisterForKey(callkey)
EndFunction

Function UnRegistKey()
	UnRegisterForAllKeys()
EndFunction

Event OnKeyDown(Int KeyCode)
	int callkey = aaaSimpleHorseKeyCode.GetValueInt()
	If KeyCode == callkey && !Utility.IsInMenuMode()
		aaaSimpleHorseCallSpell.Cast(player)	
	EndIf
EndEvent