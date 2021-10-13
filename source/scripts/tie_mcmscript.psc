Scriptname TIE_MCMScript extends SKI_ConfigBase

int OIDDA02				;Boethiah's Calling, constant
int OIDDA04				;Discerning the Transmundane, not constant
int OIDDA06				;the Cursed Tribe, not constant
int OIDDA08				;the Whispering Door, not constant 
int OIDDA09				;The Break of Dawn, constant
int OIDDA13				;The Only Cure, not constant
int OIDDA14				;A Night to Remember (new global)
int OIDDA07				;Pieces of the Past (new global)
int OIDDGQuestStart
int OIDDGVampAttacks
int OIDDGVampLord
int OIDDGScout
int OIDDGMaxWait
int OIDDGMinWait
int OIDDBMinLevel
int OIDDBRandomChance
int OIDHFMinLevel
int OIDMS06				;The Wolf Queen Awakened
int OIDMS04				;Unfathomable Depths
int OIDFFR09			;Grimsever's Return
int OIDFavor153			;Kill the Giant (Jarl Dawnstar)
int OIDFavor157			;Dungeon Delving (Jarl Markarth)
int OIDFavor109			;Kill the Vampire (Jarl Solitude)
int OIDDragonWait
int OIDDragonChance
int OIDDBEbonyWarrior
int OIDDBDeathbrand
int OIDDGWerewolves		;random werewolf encounters
int OIDWEBountyAmount 	;v2  
int OIDWEBountyChance 	;v2
int OIDMeridiaVamp		;v2
int OIDWEThalmorMinLvl	;v2
int OIDWEThalmorQuests	;v2
int OIDWEHiredThugsAmt	;v2
int OIDWEAssassinLvl	;v2
int OIDWEAssassinAssault;v2
int OIDWEAssassinMurder	;v2
int OIDDGVampAttacksEnable	;v2.2
int OIDDGVampAttackChance	;v2.2
int OIDDGEclipseAttackChance	;v2.2
int OIDWELetterFromFriend	;v2.2


float DA02Val = 30.0
float DA04Val = 15.0
float DA06Val = 32.0
float DA08Val = 20.0
float DA09Val = 24.0
float DA13Val = 16.0
float DA14Val = 14.0
float DA07Val = 20.0
float DGQuestVal = 20.0
float VampAttackVal = 18.0
float VampLordVal = 23.0
float DGScoutVal = 25.0
float DGMaxWaitVal = 20.0
float DGMinWaitVal = 1.0
float DBMinLevelVal = 30.0
float DBAttackChanceVal = 50.0
float HFMinLevelVal = 9.0
float MS06Val = 20.0
float MS04Val = 16.0
float FFR09Val = 16.0
float Favor153Val = 22.0
float Favor157Val = 20.0
float Favor109Val = 10.0
float DragonWaitVal = 3.0
float DragonChanceVal = 100.0
float EbonyWarriorVal = 80.0
float DeathbrandVal = 36.0
float WEBountyAmtVal = 1000.0
float WEBountyChanceVal = 25.0
float WEThalmorVal = 8.0	
float WEHiredThugsAmtVal = 0.0
float WEAssassinLvlVal = 5.0
float WEAssassinAVal = 0.0
float WEAssassinMVal = 0.0
float VampAttackChanceVal = 100.0
float EclipseAttackChanceVal = 100.0

GlobalVariable property DA02MinLevel auto
GlobalVariable property DA04MinLevel auto
GlobalVariable property DA06MinLevel auto
GlobalVariable property DA08MinLevel auto
GlobalVariable property DA09MinLevel auto
GlobalVariable property DA13MinLevel auto
GlobalVariable property DA14MinLevel_KRY auto
GlobalVariable property DA07MinLevel_KRY auto
GlobalVariable property DLC1VQMinLevel auto
GlobalVariable property DLC1VQMinLevelVampireAttacks auto
GlobalVariable property DLC1RadiantDisguisedVampireLordChance auto
GlobalVariable property DLC1ScoutPatrolChance auto
GlobalVariable property DLC1EclipseAttackNextMaxWait auto 
GlobalVariable property DLC1EclipseAttackNextWait auto
GlobalVariable property DLC2QuestStartSelection_KRY auto
GlobalVariable property DLC2CultistAttackMinLevel_KRY auto
GlobalVariable property DLC2WE09Chance auto
GlobalVariable property MS06MinLevel auto
GlobalVariable property MS04MinLevel auto
GlobalVariable property FFRiften09Gate auto
GlobalVariable property Favor153MinLevel_KRY auto
GlobalVariable property Favor157MinLevel_KRY auto
GlobalVariable property Favor109MinLevel_KRY auto
GlobalVariable property WIWaitDragon auto
GlobalVariable property RandomDragonChance_KRY auto
GlobalVariable property WerewolfEncounters_KRY auto
GlobalVariable property DLC2EbonyWarriorMinLevel_KRY auto
GlobalVariable property DLC2dunHaknirTreasureQSTMinLevel auto
GlobalVariable property WEbountyCollectorCrimeGoldRequirement auto
GlobalVariable property WEBountyCollectorChance auto
GlobalVariable property MeridiaNoVampire_KRY auto
GlobalVariable property QuestLockThalmorSquad_KRY auto
GlobalVariable property MinLevelThalmorSquad_KRY auto
GlobalVariable property HiredThugsStolenItemMinValue_KRY auto
GlobalVariable property DBAssassinMinLevel_KRY auto
GlobalVariable property DBAssassinMinAssaults_KRY auto
GlobalVariable property DBAssassinMinMurders_KRY auto
GlobalVariable property LetterFromFriendOnly_KRY auto		;v2.2
GlobalVariable property EnableVampireCityAttacks_KRY auto	;v2.2
GlobalVariable property DLC1EclipseAttackNextChanceEclipse auto	;v2.2
GlobalVariable property DLC1EclipseAttackNextChanceNight auto	;v2.2

string[] DLC2CultistAttackList
int OIDDBCultAttackMenu
int DBQuestSelection = 1
int msgshown = 1

BYOHHouseBuildingScript Property BYOHHouseBuilding auto


event OnConfigInit()
	ModName = "$TIE_TimingIsEverything"
	
	Pages = New String[3]
	Pages[0] = "$TIE_DLCQuests"	
	Pages[1] = "$TIE_OtherQuests"	
	Pages[2] = "$TIE_ExtraOptions"
	
	DLC2CultistAttackList = new string[10]
	DLC2CultistAttackList[0] = "$TIE_CultistAttackAfterGraybeards"
	DLC2CultistAttackList[1] = "$TIE_CultistAttackAfterVoice"
	DLC2CultistAttackList[2] = "$TIE_CultistAttackAfterHorn"
	DLC2CultistAttackList[3] = "$TIE_CultistAttackAfterBlade"
	DLC2CultistAttackList[4] = "$TIE_CultistAttackAfterAlduinsWall"
	DLC2CultistAttackList[5] = "$TIE_CultistAttackAfterThroat"
	DLC2CultistAttackList[6] = "$TIE_CultistAttackAfterElderKnowledge"
	DLC2CultistAttackList[7] = "$TIE_CultistAttackAfterAlduinsBane"
	DLC2CultistAttackList[8] = "$TIE_CultistAttackAfterDragonslayer"
	DLC2CultistAttackList[9] = "$TIE_CultistAttackUnknown"
endEvent


Event OnPageReset(string page)
	If (page == "")
		LoadCustomContent("TimingIsEverything/TiE_Title.dds", 20, 30)	
		Return	
	Else
		UnloadCustomContent()
	EndIf
	If (page == "$TIE_DLCQuests")
		SetCursorFillMode(TOP_TO_BOTTOM) 
		AddHeaderOption("<font color='#FFCC66'>$TIE_Dawnguard</font>")
			OIDDGVampAttacksEnable = AddToggleOption("$TIE_EnableVampireAttacks", EnableVampireCityAttacks_KRY.getValueInt())
			if EnableVampireCityAttacks_KRY.getValueInt() == 1
				OIDDGVampAttacks = AddSliderOption("$TIE_VampireAttacks", VampAttackVal, "{0}", OPTION_FLAG_NONE)
				OIDDGVampAttackChance = AddSliderOption("$TIE_VampireAttackChance", VampAttackChanceVal, "{0}", OPTION_FLAG_NONE)
			else
				OIDDGVampAttacks = AddSliderOption("$TIE_VampireAttacks", VampAttackVal, "{0}", OPTION_FLAG_DISABLED)
				OIDDGVampAttackChance = AddSliderOption("$TIE_VampireAttackChance", VampAttackChanceVal, "{0}", OPTION_FLAG_DISABLED)
			endif
			OIDDGQuestStart = AddSliderOption("$TIE_DawnguardRecruitment", DGQuestVal, "{0}")
			OIDDGVampLord = AddSliderOption("$TIE_DisguisedVampireChance", VampLordVal, "{0}")
			OIDDGScout = AddSliderOption("$TIE_ScoutingPartyChance", DGScoutVal, "{0}")
			OIDDGEclipseAttackChance = AddSliderOption("$TIE_EclipseAttackChance", EclipseAttackChanceVal, "{0}")
			OIDDGMinWait = AddSliderOption("$TIE_MinDaysBetweenAttacks", DGMinWaitVal, "{0}")
			OIDDGMaxWait = AddSliderOption("$TIE_MaxDaysBetweenAttacks", DGMaxWaitVal, "{0}")	
		SetCursorPosition(1)		;start right-hand column	
		AddHeaderOption("<font color='#FFCC66'>$TIE_Hearthfire</font>")
			OIDHFMinLevel = AddSliderOption("$TIE_MinimumLevel", HFMinLevelVal, "{0}")
		AddEmptyOption()
		AddHeaderOption("<font color='#FFCC66'>$TIE_Dragonborn</font>")
			OIDDBCultAttackMenu = AddMenuOption("", DLC2CultistAttackList[DBQuestSelection])
			OIDDBMinLevel = AddSliderOption("$TIE_MinimumLevel", DBMinLevelVal, "{0}")
			OIDDBRandomChance = AddSliderOption("$TIE_CultistAttackChance", DBAttackChanceVal, "{0}")

	ElseIf (page == "$TIE_OtherQuests")			
		SetCursorFillMode(TOP_TO_BOTTOM) 
		AddHeaderOption("<font color='#FFCC66'>$TIE_DaedricQuests</font>")
			OIDDA06 = AddSliderOption("$TIE_TheCursedTribe", DA06Val, "{0}")
			OIDDA09 = AddSliderOption("$TIE_TheBreakofDawn", DA09Val, "{0}")
			OIDMeridiaVamp = AddToggleOption("$TIE_TheBreakofDawnNoVampires", MeridiaNoVampire_KRY.getValueInt())
			OIDDA13 = AddSliderOption("$TIE_TheOnlyCure", DA13Val, "{0}")
			OIDDA14 = AddSliderOption("$TIE_ANighttoRemember", DA14Val, "{0}")
			OIDDA04 = AddSliderOption("$TIE_DiscerningtheTransmundane", DA04Val, "{0}")
			OIDDA08 = AddSliderOption("$TIE_TheWhisperingDoor", DA08Val, "{0}")
			OIDDA07 = AddSliderOption("$TIE_PiecesofthePast", DA07Val, "{0}")
			OIDDA02 = AddSliderOption("$TIE_BoethiahsCalling", DA02Val, "{0}")	
		SetCursorPosition(1)		;start right-hand column				
		AddHeaderOption("<font color='#FFCC66'>$TIE_MiscQuests</font>")
			OIDMS06 = AddSliderOption("$TIE_TheWolfQueenAwakened", MS06Val, "{0}")
			OIDMS04 = AddSliderOption("$TIE_UnfathomableDepths", MS04Val, "{0}")
			OIDFFR09 = AddSliderOption("$TIE_GrimseversReturn", FFR09Val, "{0}")
			OIDFavor153 = AddSliderOption("$TIE_KilltheGiant", Favor153Val, "{0}")
			OIDFavor157 = AddSliderOption("$TIE_DungeonDelving", Favor157Val, "{0}")
			OIDFavor109 = AddSliderOption("$TIE_KilltheVampire", Favor109Val, "{0}")
			OIDDBDeathbrand = AddSliderOption("$TIE_Deathbrand", DeathbrandVal, "{0}")
			OIDDBEbonyWarrior = AddSliderOption("$TIE_EbonyWarrior", EbonyWarriorVal, "{0}")

	ElseIf (page == "$TIE_ExtraOptions")
		SetCursorFillMode(TOP_TO_BOTTOM) 
		AddHeaderOption("<font color='#FFCC66'>$TIE_WorldEncounters</font>")
			OIDDGWerewolves = AddToggleOption("$TIE_WerewolfEncounters", WerewolfEncounters_KRY.getValueInt())
			OIDWEThalmorMinLvl = AddSliderOption("$TIE_ThalmorSquadMinLevel", WEThalmorVal, "{0}")		
			OIDWEThalmorQuests = AddToggleOption("$TIE_ThalmorSquadQuestRequirement", QuestLockThalmorSquad_KRY.getValueInt())
			OIDWEHiredThugsAmt = AddSliderOption("$TIE_HiredThugsStolenItemValue", WEHiredThugsAmtVal, "{0}")
			OIDWEAssassinLvl = AddSliderOption("$TIE_HiredAssassinMinLevel", WEAssassinLvlVal, "{0}")
			OIDWEAssassinAssault = AddSliderOption("$TIE_HiredAssassinAssaults", WEAssassinAVal, "{0}")
			OIDWEAssassinMurder = AddSliderOption("$TIE_HiredAssassinMurders", WEAssassinMVal, "{0}")
			OIDWEBountyAmount = AddSliderOption("$TIE_BountyCollectorRequiredBounty", WEBountyAmtVal, "{0}")
			OIDWEBountyChance = AddSliderOption("$TIE_BountyCollectorChance", WEBountyChanceVal, "{0}")
			OIDWELetterFromFriend = AddToggleOption("$TIE_LetterFromFriend", LetterFromFriendOnly_KRY.getValueInt())
		SetCursorPosition(1)		;start right-hand column
		AddHeaderOption("<font color='#FFCC66'>$TIE_DragonAttacks</font>")
			OIDDragonWait = AddSliderOption("$TIE_MinDaysBetweenAttacks", DragonWaitVal, "{0}")
			OIDDragonChance = AddSliderOption("$TIE_DragonAttackChance", DragonChanceVal, "{0}")
		AddEmptyOption()
	EndIf	
EndEvent
	
	

event OnOptionMenuOpen(int option)
	if (option == OIDDBCultAttackMenu)
		SetMenuDialogOptions(DLC2CultistAttackList)
		SetMenuDialogStartIndex(DBQuestSelection)
		SetMenuDialogDefaultIndex(1)
	endIf
endEvent


event OnOptionMenuAccept(int option, int index)
	if (option == OIDDBCultAttackMenu)
		DBQuestSelection = index
		SetMenuOptionValue(OIDDBCultAttackMenu, DLC2CultistAttackList[DBQuestSelection])
		if DBQuestSelection <= 8
			DLC2QuestStartSelection_KRY.Setvalue(DBQuestSelection)
		else
			int randomquest = Utility.RandomInt(2, 8)
			DLC2QuestStartSelection_KRY.SetvalueInt(randomquest)
		endif
	endIf
endEvent

Event OnOptionSelect(int option)
	If (option == OIDDGWerewolves)
		if WerewolfEncounters_KRY.GetValueInt() == 0
			WerewolfEncounters_KRY.setValue(1)
		else
			WerewolfEncounters_KRY.setValue(0)
		endif		
	ElseIf (option == OIDDGVampAttacksEnable)
		if EnableVampireCityAttacks_KRY.GetValueInt() == 0
			EnableVampireCityAttacks_KRY.setValue(1)
		else
			EnableVampireCityAttacks_KRY.setValue(0)
		endif	
	ElseIf (option == OIDWELetterFromFriend)
		if LetterFromFriendOnly_KRY.GetValueInt() == 0
			LetterFromFriendOnly_KRY.setValue(1)
		else
			LetterFromFriendOnly_KRY.setValue(0)
		endif		
	ElseIf (option == OIDMeridiaVamp)
		if MeridiaNoVampire_KRY.GetValueInt() == 0
			MeridiaNoVampire_KRY.setValue(1)
		else
			MeridiaNoVampire_KRY.setValue(0)
		endif	
	ElseIf (option == OIDWEThalmorQuests)
		if QuestLockThalmorSquad_KRY.GetValueInt() == 0
			QuestLockThalmorSquad_KRY.setValue(1)
		else
			QuestLockThalmorSquad_KRY.setValue(0)
		endif			
	Endif
	ForcePageReset()
endEvent

event OnOptionSliderOpen(int option)
	if (option == OIDDA02)
		SetSliderDialogStartValue(DA02Val)
		SetSliderDialogDefaultValue(30.0)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA04)
		SetSliderDialogStartValue(DA04Val)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA06)
		SetSliderDialogStartValue(DA06Val)
		SetSliderDialogDefaultValue(9)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA08)
		SetSliderDialogStartValue(DA08Val)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA09)
		SetSliderDialogStartValue(DA09Val)
		SetSliderDialogDefaultValue(12)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA13)
		SetSliderDialogStartValue(DA13Val)
		SetSliderDialogDefaultValue(12)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA14)
		SetSliderDialogStartValue(DA14Val)
		SetSliderDialogDefaultValue(14)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDA07)
		SetSliderDialogStartValue(DA07Val)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGVampAttacks)
		SetSliderDialogStartValue(VampAttackVal)
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGQuestStart)
		SetSliderDialogStartValue(DGQuestVal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGVampLord)
		SetSliderDialogStartValue(VampLordVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGScout)
		SetSliderDialogStartValue(DGScoutVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGVampAttackChance)
		SetSliderDialogStartValue(VampAttackChanceVal)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGEclipseAttackChance)
		SetSliderDialogStartValue(EclipseAttackChanceVal)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)		
	elseIf (option == OIDDGMinWait)
		SetSliderDialogStartValue(DGMinWaitVal)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDGMaxWait)
		SetSliderDialogStartValue(DGMaxWaitVal)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(1.0, 200.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDBMinLevel)
		SetSliderDialogStartValue(DBMinLevelVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDHFMinLevel)
		SetSliderDialogStartValue(HFMinLevelVal)
		SetSliderDialogDefaultValue(9)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDMS06)
		SetSliderDialogStartValue(MS06Val)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDMS04)
		SetSliderDialogStartValue(MS04Val)
		SetSliderDialogDefaultValue(14)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDFFR09)
		SetSliderDialogStartValue(FFR09Val)
		SetSliderDialogDefaultValue(14)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDFavor153)
		SetSliderDialogStartValue(Favor153Val)
		SetSliderDialogDefaultValue(22)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDFavor157)
		SetSliderDialogStartValue(Favor157Val)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDFavor109)
		SetSliderDialogStartValue(Favor109Val)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDragonWait)
		SetSliderDialogStartValue(DragonWaitVal)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1.0, 200.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDragonChance)
		SetSliderDialogStartValue(DragonChanceVal)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDBRandomChance)
		SetSliderDialogStartValue(DBAttackChanceVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDBDeathbrand)
		SetSliderDialogStartValue(DeathbrandVal)
		SetSliderDialogDefaultValue(36)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDDBEbonyWarrior)
		SetSliderDialogStartValue(EbonyWarriorVal)
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDWEBountyAmount)
		SetSliderDialogStartValue(WEBountyAmtVal)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(500.0, 50000.0)
		SetSliderDialogInterval(500.0)		
	elseIf (option == OIDWEBountyChance)
		SetSliderDialogStartValue(WEBountyChanceVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf (option == OIDWEThalmorMinLvl)
		SetSliderDialogStartValue(WEThalmorVal)
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDWEHiredThugsAmt)
		SetSliderDialogStartValue(WEHiredThugsAmtVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0.0, 1000.0)
		SetSliderDialogInterval(25.0)	
	elseIf (option == OIDWEAssassinLvl)
		SetSliderDialogStartValue(WEAssassinLvlVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0.0, 101.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDWEAssassinAssault)
		SetSliderDialogStartValue(WEAssassinAVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf (option == OIDWEAssassinMurder)
		SetSliderDialogStartValue(WEAssassinMVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	endif
endEvent

event OnOptionSliderAccept(int option, float value)
	if (option == OIDDA02)
		DA02Val = value
		SetSliderOptionValue(OIDDA02, DA02Val, "{0}")
		if DA02Val > 100
			DA02MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA02MinLevel.Setvalue(DA02Val)
		endif
	elseIf (option == OIDDA04)
		DA04Val = value
		SetSliderOptionValue(OIDDA04, DA04Val, "{0}")
		if DA04Val > 100
			DA04MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA04MinLevel.Setvalue(DA04Val)
		endif
	elseIf (option == OIDDA06)
		DA06Val = value
		SetSliderOptionValue(OIDDA06, DA06Val, "{0}")
		if DA06Val > 100
			DA06MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA06MinLevel.Setvalue(DA06Val)
		endif
	elseIf (option == OIDDA08)
		DA08Val = value
		SetSliderOptionValue(OIDDA08, DA08Val, "{0}")
		if DA08Val > 100
			DA08MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA08MinLevel.Setvalue(DA08Val)
		endif
	elseIf (option == OIDDA09)
		DA09Val = value
		SetSliderOptionValue(OIDDA09, DA09Val, "{0}")
		if DA09Val > 100
			DA09MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA09MinLevel.Setvalue(DA09Val)
		endif
	elseIf (option == OIDDA13)
		DA13Val = value
		SetSliderOptionValue(OIDDA13, DA13Val, "{0}")
		if DA13Val > 100
			DA13MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DA13MinLevel.Setvalue(DA13Val)
		endif
	elseIf (option == OIDDA14)
		DA14Val = value
		SetSliderOptionValue(OIDDA14, DA14Val, "{0}")
		if DA14Val > 100
			DA14MinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			DA14MinLevel_KRY.Setvalue(DA14Val)
		endif
	elseIf (option == OIDDA07)
		DA07Val = value
		SetSliderOptionValue(OIDDA07, DA07Val, "{0}")
		if DA07Val > 100
			DA07MinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			DA07MinLevel_KRY.Setvalue(DA07Val)
		endif
	elseIf (option == OIDDGVampAttacks)
		VampAttackVal = value
		SetSliderOptionValue(OIDDGVampAttacks, VampAttackVal, "{0}")
		if VampAttackVal > 100
			DLC1VQMinLevelVampireAttacks.Setvalue(999)
			DisableQuestMessage()
		else
			DLC1VQMinLevelVampireAttacks.Setvalue(VampAttackVal)
		endif
	elseIf (option == OIDDGQuestStart)
		DGQuestVal = value
		SetSliderOptionValue(OIDDGQuestStart, DGQuestVal, "{0}")
		if DGQuestVal > 100
			DLC1VQMinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DLC1VQMinLevel.Setvalue(DGQuestVal)
		endif
	elseIf (option == OIDDGVampLord)
		VampLordVal = value
		SetSliderOptionValue(OIDDGVampLord, VampLordVal, "{0}")
		DLC1RadiantDisguisedVampireLordChance.Setvalue(VampLordVal)
	elseIf (option == OIDDGScout)
		DGScoutVal = value
		SetSliderOptionValue(OIDDGScout, DGScoutVal, "{0}")
		DLC1ScoutPatrolChance.Setvalue(DGScoutVal)
	elseIf (option == OIDDGVampAttackChance)
		VampAttackChanceVal = value
		SetSliderOptionValue(OIDDGVampAttackChance, VampAttackChanceVal, "{0}")
		DLC1EclipseAttackNextChanceNight.Setvalue(VampAttackChanceVal)
	elseIf (option == OIDDGEclipseAttackChance)
		EclipseAttackChanceVal = value
		SetSliderOptionValue(OIDDGEclipseAttackChance, EclipseAttackChanceVal, "{0}")
		DLC1EclipseAttackNextChanceEclipse.Setvalue(EclipseAttackChanceVal)		
	elseIf (option == OIDDGMinWait)
		DGMinWaitVal = value
		SetSliderOptionValue(OIDDGMinWait, DGMinWaitVal, "{0}")
		DLC1EclipseAttackNextWait.Setvalue(DGMinWaitVal)
	elseIf (option == OIDDGMaxWait)
		DGMaxWaitVal = value
		SetSliderOptionValue(OIDDGMaxWait, DGMaxWaitVal, "{0}")
		DLC1EclipseAttackNextMaxWait.Setvalue(DGMaxWaitVal)
	elseIf (option == OIDDBMinLevel)
		DBMinLevelVal = value
		SetSliderOptionValue(OIDDBMinLevel, DBMinLevelVal, "{0}")
		if DBMinLevelVal > 100
			DLC2CultistAttackMinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			DLC2CultistAttackMinLevel_KRY.Setvalue(DBMinLevelVal)
		endif
	elseIf (option == OIDHFMinLevel)
		HFMinLevelVal = value
		SetSliderOptionValue(OIDHFMinLevel, HFMinLevelVal, "{0}")
		if HFMinLevelVal > 100
			BYOHHouseBuilding.iMinIntroLetterLevel = 999
			DisableQuestMessage()
		else
			BYOHHouseBuilding.iMinIntroLetterLevel = HFMinLevelVal as int
		endif
	elseIf (option == OIDMS06)
		MS06Val = value
		SetSliderOptionValue(OIDMS06, MS06Val, "{0}")
		if MS06Val > 100
			MS06MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			MS06MinLevel.Setvalue(MS06Val)
		endif
	elseIf (option == OIDMS04)
		MS04Val = value
		SetSliderOptionValue(OIDMS04, MS04Val, "{0}")
		if MS04Val > 100
			MS04MinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			MS04MinLevel.Setvalue(MS04Val)
		endif
	elseIf (option == OIDFFR09)
		FFR09Val = value
		SetSliderOptionValue(OIDFFR09, FFR09Val, "{0}")
		if FFR09Val > 100
			FFRiften09Gate.Setvalue(999)
			DisableQuestMessage()
		else
			FFRiften09Gate.Setvalue(FFR09Val)
		endif
	elseIf (option == OIDFavor153)
		Favor153Val = value
		SetSliderOptionValue(OIDFavor153, Favor153Val, "{0}")
		If Favor153Val > 100
			Favor153MinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			Favor153MinLevel_KRY.Setvalue(Favor153Val)
		endif
	elseIf (option == OIDFavor157)
		Favor157Val = value
		SetSliderOptionValue(OIDFavor157, Favor157Val, "{0}")
		If Favor157Val > 100
			Favor157MinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			Favor157MinLevel_KRY.Setvalue(Favor157Val)
		endif
	elseIf (option == OIDFavor109)
		Favor109Val = value
		SetSliderOptionValue(OIDFavor109, Favor109Val, "{0}")
		If Favor109Val > 100
			Favor109MinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			Favor109MinLevel_KRY.Setvalue(Favor109Val)
		endif
	elseIf (option == OIDDragonWait)
		DragonWaitVal = value
		SetSliderOptionValue(OIDDragonWait, DragonWaitVal, "{0}")
		WIWaitDragon.Setvalue(DragonWaitVal)
	elseIf (option == OIDDragonChance)
		DragonChanceVal = value
		SetSliderOptionValue(OIDDragonChance, DragonChanceVal, "{0}")
		RandomDragonChance_KRY.Setvalue(DragonChanceVal)
	elseIf (option == OIDDBRandomChance)
		DBAttackChanceVal = value
		SetSliderOptionValue(OIDDBRandomChance, DBAttackChanceVal, "{0}")
		DLC2WE09Chance.Setvalue(DBAttackChanceVal)
	elseIf (option == OIDDBDeathbrand)
		DeathbrandVal = value
		SetSliderOptionValue(OIDDBDeathbrand, DeathbrandVal, "{0}")
		If DeathbrandVal > 100
			DLC2dunHaknirTreasureQSTMinLevel.Setvalue(999)
			DisableQuestMessage()
		else
			DLC2dunHaknirTreasureQSTMinLevel.Setvalue(DeathbrandVal)
		endif
	elseIf (option == OIDDBEbonyWarrior)
		EbonyWarriorVal = value
		SetSliderOptionValue(OIDDBEbonyWarrior, EbonyWarriorVal, "{0}")
		If EbonyWarriorVal > 100
			DLC2EbonyWarriorMinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			DLC2EbonyWarriorMinLevel_KRY.Setvalue(EbonyWarriorVal)
		endif
	elseIf (option == OIDWEBountyAmount)
		WEBountyAmtVal = value
		SetSliderOptionValue(OIDWEBountyAmount, WEBountyAmtVal, "{0}")
		WEbountyCollectorCrimeGoldRequirement.SetValue(WEBountyAmtVal)
	elseIf (option == OIDWEBountyChance)
		WEBountyChanceVal = value
		SetSliderOptionValue(OIDWEBountyChance, WEBountyChanceVal, "{0}")
		WEBountyCollectorChance.SetValue(WEBountyChanceVal)	
	elseIf (option == OIDWEThalmorMinLvl)
		WEThalmorVal = value
		SetSliderOptionValue(OIDWEThalmorMinLvl, WEThalmorVal, "{0}")
		If WEThalmorVal > 100
			MinLevelThalmorSquad_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			MinLevelThalmorSquad_KRY.Setvalue(WEThalmorVal)
		endif		
	elseIf (option == OIDWEHiredThugsAmt)
		WEHiredThugsAmtVal = value
		SetSliderOptionValue(OIDWEHiredThugsAmt, WEHiredThugsAmtVal, "{0}")
		HiredThugsStolenItemMinValue_KRY.SetValue(WEHiredThugsAmtVal)	
	elseIf (option == OIDWEAssassinLvl)
		WEAssassinLvlVal = value
		SetSliderOptionValue(OIDWEAssassinLvl, WEAssassinLvlVal, "{0}")
		If WEAssassinLvlVal > 100
			DBAssassinMinLevel_KRY.Setvalue(999)
			DisableQuestMessage()
		else
			DBAssassinMinLevel_KRY.Setvalue(WEAssassinLvlVal)
		endif	
	elseIf (option == OIDWEAssassinAssault)
		WEAssassinAVal = value
		SetSliderOptionValue(OIDWEAssassinAssault, WEAssassinAVal, "{0}")
		DBAssassinMinAssaults_KRY.SetValue(WEAssassinAVal)		
	elseIf (option == OIDWEAssassinMurder)
		WEAssassinMVal = value
		SetSliderOptionValue(OIDWEAssassinMurder, WEAssassinMVal, "{0}")
		DBAssassinMinMurders_KRY.SetValue(WEAssassinMVal)			
	endIf
endEvent

event OnOptionDefault(int option)
	if (option == OIDDA02)
		DA02Val = 30
		SetSliderOptionValue(OIDDA02, DA02Val, "{0}")	
		DA02MinLevel.Setvalue(DA02Val)
	elseIf (option == OIDDA04)
		DA04Val = 15
		SetSliderOptionValue(OIDDA04, DA04Val, "{0}")
		DA04MinLevel.Setvalue(DA04Val)
	elseIf (option == OIDDA06)
		DA06Val = 9
		SetSliderOptionValue(OIDDA06, DA06Val, "{0}")
		DA06MinLevel.Setvalue(DA06Val)
	elseIf (option == OIDDA08)
		DA08Val = 20
		SetSliderOptionValue(OIDDA08, DA08Val, "{0}")
		DA08MinLevel.Setvalue(DA08Val)
	elseIf (option == OIDDA09)
		DA09Val = 12
		SetSliderOptionValue(OIDDA09, DA09Val, "{0}")
		DA09MinLevel.Setvalue(DA09Val)
	elseIf (option == OIDDA13)
		DA13Val = 12
		SetSliderOptionValue(OIDDA13, DA13Val, "{0}")
		DA13MinLevel.Setvalue(DA13Val)
	elseIf (option == OIDDA14)
		DA14Val = 14
		SetSliderOptionValue(OIDDA14, DA14Val, "{0}")
		DA14MinLevel_KRY.Setvalue(DA14Val)
	elseIf (option == OIDDA07)
		DA07Val = 20
		SetSliderOptionValue(OIDDA07, DA07Val, "{0}")
		DA07MinLevel_KRY.Setvalue(DA07Val)
	elseIf (option == OIDDGVampAttacks)
		VampAttackVal = 8
		SetSliderOptionValue(OIDDGVampAttacks, VampAttackVal, "{0}")
		DLC1VQMinLevelVampireAttacks.Setvalue(VampAttackVal)
	elseIf (option == OIDDGQuestStart)
		DGQuestVal = 0
		SetSliderOptionValue(OIDDGQuestStart, DGQuestVal, "{0}")
		DLC1VQMinLevel.Setvalue(DGQuestVal)
	elseIf (option == OIDDGVampLord)
		VampLordVal = 25
		SetSliderOptionValue(OIDDGVampLord, VampLordVal, "{0}")
		DLC1RadiantDisguisedVampireLordChance.Setvalue(VampLordVal)
	elseIf (option == OIDDGScout)
		DGScoutVal = 25
		SetSliderOptionValue(OIDDGScout, DGScoutVal, "{0}")
		DLC1ScoutPatrolChance.Setvalue(DGScoutVal)
	elseIf (option == OIDDGVampAttackChance)
		VampAttackChanceVal = 100
		SetSliderOptionValue(OIDDGVampAttackChance, VampAttackChanceVal, "{0}")
		DLC1EclipseAttackNextChanceNight.Setvalue(VampAttackChanceVal)
	elseIf (option == OIDDGEclipseAttackChance)
		EclipseAttackChanceVal = 100
		SetSliderOptionValue(OIDDGEclipseAttackChance, EclipseAttackChanceVal, "{0}")
		DLC1EclipseAttackNextChanceEclipse.Setvalue(EclipseAttackChanceVal)			
	elseIf (option == OIDDGMinWait)
		DGMinWaitVal = 1
		SetSliderOptionValue(OIDDGMinWait, DGMinWaitVal, "{0}")
		DLC1EclipseAttackNextWait.Setvalue(DGMinWaitVal)
	elseIf (option == OIDDGMaxWait)
		DGMaxWaitVal = 20
		SetSliderOptionValue(OIDDGMaxWait, DGMaxWaitVal, "{0}")
		DLC1EclipseAttackNextMaxWait.Setvalue(DGMaxWaitVal)
	elseIf (option == OIDDBMinLevel)
		DBMinLevelVal = 25
		SetSliderOptionValue(OIDDBMinLevel, DBMinLevelVal, "{0}")
		DLC2CultistAttackMinLevel_KRY.Setvalue(DBMinLevelVal)
	elseIf (option == OIDHFMinLevel)
		HFMinLevelVal = 9
		SetSliderOptionValue(OIDHFMinLevel, HFMinLevelVal, "{0}")
		BYOHHouseBuilding.iMinIntroLetterLevel = HFMinLevelVal as int
	elseIf (option == OIDMS06)
		MS06Val = 10
		SetSliderOptionValue(OIDMS06, MS06Val, "{0}")
		MS06MinLevel.Setvalue(MS06Val)
	elseIf (option == OIDMS04)
		MS04Val = 14
		SetSliderOptionValue(OIDMS04, MS04Val, "{0}")
		MS04MinLevel.Setvalue(MS04Val)
	elseIf (option == OIDFFR09)
		FFR09Val = 14
		SetSliderOptionValue(OIDFFR09, FFR09Val, "{0}")
		FFRiften09Gate.Setvalue(FFR09Val)
	elseIf (option == OIDFavor153)
		Favor153Val = 22
		SetSliderOptionValue(OIDFavor153, Favor153Val, "{0}")
		Favor153MinLevel_KRY.Setvalue(Favor153Val)
	elseIf (option == OIDFavor157)
		Favor157Val = 20
		SetSliderOptionValue(OIDFavor157, Favor157Val, "{0}")
		Favor157MinLevel_KRY.Setvalue(Favor157Val)
	elseIf (option == OIDFavor109)
		Favor109Val = 10
		SetSliderOptionValue(OIDFavor109, Favor109Val, "{0}")
		Favor109MinLevel_KRY.Setvalue(Favor109Val)
	elseIf (option == OIDDragonWait)
		DragonWaitVal = 3
		SetSliderOptionValue(OIDDragonWait, DragonWaitVal, "{0}")
		WIWaitDragon.Setvalue(DragonWaitVal)
	elseIf (option == OIDDragonChance)
		DragonChanceVal = 100
		SetSliderOptionValue(OIDDragonChance, DragonChanceVal, "{0}")
		RandomDragonChance_KRY.Setvalue(DragonChanceVal)
	elseIf (option == OIDDBRandomChance)
		DBAttackChanceVal = 5
		SetSliderOptionValue(OIDDBRandomChance, DBAttackChanceVal, "{0}")
		DLC2WE09Chance.Setvalue(DBAttackChanceVal)
	elseIf (option == OIDDBDeathbrand)
		DeathbrandVal = 36
		SetSliderOptionValue(OIDDBDeathbrand, DeathbrandVal, "{0}")
		DLC2dunHaknirTreasureQSTMinLevel.Setvalue(DeathbrandVal)
	elseIf (option == OIDDBEbonyWarrior)
		EbonyWarriorVal = 80
		SetSliderOptionValue(OIDDBEbonyWarrior, EbonyWarriorVal, "{0}")
		DLC2EbonyWarriorMinLevel_KRY.Setvalue(EbonyWarriorVal)
	elseIf (option == OIDWEBountyAmount)
		WEBountyAmtVal = 1000
		SetSliderOptionValue(OIDWEBountyAmount, WEBountyAmtVal, "{0}")
		WEbountyCollectorCrimeGoldRequirement.SetValue(WEBountyAmtVal)
	elseIf (option == OIDWEBountyChance)
		WEBountyChanceVal = 25
		SetSliderOptionValue(OIDWEBountyChance, WEBountyChanceVal, "{0}")
		WEBountyCollectorChance.SetValue(WEBountyChanceVal)		
	elseIf (option == OIDWEThalmorMinLvl)
		WEThalmorVal = 8
		SetSliderOptionValue(OIDWEThalmorMinLvl, WEThalmorVal, "{0}")
		MinLevelThalmorSquad_KRY.Setvalue(WEThalmorVal)	
	elseIf (option == OIDWEHiredThugsAmt)
		WEHiredThugsAmtVal = 0
		SetSliderOptionValue(OIDWEHiredThugsAmt, WEHiredThugsAmtVal, "{0}")
		HiredThugsStolenItemMinValue_KRY.SetValue(WEHiredThugsAmtVal)	
	elseIf (option == OIDWEAssassinLvl)
		WEAssassinLvlVal = 5
		SetSliderOptionValue(OIDWEAssassinLvl, WEAssassinLvlVal, "{0}")
		DBAssassinMinLevel_KRY.Setvalue(WEAssassinLvlVal)
	elseIf (option == OIDWEAssassinAssault)
		WEAssassinAVal = 0
		SetSliderOptionValue(OIDWEAssassinAssault, WEAssassinAVal, "{0}")
		DBAssassinMinAssaults_KRY.SetValue(WEAssassinAVal)		
	elseIf (option == OIDWEAssassinMurder)
		WEAssassinMVal = 0
		SetSliderOptionValue(OIDWEAssassinMurder, WEAssassinMVal, "{0}")
		DBAssassinMinMurders_KRY.SetValue(WEAssassinMVal)			
	endIf
endEvent

event OnOptionHighlight(int option)
	if (option == OIDDA02)
		SetInfoText("$TIE_DescBoethiahsCalling")
	elseIf (option == OIDDA04)
		SetInfoText("$TIE_DescDiscerningtheTransmundane")
	elseIf (option == OIDDA06)
		SetInfoText("$TIE_DescTheCursedTribe")
	elseIf (option == OIDDA08)
		SetInfoText("$TIE_DescTheWhisperingDoor")
	elseIf (option == OIDDA09)
		SetInfoText("$TIE_DescTheBreakofDawn")
	elseIf (option == OIDDA13)
		SetInfoText("$TIE_DescTheOnlyCure")
	elseIf (option == OIDDA14)
		SetInfoText("$TIE_DescANighttoRemember")
	elseIf (option == OIDDA07)
		SetInfoText("$TIE_DescPiecesofthePast")
	elseIf (option == OIDDGVampAttacksEnable)
		SetInfoText("$TIE_DescVampireAttacksEnable")		
	elseIf (option == OIDDGVampAttacks)
		SetInfoText("$TIE_DescVampireAttacks")
	elseIf (option == OIDDGQuestStart)
		SetInfoText("$TIE_DescDawnguardRecruitment")
	elseIf (option == OIDDGVampLord)
		SetInfoText("$TIE_DescDisguisedVampireChance")
	elseIf (option == OIDDGVampAttackChance)
		SetInfoText("$TIE_DescVampAttackChance")
	elseIf (option == OIDDGEclipseAttackChance)
		SetInfoText("$TIE_DescEclipseAttackChance")		
	elseIf (option == OIDDGScout)
		SetInfoText("$TIE_DescScoutingPartyChance")
	elseIf (option == OIDDGMinWait)
		SetInfoText("$TIE_DescMinDaysBetweenAttacks")
	elseIf (option == OIDDGMaxWait)
		SetInfoText("$TIE_DescMaxDaysBetweenAttacks")
	elseIf (option == OIDDBMinLevel)
		SetInfoText("$TIE_DescDragonborn")
	elseIf (option == OIDDBCultAttackMenu)
		SetInfoText("$TIE_DescDragonbornQuestReq")
	elseIf (option == OIDHFMinLevel)
		SetInfoText("$TIE_DescHearthfire")
	elseIf (option == OIDMS06)
		SetInfoText("$TIE_DescTheWolfQueenAwakened")
	elseIf (option == OIDMS04)
		SetInfoText("$TIE_DescUnfathomableDepths")
	elseIf (option == OIDFFR09)
		SetInfoText("$TIE_DescGrimseversReturn")
	elseIf (option == OIDFavor153)
		SetInfoText("$TIE_DescKilltheGiant")
	elseIf (option == OIDFavor157)
		SetInfoText("$TIE_DescDungeonDelving")
	elseIf (option == OIDFavor109)
		SetInfoText("$TIE_DescKilltheVampire")
	elseIf (option == OIDDragonWait)
		SetInfoText("$TIE_DescDragonAttackDays")
	elseIf (option == OIDDragonChance)
		SetInfoText("$TIE_DescDragonAttackChance")
	elseIf (option == OIDDBRandomChance)
		SetInfoText("$TIE_DescCultistAttackChance")
	elseIf (option == OIDDBDeathbrand)
		SetInfoText("$TIE_DescDeathbrand")
	elseIf (option == OIDDBEbonyWarrior)
		SetInfoText("$TIE_DescEbonyWarrior")
	elseIf (option == OIDDGWerewolves)
		SetInfoText("$TIE_DescWerewolfEncounters")
	elseIf (option == OIDWEBountyAmount)
		SetInfoText("$TIE_DescBountyAmount")
	elseIf (option == OIDWEBountyChance)
		SetInfoText("$TIE_DescBountyChance")
	elseIf (option == OIDWEThalmorMinLvl)
		SetInfoText("$TIE_DescThalmorSquadMinLevel")
	elseIf (option == OIDWEAssassinLvl)
		SetInfoText("$TIE_DescHiredAssassinMinLevel")
	elseIf (option == OIDWEHiredThugsAmt)
		SetInfoText("$TIE_DescHiredThugsStolenItemValue")
	elseIf (option == OIDWEAssassinAssault)
		SetInfoText("$TIE_DescHiredAssassinAssaults")
	elseIf (option == OIDWEAssassinMurder)
		SetInfoText("$TIE_DescHiredAssassinMurders")
	elseIf (option == OIDMeridiaVamp)
		SetInfoText("$TIE_DescTheBreakofDawnNoVampires")	
	elseIf (option == OIDWEThalmorQuests)
		SetInfoText("$TIE_DescThalmorSquadQuestReq")	
	elseIf (option == OIDWELetterFromFriend)
		SetInfoText("$TIE_DescLetterFromFriend")			
	endIf
endEvent

Function DisableQuestMessage()
	if msgshown <= 5
		ShowMessage("$TIE_Level101", false, "$TIE_Okay")
		msgshown = msgshown + 1
	endif	
EndFunction