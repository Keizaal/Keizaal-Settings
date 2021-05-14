Scriptname _RASS_Init_MCM extends SKI_ConfigBase

;============================================================
GlobalVariable Property RASS_MCM_AshToggle Auto
GlobalVariable Property RASS_MCM_SnowToggle Auto
GlobalVariable Property RASS_MCM_SwimToggle Auto
GlobalVariable Property RASS_MCM_ColdBreathToggle Auto
GlobalVariable Property RASS_MCM_BookToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_RainSubtleToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_RainMediumToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_RainHeavyToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_RainOffToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_SnowToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_SwimToggle Auto
GlobalVariable Property RASS_MCM_CameraFX_AshToggle Auto

Spell Property RASS_MCM_AshSpell Auto
Spell Property RASS_MCM_RainSpell Auto
Spell Property RASS_MCM_SnowSpell Auto
Spell Property RASS_MCM_SwimSpell Auto
Spell Property RASS_MCM_DripsSpell Auto
Spell Property RASS_MCM_ColdSpellPlayer Auto
Spell Property RASS_MCM_ColdSpellNPC Auto
Spell Property RASS_MCM_ColdSpellRegions Auto

Bool AshShaderVal = True;
Bool RainShaderVal = False;
Bool SnowShaderVal = True;
Bool SwimShaderVal = True;
Bool BreathVal = True;
Bool DripsShaderVal = True;
Bool BookVal = False;
Bool CameraFX_RainSubtleVal = False;
Bool CameraFX_RainMediumVal = False;
Bool CameraFX_RainHeavyVal = False;
Bool CameraFX_SnowVal = False;
Bool CameraFX_SwimVal = False;
Bool CameraFX_AshVal = False;

Int iBook
Int iAshShader
Int iSnowShader
Int iSwimShader
Int iBreathShader
Int iWetnessShader
Int IndexWetness = 1

Int iCameraFX_Snow
Int iCameraFX_Swim
Int iCameraFX_Ash
Int iCameraFX_RainLenses
Int IndexRainLenses = 3

String[] CameraLens_RainingList
String[] WetnessList

Actor Property PlayerRef Auto
Book Property RASS_MCM_Book Auto
Message Property RASS_Update Auto

;============================================================

int function GetVersion()
    return 4
endFunction

string function vc()
    if GetVersion() == 4
        return "3.2"
    endif
endFunction

;============================================================

Event OnInit()
        
        Parent.OnInit()

        CameraLens_RainingList = new string[4]
		CameraLens_RainingList[0] = "Subtle"
		CameraLens_RainingList[1] = "Medium"
		CameraLens_RainingList[2] = "Heavy"
		CameraLens_RainingList[3] = "Off"
        
		WetnessList = new string[3]
        WetnessList[0] = "Full"
		WetnessList[1] = "Raindrops Only"
		WetnessList[2] = "Off"

EndEvent

;===================================
; TABS & PAGES
;===================================

Event OnConfigInit()

            Pages = New String[1]
            Pages[0] = "Options"			

EndEvent

Event OnPageReset(string Page)


            If (Page == "")

                     LoadCustomContent("RASS/RASS_LOGO.dds", 30, -10)

                     Return
            Else
                     UnloadCustomContent()

            EndIf


            if (page == "Options")

                     SetCursorFillMode(TOP_TO_BOTTOM)
                     AddHeaderOption("Character & NPC Visual Effects")
                     iAshShader = AddToggleOption("Ash", AshShaderVal)
                     iSnowShader = AddToggleOption("Frost", SnowShaderVal)
					 iBreathShader = AddToggleOption("Cold", BreathVal)
                     iSwimShader = AddToggleOption("Bubbles", SwimShaderVal)					 
		             iWetnessShader = AddMenuOption("Wetness", WetnessList[IndexWetness])
					 AddEmptyOption()
					 AddHeaderOption("Camera Visual Effects")
					 iCameraFX_Ash = AddToggleOption("Ashstorming", CameraFX_AshVal)					 
                     iCameraFX_Snow = AddToggleOption("Snowing", CameraFX_SnowVal)
                     iCameraFX_Swim = AddToggleOption("Swimming", CameraFX_SwimVal)
					 iCameraFX_RainLenses = AddMenuOption("Raining", CameraLens_RainingList[IndexRainLenses])
                     AddEmptyOption()
					 AddHeaderOption("Miscellaneous")

                        If (RASS_MCM_BookToggle.getValue() == 0)


					    iBook = OPTION_FLAG_NONE	
						iBook = AddToggleOption("Configuration Book", BookVal)

            Else			           

					    iBook = OPTION_FLAG_DISABLED
						AddToggleOption("Configuration Book", BookVal, iBook)
					
			EndIf

		EndIf			 					 							 					 

EndEvent

;===================================
; TOGGLES
;===================================

Event OnOptionSelect(int Option)

        If(currentpage == "Options")

             If (option == iAshShader)

                 AshShaderVal = !AshShaderVal
                 SetToggleOptionValue(iAshShader, AshShaderVal)
              
                 If (RASS_MCM_AshToggle.getValue() == 0)

				       RASS_MCM_AshToggle.setvalue(1)
                       playerRef.Addspell(RASS_MCM_AshSpell, FALSE)
                       ;Debug.notification("Ash Spell Added")

         Else

                       RASS_MCM_AshToggle.setvalue(0)
                       playerRef.RemoveSpell(RASS_MCM_AshSpell)
                       ;Debug.notification("Ash Spell Removed")

                EndIf

                      
        ElseIf (option == iSnowShader)

                 SnowShaderVal = !SnowShaderVal
                 SetToggleOptionValue(iSnowShader, SnowShaderVal)
              
                 If (RASS_MCM_SnowToggle.getValue() == 0)

				       RASS_MCM_SnowToggle.setvalue(1)
                       playerRef.Addspell(RASS_MCM_SnowSpell, FALSE)
                       ;Debug.notification("Snow Spell Added")

         Else

                       RASS_MCM_SnowToggle.setvalue(0)
                       playerRef.RemoveSpell(RASS_MCM_SnowSpell)
                       ;Debug.notification("Snow Spell Removed")

                EndIf
								
					
        ElseIf (option == iBreathShader)

                 BreathVal = !BreathVal
                 SetToggleOptionValue(iBreathShader, BreathVal)
              
                 If (RASS_MCM_ColdBreathToggle.getValue() == 0)

				       RASS_MCM_ColdBreathToggle.setvalue(1)
                       playerRef.Addspell(RASS_MCM_ColdSpellPlayer, FALSE)
					   playerRef.Addspell(RASS_MCM_ColdSpellNPC, FALSE)
					   playerRef.Addspell(RASS_MCM_ColdSpellRegions, FALSE)
                       ;Debug.notification("Breath Spell Added")

         Else

                       RASS_MCM_ColdBreathToggle.setvalue(0)
                       playerRef.RemoveSpell(RASS_MCM_ColdSpellPlayer)
					   playerRef.RemoveSpell(RASS_MCM_ColdSpellNPC)
					   playerRef.RemoveSpell(RASS_MCM_ColdSpellRegions)
                       ;Debug.notification("Breath Spell Removed")

                EndIf

        ElseIf (option == iBook)

                 BookVal = !BookVal
                 SetToggleOptionValue(iBook, BookVal)
              
                 If (RASS_MCM_BookToggle.getValue() == 0)

				       RASS_MCM_BookToggle.setvalue(1)
                       playerRef.removeitem(RASS_MCM_Book, 1, FALSE)
					   ForcePageReset()
                       ;Debug.notification("Book Removed")

                EndIf


        ElseIf (option == iCameraFX_Snow)

                 CameraFX_SnowVal = !CameraFX_SnowVal
                 SetToggleOptionValue(iCameraFX_Snow, CameraFX_SnowVal)
              
                 If (RASS_MCM_CameraFX_SnowToggle.getValue() == 0)

				       RASS_MCM_CameraFX_SnowToggle.setvalue(1)
                       Debug.notification("Snow Lens Added")

         Else

                       RASS_MCM_CameraFX_SnowToggle.setvalue(0)
                       ;Debug.notification("Snow Lens Removed")

                EndIf

        ElseIf (option == iCameraFX_Swim)

                 CameraFX_SwimVal = !CameraFX_SwimVal
                 SetToggleOptionValue(iCameraFX_Swim, CameraFX_SwimVal)
              
                 If (RASS_MCM_CameraFX_SwimToggle.getValue() == 0)

				       RASS_MCM_CameraFX_SwimToggle.setvalue(1)
                       ;Debug.notification("Swim Lens Added")

         Else

                       RASS_MCM_CameraFX_SwimToggle.setvalue(0)
                       ;Debug.notification("Swim Lens Removed")

                EndIf
						
        ElseIf (option == iCameraFX_Ash)

                 CameraFX_AshVal = !CameraFX_AshVal
                 SetToggleOptionValue(iCameraFX_Ash, CameraFX_AshVal)
              
                 If (RASS_MCM_CameraFX_AshToggle.getValue() == 0)

				       RASS_MCM_CameraFX_AshToggle.setvalue(1)
                       ;Debug.notification("Ash Lens Added")

        Else

                       RASS_MCM_CameraFX_AshToggle.setvalue(0)
                       ;Debug.notification("Ash Lens Removed")

                EndIf


        ElseIf (option == iSwimShader)

                SwimShaderVal = !SwimShaderVal
                SetToggleOptionValue(iSwimShader, SwimShaderVal)
              
                If (RASS_MCM_SwimToggle.getValue() == 0)

				       RASS_MCM_SwimToggle.setvalue(1)
                       playerRef.Addspell(RASS_MCM_SwimSpell, FALSE)
                       ;Debug.notification("Swim Spell Added")

         Else

                       RASS_MCM_SwimToggle.setvalue(0)
                       playerRef.RemoveSpell(RASS_MCM_SwimSpell)					   
                       ;Debug.notification("Swim Spell Removed")
  
                EndIf 

           EndIf           

       EndIf

EndEvent
;===================================
; LISTS
;===================================

Event OnOptionMenuOpen(int option)

        If(option == iCameraFX_RainLenses)
		     SetMenuDialogOptions(CameraLens_RainingList)
			 SetMenuDialogStartIndex(IndexRainLenses)
             SetMenuDialogDefaultIndex(1)
        EndIf

        If(option == iWetnessShader)
		     SetMenuDialogOptions(WetnessList)
			 SetMenuDialogStartIndex(IndexWetness)
             SetMenuDialogDefaultIndex(0)
        EndIf		
EndEvent

;===================================
; LISTS TOGGLERS
;===================================
		
Event OnOptionMenuAccept(int option, int index)


        If(option == iCameraFX_RainLenses)

              IndexRainLenses = index
			  SetMenuOptionValue(iCameraFX_RainLenses, CameraLens_RainingList[IndexRainLenses])
			  If IndexRainLenses == 0 ; Subtle
                   RASS_MCM_CameraFX_RainSubtleToggle.setvalue(1)
				   RASS_MCM_CameraFX_RainMediumToggle.setvalue(0)
				   RASS_MCM_CameraFX_RainHeavyToggle.setvalue(0)

	          ElseIf IndexRainLenses == 1 ; Medium
                   RASS_MCM_CameraFX_RainMediumToggle.setvalue(1)
				   RASS_MCM_CameraFX_RainSubtleToggle.setvalue(0)
				   RASS_MCM_CameraFX_RainHeavyToggle.setvalue(0)

	          ElseIf IndexRainLenses == 2 ; Heavy
                   RASS_MCM_CameraFX_RainHeavyToggle.setvalue(1)
                   RASS_MCM_CameraFX_RainMediumToggle.setvalue(0)
				   RASS_MCM_CameraFX_RainSubtleToggle.setvalue(0)				   

	          ElseIf IndexRainLenses == 3 ; Off
                   RASS_MCM_CameraFX_RainHeavyToggle.setvalue(0)
                   RASS_MCM_CameraFX_RainMediumToggle.setvalue(0)
				   RASS_MCM_CameraFX_RainSubtleToggle.setvalue(0)				   

			  EndIf   

        EndIf

        If(option == iWetnessShader)

              IndexWetness = index
			  SetMenuOptionValue(iWetnessShader, WetnessList[IndexWetness])
			  If IndexWetness == 0 ; Full
                   PlayerRef.Addspell(RASS_MCM_RainSpell, False)
				   PlayerRef.Removespell(RASS_MCM_DripsSpell)

	          ElseIf IndexWetness == 1 ; Raindrops
                   PlayerRef.Addspell(RASS_MCM_DripsSpell, False)
				   PlayerRef.Removespell(RASS_MCM_RainSpell)
                   ShowMessage("Toggles Droplet Particles only on characters during rain. As wetness shader is far from perfect, someone may not like it, but at least will have water droplets enabled.", false, "Accept")
	          ElseIf IndexWetness == 2 ; Off
                   PlayerRef.Removespell(RASS_MCM_DripsSpell)
                   PlayerRef.Removespell(RASS_MCM_RainSpell)
				   				  
			  EndIf   

        EndIf
		
EndEvent
;===================================
; TAB DESCRIPTIONS
;===================================

Event OnOptionHighlight(int optionSelected)

	If (optionSelected == iAshShader)
		SetInfoText("Toggles Ash Shader & Ash Particles on characters during ash storm.") 
	ElseIf (optionSelected == iWetnessShader)
		SetInfoText("Toggles Wetness Shader & Droplet Particles on characters during rain.")
	ElseIf (optionSelected == iSnowShader)
		SetInfoText("Toggles Snow Shader & Snowflake Particles on characters during snow.")
	ElseIf (optionSelected == iSwimShader)
		SetInfoText("Toggles Underwater Bubbles on characters when swimming.")		
	ElseIf (optionSelected == iBook)
		SetInfoText("Disables Configuration Book. The book is intended for those who do not use SkyUI. For SkyUI users book is redundant and must be disabled.")
	ElseIf (optionSelected == iCameraFX_RainLenses)
		SetInfoText("Toggles Camera Lens Effects when raining.")
	ElseIf (optionSelected == iCameraFX_Snow)
		SetInfoText("Toggles Camera Lens Effects when snowing.")
	ElseIf (optionSelected == iCameraFX_Swim)
		SetInfoText("Toggles Camera Lens Effects when swimming.")
	ElseIf (optionSelected == iCameraFX_Ash)
		SetInfoText("Toggles Camera Lens Effects during ash storm.")
	ElseIf (optionSelected == iBreathShader)
		SetInfoText("Toggles Cold Breath in cold/snow regions.")
	Endif

EndEvent


event OnVersionUpdate(int a_version)
           if (a_version > 1)	      

			  OnConfigInit()
			  CameraLens_RainingList = new string[4]
		      CameraLens_RainingList[0] = "Subtle"
		      CameraLens_RainingList[1] = "Medium"
		      CameraLens_RainingList[2] = "Heavy"
		      CameraLens_RainingList[3] = "Off"        
		      WetnessList = new string[3]
              WetnessList[0] = "Full"
		      WetnessList[1] = "Raindrops Only"
		      WetnessList[2] = "Off"
			  RASS_Update.show()
 
        EndIf

endEvent
