Scriptname _RASS_Init_BookMenu Extends Quest


Book Property RASS_ConfigBook Auto

Spell Property RASS_Book_AshSpell Auto
Spell Property RASS_Book_SnowSpell Auto
Spell Property RASS_Book_WetnessSpell Auto
Spell Property RASS_Book_UnderwaterSpell Auto
Spell Property RASS_Book_ColdSpellPlayer Auto
Spell Property RASS_Book_ColdSpellNPC Auto
Spell Property RASS_Book_ColdSpellRegions Auto
Spell Property RASS_Book_RaindropsSpell Auto
Spell Property RASS_Book_CameraFXSpell Auto

Message property RASS_ConfigBook_InitMenu Auto
Message property RASS_ConfigBook_MainMenu Auto
Message property RASS_ConfigBook_LensMenu Auto
Message property RASS_ConfigBook_WetnessMainMenu Auto
Message property RASS_ConfigBook_RainingMainMenu Auto
Message property RASS_ConfigBook_AshAccept Auto
Message property RASS_ConfigBook_WetnessAccept Auto
Message property RASS_ConfigBook_RaindropsAccept Auto
Message property RASS_ConfigBook_ColdAccept Auto
Message property RASS_ConfigBook_SnowAccept Auto
Message property RASS_ConfigBook_UnderwaterAccept Auto
Message property RASS_ConfigBook_CameraRainingSubtleAccept Auto
Message property RASS_ConfigBook_CameraRainingMediumAccept Auto
Message property RASS_ConfigBook_CameraRainingHeavyAccept Auto
Message property RASS_ConfigBook_CameraSnowingAccept Auto
Message property RASS_ConfigBook_CameraSwimmingAccept Auto
Message property RASS_ConfigBook_CameraAshAccept Auto
Message property RASS_ConfigBook_AllEffectsAccept Auto
Message property RASS_ConfigBook_ExitAccept Auto

GlobalVariable Property RASS_Book_CameraFX_RainSubtleToggle Auto
GlobalVariable Property RASS_Book_CameraFX_RainMediumToggle Auto
GlobalVariable Property RASS_Book_CameraFX_RainHeavyToggle Auto
GlobalVariable Property RASS_Book_CameraFX_SnowToggle Auto
GlobalVariable Property RASS_Book_CameraFX_SwimToggle Auto
GlobalVariable Property RASS_Book_CameraFX_AshToggle Auto

Actor property PlayerRef Auto
Import Utility

;============================================
; INIT SECTION
;============================================

Event OnInit()
      Utility.Wait(5)
	  If PlayerRef.GetItemCount(RASS_ConfigBook) == 0
	     ;PlayerRef.addItem(RASS_ConfigBook, 1, False)
		 PlayerRef.addspell(RASS_Book_AshSpell, False)
		 PlayerRef.addspell(RASS_Book_SnowSpell, False)
		 PlayerRef.addspell(RASS_Book_WetnessSpell, False)
		 PlayerRef.addspell(RASS_Book_UnderwaterSpell, False)
		 PlayerRef.addspell(RASS_Book_ColdSpellPlayer, False)
		 PlayerRef.addspell(RASS_Book_ColdSpellNPC, False)
		 PlayerRef.addspell(RASS_Book_ColdSpellRegions, False)
		 PlayerRef.addspell(RASS_Book_CameraFXSpell, False)
		 PlayerRef.addspell(RASS_Book_RaindropsSpell)
		 PlayerRef.removespell(RASS_Book_WetnessSpell)
		 ;debug.notification("All Visual Spells Added")  
	  EndIf
EndEvent
       

Function OpenRASSBook(Int aiButtonChoice1 = -1)
	aiButtonChoice1 = RASS_ConfigBook_InitMenu.Show()
	If aiButtonChoice1 == 0
		CloseRASSBook()
		StartRASS()
	ElseIf aiButtonChoice1 == 1
		CloseRASSBook()
		Return
	EndIf
EndFunction	   
	   
	   
Function StartRASS()
	RassConfigMenu()
EndFunction


Function RassConfigMenu()
	if (!Utility.IsInMenuMode())
		int ibutton = RASS_ConfigBook_MainMenu.Show()
		if ibutton == 0
			AshMenu()
		elseif ibutton == 1
			SnowMenu()
		elseif ibutton == 2
			WetnessMainMenu()
		elseif ibutton == 3
			UnderwaterMenu()
		elseif ibutton == 4
			ColdMenu()
		elseif ibutton == 5
			CameraMainLensMenu()
		elseif ibutton == 6
		    AllEffectsMenu()
		elseif ibutton == 7
			ExitMenu()
		EndIf
	Else
		StartRASS()
	EndIf
	EndFunction


Function WetnessMainMenu()
		int ibutton = RASS_ConfigBook_WetnessMainMenu.Show()
		if ibutton == 0
			WetnessMenu()
		elseif ibutton == 1
			RaindropsMenu()
		elseif ibutton == 2
			RassConfigMenu()
		EndIf
EndFunction

Function CameraMainLensMenu()
		int ibutton = RASS_ConfigBook_LensMenu.Show()
		if ibutton == 0
			LensRainingMainMenu()
		elseif ibutton == 1
			LensSnowingMenu()
		elseif ibutton == 2
			LensSwimmingMenu()			
		elseif ibutton == 3
			LensAshMenu()
        elseif ibutton == 4
			RassConfigMenu()
		EndIf
EndFunction

Function LensRainingMainMenu()
		int ibutton = RASS_ConfigBook_RainingMainMenu.Show()
		if ibutton == 0
			LensRainingSubtleMenu()
		elseif ibutton == 1
			LensRainingMediumMenu()
		elseif ibutton == 2
			LensRainingHeavyMenu()
		elseif ibutton == 3
			RassConfigMenu()
		EndIf
EndFunction


Function ExitMenu()
    int ibutton = RASS_ConfigBook_ExitAccept.Show()
	if ibutton == 0
	Return
	elseif ibutton == 1
	    RassConfigMenu()
	EndIf
EndFunction

;============================================
; VISUAL EFFECTS MENUS
;============================================

Function AshMenu()
	int ibutton = RASS_ConfigBook_AshAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.addspell(RASS_Book_AshSpell, False)
		;debug.notification("Ash Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_AshSpell)
		;debug.notification("Ash Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction


Function SnowMenu()
	int ibutton = RASS_ConfigBook_SnowAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.addspell(RASS_Book_SnowSpell, False)
		;debug.notification("Snow Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_SnowSpell)
		;debug.notification("Snow Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction


Function WetnessMenu()
	int ibutton = RASS_ConfigBook_WetnessAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_RaindropsSpell)
		Utility.Wait(1)	
		PlayerRef.addspell(RASS_Book_WetnessSpell, False)
		;debug.notification("Wetness Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_WetnessSpell)
		PlayerRef.removespell(RASS_Book_RaindropsSpell)
		;debug.notification("Wetness Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction

Function UnderwaterMenu()
	int ibutton = RASS_ConfigBook_UnderwaterAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.addspell(RASS_Book_UnderwaterSpell, False)
		;debug.notification("Underwater Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_UnderwaterSpell)
		;debug.notification("Underwater Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction


Function ColdMenu()
	int ibutton = RASS_ConfigBook_ColdAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.addspell(RASS_Book_ColdSpellPlayer, False)
		PlayerRef.addspell(RASS_Book_ColdSpellNPC, False)
		PlayerRef.addspell(RASS_Book_ColdSpellRegions, False)
		;debug.notification("Cold Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_ColdSpellPlayer)
		PlayerRef.removespell(RASS_Book_ColdSpellNPC)
		PlayerRef.removespell(RASS_Book_ColdSpellRegions)
		;debug.notification("Cold Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction

Function RaindropsMenu()
	int ibutton = RASS_ConfigBook_RaindropsAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.RemoveSpell(RASS_Book_WetnessSpell)
		Utility.Wait(1)
		PlayerRef.addspell(RASS_Book_RaindropsSpell, False)
		;debug.notification("Raindrops Spell Added")
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removespell(RASS_Book_RaindropsSpell)
		;debug.notification("Raindrops Spell Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction

Function AllEffectsMenu()
	int ibutton = RASS_ConfigBook_AllEffectsAccept.Show()
	if ibutton == 0
		RassConfigMenu()
		PlayerRef.addSpell(RASS_Book_AshSpell, False)
		PlayerRef.addSpell(RASS_Book_SnowSpell, False)
		PlayerRef.addSpell(RASS_Book_WetnessSpell, False)
		PlayerRef.addSpell(RASS_Book_UnderwaterSpell, False)
		PlayerRef.addspell(RASS_Book_ColdSpellPlayer, False)
		PlayerRef.addspell(RASS_Book_ColdSpellNPC, False)
		PlayerRef.addspell(RASS_Book_ColdSpellRegions, False)
		PlayerRef.addspell(RASS_Book_CameraFXSpell, False)
	EndIf

        If (RASS_Book_CameraFX_RainMediumToggle.getValue() == 0)	
		    RASS_Book_CameraFX_RainMediumToggle.setvalue(1)
		EndIf

		If (RASS_Book_CameraFX_SwimToggle.getValue() == 0)
		    RASS_Book_CameraFX_SwimToggle.setvalue(1)
		EndIf

		If (RASS_Book_CameraFX_SnowToggle.getValue() == 0)
		    RASS_Book_CameraFX_SnowToggle.setvalue(1)	 
  		;debug.notification("All Visual Spells Added")     
	elseif ibutton == 1
		RassConfigMenu()
		PlayerRef.removeSpell(RASS_Book_AshSpell)
		PlayerRef.removeSpell(RASS_Book_SnowSpell)
		PlayerRef.removeSpell(RASS_Book_WetnessSpell)
		PlayerRef.removeSpell(RASS_Book_UnderwaterSpell)
		PlayerRef.removespell(RASS_Book_ColdSpellPlayer)
		PlayerRef.removespell(RASS_Book_ColdSpellNPC)
		PlayerRef.removespell(RASS_Book_ColdSpellRegions)
		PlayerRef.removespell(RASS_Book_RaindropsSpell)
		PlayerRef.removespell(RASS_Book_CameraFXSpell)
		RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
		RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
		RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
		RASS_Book_CameraFX_SnowToggle.setvalue(0)
		RASS_Book_CameraFX_SwimToggle.setvalue(0)
		;debug.notification("All Visual Spells Removed")
	elseif ibutton == 2
		RassConfigMenu()
	EndIf
EndFunction


Function LensRainingSubtleMenu()
	int ibutton = RASS_ConfigBook_CameraRainingSubtleAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_RainSubtleToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_RainSubtleToggle.setvalue(1)
				RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
				RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
		       ;debug.notification("Rain Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
				RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
				RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
		        ;debug.notification("Rain Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

Function LensRainingMediumMenu()
	int ibutton = RASS_ConfigBook_CameraRainingMediumAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_RainMediumToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_RainMediumToggle.setvalue(1)
				RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
				RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
		        ;debug.notification("Rain Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
				RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
		        RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
				RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
		        ;debug.notification("Rain Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

Function LensRainingHeavyMenu()
	int ibutton = RASS_ConfigBook_CameraRainingHeavyAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_RainHeavyToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_RainHeavyToggle.setvalue(1)
				RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
				RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
		        ;debug.notification("Rain Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_RainHeavyToggle.setvalue(0)
				RASS_Book_CameraFX_RainMediumToggle.setvalue(0)
				RASS_Book_CameraFX_RainSubtleToggle.setvalue(0)
		        ;debug.notification("Rain Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

Function LensSnowingMenu()
	int ibutton = RASS_ConfigBook_CameraSnowingAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_SnowToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_SnowToggle.setvalue(1)
		        ;debug.notification("Snow Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_SnowToggle.setvalue(0)
		        ;debug.notification("Snow Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

Function LensSwimmingMenu()
	int ibutton = RASS_ConfigBook_CameraSwimmingAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_SwimToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_SwimToggle.setvalue(1)
		        ;debug.notification("Swim Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_SwimToggle.setvalue(0)
		        ;debug.notification("Swim Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

Function LensAshMenu()
	int ibutton = RASS_ConfigBook_CameraAshAccept.Show()
	if ibutton == 0
	        If (RASS_Book_CameraFX_AshToggle.getValue() == 0)
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_AshToggle.setvalue(1)
		        ;debug.notification("Ash Lens Added")
			EndIf	
	elseif ibutton == 1
		        CameraMainLensMenu()
		        RASS_Book_CameraFX_AshToggle.setvalue(0)
		        ;debug.notification("Ash Lens Removed")	
	elseif ibutton == 2
		 CameraMainLensMenu()
	EndIf
EndFunction

;=========================================================================
;INITIALIZATION BOOK ADDER
;=========================================================================
Function CloseRASSBook()
	Game.DisablePlayerControls(False, False, False, False, False, True) 
	PlayerRef.EquipItem(RASS_ConfigBook, True, True)
	Wait(0.01)
	PlayerRef.UnequipItem(RASS_ConfigBook, False, True)
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndFunction