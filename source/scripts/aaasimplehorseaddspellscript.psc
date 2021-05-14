Scriptname aaaSimpleHorseAddSpellScript extends Quest  

Spell property aaaSimpleHorseCallSpell auto
Actor property player auto
GlobalVariable property aaaSimpleHorseKeyCode auto

Event OnInit()
	;if player.HasSpell(aaaSimpleHorseCallSpell) == False
		;player.AddSpell(aaaSimpleHorseCallSpell)
	;endif
	RegistKey()
EndEvent

Function RegistKey()
	RegisterForKey(aaaSimpleHorseKeyCode.GetValueInt())
EndFunction

Function UnRegistKey()
	UnRegisterForKey(aaaSimpleHorseKeyCode.GetValueInt())
EndFunction

Event OnKeyDown(Int KeyCode)
	If KeyCode == aaaSimpleHorseKeyCode.GetValueInt() && !Utility.IsInMenuMode()
		aaaSimpleHorseCallSpell.Cast(player)	
	EndIf
EndEvent