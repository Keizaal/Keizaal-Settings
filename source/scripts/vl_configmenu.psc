Scriptname VL_ConfigMenu extends SKI_ConfigBase

Actor Property PlayerRef  Auto

GlobalVariable Property KillMove  Auto

GlobalVariable Property VL_LastEnemyRestriction  Auto

GlobalVariable Property VL_PlayerImmunity  Auto

GlobalVariable Property VL_Perspective  Auto  

GlobalVariable Property VL_KillmoveChance  Auto

GlobalVariable Property VL_Decapitation  Auto

GlobalVariable Property DecapitationChance  Auto  

GlobalVariable Property VL_RangedKillmove  Auto

GlobalVariable Property VL_RangedKillmoveChance  Auto

GlobalVariable Property VL_RangedLastEnemyRestriction  Auto

GlobalVariable Property VL_RangedPerspective  Auto

GlobalVariable Property VL_MaceDecapitations  Auto

GlobalVariable Property VL_MoveAnimations  Auto  

GlobalVariable Property VL_HandActivation  Auto    

GlobalVariable Property VL_WerewolfAlt  Auto 

GlobalVariable Property VL_RangedMode  Auto

GlobalVariable Property VL_MeleeMode  Auto

GlobalVariable Property VL_Version  Auto  

GlobalVariable Property VL_KillmoveChanceDragon  Auto  

GlobalVariable Property VL_RangedKillmoveChanceDragon  Auto

GlobalVariable Property VL_KillmoveStealthDagger  Auto

GlobalVariable Property VL_KillmoveStealthAxe  Auto  

GlobalVariable Property VL_KillmoveStealthMace  Auto  

GlobalVariable Property VL_KillmoveStealthSword  Auto  

GlobalVariable Property VL_KillmoveStealthUnarmed  Auto

GlobalVariable Property VL_KillmoveStealthChance  Auto

GlobalVariable Property VL_KillmoveStealthSittingKills  Auto

GlobalVariable Property VL_CDOInstalled  Auto

GlobalVariable Property VL_MeleeNPCs  Auto  

GlobalVariable Property VL_MeleeCreatures  Auto

GlobalVariable Property VL_Debug  Auto  

GlobalVariable Property VL_MeleeBackKillmoves  Auto

GlobalVariable Property VL_CameraSetting  Auto 

GlobalVariable Property VL_NoSlowMo  Auto

GlobalVariable Property VL_JConInstalled  Auto

GlobalVariable Property VL_IsJCValid  Auto   

GlobalVariable Property VL_RequiemPatchInstalled  Auto  

;=========================================Number Property=============================================

GlobalVariable[] Property VL_zNumberArray  Auto

;=========================================Unarmed Properties===========================================

FormList Property VL_zFormListUnarmed  Auto

GlobalVariable Property VL_zRandomizerUnarmed Auto

Bool[] Property VL_zValUnarmedArray  Auto

;=========================================Shield Properties=============================================

FormList Property VL_zFormListShield  Auto

GlobalVariable Property VL_zRandomizerShield  Auto  

Bool[] Property VL_zValShieldArray  Auto 

;=========================================Dagger Properties=============================================

FormList[] Property VL_zFormListDaggerArray  Auto

GlobalVariable[] Property VL_zRandomizerDaggerArray  Auto

GlobalVariable[] Property VL_zToggleDaggerArray  Auto

Bool[] Property VL_zValSGDaggerArray  Auto  

Bool[] Property VL_zValDWDaggerArray  Auto

Bool[] Property VL_zValDaggerExtrasArray  Auto

Bool[] Property VL_zValDWDaggerDecapArray Auto

;=========================================Sword Properties=============================================

FormList[] Property VL_zFormListSwordArray  Auto  

GlobalVariable[] Property VL_zRandomizerSwordArray  Auto  

GlobalVariable[] Property VL_zToggleSwordArray  Auto  

Bool[] Property VL_zValSGSwordArray  Auto  

Bool[] Property VL_zValDWSwordArray  Auto  

Bool[] Property VL_zValSwordExtrasArray  Auto 

Bool[] Property VL_zValDWSwordDecapArray Auto

;=========================================Mace Properties=============================================

FormList[] Property VL_zFormListMaceArray  Auto  

GlobalVariable[] Property VL_zRandomizerMaceArray  Auto  

GlobalVariable[] Property VL_zToggleMaceArray  Auto  

Bool[] Property VL_zValSGMaceArray  Auto  

Bool[] Property VL_zValDWMaceArray  Auto  

Bool[] Property VL_zValMaceExtrasArray  Auto 

Bool[] Property VL_zValDWMaceDecapArray Auto

;=========================================Axe Properties=============================================

FormList[] Property VL_zFormListAxeArray  Auto  

GlobalVariable[] Property VL_zRandomizerAxeArray  Auto  

GlobalVariable[] Property VL_zToggleAxeArray  Auto  

Bool[] Property VL_zValSGAxeArray  Auto  

Bool[] Property VL_zValDWAxeArray  Auto  

Bool[] Property VL_zValAxeExtrasArray  Auto 

Bool[] Property VL_zValDWAxeDecapArray Auto

;=========================================Greatsword Properties=============================================

FormList[] Property VL_zFormListGreatswordArray  Auto  

GlobalVariable[] Property VL_zRandomizerGreatswordArray  Auto  

GlobalVariable Property VL_zToggleSGGreatswordBO  Auto  

Bool[] Property VL_zValGreatswordArray  Auto  

Bool[] Property VL_zValGreatswordDecapArray  Auto  

Bool[] Property VL_zValGreatswordDecapBOArray  Auto 

Bool Property VL_zValGreatswordToggle Auto

;=========================================Warhammer Properties=============================================

FormList[] Property VL_zFormListWarhammerArray  Auto  

GlobalVariable[] Property VL_zRandomizerWarhammerArray  Auto  

GlobalVariable Property VL_zToggleSGWarhammerBO  Auto  

Bool[] Property VL_zValWarhammerArray  Auto  

Bool[] Property VL_zValWarhammerDecapArray  Auto  

Bool[] Property VL_zValWarhammerDecapBOArray  Auto 

Bool Property VL_zValWarhammerToggle Auto

;=========================================Battleaxe Properties=============================================

FormList[] Property VL_zFormListBattleaxeArray  Auto  

GlobalVariable[] Property VL_zRandomizerBattleaxeArray  Auto  

GlobalVariable Property VL_zToggleSGBattleaxeBO  Auto  

Bool[] Property VL_zValBattleaxeArray  Auto  

Bool[] Property VL_zValBattleaxeDecapArray  Auto  

Bool[] Property VL_zValBattleaxeDecapBOArray  Auto 

Bool Property VL_zValBattleaxeToggle Auto

;===========================================SE==============================================================

Globalvariable Property VL_FreezePulse Auto

Globalvariable Property VL_FreezeLength Auto


import debug
import utility
import game
import VL_Utility

;--OIDs--  

int ResetOID
int KillmoveOID
int LastEnemyRestrictionOID
int PlayerImmunityOID
int PerspectiveOID
int KillmoveChanceOID
int DecapitationOID
int DecapitationChanceOID
int RangedKillmoveOID
int RangedKillmoveChanceOID
int RangedLastEnemyRestrictionOID
int RangedToggleKeyOID
int RangedPerspectiveOID
int MaceDecapitationsOID
int MoveAnimationsOID
int HandActivationOID
int WerewolfAltOID
int RangedKillmoveChanceDragonOID
int RangedModeOID
int KillmoveChanceDragonOID
int KillmoveStealthUnarmedOID
int KillmoveStealthSwordOID
int KillmoveStealthDaggerOID
int KillmoveStealthAxeOID
int KillmoveStealthMaceOID
int KillmoveStealthChanceOID
int KillmoveStealthSittingKillsOID

;--States--

int PerspectiveListIndex = 0
int KillmoveListIndex = 1
int KillmoveChance = 100
int DecapitationListIndex = 1
int DecapitationChanceInt = 40
int RangedKillmoveListIndex = 1
int RangedKillmoveChance = 100
int RangedToggleKey = -1
int RangedPerspectiveListIndex = 0
int MoveAnimationsListIndex = 0
int ResetCount = 0
int StickyPage = 0
int RangedKillmoveChanceDragon = 100
int VLVersionESPIndex = 0
int RangedModeListIndex = 0
int KillmoveChanceDragon = 100
int KillmoveStealthUnarmedListIndex = 1
int KillmoveStealthSwordListIndex = 1
int KillmoveStealthDaggerListIndex = 1
int KillmoveStealthAxeListIndex = 2
int KillmoveStealthMaceListIndex = 2
int KillmoveStealthChance = 100
int CDOWarning = 0
int CustomizeWeaponIndex = 0
int CustomizeWeaponPageNumber = 0
int SettingsIndex = 0
int DualWieldOptionPageNumber = 0
int KillmovesNameListIndex = 0
int CameraSettingListIndex = 0
float StaggerPulseDelayTiming = 1.00000

bool ResetVal = false
bool VLResetMsg = false
bool LastEnemyRestrictionVal = true
bool PlayerImmunityVal = true
bool RangedLastEnemyRestrictionVal = true
bool MaceDecapitationsVal = true
bool HandActivationVal = false
bool WerewolfAltVal = false
bool KillmoveStealthSittingKillsVal = false
bool StaggerPulseVal = false

;--Strings--

string VLVersionNumber
string[] VLVersionESP
string[] ResetList
string[] PerspectiveList
string[] PerspectiveListShort
string[] KillmoveList
string[] DecapitationList
string[] RangedKillmoveList
string[] RangedPerspectiveList
string[] MoveAnimationsList
string[] RangedModeList
string[] KillmoveStealthUnarmedList
string[] KillmoveStealthSwordList
string[] KillmoveStealthDaggerList
string[] KillmoveStealthAxeList
string[] KillmoveStealthMaceList
string[] CustomizeWeaponList
string[] SettingsList
string[] KillmovesNameList
string[] KillmovesExtrasNameList
string[] KillmovesDWDecapNameList
string[] Killmoves2HDecapNameList
string[] Killmoves2HDecapBONameList
string[] CameraSettingList

;--flags--

int flags
int flags2
int flags3
int flags4
int flagRangedMode

;--SavedValues--

int SavedDebugValue
int SavedMeleeBackKillmovesValue 
int SavedMeleeNPCsValue
int SavedMeleeCreaturesValue
int objFileList
int SaveRangedModeSetting = 0
int CameraListSpecial = 0

;--2.0 TextValues--

string MeleeBackKillmovesVal = "$On: Matched"
string MeleeNPCsVal = "$On: Matched"
string MeleeCreaturesVal = "$On: Matched"
string DualWieldOptionVal = "$Single"
string VL_DebugVal = "$Off"

string SettingsMenuVal = "$Select"
string CustomizeWeaponVal = "$Select"

;--2.1 SaveProfileValues--

string CurrentCustomizeKillmoveProfileVal = "$None"
string SaveCustomizeKillmoveProfileVal = "$Select"
string LoadCustomizeKillmoveProfileVal = "$Select"
string DeleteCustomizeKillmoveProfileVal = "$Select"

string CurrentMainProfileVal = "$None"
string SaveMainProfileVal = "$Select"
string LoadMainProfileVal = "$Select"
string DeleteMainProfileVal = "$Select"

string CKMProfilePath = "Data/Killmove Mod Profiles/VioLens/Customize Killmoves/"
string FilenameExtCKM = ".VLCK"

string MainProfilePath = "Data/Killmove Mod Profiles/VioLens/Menu Settings/"
string FilenameExtMain = ".VLMS"

;--Ranged Mode Keymap Name

string RangedKeymapName = "$Toggle Magic/Archery/Off"

;--Close Menu Randomize

int CloseMenuRandomize = 0
int FirstToggletoCustom = 0

int SavedProfileEdited = 0
int SavedProfileEditedStop = 0
int SavedProfileEdited2 = 0
int SavedProfileEditedStop2 = 0

int Automated = 0
int AddRemoveSuper = 0

bool AddRemoveAllVal

Bool OneTimeFix222 = False
Bool ThruProfile = False

;==================================================MCMVersion===========================================

int function GetVersion()
	return 14 ;Current Version (14 = 2.22 SE)
endFunction  

;==============================================VLPluginVersion===========================================

Function VLPluginVersion()
	If(VL_Version.getvalueint() == 0)
		VLVersionESPIndex = 0
	elseif(VL_Version.getvalueint() == 1)
		VLVersionESPIndex = 1
	elseif(VL_Version.getvalueint() == 2)
		VLVersionESPIndex = 2
	elseif(VL_Version.getvalueint() == 3)
		VLVersionESPIndex = 3
	elseif(VL_Version.getvalueint() == 4)
		VLVersionESPIndex = 4
	endif
endFunction

;==============================================Initialization=============================================

Event OnConfigInit()

	VLVersionNumber = "2.22"

	VLVersionESP = New String[5]
		VLVersionESP[0] = "Vanilla"
		VLVersionESP[1] = "Dawnguard"
		VLVersionESP[2] = "Dragonborn"
		VLVersionESP[3] = "Legendary"
		VLVersionESP[4] = "Special Edition"

	Pages = New String[4]
		Pages[0] = "$Melee & Ranged"
		Pages[1] = "$Stealth & Triggers"
		Pages[2] = "$Customize Killmoves"
		Pages[3] = "$Profile System"

	ResetList = New String[1]
		ResetList[0] = "$Reset"

	PerspectiveList = New String[9]
		PerspectiveList[0] = "$Vanilla"
		PerspectiveList[1] = "$1st Person"
		PerspectiveList[2] = "$3rd Person"
		PerspectiveList[3] = "$3rd Person Last"
		PerspectiveList[4] = "$3rd Person Static"
		PerspectiveList[5] = "$3rd Person Static Last"
		PerspectiveList[6] = "$Smart"
		PerspectiveList[7] = "$Smart Static"
		PerspectiveList[8] = "$Static Cinematic"
	
	PerspectiveListShort = New String[9]
		PerspectiveListShort[0] = "$Vanilla"
		PerspectiveListShort[1] = "$1st Person"
		PerspectiveListShort[2] = "$3rd Person"
		PerspectiveListShort[3] = "$3rd Person Last"
		PerspectiveListShort[4] = "$Static"
		PerspectiveListShort[5] = "$Static Last"
		PerspectiveListShort[6] = "$Smart"
		PerspectiveListShort[7] = "$Smart Static"
		PerspectiveListShort[8] = "$Static Cinematic"

	KillmoveList = New String[4]
		KillmoveList[0] = "$Off"
		KillmoveList[1] = "$On: Matched"
		KillmoveList[2] = "$On: Mixed"
		KillmoveList[3] = "$On: Customized"

	DecapitationList = New String[3]
		DecapitationList[0] = "$Off"
		DecapitationList[1] = "$Perks"
		DecapitationList[2] = "$On"

	RangedKillmoveList = New String[3]
		RangedKillmoveList[0] = "$Off"
		RangedKillmoveList[1] = "$On: Magic"
		RangedKillMoveList[2] = "$On: Archery"

	RangedPerspectiveList = New String[2]
		RangedPerspectiveList[0] = "$Vanilla"
		RangedPerspectiveList[1] = "$Projectiles"

	MoveAnimationsList = New String[3]
		MoveAnimationsList[0] = "$Off"
		MoveAnimationsList[1] = "$Last Enemy"
		MoveAnimationsList[2] = "$On"

	RangedModeList = New String[2]
		RangedModeList[0] = "$Manual"
		RangedModeList[1] = "$Automatic"

	KillmoveStealthUnarmedList = New String[4]
		KillmoveStealthUnarmedList[0] = "$Off"
		KillmoveStealthUnarmedList[1] = "$Neck Break"
		KillmoveStealthUnarmedList[2] = "$Sleeper Hold"
		KillmoveStealthUnarmedList[3] = "$Break/Sleeper"

	KillmoveStealthSwordList = New String[8]
		KillmoveStealthSwordList[0] = "$Off"
		KillmoveStealthSwordList[1] = "$Throat Slit"
		KillmoveStealthSwordList[2] = "$Neck Break"
		KillmoveStealthSwordList[3] = "$Sleeper Hold"
		KillmoveStealthSwordList[4] = "$Slit/Break"
		KillmoveStealthSwordList[5] = "$Slit/Sleeper"
		KillmoveStealthSwordList[6] = "$Break/Sleeper"
		KillmoveStealthSwordList[7] = "$Slit/Break/Sleeper"

	KillmoveStealthDaggerList = New String[8]
		KillmoveStealthDaggerList[0] = "$Off"
		KillmoveStealthDaggerList[1] = "$Throat Slit"
		KillmoveStealthDaggerList[2] = "$Neck Break"
		KillmoveStealthDaggerList[3] = "$Sleeper Hold"
		KillmoveStealthDaggerList[4] = "$Slit/Break"
		KillmoveStealthDaggerList[5] = "$Slit/Sleeper"
		KillmoveStealthDaggerList[6] = "$Break/Sleeper"
		KillmoveStealthDaggerList[7] = "$Slit/Break/Sleeper"

	KillmoveStealthAxeList = New String[8]
		KillmoveStealthAxeList[0] = "$Off"
		KillmoveStealthAxeList[1] = "$Throat Slit"
		KillmoveStealthAxeList[2] = "$Neck Break"
		KillmoveStealthAxeList[3] = "$Sleeper Hold"
		KillmoveStealthAxeList[4] = "$Slit/Break"
		KillmoveStealthAxeList[5] = "$Slit/Sleeper"
		KillmoveStealthAxeList[6] = "$Break/Sleeper"
		KillmoveStealthAxeList[7] = "$Slit/Break/Sleeper"

	KillmoveStealthMaceList = New String[8]
		KillmoveStealthMaceList[0] = "$Off"
		KillmoveStealthMaceList[1] = "$Throat Slit"
		KillmoveStealthMaceList[2] = "$Neck Break"
		KillmoveStealthMaceList[3] = "$Sleeper Hold"
		KillmoveStealthMaceList[4] = "$Slit/Break"
		KillmoveStealthMaceList[5] = "$Slit/Sleeper"
		KillmoveStealthMaceList[6] = "$Break/Sleeper"
		KillmoveStealthMaceList[7] = "$Slit/Break/Sleeper"

	CustomizeWeaponList = New String[10]
		CustomizeWeaponList[0] = "$Main"
		CustomizeWeaponList[1] = "$Unarmed"
		CustomizeWeaponList[2] = "$Shields"
		CustomizeWeaponList[3] = "$Daggers"
		CustomizeWeaponList[4] = "$Swords"
		CustomizeWeaponList[5] = "$Maces"
		CustomizeWeaponList[6] = "$Axes"
		CustomizeWeaponList[7] = "$Greatswords"
		CustomizeWeaponList[8] = "$Warhammers"
		CustomizeWeaponList[9] = "$Battleaxes"

	SettingsList = New String[3]
		SettingsList[0] = "$Cancel"
		SettingsList[1] = "$Add All"
		SettingsList[2] = "$Remove All"

	KillmovesNameList = New String[37]
		KillmovesNameList[0] = ""
		KillmovesNameList[1] = "$Twirl, Trip, Slash"
		KillmovesNameList[2] = "$Triple Slash"
		KillmovesNameList[3] = "$Mace Bash"
		KillmovesNameList[4] = "$Spin Hit"
		KillmovesNameList[5] = "$Chest Stab"
		KillmovesNameList[6] = "$Jump Stab"
		KillmovesNameList[7] = "$Grab Stab"
		KillmovesNameList[8] = "$Grapple Stab"
		KillmovesNameList[9] = "$Stab Slash"
		KillmovesNameList[10] = "$Stab Up Face"
		KillmovesNameList[11] = "$Stab Down Chest"
		KillmovesNameList[12] = "$Knee, Grab, Stab"
		KillmovesNameList[13] = "$Repeat Down Stab"
		KillmovesNameList[14] = "$Up Slash"
		KillmovesNameList[15] = "$Down Slash"
		KillmovesNameList[16] = "$Knee, Flip, Stab"
		KillmovesNameList[17] = "$Curb Stomp"
		KillmovesNameList[18] = "$Body Slam"
		KillmovesNameList[19] = "$Knee Throw"
		KillmovesNameList[20] = "$Combo Punch"
		KillmovesNameList[21] = "$Slam"
		KillmovesNameList[22] = "$Charge"
		KillmovesNameList[23] = "$Bash, Trip, Slash"
		KillmovesNameList[24] = "$Bash, Flip, Slash"
		KillmovesNameList[25] = "$Bash Stab"
		KillmovesNameList[26] = "$Dual Stab"
		KillmovesNameList[27] = "$Dual Slash"
		KillmovesNameList[28] = "$X Slash"
		KillmovesNameList[29] = "$Double Bash"
		KillmovesNameList[30] = "$Head Butt"
		KillmovesNameList[31] = "$Chop Kick"
		KillmovesNameList[32] = "$Down Hit"
		KillmovesNameList[33] = "$Swing Under Leg"
		KillmovesNameList[34] = "$Stab Lift Up"
		KillmovesNameList[35] = "$Horizontal Slash"
		KillmovesNameList[36] = "$3x Down Slash"

	KillmovesExtrasNameList = New String[6]
		KillmovesExtrasNameList[0] = ""
		KillmovesExtrasNameList[1] = "$Decapitate"
		KillmovesExtrasNameList[2] = "$Bleedout"
		KillmovesExtrasNameList[3] = "$Bleedout Decapitate"
		KillmovesExtrasNameList[4] = "$Bleedout"
		KillmovesExtrasNameList[5] = "$Bleedout Decapitate"

	KillmovesDWDecapNameList = New String[9]
		KillmovesDWDecapNameList[0] = ""
		KillmovesDWDecapNameList[1] = "$Scissor Decapitate"
		KillmovesDWDecapNameList[2] = "$Decapitate"

	Killmoves2HDecapNameList = New String[9]
		Killmoves2HDecapNameList[0] = ""
		Killmoves2HDecapNameList[1] = "$Decapitate"
		Killmoves2HDecapNameList[2] = "$2H Decapitate"

	Killmoves2HDecapBONameList = New String[9]
		Killmoves2HDecapBONameList[0] = ""
		Killmoves2HDecapBONameList[1] = "$Bleedout Decapitate"
		Killmoves2HDecapBONameList[2] = "$2H Bleedout Decapitate"

	If(PerspectiveListIndex == 4 || PerspectiveListIndex == 5 || PerspectiveListIndex == 7)
		CameraSettingList = New String[2]
			CameraSettingList[0] = "$3P SlowMo Off"
			CameraSettingList[1] = "$VATS Off"
	Else
		CameraSettingList = New String[3]
		CameraSettingList[0] = "$3P SlowMo On"
		CameraSettingList[1] = "$3P SlowMo Off"
		CameraSettingList[2] = "$VATS Off"	
	endif

	VLPluginVersion()

EndEvent

;==========================================Update MCM Event==============================================================

Event OnVersionUpdate(int a_version)
	if (CurrentVersion == 0)
		Notification("VioLens: Installed Version"+ " " + VLVersionNumber + " " + VLVersionESP[VLVersionESPIndex])
	elseif (a_version > 0)
		If(CurrentVersion < 14)
			OneTimeFix222 = True
		EndIf
		OnConfigInit()
		Notification("VioLens: Updated to Version"+ " " + VLVersionNumber + " " + VLVersionESP[VLVersionESPIndex])
	endif
EndEvent

;====================================Page Options Update Events==============================================================

Event OnPageReset(string page)
	VLPluginVersion()
	if(Page == "")
		if(StickyPage == 0)
			SetPage(Pages[0], 0)
		elseif(StickyPage == 1)
			SetPage(Pages[1], 1)
		elseif(StickyPage == 2)
			SetPage(Pages[2], 2)
		elseif(StickyPage == 3)
			SetPage(Pages[3], 3)
		endif
	elseif(Page == Pages[0])
		StickyPage = 0
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Melee")
		KillmoveOID = AddTextOption("$Killmoves", KillmoveList[KillmoveListIndex])
		if (KillmoveListIndex == 0)
   			flags = OPTION_FLAG_DISABLED
		else
   			flags = OPTION_FLAG_NONE
		endIf
		if(VL_MeleeMode.GetValueInt() == 2)
			AddTextOption("$Advancing Killmoves", "$Customized", OPTION_FLAG_DISABLED)
		else	
			MoveAnimationsOID = AddTextOption("$Advancing Killmoves", MoveAnimationsList[MoveAnimationsListIndex], flags)
		EndIf
		KillmoveChanceOID = AddSliderOption("$Killmove Chance", KillmoveChance, "{0} %", flags)
		KillmoveChanceDragonOID = AddSliderOption("$Dragon Killmove Chance", KillmoveChanceDragon, "{0} %", flags)
		if(GetIniBool("bVATSDisable:VATS") == 1)
			AddMenuOption("$Camera View", "$Disabled", OPTION_FLAG_DISABLED)
		else
			PerspectiveOID = AddMenuOption("$Camera View", PerspectiveListShort[PerspectiveListIndex], flags)
		endif
		AddMenuOptionST("CameraSettingMenu", "$Camera Setting", CameraSettingList[CameraSettingListIndex], flags)
		LastEnemyRestrictionOID = AddToggleOption("$Last Enemy Restriction", LastEnemyRestrictionVal, flags)
		PlayerImmunityOID = AddToggleOption("$Player Killmove Immunity", PlayerImmunityVal, flags)
		DecapitationOID = AddTextOption("$Decapitations", DecapitationList[DecapitationListIndex], flags)
			if (DecapitationListIndex == 0 || KillmoveListIndex == 0)
				flags2 = OPTION_FLAG_DISABLED
			else
				flags2 = OPTION_FLAG_NONE
			endIf
		DecapitationChanceOID = AddSliderOption("$Decapitation Chance", DecapitationChanceInt, "{0} %", flags2)
		if(VL_MeleeMode.GetValueInt() == 2)
			AddToggleOption("$Mace Decapitations", false, OPTION_FLAG_DISABLED)
		else
			MaceDecapitationsOID = AddToggleOption("$Mace Decapitations", MaceDecapitationsVal, flags2)
		endif
		SetCursorPosition(1)
		if(GetIniBool("bVATSDisable:VATS") == 1 || VL_CDOInstalled.GetValueInt() == 1)
			if(RangedToggleKey != -1)
					OnOptionDefault(RangedToggleKeyOID)
			endif
			if(GetIniBool("bVATSDisable:VATS") == 1 && VL_CDOInstalled.GetValueInt() == 1)
				AddHeaderOption("$Ranged Disabled 2", OPTION_FLAG_DISABLED)
			elseif(GetIniBool("bVATSDisable:VATS") == 1 && VL_CDOInstalled.GetValueInt() == 0)
				AddHeaderOption("$Ranged Disabled 1", OPTION_FLAG_DISABLED)
			elseif(GetIniBool("bVATSDisable:VATS") == 0 && VL_CDOInstalled.GetValueInt() == 1)
				AddHeaderOption("$Ranged Disabled 2",OPTION_FLAG_DISABLED)
			endif
			AddTextOption("$Killmoves", "$Disabled",OPTION_FLAG_DISABLED)
			AddTextOption("$Selection Mode","$Disabled",OPTION_FLAG_DISABLED)
			AddSliderOption("$Killmove Chance", 0, "{0} %", OPTION_FLAG_DISABLED)
			AddSliderOption("$Dragon Killmove Chance", 0, "{0} %", OPTION_FLAG_DISABLED)
			AddTextOption("$Camera View","$Disabled", OPTION_FLAG_DISABLED)
			AddKeyMapOption("$Toggle Magic/Archery/Off", -1, OPTION_FLAG_DISABLED)
			AddToggleOption("$Last Enemy Restriction", false, OPTION_FLAG_DISABLED)
		else
			AddHeaderOption("$Ranged")
			if(VL_RangedMode.GetValueInt() == 1 && VL_RangedKillmove.GetValueInt() == 0)
				AddTextOption("$Killmoves", "$Off",OPTION_FLAG_DISABLED)
			elseif(VL_RangedMode.GetValueInt() == 1 && VL_RangedKillmove.GetValueInt() == 1)
				AddTextOption("$Killmoves", "$On: Magic",OPTION_FLAG_DISABLED)
			elseif(VL_RangedMode.GetValueInt() == 1 && VL_RangedKillmove.GetValueInt() == 2)
				AddTextOption("$Killmoves", "$On: Archery",OPTION_FLAG_DISABLED)
			else
				RangedKillmoveOID = AddTextOption("$Killmoves", RangedKillmoveList[RangedKillmoveListIndex])
			endif
			if (VL_RangedKillmove.GetValueInt() == 0)
				flags3 = OPTION_FLAG_DISABLED
				flags4 = OPTION_FLAG_DISABLED
				if(VL_RangedMode.GetValueInt() == 1)
					flagRangedMode = OPTION_FLAG_NONE
				else
					flagRangedMode = OPTION_FLAG_DISABLED
				endif
			else
				flags3 = OPTION_FLAG_NONE
				flagRangedMode = OPTION_FLAG_NONE
			endIf
			RangedModeOID = AddTextOption("$Selection Mode", RangedModeList[RangedModeListIndex], flagRangedMode)
			RangedKillmoveChanceOID = AddSliderOption("$Killmove Chance", RangedKillmoveChance, "{0} %", flags3)
			RangedKillmoveChanceDragonOID = AddSliderOption("$Dragon Killmove Chance", RangedKillmoveChanceDragon, "{0} %", flags3)
			RangedPerspectiveOID = AddTextOption("$Camera View", RangedPerspectiveList[RangedPerspectiveListIndex], flags3)
			RangedToggleKeyOID = AddKeyMapOption(RangedKeyMapName, RangedToggleKey, flags4)
			RangedLastEnemyRestrictionOID = AddToggleOption("$Last Enemy Restriction", RangedLastEnemyRestrictionVal, flags3)
		endif
		AddHeaderOption("")
		ResetOID = AddTextOption("$Defaults", ResetList[0])
		AddTextOption("Plugin ","Version " + " " + VLVersionNumber, OPTION_FLAG_DISABLED)
		AddTextOption("Created by Reko",VLVersionESP[VLVersionESPIndex],OPTION_FLAG_DISABLED)
	elseif(Page == Pages[1])
		StickyPage = 1
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Stealth",flags)
		KillmoveStealthChanceOID = AddSliderOption("$Killmove Chance", KillmoveStealthChance, "{0} %", flags)
		KillmoveStealthSittingKillsOID = AddToggleOption("$Seated Killmoves", KillmoveStealthSittingKillsVal, flags)
		KillmoveStealthUnarmedOID = AddMenuOption("$Unarmed", KillmoveStealthUnarmedList[KillmoveStealthUnarmedListIndex], flags)
		KillmoveStealthDaggerOID = AddMenuOption("$Daggers", KillmoveStealthDaggerList[KillmoveStealthDaggerListIndex], flags)
		KillmoveStealthSwordOID = AddMenuOption("$Swords", KillmoveStealthSwordList[KillmoveStealthSwordListIndex], flags)
		KillmoveStealthMaceOID = AddMenuOption("$Maces", KillmoveStealthMaceList[KillmoveStealthMaceListIndex], flags)
		KillmoveStealthAxeOID = AddMenuOption("$Axes", KillmoveStealthAxeList[KillmoveStealthAxeListIndex], flags)
		AddHeaderOption("", flags)
		SetCursorPosition(1)
		AddHeaderOption("$Triggers", flags)
		HandActivationOID = AddToggleOption("$Left Attacks", HandActivationVal, flags)
		WerewolfAltOID = AddToggleOption("$Alt Werewolf Attacks", WerewolfAltVal, flags)
		AddToggleOptionST("VL_StaggerPulseState", "$Stagger Pulse", StaggerPulseVal, flags)
		if(VL_FreezePulse.GetValueInt() == 1)
			AddSliderOptionST("VL_StaggerPulseDelayState","$Stagger Pulse Delay", StaggerPulseDelayTiming, "{1} Sec", flags)
		Else
			AddTextOption("$Stagger Pulse Delay","$Disabled", OPTION_FLAG_DISABLED)
		EndIF
		AddHeaderOption("", flags)
		SetCursorPosition(17)
		AddHeaderOption("", flags)
		ResetOID = AddTextOption("$Defaults", ResetList[0], flags)
		AddTextOption("Plugin ","Version " + " " + VLVersionNumber, OPTION_FLAG_DISABLED)
		AddTextOption("Created by Reko",VLVersionESP[VLVersionESPIndex], OPTION_FLAG_DISABLED)
	elseif(Page == Pages[2])
		StickyPage = 2
		SetCursorFillMode(TOP_TO_BOTTOM)
		if(VL_MeleeMode.GetValueInt() != 2)
			SetCursorPosition(0)
			AddHeaderOption("$Weapon", OPTION_FLAG_DISABLED)
			AddMenuOption("$Page", "$Select", OPTION_FLAG_DISABLED)
			AddTextOption("$Option","$None", OPTION_FLAG_DISABLED)
			AddHeaderOption("", OPTION_FLAG_DISABLED)
			SetCursorPosition(1)
			AddHeaderOption("$Settings", OPTION_FLAG_DISABLED)
			AddMenuOption("$Add/Remove", "$Select", OPTION_FLAG_DISABLED)
			AddTextOption("$Debug","$Off", OPTION_FLAG_DISABLED)
			AddHeaderOption("", OPTION_FLAG_DISABLED)
			SetCursorPosition(17)
			AddHeaderOption("", OPTION_FLAG_DISABLED)
			AddTextOption("$Defaults", ResetList[0], OPTION_FLAG_DISABLED)
			AddTextOption("Plugin ","Version " + " " + VLVersionNumber, OPTION_FLAG_DISABLED)
			AddTextOption("Created by Reko", VLVersionESP[VLVersionESPIndex],OPTION_FLAG_DISABLED)
		else
			SetCursorPosition(0)
			AddHeaderOption("$Weapon")
			AddMenuOptionST("CustomizeWeaponMenu", "$Page", CustomizeWeaponVal)
			If(CustomizeWeaponPageNumber == 3 || CustomizeWeaponPageNumber == 4 || CustomizeWeaponPageNumber == 5 || CustomizeWeaponPageNumber == 6)
				AddTextOptionST("DualWieldOptionText", "$Option", DualWieldOptionVal)
			else
				AddTextOption("$Option","$None", OPTION_FLAG_DISABLED)
			endif
			If(CustomizeWeaponPageNumber == 0)
				AddHeaderOption("$Additional Options")
			else
				AddHeaderOption("")
			endif
			SetCursorPosition(1)
			AddHeaderOption("$Settings")
			AddMenuOptionST("VL_SettingsMenu", "$Add/Remove", SettingsMenuVal)
			AddTextOptionST("VL_DebugText", "$Debug", VL_DebugVal)
			AddHeaderOption("")
			SetCursorPosition(8)
			if(CustomizeWeaponPageNumber == 0)
				AddTextOptionST("MeleeBackKillmovesText", "$Back Killmoves", MeleeBackKillmovesVal)
				AddTextOptionST("MeleeCreaturesText", "$Creature Killmoves", MeleeCreaturesVal)
				AddTextOptionST("MeleeNPCsText", "$NPC's Killmoves", MeleeNPCsVal)
				AddHeaderOption("")
				SetCursorPosition(17)
				AddHeaderOption("")
				ResetOID = AddTextOption("$Defaults", ResetList[0])
				AddTextOption("Plugin ","Version " + " " + VLVersionNumber, OPTION_FLAG_DISABLED)
				AddTextOption("Created by Reko",VLVersionESP[VLVersionESPIndex],OPTION_FLAG_DISABLED)
			elseif(CustomizeWeaponPageNumber == 1)
				int i = 17
				While i < 22
					AddToggleOptionST("Unarmed_Main_"+i, KillmovesNameList[i], VL_zValUnarmedArray[i])
					i += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 2)
				int i = 22
				While i < 30
					if(i == 26)
						i = 29
					endif
					AddToggleOptionST("Shield_Main_"+i, KillmovesNameList[i], VL_zValShieldArray[i])
					i += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber != 3)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 26
					AddToggleOptionST("SGDagger_Main_"+i, KillmovesNameList[i], VL_zValSGDaggerArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 4
					AddToggleOptionST("Dagger_Extras_"+n, KillmovesExtrasNameList[n], VL_zValDaggerExtrasArray[n])
					n += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber == 3)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 29
					AddToggleOptionST("DWDagger_Main_"+i, KillmovesNameList[i], VL_zValDWDaggerArray[i])
					i += 1
				EndWhile
				int n = 4
				While n < 6
					AddToggleOptionST("Dagger_Extras_"+n, KillmovesExtrasNameList[n], VL_zValDaggerExtrasArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Dagger_DWDecap_"+q, KillmovesDWDecapNameList[q], VL_zValDWDaggerDecapArray[q])
					q += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber != 4)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 26
					AddToggleOptionST("SGSword_Main_"+i, KillmovesNameList[i], VL_zValSGSwordArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 4
					AddToggleOptionST("Sword_Extras_"+n, KillmovesExtrasNameList[n], VL_zValSwordExtrasArray[n])
					n += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber == 4)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 29
					AddToggleOptionST("DWSword_Main_"+i, KillmovesNameList[i], VL_zValDWSwordArray[i])
					i += 1
				EndWhile
				int n = 4
				While n < 6
					AddToggleOptionST("Sword_Extras_"+n, KillmovesExtrasNameList[n], VL_zValSwordExtrasArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Sword_DWDecap_"+q, KillmovesDWDecapNameList[q], VL_zValDWSwordDecapArray[q])
					q += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber != 5)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 26
					AddToggleOptionST("SGMace_Main_"+i, KillmovesNameList[i], VL_zValSGMaceArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 4
					AddToggleOptionST("Mace_Extras_"+n, KillmovesExtrasNameList[n], VL_zValMaceExtrasArray[n])
					n += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber == 5)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 29
					AddToggleOptionST("DWMace_Main_"+i, KillmovesNameList[i], VL_zValDWMaceArray[i])
					i += 1
				EndWhile
				int n = 4
				While n < 6
					AddToggleOptionST("Mace_Extras_"+n, KillmovesExtrasNameList[n], VL_zValMaceExtrasArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Mace_DWDecap_"+q, KillmovesDWDecapNameList[q], VL_zValDWMaceDecapArray[q])
					q += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber != 6)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 26
					AddToggleOptionST("SGAxe_Main_"+i, KillmovesNameList[i], VL_zValSGAxeArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 4
					AddToggleOptionST("Axe_Extras_"+n, KillmovesExtrasNameList[n], VL_zValAxeExtrasArray[n])
					n += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber == 6)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 29
					AddToggleOptionST("DWAxe_Main_"+i, KillmovesNameList[i], VL_zValDWAxeArray[i])
					i += 1
				EndWhile
				int n = 4
				While n < 6
					AddToggleOptionST("Axe_Extras_"+n, KillmovesExtrasNameList[n], VL_zValAxeExtrasArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Axe_DWDecap_"+q, KillmovesDWDecapNameList[q], VL_zValDWAxeDecapArray[q])
					q += 1
				EndWhile
			elseif(CustomizeWeaponPageNumber == 7)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 37
					if(i == 26)
						i = 33
					endif
					AddToggleOptionST("Greatsword_Main_"+i, KillmovesNameList[i], VL_zValGreatswordArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 3
					AddToggleOptionST("Greatsword_2HDecap_"+n, Killmoves2HDecapNameList[n], VL_zValGreatswordDecapArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Greatsword_2HDecapBO_"+q, Killmoves2HDecapBONameList[q], VL_zValGreatswordDecapBOArray[q])
					q += 1
				EndWhile
					AddToggleOptionST("Greatsword_Toggle_", "$Bleedout", VL_zValGreatswordToggle)
			elseif(CustomizeWeaponPageNumber == 8)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 33
					if(i == 26)
						i = 30
					endif
					AddToggleOptionST("Warhammer_Main_"+i, KillmovesNameList[i], VL_zValWarhammerArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 3
					AddToggleOptionST("Warhammer_2HDecap_"+n, Killmoves2HDecapNameList[n], VL_zValWarhammerDecapArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Warhammer_2HDecapBO_"+q, Killmoves2HDecapBONameList[q], VL_zValWarhammerDecapBOArray[q])
					q += 1
				EndWhile
					AddToggleOptionST("Warhammer_Toggle_", "$Bleedout", VL_zValWarhammerToggle)
			elseif(CustomizeWeaponPageNumber == 9)
				SetCursorFillMode(LEFT_TO_RIGHT)
				int i = 1
				While i < 33
					if(i == 26)
						i = 30
					endif
					AddToggleOptionST("Battleaxe_Main_"+i, KillmovesNameList[i], VL_zValBattleaxeArray[i])
					i += 1
				EndWhile
				int n = 1
				While n < 3
					AddToggleOptionST("Battleaxe_2HDecap_"+n, Killmoves2HDecapNameList[n], VL_zValBattleaxeDecapArray[n])
					n += 1
				EndWhile
				int q = 1
				While q < 3
					AddToggleOptionST("Battleaxe_2HDecapBO_"+q, Killmoves2HDecapBONameList[q], VL_zValBattleaxeDecapBOArray[q])
					q += 1
				EndWhile
					AddToggleOptionST("Battleaxe_Toggle_", "$Bleedout", VL_zValBattleaxeToggle)
			endif		
		endif
	elseif(Page == Pages[3])
		StickyPage = 3
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		If(VL_isJCValid.GetValueInt() == 1)
			int MainArraySize = JArray.count(JMap.allKeys(JValue.readFromDirectory(MainProfilePath, FilenameExtMain)))
			int CKMArraySize = JArray.count(JMap.allKeys(JValue.readFromDirectory(CKMProfilePath, FilenameExtCKM)))

			If(SavedProfileEdited2 == 1  && SavedProfileEditedStop2 == 0)
				CurrentMainProfileVal = CurrentMainProfileVal + "*"
				SavedProfileEditedStop2 = 1
			endIf

			AddHeaderOption("$Menu Settings")
			AddTextOptionST("CurrentMainProfileText", "$Current", CurrentMainProfileVal)
			AddMenuOptionST("SaveMainProfileMenu", "$Save", SaveMainProfileVal)
			AddMenuOptionST("LoadMainProfileMenu", "$Load", LoadMainProfileVal)
			AddMenuOptionST("DeleteMainProfileMenu", "$Delete", DeleteMainProfileVal)
			AddTextOption("$Detected", MainArraySize, OPTION_FLAG_DISABLED)
			If(VL_RequiemPatchInstalled.GetValueInt() == 1 || VL_CDOInstalled.GetValueInt() == 1)
			AddHeaderOption("$Information")
			Else
				AddHeaderOption("")
				AddEmptyOption()
				AddHeaderOption("$Information")
			endif

			If(SavedProfileEdited == 1  && SavedProfileEditedStop == 0)
				CurrentCustomizeKillmoveProfileVal = CurrentCustomizeKillmoveProfileVal + "*"
				SavedProfileEditedStop = 1
			endIf

			if(VL_MeleeMode.GetValueInt() != 2)
				SetCursorPosition(1)
				AddHeaderOption("$Customize Killmoves", OPTION_FLAG_DISABLED)
				AddTextOption("$Current", "$None", OPTION_FLAG_DISABLED)
				AddMenuOption("$Save", "$Select", OPTION_FLAG_DISABLED)
				AddMenuOption("$Load", "$Select", OPTION_FLAG_DISABLED)
				AddMenuOption("$Delete", "$Select", OPTION_FLAG_DISABLED)
				AddTextOption("$Detected", "-", OPTION_FLAG_DISABLED)
				AddHeaderOption("", OPTION_FLAG_DISABLED)
			Else
				SetCursorPosition(1)
				AddHeaderOption("$Customize Killmoves")
				AddTextOptionST("CurrentCustomizeKillmoveProfileText", "$Current", CurrentCustomizeKillmoveProfileVal)
				AddMenuOptionST("SaveCustomizeKillmoveProfileMenu", "$Save", SaveCustomizeKillmoveProfileVal)
				AddMenuOptionST("LoadCustomizeKillmoveProfileMenu", "$Load", LoadCustomizeKillmoveProfileVal)
				AddMenuOptionST("DeleteCustomizeKillmoveProfileMenu", "$Delete", DeleteCustomizeKillmoveProfileVal)
				AddTextOption("$Detected", CKMArraySize, OPTION_FLAG_DISABLED)
				AddHeaderOption("")
			Endif
		Else
			AddHeaderOption("$Menu Settings: Disabled", OPTION_FLAG_DISABLED)
			AddTextOption("$Current", "$None", OPTION_FLAG_DISABLED)
			AddMenuOption("$Save", "$Select", OPTION_FLAG_DISABLED)
			AddMenuOption("$Load", "$Select", OPTION_FLAG_DISABLED)
			AddMenuOption("$Delete", "$Select", OPTION_FLAG_DISABLED)
			AddTextOption("$Detected", "-", OPTION_FLAG_DISABLED)
			If(VL_RequiemPatchInstalled.GetValueInt() == 1 || VL_CDOInstalled.GetValueInt() == 1)
				AddHeaderOption("$Information")
			Else
				AddHeaderOption("",OPTION_FLAG_DISABLED)
				AddEmptyOption()
				AddHeaderOption("$Information")
			endif
			SetCursorPosition(1)
			AddHeaderOption("$Customize Killmoves: Disabled", OPTION_FLAG_DISABLED)
			AddTextOption("$Current", "$None", OPTION_FLAG_DISABLED)
			AddMenuOption("$Save", "$Select", OPTION_FLAG_DISABLED)
			AddMenuOption("$Load", "$Select", OPTION_FLAG_DISABLED)
			AddMenuOption("$Delete", "$Select", OPTION_FLAG_DISABLED)
			AddTextOption("$Detected", "-", OPTION_FLAG_DISABLED)
			AddHeaderOption("", OPTION_FLAG_DISABLED)
		EndIf
		If(VL_RequiemPatchInstalled.GetValueInt() == 1 || VL_CDOInstalled.GetValueInt() == 1)
			SetCursorPosition(14)
		Else
			SetCursorPosition(18)
		endif
		If(VL_CDOInstalled.GetValueInt() == 1)
			AddTextOption("Combat Drama Overhaul", "$Installed", OPTION_FLAG_DISABLED)
		endif
		If(VL_RequiemPatchInstalled.GetValueInt() == 1)
			AddTextOption("Requiem Patch", "$Installed", OPTION_FLAG_DISABLED)
		endif
		If(VL_JConInstalled.GetValueInt() == 1)
			
			AddTextOption("JContainers", "$Installed", OPTION_FLAG_DISABLED)
			AddTextOption("Version ", JContainers.APIVersion() + "." + JContainers.featureVersion() + "." + "x", OPTION_FLAG_DISABLED)
			if(VL_isJCValid.GetValueInt() == 1)
				AddTextOption("Valid ","$Yes", OPTION_FLAG_DISABLED)
			else
				AddTextOption("Valid ","$No", OPTION_FLAG_DISABLED)
			endIf
				
		Else
			AddTextOption("JContainers", "$Not Installed", OPTION_FLAG_DISABLED)
			AddTextOption("Version ","-", OPTION_FLAG_DISABLED)
			AddTextOption("Valid ","-", OPTION_FLAG_DISABLED)
		endif
		SetCursorPosition(17)
		AddHeaderOption("")
		ResetOID = AddTextOption("$Defaults", ResetList[0])
		AddTextOption("Plugin ","Version " + " " + VLVersionNumber, OPTION_FLAG_DISABLED)
		AddTextOption("Created by Reko",VLVersionESP[VLVersionESPIndex], OPTION_FLAG_DISABLED)
	endif
EndEvent

Function SavedProfileEdited2Func()
	if(SavedProfileEdited2 == 0)
		SavedProfileEdited2 = 1
	endif
endFunction

;====================================Toggle Events==============================================================

Event OnOptionSelect(int option)
	SavedProfileEdited2Func()
	If (option == ResetOID)
		ResetVal = !ResetVal
		SetTextOptionValue(ResetOID, ResetList[0])
		automated = 1
		if(StickyPage == 0)
			ResetPage0()
		elseif(StickyPage == 1)
			ResetPage1()
		elseif(StickyPage == 2)
			ResetPage2()
		elseif(StickyPage == 3)
			SetPage(Pages[0], 0)
			ResetPage0()
			SetPage(Pages[1], 1)
			ResetPage1()
			SetPage(Pages[2], 2)
			ResetPage2()
			SetPage(Pages[3], 3)
		endIf
		automated = 0
		ForcePageReset()
	elseif (option == LastEnemyRestrictionOID)
		LastEnemyRestrictionVal = !LastEnemyRestrictionVal
		if(automated == 0)
			SetToggleOptionValue(LastEnemyRestrictionOID, LastEnemyRestrictionVal)
		endif
		if(LastEnemyRestrictionVal == false)
			VL_LastEnemyRestriction.SetValueInt(0)
		else
			VL_LastEnemyRestriction.SetValueInt(1)
		endif
	elseif (option == PlayerImmunityOID)
		PlayerImmunityVal = !PlayerImmunityVal
		if(automated == 0)
			SetToggleOptionValue(PlayerImmunityOID, PlayerImmunityVal)
		endif
		if(PlayerImmunityVal == false)
			VL_PlayerImmunity.SetValueInt(0)
		else
			VL_PlayerImmunity.SetValueInt(1)
		endif
	elseif (option == KillmoveOID)
		if (KillmoveListIndex == 3)
			KillmoveListIndex = 0
			Killmove.SetValueInt(0)
			VL_MeleeMode.SetValueInt(0)
			SavedDebugValue = VL_Debug.GetValueInt()
			SavedMeleeBackKillmovesValue = VL_MeleeBackKillmoves.GetValueInt()
			SavedMeleeNPCsValue = VL_MeleeNPCs.GetValueInt()
			SavedMeleeCreaturesValue = VL_MeleeCreatures.GetValueInt()
			VL_Debug.SetValueInt(0)
			VL_MeleeBackKillmoves.SetValueInt(0)
			VL_MeleeNPCs.SetValueInt(0)
			VL_MeleeCreatures.SetValueInt(0)
			ForcePageReset()
		elseif(KillmoveListIndex == 0)
			KillmoveListIndex = 1
			Killmove.SetValueInt(1)
			ForcePageReset()
		elseif(KillmoveListIndex == 1)
			KillmoveListIndex = 2
			VL_MeleeMode.SetValueInt(1)
		elseif(KillmoveListIndex == 2)
			KillmoveListIndex = 3
			VL_MeleeMode.SetValueInt(2)
			VL_Debug.SetValueInt(SavedDebugValue)
			VL_MeleeBackKillmoves.SetValueInt(SavedMeleeBackKillmovesValue)
			VL_MeleeNPCs.SetValueInt(SavedMeleeNPCsValue)
			VL_MeleeCreatures.SetValueInt(SavedMeleeCreaturesValue)
			if(FirstToggletoCustom == 0)
				FirstToggleToCustom = 1
				VL_MeleeBackKillmoves.SetValueInt(1)
				VL_MeleeNPCs.SetValueInt(1)
				VL_MeleeCreatures.SetValueInt(1)
			endif
			SavedDebugValue = 0
			SavedMeleeBackKillmovesValue = 0
			SavedMeleeNPCsValue = 0
			SavedMeleeCreaturesValue = 0
			ForcePageReset()
		endif
		if(automated == 0)
			SetTextOptionValue(KillmoveOID, KillmoveList[KillmoveListIndex])
		endif
	elseif (option == HandActivationOID)
		HandActivationVal = !HandActivationVal
		if(automated == 0)
			SetToggleOptionValue(HandActivationOID, HandActivationVal)
		endIf
		if(HandActivationVal == false)
			VL_HandActivation.SetValueInt(0)
		else
			VL_HandActivation.SetValueInt(1)
		endif
	elseif (option == MoveAnimationsOID)
		if (MoveAnimationsListIndex == 2)
			MoveAnimationsListIndex = 0
		else
			MoveAnimationsListIndex += 1
		endif
		if(automated == 0)
			SetTextOptionValue(MoveAnimationsOID, MoveAnimationsList[MoveAnimationsListIndex])
		endif
		VL_MoveAnimations.SetValueInt(MoveAnimationsListIndex)
	elseif (option == DecapitationOID)
		if (DecapitationListIndex == 2)
			DecapitationListIndex = 0
			ForcePageReset()
		elseif(DecapitationListIndex == 0)
			DecapitationListIndex = 1
			ForcePageReset()
		else
			DecapitationListIndex = 2
		endif
		if(automated == 0)
			SetTextOptionValue(DecapitationOID, DecapitationList[DecapitationListIndex])
		endif
		VL_Decapitation.SetValueInt(DecapitationListIndex)
	elseif (option == MaceDecapitationsOID)
		MaceDecapitationsVal = !MaceDecapitationsVal
		if(automated == 0)
			SetToggleOptionValue(MaceDecapitationsOID, MaceDecapitationsVal)
		endif
		if(MaceDecapitationsVal == false)
			VL_MaceDecapitations.SetValueInt(0)
		else
			VL_MaceDecapitations.SetValueInt(1)
		endif
	elseif (option == RangedKillmoveOID)
		if (RangedKillmoveListIndex == 2)
			RangedKillmoveListIndex = 0
			SetIniBool("bVATSIgnoreProjectileTest:VATS", false)
			Notification("$VioLens: Ranged Off")
			ForcePageReset()
		elseif (RangedKillmoveListIndex == 0)
			RangedKillmoveListIndex = 1
			SetIniBool("bVATSIgnoreProjectileTest:VATS", false)
			Notification("$VioLens: Magic")
			ForcePageReset()
		else
			RangedKillmoveListIndex = 2
			SetIniBool("bVATSIgnoreProjectileTest:VATS", true)
			Notification("$VioLens: Archery")
		endif
		if(automated == 0)
			SetTextOptionValue(RangedKillmoveOID, RangedKillmoveList[RangedKillmoveListIndex])
		endif
		VL_RangedKillmove.SetValueInt(RangedKillmoveListIndex)
	elseif (option == RangedLastEnemyRestrictionOID)
		RangedLastEnemyRestrictionVal = !RangedLastEnemyRestrictionVal
		if(automated == 0)
			SetToggleOptionValue(RangedLastEnemyRestrictionOID, RangedLastEnemyRestrictionVal)
		endif
		if(RangedLastEnemyRestrictionVal == false)
			VL_RangedLastEnemyRestriction.SetValueInt(0)
			SetINIBool("bVATSMultipleCombatants:VATS", true)
		else
			VL_RangedLastEnemyRestriction.SetValueInt(1)
			SetINIBool("bVATSMultipleCombatants:VATS", false)
		endif
	elseif (option == RangedPerspectiveOID)
		if (RangedPerspectiveListIndex == 1)
			RangedPerspectiveListIndex = 0
		else
			RangedPerspectiveListIndex += 1
		endif
		if(automated == 0)
			SetTextOptionValue(RangedPerspectiveOID, RangedPerspectiveList[RangedPerspectiveListIndex])
		endif
		VL_RangedPerspective.SetValueInt(RangedPerspectiveListIndex)
	elseif (option == WerewolfAltOID)
		WerewolfAltVal = !WerewolfAltVal
		if(automated == 0)
			SetToggleOptionValue(WerewolfAltOID, WerewolfAltVal)
		endif
		if(WerewolfAltVal == false)
			VL_WerewolfAlt.SetValueInt(0)
		else
			VL_WerewolfAlt.SetValueInt(1)
		endif
	elseif (option == RangedModeOID)
		if (RangedModeListIndex == 1)
			RangedModeListIndex = 0
			RangedKeymapName = "$Toggle Magic/Archery/Off"
		else
			RangedModeListIndex += 1
			RangedKeymapName = "$Toggle On/Off"
		endif
		OnOptionDefault(RangedKillmoveOID)
		if(automated == 0)
			SetTextOptionValue(RangedModeOID, RangedModeList[RangedModeListIndex])
		endif
		VL_RangedMode.SetValueInt(RangedModeListIndex)
		ForcePageReset()
	elseif (option == KillmoveStealthSittingKillsOID)
		KillmoveStealthSittingKillsVal = !KillmoveStealthSittingKillsVal
		if(automated == 0)
			SetToggleOptionValue(KillmoveStealthSittingKillsOID, KillmoveStealthSittingKillsVal)
		endif
		if(KillmoveStealthSittingKillsVal == false)
			VL_KillmoveStealthSittingKills.SetValueInt(0)
		else
			VL_KillmoveStealthSittingKills.SetValueInt(1)
		endif
	endif
EndEvent

Function ResetPage0()
	CDOWarning = 0
	OnOptionDefault(KillmoveOID)
	OnOptionDefault(LastEnemyRestrictionOID)
	OnOptionDefault(PlayerImmunityOID)
	OnOptionDefault(PerspectiveOID)
	OnOptionDefault(KillmoveChanceOID)
	OnOptionDefault(DecapitationOID)
	OnOptionDefault(DecapitationChanceOID)
	OnOptionDefault(RangedKillmoveOID)
	OnOptionDefault(RangedKillmoveChanceOID)
	OnOptionDefault(RangedLastEnemyRestrictionOID)
	OnOptionDefault(RangedToggleKeyOID)
	OnOptionDefault(RangedPerspectiveOID)
	OnOptionDefault(MaceDecapitationsOID)
	OnOptionDefault(MoveAnimationsOID)
	OnOptionDefault(RangedKillmoveChanceDragonOID)
	OnOptionDefault(RangedModeOID)
	OnOptionDefault(KillmoveChanceDragonOID)
	GotoState("CameraSettingMenu")
	OnDefaultST()
endFunction
Function ResetPage1()
	OnOptionDefault(HandActivationOID)
	OnOptionDefault(WerewolfAltOID)
	OnOptionDefault(KillmoveStealthUnarmedOID)
	OnOptionDefault(KillmoveStealthSwordOID)
	OnOptionDefault(KillmoveStealthDaggerOID)
	OnOptionDefault(KillmoveStealthAxeOID)
	OnOptionDefault(KillmoveStealthMaceOID)
	OnOptionDefault(KillmoveStealthChanceOID)
	OnOptionDefault(KillmoveStealthSittingKillsOID)
	GotoState("VL_StaggerPulseState")
	OnDefaultST()
	GotoState("VL_StaggerPulseDelayState")
	OnDefaultST()
endFunction
Function ResetPage2()
	GotoState("VL_DebugText")
	OnDefaultST()
	GotoState("MeleeBackKillmovesText")
	OnDefaultST()
	GotoState("MeleeNPCsText")
	OnDefaultST()
	GotoState("MeleeCreaturesText")
	OnDefaultST()
endFunction

;====================================Menu Events==============================================================

event OnOptionMenuOpen(int option)

	if (option == PerspectiveOID)
		SetMenuDialogOptions(PerspectiveList)
		SetMenuDialogStartIndex(PerspectiveListIndex)
		SetMenuDialogDefaultIndex(0)
	elseif(option == KillmoveStealthUnarmedOID)
		SetMenuDialogOptions(KillmoveStealthUnarmedList)
		SetMenuDialogStartIndex(KillmoveStealthUnarmedListIndex)
		SetMenuDialogDefaultIndex(1)
	elseif(option == KillmoveStealthSwordOID)
		SetMenuDialogOptions(KillmoveStealthSwordList)
		SetMenuDialogStartIndex(KillmoveStealthSwordListIndex)
		SetMenuDialogDefaultIndex(1)
	elseif(option == KillmoveStealthDaggerOID)
		SetMenuDialogOptions(KillmoveStealthDaggerList)
		SetMenuDialogStartIndex(KillmoveStealthDaggerListIndex)
		SetMenuDialogDefaultIndex(1)
	elseif(option == KillmoveStealthAxeOID)
		SetMenuDialogOptions(KillmoveStealthAxeList)
		SetMenuDialogStartIndex(KillmoveStealthAxeListIndex)
		SetMenuDialogDefaultIndex(2)
	elseif(option == KillmoveStealthMaceOID)
		SetMenuDialogOptions(KillmoveStealthMaceList)
		SetMenuDialogStartIndex(KillmoveStealthMaceListIndex)
		SetMenuDialogDefaultIndex(2)
	endIf
	
endEvent

event OnOptionMenuAccept(int option, int index)
	SavedProfileEdited2Func()
	if (option == PerspectiveOID)
		PerspectiveListIndex = index
		if(automated == 0)
			SetMenuOptionValue(PerspectiveOID, PerspectiveListShort[PerspectiveListIndex])
		endIf
		VL_Perspective.SetValue(index)
		If(PerspectiveListIndex == 4 || PerspectiveListIndex == 5 || PerspectiveListIndex == 7)
			GotoState("CameraSettingMenu")
			OnMenuOpenST()
			OnMenuAcceptST(0)
		Else
		endif
		ForcePageReset()
	elseif(option == KillmoveStealthUnarmedOID)
		KillmoveStealthUnarmedListIndex = index
		if(automated == 0)
			SetMenuOptionvalue(KillmoveStealthUnarmedOID, KillmoveStealthUnarmedList[KillmoveStealthUnarmedListIndex])
		endif
		VL_KillmoveStealthUnarmed.SetValue(index)
	elseif(option == KillmoveStealthSwordOID)
		KillmoveStealthSwordListIndex = index
		if(automated == 0)
			SetMenuOptionvalue(KillmoveStealthSwordOID, KillmoveStealthSwordList[KillmoveStealthSwordListIndex])
		endif
		VL_KillmoveStealthSword.SetValue(index)
	elseif(option == KillmoveStealthDaggerOID)
		KillmoveStealthDaggerListIndex = index
		if(automated == 0)
			SetMenuOptionvalue(KillmoveStealthDaggerOID, KillmoveStealthDaggerList[KillmoveStealthDaggerListIndex])
		endif
		VL_KillmoveStealthDagger.SetValue(index)
	elseif(option == KillmoveStealthAxeOID)
		KillmoveStealthAxeListIndex = index
		if(automated == 0)
			SetMenuOptionvalue(KillmoveStealthAxeOID, KillmoveStealthAxeList[KillmoveStealthAxeListIndex])
		endif
		VL_KillmoveStealthAxe.SetValue(index)
	elseif(option == KillmoveStealthMaceOID)
		KillmoveStealthMaceListIndex = index
		if(automated == 0)
			SetMenuOptionvalue(KillmoveStealthMaceOID, KillmoveStealthMaceList[KillmoveStealthMaceListIndex])
		endif
		VL_KillmoveStealthMace.SetValue(index)
	endIf		

endEvent

;====================================Slider Events==============================================================

event OnOptionSliderOpen(int option)
	if (option == KillmoveChanceOID)
		SetSliderDialogStartValue(KillmoveChance)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == DecapitationChanceOID)
		SetSliderDialogStartValue(DecapitationChanceInt)
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
	elseif (option == RangedKillmoveChanceOID)
		SetSliderDialogStartValue(RangedKillmoveChance)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == RangedKillmoveChanceDragonOID)
		SetSliderDialogStartValue(RangedKillmoveChanceDragon)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == KillmoveChanceDragonOID)
		SetSliderDialogStartValue(KillmoveChanceDragon)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == KillmoveStealthChanceOID)
		SetSliderDialogStartValue(KillmoveStealthChance)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	endIf
endEvent

event OnOptionSliderAccept(int option, float value)
	SavedProfileEdited2Func()
	if (option == KillmoveChanceOID)
		KillmoveChance = value as int
		if(automated == 0)
			SetSliderOptionValue(option, KillmoveChance, "{0} %")
		endif
		VL_KillmoveChance.setValue(value)
	elseif (option == DecapitationChanceOID)
		DecapitationChanceInt = value as int
		if(automated == 0)
			SetSliderOptionValue(option, DecapitationChanceInt, "{0} %")
		endif
		DecapitationChance.setValue(value)
	elseif (option == RangedKillmoveChanceOID)
		RangedKillmoveChance = value as int
		if(automated == 0)
			SetSliderOptionValue(option, RangedKillmoveChance, "{0} %")
		endif
		VL_RangedKillmoveChance.setValue(value)
	elseif (option == RangedKillmoveChanceDragonOID)
		RangedKillmoveChanceDragon = value as int
		if(automated == 0)
			SetSliderOptionValue(option, RangedKillmoveChanceDragon, "{0} %")
		endif
		VL_RangedKillmoveChanceDragon.setValue(value)
	elseif (option == KillmoveChanceDragonOID)
		KillmoveChanceDragon = value as int
		if(automated == 0)
			SetSliderOptionValue(option, KillmoveChanceDragon, "{0} %")
		endIf
		VL_KillmoveChanceDragon.setValue(value)
	elseif (option == KillmoveStealthChanceOID)
		KillmoveStealthChance = value as int
		if(automated == 0)
			SetSliderOptionValue(option, KillmoveStealthChance, "{0} %")
		endif
		VL_KillmoveStealthChance.setValue(value)
	endIf
endEvent

;====================================Keymaps=============================================================

event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
	SavedProfileEdited2Func()
    if (option == RangedToggleKeyOID)
	bool continue = true
        if (conflictControl != "" && keyCode != -1)
            string msg
            if (conflictName != "")
                msg = "$SKI_MSG2{" + conflictControl + " (" + conflictName + ")}"
            else
                msg = "$SKI_MSG2{" + conflictControl + "}"
            endIf

            continue = ShowMessage(msg, true, "$Yes", "$No")
        endIf
	 if (continue)
		UnregisterForKey(RangedToggleKey)
		RangedToggleKey = keyCode
		if(automated == 0)
			SetKeyMapOptionValue(RangedToggleKeyOID, RangedToggleKey)
		endif
		RegisterForKey(RangedToggleKey)
      endIf
    endIf
endEvent

function OnKeyDown(int KeyCode)
	If(!IsInMenuMode() && IsLookingControlsEnabled())
		If(VL_RangedMode.GetValueInt() == 0)
			OnOptionSelect(RangedKillmoveOID)
		else
			if(VL_RangedKillmove.GetValueInt() != 0)
				VL_RangedKillmove.SetValueInt(0)
				Notification("VioLens: Ranged Off")
			else
				VL_RangedKillmove.SetValueInt(1)
				Notification("VioLens: Ranged On")
			endif
		endif
	endif
endFunction

string function GetCustomControl(int keyCode)
    if (keyCode == RangedToggleKey)
    	if(VL_RangedMode.GetValueInt() == 1)
        	return "Toggle On/Off"
        else
        	return "Toggle Magic/Archery/Off"
        endif
    else
        return ""
    endIf
endFunction

;====================================Defaults==============================================================

event OnOptionDefault(int option)
	SavedProfileEdited2Func()
	if(option == KillmoveOID)
		KillmoveListIndex = 1
		if(automated == 0)
			SetTextOptionValue(KillmoveOID, KillmoveList[KillmoveListIndex])
		endIf
		Killmove.SetValueInt(KillmoveListIndex)
		if(VL_MeleeMode.GetValueInt() == 2)
			SavedDebugValue = VL_Debug.GetValueInt()
			SavedMeleeBackKillmovesValue = VL_MeleeBackKillmoves.GetValueInt()
			SavedMeleeNPCsValue = VL_MeleeNPCs.GetValueInt()
			SavedMeleeCreaturesValue = VL_MeleeCreatures.GetValueInt()
			VL_Debug.SetValueInt(0)
			VL_MeleeBackKillmoves.SetValueInt(0)
			VL_MeleeNPCs.SetValueInt(0)
			VL_MeleeCreatures.SetValueInt(0)
		endif
		VL_MeleeMode.SetValueInt(0)
		ForcePageReset()
	elseif(option == LastEnemyRestrictionOID)
		LastEnemyRestrictionVal = true
		if(automated == 0)
			SetToggleOptionValue(LastEnemyRestrictionOID, LastEnemyRestrictionVal)
		endIf
		VL_LastEnemyRestriction.SetValueInt(1)
	elseif(option == PlayerImmunityOID)
		PlayerImmunityVal = false
		if(automated == 0)
			SetToggleOptionValue(PlayerImmunityOID, PlayerImmunityVal)
		endIf
		VL_PlayerImmunity.SetValueInt(0)
	elseif(option == PerspectiveOID)
		PerspectiveListIndex = 0
		if(automated == 0)
			SetMenuOptionValue(PerspectiveOID, PerspectiveListShort[PerspectiveListIndex])
		endIf
		VL_Perspective.SetValueInt(PerspectiveListIndex)
		ForcePageReset()
	elseif(option == KillmoveChanceOID)
		KillmoveChance = 100
		if(automated == 0)
			SetSliderOptionValue(KillmoveChanceOID, KillmoveChance, "{0} %")
		endIf
		VL_KillmoveChance.SetValueInt(KillmoveChance)
	elseif(option == DecapitationOID)
		DecapitationListIndex = 1
		if(automated == 0)
			SetTextOptionValue(DecapitationOID, DecapitationList[DecapitationListIndex])
		endIf
		VL_Decapitation.SetValueInt(DecapitationListIndex)
		ForcePageReset()
	elseif(option == DecapitationChanceOID)
		DecapitationChanceInt = 40
		if(automated == 0)
			SetSliderOptionValue(DecapitationChanceOID, DecapitationChanceInt, "{0} %")
		endIf
		DecapitationChance.SetValueInt(DecapitationChanceInt)
	elseif(option == RangedKillmoveOID)
		RangedKillmoveListIndex = 1
		if(automated == 0)
			SetTextOptionValue(RangedKillmoveOID, RangedKillmoveList[RangedKillmoveListIndex])
		endIf
		VL_RangedKillmove.SetValueInt(RangedKillmoveListIndex)
		SetIniBool("bVATSIgnoreProjectileTest:VATS", false)
		ForcePageReset()
	elseif(option == RangedKillmoveChanceOID)
		RangedKillmoveChance = 100
		if(automated == 0)
			SetSliderOptionValue(RangedKillmoveChanceOID, RangedKillmoveChance, "{0} %")
		endIf
		VL_RangedKillmoveChance.SetValueInt(RangedKillmoveChance)
	elseif(option == RangedToggleKeyOID)
		UnregisterForKey(RangedToggleKey)
		RangedToggleKey = -1
		if(automated == 0)
			SetKeyMapOptionValue(RangedToggleKeyOID, RangedToggleKey)
		endIf
		RegisterForKey(RangedToggleKey)
	elseif(option == RangedLastEnemyRestrictionOID)
		RangedLastEnemyRestrictionVal = true
		if(automated == 0)
			SetToggleOptionValue(RangedLastEnemyRestrictionOID, RangedLastEnemyRestrictionVal)
		endIf
		VL_RangedLastEnemyRestriction.SetValueInt(1)
		SetINIBool("bVATSMultipleCombatants:VATS", false)
	elseif(option == RangedPerspectiveOID)
		RangedPerspectiveListIndex = 0
		if(automated == 0)
			SetTextOptionValue(RangedPerspectiveOID, RangedPerspectiveList[RangedPerspectiveListIndex])
		endIf
		VL_RangedPerspective.SetValueInt(RangedPerspectiveListIndex)
	elseif(option == MaceDecapitationsOID)
		MaceDecapitationsVal = true
		if(automated == 0)
			SetToggleOptionValue(MaceDecapitationsOID, MaceDecapitationsVal)
		endIf
		VL_MaceDecapitations.SetValueInt(1)
	elseif(option == MoveAnimationsOID)
		MoveAnimationsListIndex = 0
		if(automated == 0)
			SetTextOptionValue(MoveAnimationsOID, MoveAnimationsList[MoveAnimationsListIndex])
		endIf
		VL_MoveAnimations.SetValueInt(MoveAnimationsListIndex)
	elseif(option == HandActivationOID)
		HandActivationVal = false
		if(automated == 0)
			SetToggleOptionValue(HandActivationOID, HandActivationVal)
		endIf
		VL_HandActivation.SetValueInt(0)
	elseif (option == WerewolfAltOID)
		WerewolfAltVal = false
		if(automated == 0)
			SetToggleOptionValue(WerewolfAltOID, WerewolfAltVal)
		endIf
		VL_WerewolfAlt.SetValueInt(0)
	elseif(option == RangedKillmoveChanceDragonOID)
		RangedKillmoveChanceDragon = 100
		if(automated == 0)
			SetSliderOptionValue(RangedKillmoveChanceDragonOID, RangedKillmoveChanceDragon, "{0} %")
		endIf
		VL_RangedKillmoveChanceDragon.SetValueInt(RangedKillmoveChanceDragon)
	elseif(option == RangedModeOID)
		RangedModeListIndex = 0
		RangedKeymapName = "$Toggle Magic/Archery/Off"
		if(automated == 0)
			SetTextOptionValue(RangedModeOID, RangedModeList[RangedModeListIndex])
		endIf
		VL_RangedMode.SetValueInt(RangedModeListIndex)
		ForcePageReset()
	elseif(option == KillmoveChanceDragonOID)
		KillmoveChanceDragon = 100
		if(automated == 0)
			SetSliderOptionValue(KillmoveChanceDragonOID, KillmoveChanceDragon, "{0} %")
		endIf
		VL_KillmoveChanceDragon.SetValueInt(KillmoveChanceDragon)
	elseif(option == KillmoveStealthUnarmedOID)
		KillmoveStealthUnarmedListIndex = 1
		if(automated == 0)
			SetMenuOptionValue(KillmoveStealthUnarmedOID, KillmoveStealthUnarmedList[KillmoveStealthUnarmedListIndex])
		endIf
		VL_KillmoveStealthUnarmed.SetValueInt(KillmoveStealthUnarmedListIndex)
	elseif(option == KillmoveStealthSwordOID)
		KillmoveStealthSwordListIndex = 1
		if(automated == 0)
			SetMenuOptionValue(KillmoveStealthSwordOID, KillmoveStealthSwordList[KillmoveStealthSwordListIndex])
		endIf
		VL_KillmoveStealthSword.SetValueInt(KillmoveStealthSwordListIndex)
	elseif(option == KillmoveStealthDaggerOID)
		KillmoveStealthDaggerListIndex = 1
		if(automated == 0)
			SetMenuOptionValue(KillmoveStealthDaggerOID, KillmoveStealthDaggerList[KillmoveStealthDaggerListIndex])
		endIf
		VL_KillmoveStealthDagger.SetValueInt(KillmoveStealthDaggerListIndex)
	elseif(option == KillmoveStealthAxeOID)
		KillmoveStealthAxeListIndex = 2
		if(automated == 0)
			SetMenuOptionValue(KillmoveStealthAxeOID, KillmoveStealthAxeList[KillmoveStealthAxeListIndex])
		endIf
		VL_KillmoveStealthAxe.SetValueInt(KillmoveStealthAxeListIndex)
	elseif(option == KillmoveStealthMaceOID)
		KillmoveStealthMaceListIndex = 2
		if(automated == 0)
			SetMenuOptionValue(KillmoveStealthMaceOID, KillmoveStealthMaceList[KillmoveStealthMaceListIndex])
		endIf
		VL_KillmoveStealthMace.SetValueInt(KillmoveStealthMaceListIndex)
	elseif(option == KillmoveStealthChanceOID)
		KillmoveStealthChance = 100
		if(automated == 0)
			SetSliderOptionValue(KillmoveStealthChanceOID, KillmoveStealthChance, "{0} %")
		endIf
		VL_KillmoveStealthChance.SetValueInt(KillmoveStealthChance)
	elseif(option == KillmoveStealthSittingKillsOID)
		KillmoveStealthSittingKillsVal = false
		if(automated == 0)
			SetToggleOptionValue(KillmoveStealthSittingKillsOID, KillmoveStealthSittingKillsVal)
		endIf
		VL_KillmoveStealthSittingKills.SetValueInt(0)
	endif
EndEvent

;====================================Descriptions==============================================================

Event OnOptionHighlight(int option)
	if(option == ResetOID)
		If(StickyPage != 3)
			SetInfoText("$VL_ResetInfo")
		Else
			SetInfoText("$VL_ResetInfo2")
		Endif
	elseif(option == KillmoveOID)
		SetInfoText("$VL_KillmoveInfo")
	elseif(option == LastEnemyRestrictionOID)
		SetInfoText("$VL_LastEnemyRestrictionInfo")
	elseif(option == PlayerImmunityOID)
		SetInfoText("$VL_PlayerImmunityInfo")
	elseif(option == PerspectiveOID)
		SetInfoText("$VL_PerspectiveInfo")
	elseif(option == KillmoveChanceOID)
		SetInfoText("$VL_KillmoveChanceInfo")
	elseif(option == DecapitationOID)
		SetInfoText("$VL_DecapitationInfo")
	elseif(option == DecapitationChanceOID)
		SetInfoText("$VL_DecapitationChanceInfo")
	elseif(option == RangedKillmoveOID)
		SetInfoText("$VL_RangedKillmoveInfo")
	elseif(option == RangedKillmoveChanceOID)
		SetInfoText("$VL_RangedKillmoveChanceInfo")
	elseif(option == RangedToggleKeyOID)
		if(VL_RangedMode.GetValueInt() == 0)
			SetInfoText("$VL_RangedToggleKeyInfo")
		else
			SetInfoText("$VL_RangedToggleKeyInfo2")
		endif
	elseif(option == RangedLastEnemyRestrictionOID)
		SetInfoText("$VL_RangedLastEnemyRestrictionInfo")
	elseif(option == RangedPerspectiveOID)
		SetInfoText("$VL_RangedPerspectiveInfo")
	elseif(option == MaceDecapitationsOID)
		SetInfoText("$VL_MaceDecapitationsInfo")
	elseif(option == MoveAnimationsOID)
		SetInfoText("$VL_MoveAnimationsInfo")
	elseif(option == HandActivationOID)
		SetInfoText("$VL_HandActivationInfo")
	elseif(option == WerewolfAltOID)
		SetInfoText("$VL_WerewolfAltInfo")
	elseif(option == RangedKillmoveChanceDragonOID)
		SetInfoText("$VL_RangedKillmoveChanceDragonInfo")
	elseif(option == RangedModeOID)
		SetInfoText("$VL_RangedModeInfo")
	elseif(option == KillmoveChanceDragonOID)
		SetInfoText("$VL_KillmoveChanceDragonInfo")
	elseif(option == KillmoveStealthUnarmedOID)
		SetInfoText("$VL_KillmoveStealthInfo 1")
	elseif(option == KillmoveStealthSwordOID)
		SetInfoText("$VL_KillmoveStealthInfo 2")
	elseif(option == KillmoveStealthDaggerOID)
		SetInfoText("$VL_KillmoveStealthInfo 2")
	elseif(option == KillmoveStealthAxeOID)
		SetInfoText("$VL_KillmoveStealthInfo 1")
	elseif(option == KillmoveStealthMaceOID)
		SetInfoText("$VL_KillmoveStealthInfo 1")
	elseif(option == KillmoveStealthChanceOID)
		SetInfoText("$VL_KillmoveStealthChanceInfo")
	elseif(option == KillmoveStealthSittingKillsOID)
		SetInfoText("$VL_KillmoveStealthSittingKillsInfo")
	endif
EndEvent      

;--VioLens 2.0 Custom Killmoves MCM States--

;====================================2.1 SE Toggle States=====================================================

state VL_StaggerPulseState
	Event OnSelectST()
		SavedProfileEdited2Func()
		StaggerPulseVal = !StaggerPulseVal
		If(StaggerPulseVal == False)
			VL_FreezePulse.SetValueInt(0)
		Else
			VL_FreezePulse.SetValueInt(1)
		EndIf
		if(automated == 0)
        	SetToggleOptionValueST(StaggerPulseVal)
    	endif
    	ForcePageReset()
    EndEvent

    Event OnDefaultST()
    	SavedProfileEdited2Func()
    	StaggerPulseVal = False
    	VL_FreezePulse.SetValueInt(0)
    	if(automated == 0)
        	SetToggleOptionValueST(StaggerPulseVal)
    	endif
    	ForcePageReset()
    EndEvent

    Event OnHighlightST()
    	SetInfoText("$VL_StaggerPulseInfo")
    EndEvent
EndState

State VL_StaggerPulseDelayState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(StaggerPulseDelayTiming)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 2.0)
		SetSliderDialogInterval(0.1)
	endEvent

	event OnSliderAcceptST(float value)
		SavedProfileEdited2Func()
		StaggerPulseDelayTiming = value as float
		VL_FreezeLength.SetValue(StaggerPulseDelayTiming)
		if(automated == 0)
			SetSliderOptionValueST(StaggerPulseDelayTiming, "{1} Sec")
		EndIf
	endEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
		StaggerPulseDelayTiming = 1
		VL_FreezeLength.SetValue(StaggerPulseDelayTiming)
		if(automated == 0)
			SetSliderOptionValueST(StaggerPulseDelayTiming, "{1} Sec")
		EndIf
	endEvent

	event OnHighlightST()
		SetInfoText("$VL_StaggerPulseDelayInfo")
	endEvent
EndState

;====================================Text States==============================================================

state VL_DebugText
	Event OnSelectST()
		SavedProfileEdited2Func()
		if(VL_DebugVal == "$Off")
			VL_DebugVal = "$Amount"
        	VL_Debug.SetValueInt(1)
        elseif(VL_DebugVal == "$Amount")
        	VL_DebugVal = "$Variable"
        	VL_Debug.SetValueInt(2)
        elseif(VL_DebugVal == "$Variable")
        	VL_DebugVal = "$Both"
        	VL_Debug.SetValueInt(3)
        Else
        	VL_DebugVal = "$Off"
        	VL_Debug.SetValueInt(0)
        endif
        if(automated == 0)
        	SetTextOptionValueST(VL_DebugVal)
    	endif
	EndEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
        VL_DebugVal = "$Off"
        VL_Debug.SetValueint(0)
        if(automated == 0)
        	SetTextOptionValueST(VL_DebugVal)
        endif
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_DebugInfo")
    endEvent
endState

;-----------------------------------------------------------------

state MeleeBackKillmovesText
	Event OnSelectST()
		SavedProfileEdited2Func()
		if(MeleeBackKillmovesVal == "$Off")
			MeleeBackKillmovesVal = "$On: Matched"
        	VL_MeleeBackKillmoves.SetValueint(1)
        elseif(MeleeBackKillmovesVal == "$On: Matched")
        	MeleeBackKillmovesVal = "$On: Mixed"
        	VL_MeleeBackKillmoves.SetValueint(2)
        else
        	MeleeBackKillmovesVal = "$Off"
        	VL_MeleeBackKillmoves.SetValueint(0)

        endif
        if(automated == 0)
        	SetTextOptionValueST(MeleeBackKillmovesVal)
    	endif
	EndEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
        MeleeBackKillmovesVal = "$On: Matched"
        if(automated == 0)
        	SetTextOptionValueST(MeleeBackKillmovesVal)
        endif
        VL_MeleeBackKillmoves.SetValueint(1)
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_MeleeBackKillmovesInfo")
    endEvent
endState

;-----------------------------------------------------------------

state MeleeNPCsText
	Event OnSelectST()
		SavedProfileEdited2Func()
		if(MeleeNPCsVal == "$Off")
			MeleeNPCsVal = "$On: Matched"
        	VL_MeleeNPCs.SetValueint(1)
        elseif(MeleeNPCsVal == "$On: Matched")
        	MeleeNPCsVal = "$On: Mixed"
        	VL_MeleeNPCs.SetValueint(2)
        else
        	MeleeNPCsVal = "$Off"
        	VL_MeleeNPCs.SetValueint(0)

        endif
        if(automated == 0)
        	SetTextOptionValueST(MeleeNPCsVal)
        endif
	EndEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
        MeleeNPCsVal = "$On: Matched"
        if(automated == 0)
        	SetTextOptionValueST(MeleeNPCsVal)
        endif
        VL_MeleeNPCs.SetValueint(1)
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_MeleeNPCsInfo")
    endEvent
endState

;-----------------------------------------------------------------

state MeleeCreaturesText
	Event OnSelectST()
		SavedProfileEdited2Func()
		if(MeleeCreaturesVal == "$Off")
			MeleeCreaturesVal = "$On: Matched"
        	VL_MeleeCreatures.SetValueint(1)
        elseif(MeleeCreaturesVal == "$On: Matched")
        	MeleeCreaturesVal = "$On: Mixed"
        	VL_MeleeCreatures.SetValueint(2)
        else
        	MeleeCreaturesVal = "$Off"
        	VL_MeleeCreatures.SetValueint(0)

        endif
        if(automated == 0)
        	SetTextOptionValueST(MeleeCreaturesVal)
        endif
	EndEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
        MeleeCreaturesVal = "$On: Matched"
        if(automated == 0)
        	SetTextOptionValueST(MeleeCreaturesVal)
        endif
        VL_MeleeCreatures.SetValueint(1)
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_MeleeCreaturesInfo")
    endEvent
endState

;-----------------------------------------------------------------

state DualWieldOptionText
	Event OnSelectST()
		if(DualWieldOptionVal == "$Single")
			DualWieldOptionVal = "$With Offhand"
        	if(CustomizeWeaponPageNumber == 3)
        		DualWieldOptionPageNumber = 3
        	elseif(CustomizeWeaponPageNumber == 4)
        		DualWieldOptionPageNumber = 4
        	elseif(CustomizeWeaponPageNumber == 5)
        		DualWieldOptionPageNumber = 5
        	elseif(CustomizeWeaponPageNumber == 6)
        		DualWieldOptionPageNumber = 6
        	endif
        	ForcePageReset()
        else
        	DualWieldOptionVal = "$Single"
        	DualWieldOptionPageNumber = 0
        	ForcePageReset()
        endif
        if(automated == 0)
        	SetTextOptionValueST(DualWieldOptionVal)
       	endif
	EndEvent

	event OnDefaultST()
        DualWieldOptionVal = "$Single"
        if(automated == 0)
        	SetTextOptionValueST(DualWieldOptionVal)
        endif
        DualWieldOptionPageNumber = 0
        ForcePageReset()
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_DualWieldOptionInfo")
    endEvent
endState

state CurrentCustomizeKillmoveProfileText
	Event OnSelectST()
		objFileList = JValue.readFromDirectory(CKMProfilePath, FilenameExtCKM)
		int objFileNameArray = JMap.allKeys(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		if(arraySize == 0 && CurrentCustomizeKillmoveProfileVal != "$None"  && CurrentCustomizeKillmoveProfileVal != "$None*")
			CurrentCustomizeKillmoveProfileVal = "$None"
			ForcePageReset()
		endif
		objFileList = 0
	endevent

	event OnHighlightST()
        SetInfoText("$VL_CurrentCKMProfile")
    endEvent
endstate

state CurrentMainProfileText
	Event OnSelectST()
		objFileList = JValue.readFromDirectory(MainProfilePath, FilenameExtMain)
		int objFileNameArray = JMap.allKeys(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		if(arraySize == 0 && CurrentMainProfileVal != "$None")
			CurrentMainProfileVal = "$None"
			ForcePageReset()
		endif
		objFileList = 0
	endevent

	event OnHighlightST()
        SetInfoText("$VL_CurrentMainProfile")
    endEvent
endstate

;====================================Menu States==============================================================

state CameraSettingMenu
	event OnMenuOpenST()
		If(PerspectiveListIndex == 4 || PerspectiveListIndex == 5 || PerspectiveListIndex == 7)
			CameraSettingList = New String[2]
				CameraSettingList[0] = "$3P SlowMo Off"
				CameraSettingList[1] = "$VATS Off"
				CameraListSpecial = 1
		Else
			CameraSettingList = New String[3]
			CameraSettingList[0] = "$3P SlowMo On"
			CameraSettingList[1] = "$3P SlowMo Off"
			CameraSettingList[2] = "$VATS Off"	
			CameraListSpecial = 0
		endif
		SetMenuDialogStartIndex(CameraSettingListIndex)
        SetMenuDialogDefaultIndex(0)
        SetMenuDialogOptions(CameraSettingList)
    endEvent

	Event OnMenuAcceptST(int Index)
		SavedProfileEdited2Func()
		CameraSettingListIndex = index
		if(CameraSettingListIndex == 0 && CameraSettingList[0] == "$3P SlowMo On")
        	VL_CameraSetting.SetValueint(CameraSettingListIndex)
        	VL_NoSlowMo.SetValueInt(CameraSettingListIndex)
        	if(GetINIBool("bVATSDisable:VATS") == 1)
        		SetINIBool("bVATSDisable:VATS", false)
        	endif
        	ForcePageReset()
        elseif((CameraSettingListIndex == 1 && CameraSettingList[1] == "$3P SlowMo Off") || (CameraSettingListIndex == 0 && CameraSettingList[0] == "$3P SlowMo Off"))
        	if(CameraListSpecial == 1)
        		VL_CameraSetting.SetValueint(CameraSettingListIndex + 1)
        		VL_NoSlowMo.SetValueInt(CameraSettingListIndex + 1)
        	else
        	VL_CameraSetting.SetValueint(CameraSettingListIndex)
        	VL_NoSlowMo.SetValueInt(CameraSettingListIndex)
        	endif
        	if(GetINIBool("bVATSDisable:VATS") == 1)
        		SetINIBool("bVATSDisable:VATS", false)
        	endif
        	ForcePageReset()
        elseif(CameraSettingListIndex == 2 && CameraSettingList[2] == "$VATS Off" || (CameraSettingListIndex == 1 && CameraSettingList[1] == "$VATS Off"))
        	if(CameraListSpecial == 1)
        		VL_CameraSetting.SetValueint(CameraSettingListIndex + 1)
        	Else
        		VL_CameraSetting.SetValueint(CameraSettingListIndex)
        	endif
        	OnOptionDefault(RangedModeOID)
        	SetINIBool("bVATSDisable:VATS", true)
			if(VL_CDOInstalled.GetValueInt() == 1 && CDOWarning == 0)
				CDOWarning = 1
				MessageBox("Warning: Combat Drama Overhaul has been detected.  Disabling VATS will disable Ranged Killmoves, causing CDO to no longer function.")
			endif
        	ForcePageReset()
        endif
        if(automated == 0)
        	SetMenuOptionValueST(CameraSettingList[index])
        endif
	EndEvent

	event OnDefaultST()
		SavedProfileEdited2Func()
        OnMenuOpenST()
        OnMenuAcceptST(0)
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_CameraSettingInfo")
    endEvent
endState

;--------------------------------------------------------------------------------------------------------------------------------------------------------------

state SaveCustomizeKillmoveProfileMenu

	event OnMenuOpenST()
        SetMenuDialogStartIndex(0)
        SetMenuDialogDefaultIndex(0)
        String Filename
        string[] SaveCustomizeKillmoveProfileMenuList = new string[128]
		SaveCustomizeKillmoveProfileMenuList[0] = "$Cancel"
		SaveCustomizeKillmoveProfileMenuList[1] = "$Save as..."
		int listIndex = 1
		objFileList = JValue.readFromDirectory(CKMProfilePath, FilenameExtCKM)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileCKMArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			SaveCustomizeKillmoveProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(SaveCustomizeKillmoveProfileMenuList)
    endEvent

	event OnMenuAcceptST(int Index)
		String Filename
		String FilenameShort
		int menuIndexOffSet = 2
		int objFileNameArray = JMap.allKeys(objFileList)
		if(Index == 0)
			return
		elseif(Index == 1)
			Filename = ((Self as Form) as UILIB_1).ShowTextInput("Enter File Name", "")
			if(fileName == "" || fileName == "None")
				return
			Else
				CurrentCustomizeKillmoveProfileVal = Filename
				FilenameShort = Filename
				FileName = Filename + FilenameExtCKM
			endif
		else
			fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
			string[] FilenameChunk = argstring(filename, ".")
			filenameshort = FilenameChunk[0]
			if(!ShowMessage("Are you sure you want to\n overwrite \"" + fileNameShort + "\"?", true, "$Save", "$Cancel"))
				return
			endIf
			CurrentCustomizeKillmoveProfileVal = Filenameshort
		endIf
		SaveCustomizeKillmoveProfile(FileName)
		objFileList = 0
	EndEvent

	event OnHighlightST()
        SetInfoText("$VL_SaveCKMProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state LoadCustomizeKillmoveProfileMenu
	event OnMenuOpenST()
		SetMenuDialogStartIndex(0)
        SetMenuDialogDefaultIndex(0)
        string FileName
        string[] LoadCustomizeKillmoveProfileMenuList = new string[128]
		LoadCustomizeKillmoveProfileMenuList[0] = "$Cancel"
		int listIndex = 0
		objFileList = JValue.readFromDirectory(CKMProfilePath, FilenameExtCKM)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileCKMArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			LoadCustomizeKillmoveProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(LoadCustomizeKillmoveProfileMenuList)
	EndEvent

	event OnMenuAcceptST(int Index)
		int menuIndexOffSet = 1
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileCKMArray = JMap.allValues(objFileList)
		if(Index == 0)
			return
		endIf
		string fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
		string[] FilenameChunk = argstring(filename, ".")
		string FilenameShort = FilenameChunk[0]
		int objLoadedCKM = JArray.getObj(objFileCKMArray, Index - menuIndexOffSet)
		if(ShowMessage("Are you sure you want to\n load \"" + fileNameShort + "\"?\nThis may take a few seconds.", true, "$Load", "$Cancel"))
			if(JValue.isExists(objLoadedCKM))
				If(OneTimeFix222)
					ThruProfile = True
					SettingsIndex = 2
					AddRemoveSuper = 1
					AddRemoveSuperToggle(1)
				Endif
				LoadCustomizeKillmoveProfile(Filename)
				CurrentCustomizeKillmoveProfileVal = FileNameShort
			else
				ShowMessage("Error: No data loaded.", false, "$OK")
			endIf
		endIf
		objFileList = 0
	endevent

	event OnHighlightST()
        SetInfoText("$VL_LoadCKMProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state DeleteCustomizeKillmoveProfileMenu
	event OnMenuOpenST()
		string fileName
		SetMenuDialogStartIndex(0)
		SetMenuDialogDefaultIndex(0)
		string[] DeleteCustomizeKillmoveProfileMenuList = new string[128]
		DeleteCustomizeKillmoveProfileMenuList[0] = "$Cancel"
		int listIndex = 0
		objFileList = JValue.readFromDirectory(CKMProfilePath, FilenameExtCKM)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileCKMSetArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			DeleteCustomizeKillmoveProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(DeleteCustomizeKillmoveProfileMenuList)
	endEvent

event OnMenuAcceptST(int Index)
		int menuIndexOffSet = 1
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileHotkeySetArray = JMap.allValues(objFileList)
		if(Index == 0)
			return
		endIf
		string fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
		string[] FilenameChunk = argstring(filename, ".")
		string FilenameShort = FilenameChunk[0]
		if(ShowMessage("Are you sure you want to\n delete \"" + fileNameShort + "\"?", true, "$Delete", "$Cancel"))
			ShowMessage("\"" + filename + "\" Deleted.", false, "$OK")
			JContainers.removeFileAtPath(CKMProfilePath + fileName)
		endIf
		objFileList = 0
		ForcePageReset()
	endEvent

	event OnHighlightST()
        SetInfoText("$VL_DeleteCKMProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state SaveMainProfileMenu

	event OnMenuOpenST()
        SetMenuDialogStartIndex(0)
        SetMenuDialogDefaultIndex(0)
        String Filename
        string[] SaveMainProfileMenuList = new string[128]
		SaveMainProfileMenuList[0] = "$Cancel"
		SaveMainProfileMenuList[1] = "$Save as..."
		int listIndex = 1
		objFileList = JValue.readFromDirectory(MainProfilePath, FilenameExtMain)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileMainArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			SaveMainProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(SaveMainProfileMenuList)
    endEvent

	event OnMenuAcceptST(int Index)
		String Filename
		String FilenameShort
		int menuIndexOffSet = 2
		int objFileNameArray = JMap.allKeys(objFileList)
		if(Index == 0)
			return
		elseif(Index == 1)
			Filename = ((Self as Form) as UILIB_1).ShowTextInput("Enter File Name", "")
			if(fileName == "" || fileName == "None")
				return
			Else
				CurrentMainProfileVal = Filename
				FilenameShort = Filename
				FileName = Filename + FilenameExtMain
			endif
		else
			fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
			string[] FilenameChunk = argstring(filename, ".")
			filenameshort = FilenameChunk[0]
			if(!ShowMessage("Are you sure you want to\n overwrite \"" + fileNameShort + "\"?", true, "$Save", "$Cancel"))
				return
			endIf
			CurrentMainProfileVal = Filenameshort
		endIf
		SaveMainProfile(FileName)
		objFileList = 0
	EndEvent

	event OnHighlightST()
        SetInfoText("$VL_SaveMainProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state LoadMainProfileMenu
	event OnMenuOpenST()
		SetMenuDialogStartIndex(0)
        SetMenuDialogDefaultIndex(0)
        string FileName
        string[] LoadMainProfileMenuList = new string[128]
		LoadMainProfileMenuList[0] = "$Cancel"
		int listIndex = 0
		objFileList = JValue.readFromDirectory(MainProfilePath, FilenameExtMain)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileMainArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			LoadMainProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(LoadMainProfileMenuList)
	EndEvent

	event OnMenuAcceptST(int Index)
		int menuIndexOffSet = 1
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileMainArray = JMap.allValues(objFileList)
		if(Index == 0)
			return
		endIf
		string fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
		string[] FilenameChunk = argstring(filename, ".")
		string FilenameShort = FilenameChunk[0]
		int objLoadedMain = JArray.getObj(objFileMainArray, Index - menuIndexOffSet)
		if(ShowMessage("Are you sure you want to\n load \"" + fileNameShort + "\"?", true, "$Load", "$Cancel"))
			if(JValue.isExists(objLoadedMain))
				LoadMainProfile(Filename)
				CurrentMainProfileVal = FileNameShort
			else
				ShowMessage("Error: No data loaded.", false, "$OK")
			endIf
		endIf
		objFileList = 0
	endevent

	event OnHighlightST()
        SetInfoText("$VL_LoadMainProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state DeleteMainProfileMenu
	event OnMenuOpenST()
		string fileName
		SetMenuDialogStartIndex(0)
		SetMenuDialogDefaultIndex(0)
		string[] DeleteMainProfileMenuList = new string[128]
		DeleteMainProfileMenuList[0] = "$Cancel"
		int listIndex = 0
		objFileList = JValue.readFromDirectory(MainProfilePath, FilenameExtMain)
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileMainSetArray = JMap.allValues(objFileList)
		int arraySize = JArray.count(objFileNameArray)
		int i = 0
		listIndex += 1
		while(i < arraySize)
			fileName = JArray.getStr(objFileNameArray, i)
			string[] FilenameChunk = argstring(filename, ".")
			DeleteMainProfileMenuList[listIndex] = FilenameChunk[0]
			listIndex += 1
			i += 1
		EndWhile
		SetMenuDialogOptions(DeleteMainProfileMenuList)
	endEvent

event OnMenuAcceptST(int Index)
		int menuIndexOffSet = 1
		int objFileNameArray = JMap.allKeys(objFileList)
		int objFileHotkeySetArray = JMap.allValues(objFileList)
		if(Index == 0)
			return
		endIf
		string fileName = JArray.getStr(objFileNameArray, Index - menuIndexOffSet)
		string[] FilenameChunk = argstring(filename, ".")
		string FilenameShort = FilenameChunk[0]
		if(ShowMessage("Are you sure you want to\n delete \"" + fileNameShort + "\"?", true, "$Delete", "$Cancel"))
			ShowMessage("\"" + filename + "\" Deleted.", false, "$OK")
			JContainers.removeFileAtPath(MainProfilePath + fileName)
		endIf
		objFileList = 0
		ForcePageReset()
	endEvent

	event OnHighlightST()
        SetInfoText("$VL_DeleteMainProfile")
    endEvent
endstate

;--------------------------------------------------------------------------------------------------------------

state CustomizeWeaponMenu
    event OnMenuOpenST()
        SetMenuDialogStartIndex(CustomizeWeaponIndex)
        SetMenuDialogDefaultIndex(0)
        SetMenuDialogOptions(CustomizeWeaponList)
    endEvent

    event OnMenuAcceptST(int index)
        CustomizeWeaponIndex = index
        if(index == 0)
        	CustomizeWeaponVal = "$Select"
        	SetMenuOptionValueST(CustomizeWeaponVal)
        else
        	CustomizeWeaponVal = CustomizeWeaponList[CustomizeWeaponIndex]
        	SetMenuOptionValueST(CustomizeWeaponVal)
        endif
       	CustomizeWeaponPageNumber = CustomizeWeaponIndex
        DualWieldOptionPageNumber = 0
        DualWieldOptionVal = "$Single"
        ForcePageReset()
    endEvent

    event OnDefaultST()
        CustomizeWeaponIndex = 0
        CustomizeWeaponVal = "$Select"
        SetMenuOptionValueST(CustomizeWeaponVal)
        CustomizeWeaponPageNumber = 0
        DualWieldOptionPageNumber = 0
        DualWieldOptionVal = "$Single"
        ForcePageReset()
    endEvent

    event OnHighlightST()
        SetInfoText("$VL_CustomizeWeaponMenuInfo")
    endEvent
endState

;-----------------------------------------------------------------

state VL_SettingsMenu
    event OnMenuOpenST()
        SetMenuDialogStartIndex(SettingsIndex)
        SetMenuDialogDefaultIndex(0)
        SetMenuDialogOptions(SettingsList)
    endEvent

    event OnMenuAcceptST(int index)
        SettingsIndex = index
        SetMenuOptionValueST(SettingsList[SettingsIndex])
        if(SettingsIndex != 0)
        	string addremovemessage
        	if(SettingsIndex == 1)
        		AddRemoveAllVal = true
        		addremovemessage = "Add"
        	elseif(SettingsIndex == 2)
        		AddRemoveAllVal = false
        		addremovemessage = "Remove"
        	endif
        	if(CustomizeWeaponPageNumber == 0 && ShowMessage("Are you sure you want to\n" + addremovemessage + " All Customized Killmoves?\nThis may take a few seconds.", true, "$Yes", "$No"))
        		AddRemoveSuper = 1
        		AddRemoveSuperToggle(1)
        	elseif(CustomizeWeaponPageNumber == 1)
	        	AddRemoveAllToggle(VL_zValUnarmedArray, "Unarmed_Main_", 17, 22, 0, 0, True)
	        	AddRemoveSuperToggle(2)
	        elseif(CustomizeWeaponPageNumber == 2)
				AddRemoveAllToggle(VL_zValShieldArray, "Shield_Main_", 22, 30, 26, 29, True)
				AddRemoveSuperToggle(3)
			elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber != 3)
				AddRemoveAllToggle(VL_zValSGDaggerArray, "SGDagger_Main_", 1, 26, 0, 0, True)
				AddRemoveAllToggle(VL_zValDaggerExtrasArray, "Dagger_Extras_", 1, 4)
				AddRemoveSuperToggle(3, 3)
			elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber == 3)
				AddRemoveAllToggle(VL_zValDWDaggerArray, "DWDagger_Main_", 1, 29, 0, 0, True)
				AddRemoveAllToggle(VL_zValDaggerExtrasArray, "Dagger_Extras_", 4, 6)
				AddRemoveAllToggle(VL_zValDWDaggerDecapArray, "Dagger_DWDecap_", 1, 3)
				AddRemoveSuperToggle(4)
			elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber != 4)
				AddRemoveAllToggle(VL_zValSGSwordArray, "SGSword_Main_", 1, 26, 0, 0, True)
				AddRemoveAllToggle(VL_zValSwordExtrasArray, "Sword_Extras_", 1, 4)
				AddRemoveSuperToggle(4, 4)
			elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber == 4)
				AddRemoveAllToggle(VL_zValDWSwordArray, "DWSword_Main_", 1, 29, 0, 0, True)
				AddRemoveAllToggle(VL_zValSwordExtrasArray, "Sword_Extras_", 4, 6)
				AddRemoveAllToggle(VL_zValDWSwordDecapArray, "Sword_DWDecap_", 1, 3)
				AddRemoveSuperToggle(5)
			elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber != 5)
				AddRemoveAllToggle(VL_zValSGMaceArray, "SGMace_Main_", 1, 26, 0, 0, True)
				AddRemoveAllToggle(VL_zValMaceExtrasArray, "Mace_Extras_", 1, 4)
				AddRemoveSuperToggle(5, 5)
			elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber == 5)
				AddRemoveAllToggle(VL_zValDWMaceArray, "DWMace_Main_", 1, 29, 0, 0, True)
				AddRemoveAllToggle(VL_zValMaceExtrasArray, "Mace_Extras_", 4, 6)
				AddRemoveAllToggle(VL_zValDWMaceDecapArray, "Mace_DWDecap_", 1, 3)
				AddRemoveSuperToggle(6)
			elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber != 6)
				AddRemoveAllToggle(VL_zValSGAxeArray, "SGAxe_Main_", 1, 26, 0, 0, True)
				AddRemoveAllToggle(VL_zValAxeExtrasArray, "Axe_Extras_", 1, 4)
				AddRemoveSuperToggle(6, 6)
			elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber == 6)
				AddRemoveAllToggle(VL_zValDWAxeArray, "DWAxe_Main_", 1, 29, 0, 0, True)
				AddRemoveAllToggle(VL_zValAxeExtrasArray, "Axe_Extras_", 4, 6)
				AddRemoveAllToggle(VL_zValDWAxeDecapArray, "Axe_DWDecap_", 1, 3)
				AddRemoveSuperToggle(7)
			elseif(CustomizeWeaponPageNumber == 7)
				AddRemoveAllToggle(VL_zValGreatswordArray, "Greatsword_Main_", 1, 37, 26, 33, True)
				AddRemoveAllToggle(VL_zValGreatswordDecapArray, "Greatsword_2HDecap_", 1, 3)
				AddRemoveAllToggle(VL_zValGreatswordDecapBOArray, "Greatsword_2HDecapBO_", 1, 3)
				if(VL_zValGreatswordToggle != AddRemoveAllVal)
					automated = 1
					GotoState("Greatsword_Toggle_")
					OnSelectST()
					automated = 0
					ForcePageReset()
				endif
				AddRemoveSuperToggle(8)
			elseif(CustomizeWeaponPageNumber == 8)
				AddRemoveAllToggle(VL_zValWarhammerArray, "Warhammer_Main_", 1, 33, 26, 30, True)
				AddRemoveAllToggle(VL_zValWarhammerDecapArray, "Warhammer_2HDecap_", 1, 3)
				AddRemoveAllToggle(VL_zValWarhammerDecapBOArray, "Warhammer_2HDecapBO_", 1, 3)
				if(VL_zValWarhammerToggle != AddRemoveAllVal)
					automated = 1
					GotoState("Warhammer_Toggle_")
					OnSelectST()
					automated = 0
					ForcePageReset()
				endif
				AddRemoveSuperToggle(9)
			elseif(CustomizeWeaponPageNumber == 9)
				AddRemoveAllToggle(VL_zValBattleaxeArray, "Battleaxe_Main_", 1, 33, 26, 30, True)
				AddRemoveAllToggle(VL_zValBattleaxeDecapArray, "Battleaxe_2HDecap_", 1, 3)
				AddRemoveAllToggle(VL_zValBattleaxeDecapBOArray, "Battleaxe_2HDecapBO_", 1, 3)
				if(VL_zValBattleaxeToggle != AddRemoveAllVal)
					automated = 1
					GotoState("Battleaxe_Toggle_")
					OnSelectST()
					automated = 0
					ForcePageReset()
				endif
				AddRemoveSuperToggle(10)
        	endif
        endif
       GotoState("VL_SettingsMenu")
       OnDefaultST()
    endEvent

    event OnDefaultST()
        SettingsIndex = 0
        SetMenuOptionValueST(SettingsMenuVal)
    endEvent

    event OnHighlightST()
    	If(CustomizeWeaponPageNumber == 0)
        	SetInfoText("$VL_SettingsMenuInfo2")
        Else
        	SetInfoText("$VL_SettingsMenuInfo")
        endIf
    endEvent
endState

;--------------Fixed for VioLens SE 2.22------------------------------------------------------------------------------------------

Function AddRemoveAllToggle(Bool[] WeaponArray, string WeaponStateName, int StartInt, int StopInt, int FromInt = 0, int ToInt = 0, bool DoClean = false)
	automated = 1
	While(StartInt < StopInt)
		if(StartInt == FromInt)
			StartInt = ToInt
		EndIf
		if(AddRemoveAllVal != WeaponArray[StartInt])
			GotoState(WeaponStateName+StartInt)
			OnSelectST()
		endif
		StartInt += 1
	EndWhile
	If(!AddRemoveAllVal && DoClean)
		CleanFormList()
	EndIf
	automated = 0
	ForcePageReset()
endfunction

Function CleanFormList()
	If(CustomizeWeaponPageNumber == 1)
		VL_zFormlistUnarmed.Revert()
	ElseIf(CustomizeWeaponPageNumber == 2)
		VL_zFormlistShield.Revert()
	ElseIf(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber != 3)
		VL_zFormlistDaggerArray[0].Revert()
	ElseIf(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber == 3)
		VL_zFormlistDaggerArray[1].Revert()
		VL_zFormlistDaggerArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber != 4)
		VL_zFormlistSwordArray[0].Revert()
	ElseIf(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber == 4)
		VL_zFormlistSwordArray[1].Revert()
		VL_zFormlistSwordArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber != 5)
		VL_zFormlistMaceArray[0].Revert()
	ElseIf(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber == 5)
		VL_zFormlistMaceArray[1].Revert()
		VL_zFormlistMaceArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber != 6)
		VL_zFormlistAxeArray[0].Revert()
	ElseIf(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber == 6)
		VL_zFormlistAxeArray[1].Revert()
		VL_zFormlistAxeArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 7)
		VL_zFormlistGreatswordArray[0].Revert()
		VL_zFormlistGreatswordArray[1].Revert()
		VL_zFormlistGreatswordArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 8)
		VL_zFormlistWarhammerArray[0].Revert()
		VL_zFormlistWarhammerArray[1].Revert()
		VL_zFormlistWarhammerArray[2].Revert()
	ElseIf(CustomizeWeaponPageNumber == 9)
		VL_zFormlistBattleaxeArray[0].Revert()
		VL_zFormlistBattleaxeArray[1].Revert()
		VL_zFormlistBattleaxeArray[2].Revert()
	EndIf
endFunction

;--------------------------------------------------------------------------------------------------------------------------

Function AddRemoveSuperToggle(int NextCKPN, int NextDWPN = 0)
	if(AddRemoveSuper == 0)
		Return
	Else
		If(NextCKPN >= 10)
			CustomizeWeaponPageNumber = 0
			AddRemoveSuper = 0
			If(ThruProfile)
				ThruProfile = False
			Else
				ShowMessage("Finished.", false, "$OK")
			EndIf
			If(OneTimeFix222)
				OnetimeFix222 = False
			EndIf
		Else	
			CustomizeWeaponPageNumber = NextCKPN
			DualWieldOptionPageNumber = NextDWPN
			GotoState("VL_SettingsMenu")
			OnMenuAcceptST(SettingsIndex)
		endif
	endif
endFunction

;====================================Toggles==============================================================

string[] function MultiToggle()
	return ArgString(GetState(), "_")
endFunction

	event OnSelectST()

		string[] Chunk = MultiToggle()

		if(CustomizeWeaponPageNumber == 1)
			VL_zValUnarmedArray[Chunk[2] as int] = !VL_zValUnarmedArray[Chunk[2] as int]
			if(automated == 0)
       			SetToggleOptionValueST(VL_zValUnarmedArray[Chunk[2] as int])
       		endIf
        	if(VL_zValUnarmedArray[Chunk[2] as int] == true)
        		VL_zFormListUnarmed.AddForm(VL_zNumberArray[Chunk[2] as int])
        	else
        		VL_zFormListUnarmed.RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        	endif
        elseif(CustomizeWeaponPageNumber == 2)
        	VL_zValShieldArray[Chunk[2] as int] = !VL_zValShieldArray[Chunk[2] as int]
        	if(automated == 0)
       			SetToggleOptionValueST(VL_zValShieldArray[Chunk[2] as int])
       		endIf
        	if(VL_zValShieldArray[Chunk[2] as int] == true)
        		VL_zFormListShield.AddForm(VL_zNumberArray[Chunk[2] as int])
        	else
        		VL_zFormListShield.RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        	endif
        elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber != 3)
        	if(Chunk[1] == "Main")
        		VL_zValSGDaggerArray[Chunk[2] as int] = !VL_zValSGDaggerArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValSGDaggerArray[Chunk[2] as int])
       			endIf
        		if(VL_zValSGDaggerArray[Chunk[2] as int] == true)
        			VL_zFormListDaggerArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListDaggerArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Extras")
        		VL_zValDaggerExtrasArray[Chunk[2] as int] = !VL_zValDaggerExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValDaggerExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValDaggerExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleDaggerArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleDaggerArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
        elseif(CustomizeWeaponPageNumber == 3 && DualWieldOptionPageNumber == 3)
        	if(Chunk[1] == "Main")
        		VL_zValDWDaggerArray[Chunk[2] as int] = !VL_zValDWDaggerArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWDaggerArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWDaggerArray[Chunk[2] as int] == true)
        			VL_zFormListDaggerArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListDaggerArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "DWDecap")
    			VL_zValDWDaggerDecapArray[Chunk[2] as int] = !VL_zValDWDaggerDecapArray[Chunk[2] as int]
    			if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWDaggerDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWDaggerDecapArray[Chunk[2] as int] == true)
        			VL_zFormListDaggerArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListDaggerArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
			elseif(Chunk[1] == "Extras")
        		VL_zValDaggerExtrasArray[Chunk[2] as int] = !VL_zValDaggerExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValDaggerExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValDaggerExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleDaggerArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleDaggerArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
        elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber != 4)
        	if(Chunk[1] == "Main")
        		VL_zValSGSwordArray[Chunk[2] as int] = !VL_zValSGSwordArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValSGSwordArray[Chunk[2] as int])
       			endIf
        		if(VL_zValSGSwordArray[Chunk[2] as int] == true)
        			VL_zFormListSwordArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListSwordArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Extras")
        		VL_zValSwordExtrasArray[Chunk[2] as int] = !VL_zValSwordExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValSwordExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValSwordExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleSwordArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleSwordArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
        elseif(CustomizeWeaponPageNumber == 4 && DualWieldOptionPageNumber == 4)
        	if(Chunk[1] == "Main")
        		VL_zValDWSwordArray[Chunk[2] as int] = !VL_zValDWSwordArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWSwordArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWSwordArray[Chunk[2] as int] == true)
        			VL_zFormListSwordArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListSwordArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "DWDecap")
    			VL_zValDWSwordDecapArray[Chunk[2] as int] = !VL_zValDWSwordDecapArray[Chunk[2] as int]
    			if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWSwordDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWSwordDecapArray[Chunk[2] as int] == true)
        			VL_zFormListSwordArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListSwordArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
			elseif(Chunk[1] == "Extras")
        		VL_zValSwordExtrasArray[Chunk[2] as int] = !VL_zValSwordExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValSwordExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValSwordExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleSwordArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleSwordArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
    	elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber != 5)
        	if(Chunk[1] == "Main")
        		VL_zValSGMaceArray[Chunk[2] as int] = !VL_zValSGMaceArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValSGMaceArray[Chunk[2] as int])
       			endIf
        		if(VL_zValSGMaceArray[Chunk[2] as int] == true)
        			VL_zFormListMaceArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListMaceArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Extras")
        		VL_zValMaceExtrasArray[Chunk[2] as int] = !VL_zValMaceExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValMaceExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValMaceExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleMaceArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleMaceArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
        elseif(CustomizeWeaponPageNumber == 5 && DualWieldOptionPageNumber == 5)
        	if(Chunk[1] == "Main")
        		VL_zValDWMaceArray[Chunk[2] as int] = !VL_zValDWMaceArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWMaceArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWMaceArray[Chunk[2] as int] == true)
        			VL_zFormListMaceArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListMaceArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "DWDecap")
    			VL_zValDWMaceDecapArray[Chunk[2] as int] = !VL_zValDWMaceDecapArray[Chunk[2] as int]
    			if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWMaceDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWMaceDecapArray[Chunk[2] as int] == true)
        			VL_zFormListMaceArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListMaceArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
			elseif(Chunk[1] == "Extras")
        		VL_zValMaceExtrasArray[Chunk[2] as int] = !VL_zValMaceExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValMaceExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValMaceExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleMaceArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleMaceArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
    	elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber != 6)
        	if(Chunk[1] == "Main")
        		VL_zValSGAxeArray[Chunk[2] as int] = !VL_zValSGAxeArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValSGAxeArray[Chunk[2] as int])
       			endIf
        		if(VL_zValSGAxeArray[Chunk[2] as int] == true)
        			VL_zFormListAxeArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListAxeArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Extras")
        		VL_zValAxeExtrasArray[Chunk[2] as int] = !VL_zValAxeExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValAxeExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValAxeExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleAxeArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleAxeArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
        elseif(CustomizeWeaponPageNumber == 6 && DualWieldOptionPageNumber == 6)
        	if(Chunk[1] == "Main")
        		VL_zValDWAxeArray[Chunk[2] as int] = !VL_zValDWAxeArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWAxeArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWAxeArray[Chunk[2] as int] == true)
        			VL_zFormListAxeArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListAxeArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "DWDecap")
    			VL_zValDWAxeDecapArray[Chunk[2] as int] = !VL_zValDWAxeDecapArray[Chunk[2] as int]
    			if(automated == 0)
       				SetToggleOptionValueST(VL_zValDWAxeDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValDWAxeDecapArray[Chunk[2] as int] == true)
        			VL_zFormListAxeArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListAxeArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
			elseif(Chunk[1] == "Extras")
        		VL_zValAxeExtrasArray[Chunk[2] as int] = !VL_zValAxeExtrasArray[Chunk[2] as int]
        		if(automated == 0)
    				SetToggleOptionValueST(VL_zValAxeExtrasArray[Chunk[2] as int])
    			endIf
    			if(VL_zValAxeExtrasArray[Chunk[2] as int] == true)
    				VL_zToggleAxeArray[Chunk[2] as int].SetValueInt(1)
    			else
    				VL_zToggleAxeArray[Chunk[2] as int].SetValueInt(0)
    			endif
    		endif
    	elseif(CustomizeWeaponPageNumber == 7)
    		if(Chunk[1] == "Main")
        		VL_zValGreatswordArray[Chunk[2] as int] = !VL_zValGreatswordArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValGreatswordArray[Chunk[2] as int])
       			endIf
        		if(VL_zValGreatswordArray[Chunk[2] as int] == true)
        			VL_zFormListGreatswordArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListGreatswordArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
    		elseif(Chunk[1] == "2HDecap")
        		VL_zValGreatswordDecapArray[Chunk[2] as int] = !VL_zValGreatswordDecapArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValGreatswordDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValGreatswordDecapArray[Chunk[2] as int] == true)
        			VL_zFormListGreatswordArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListGreatswordArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "2HDecapBO")
        		VL_zValGreatswordDecapBOArray[Chunk[2] as int] = !VL_zValGreatswordDecapBOArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValGreatswordDecapBOArray[Chunk[2] as int])
       			endIf
        		if(VL_zValGreatswordDecapBOArray[Chunk[2] as int] == true)
        			VL_zFormListGreatswordArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListGreatswordArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Toggle")
        		VL_zValGreatswordToggle = !VL_zValGreatswordToggle
        		if(automated == 0)
        			SetToggleOptionValueST(VL_zValGreatswordToggle)
        		endIf
        		if(VL_zValGreatswordToggle == true)
        			VL_zToggleSGGreatswordBO.SetValueInt(1)
        		else
        			VL_zToggleSGGreatswordBO.SetValueInt(0)
        		endif
        	endif
        elseif(CustomizeWeaponPageNumber == 8)
    		if(Chunk[1] == "Main")
        		VL_zValWarhammerArray[Chunk[2] as int] = !VL_zValWarhammerArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValWarhammerArray[Chunk[2] as int])
       			endIf
        		if(VL_zValWarhammerArray[Chunk[2] as int] == true)
        			VL_zFormListWarhammerArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListWarhammerArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
    		elseif(Chunk[1] == "2HDecap")
        		VL_zValWarhammerDecapArray[Chunk[2] as int] = !VL_zValWarhammerDecapArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValWarhammerDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValWarhammerDecapArray[Chunk[2] as int] == true)
        			VL_zFormListWarhammerArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListWarhammerArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "2HDecapBO")
        		VL_zValWarhammerDecapBOArray[Chunk[2] as int] = !VL_zValWarhammerDecapBOArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValWarhammerDecapBOArray[Chunk[2] as int])
       			endIf
        		if(VL_zValWarhammerDecapBOArray[Chunk[2] as int] == true)
        			VL_zFormListWarhammerArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListWarhammerArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Toggle")
        		VL_zValWarhammerToggle = !VL_zValWarhammerToggle
        		if(automated == 0)
        			SetToggleOptionValueST(VL_zValWarhammerToggle)
        		endIf
        		if(VL_zValWarhammerToggle == true)
        			VL_zToggleSGWarhammerBO.SetValueInt(1)
        		else
        			VL_zToggleSGWarhammerBO.SetValueInt(0)
        		endif
        	endif
        elseif(CustomizeWeaponPageNumber == 9)
    		if(Chunk[1] == "Main")
        		VL_zValBattleaxeArray[Chunk[2] as int] = !VL_zValBattleaxeArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValBattleaxeArray[Chunk[2] as int])
       			endIf
        		if(VL_zValBattleaxeArray[Chunk[2] as int] == true)
        			VL_zFormListBattleaxeArray[0].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListBattleaxeArray[0].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
    		elseif(Chunk[1] == "2HDecap")
        		VL_zValBattleaxeDecapArray[Chunk[2] as int] = !VL_zValBattleaxeDecapArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValBattleaxeDecapArray[Chunk[2] as int])
       			endIf
        		if(VL_zValBattleaxeDecapArray[Chunk[2] as int] == true)
        			VL_zFormListBattleaxeArray[1].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListBattleaxeArray[1].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "2HDecapBO")
        		VL_zValBattleaxeDecapBOArray[Chunk[2] as int] = !VL_zValBattleaxeDecapBOArray[Chunk[2] as int]
        		if(automated == 0)
       				SetToggleOptionValueST(VL_zValBattleaxeDecapBOArray[Chunk[2] as int])
       			endIf
        		if(VL_zValBattleaxeDecapBOArray[Chunk[2] as int] == true)
        			VL_zFormListBattleaxeArray[2].AddForm(VL_zNumberArray[Chunk[2] as int])
        		else
        			VL_zFormListBattleaxeArray[2].RemoveAddedForm(VL_zNumberArray[Chunk[2] as int])
        		endif
        	elseif(Chunk[1] == "Toggle")
        		VL_zValBattleaxeToggle = !VL_zValBattleaxeToggle
        		if(automated == 0)
        			SetToggleOptionValueST(VL_zValBattleaxeToggle)
        		endIf
        		if(VL_zValBattleaxeToggle == true)
        			VL_zToggleSGBattleaxeBO.SetValueInt(1)
        		else
        			VL_zToggleSGBattleaxeBO.SetValueInt(0)
        		endif
        	endif	
        endif
    if(CloseMenuRandomize == 0)
    	CloseMenuRandomize = 1
    endif
    if(SavedProfileEdited == 0)
    	SavedProfileEdited = 1
    endif
    endEvent

;====================================Close Menu==============================================================

Event OnConfigClose()
	If(VL_MeleeMode.GetValueInt() == 2 && CloseMenuRandomize == 1)

		notification("Killmoves Customized")

		CloseMenuRandomize = 0

		;===================================Main===================================================

		;--Unarmed-------------------------------------------------------------------
		if(VL_zFormListUnarmed.GetSize() != 0)
			int UnarmedIndex = RandomInt(0, VL_zFormListUnarmed.GetSize() - 1)
			Form UnarmedForm = VL_zFormListUnarmed.GetAt(UnarmedIndex)
			VL_zRandomizerUnarmed.SetValueInt((UnarmedForm as globalvariable).getvalueint())
		else
			VL_zRandomizerUnarmed.SetValueInt(0)
		endif
			
			;--Shield--------------------------------------------------------------------

		if(VL_zFormListShield.GetSize() != 0)
			int ShieldIndex = RandomInt(0, VL_zFormListShield.GetSize() - 1)
			Form ShieldForm = VL_zFormListShield.GetAt(ShieldIndex)
			VL_zRandomizerShield.SetValueInt((ShieldForm as globalvariable).getvalueint())
		else
			VL_zRandomizerShield.SetValueInt(0)
		endif
			
			;--Single Dagger------------------------------------------------------------------

		if(VL_zFormListDaggerArray[0].GetSize() != 0)
			int SGDaggerIndex = RandomInt(0, VL_zFormListDaggerArray[0].GetSize() - 1)
			Form SGDaggerForm = VL_zFormListDaggerArray[0].GetAt(SGDaggerIndex)
			VL_zRandomizerDaggerArray[0].SetValueInt((SGDaggerForm As GlobalVariable).GetValueInt())
		Else
			VL_zRandomizerDaggerArray[0].SetValueInt(0)
		EndIf

			;--DW Dagger--------------------------------------------------------------------

		if(VL_zFormListDaggerArray[1].GetSize() != 0)
			int DWDaggerIndex = RandomInt(0, VL_zFormListDaggerArray[1].GetSize() - 1)
			Form DWDaggerForm = VL_zFormListDaggerArray[1].GetAt(DWDaggerIndex)
			VL_zRandomizerDaggerArray[1].SetValueInt((DWDaggerForm As GlobalVariable).GetValueInt())
		Else
			VL_zRandomizerDaggerArray[1].SetValueInt(0)
		EndIf

			;--Single Sword------------------------------------------------------------------

		if(VL_zFormListSwordArray[0].GetSize() != 0)
			int SGSwordIndex = RandomInt(0, VL_zFormListSwordArray[0].GetSize() - 1)
			Form SGSwordForm = VL_zFormListSwordArray[0].GetAt(SGSwordIndex)
			VL_zRandomizerSwordArray[0].SetValueInt((SGSwordForm As GlobalVariable).GetValueInt())
		else
			VL_zRandomizerSwordArray[0].SetValueInt(0)
		endIf
		
			;--DW Sword--------------------------------------------------------------------

		if(VL_zFormListSwordArray[1].GetSize() != 0)
			int DWSwordIndex = RandomInt(0, VL_zFormListSwordArray[1].GetSize() - 1)
			Form DWSwordForm = VL_zFormListSwordArray[1].GetAt(DWSwordIndex)
			VL_zRandomizerSwordArray[1].SetValueInt((DWSwordForm As GlobalVariable).GetValueInt())
		else
			VL_zRandomizerSwordArray[1].SetValueint(0)
		endIf
		
			;--Single Mace------------------------------------------------------------------

		if(VL_zFormListMaceArray[0].GetSize() != 0)
			int SGMaceIndex = RandomInt(0, VL_zFormListMaceArray[0].GetSize() - 1)
			Form SGMaceForm = VL_zFormListMaceArray[0].GetAt(SGMaceIndex)
			VL_zRandomizerMaceArray[0].SetValueInt((SGMaceForm As GlobalVariable).GetValueInt())
		else
			VL_zRandomizerMaceArray[0].SetValueInt(0)
		endif

			;--DW Mace--------------------------------------------------------------------

		if(VL_zFormListMaceArray[1].GetSize() != 0)
			int DWMaceIndex = RandomInt(0, VL_zFormListMaceArray[1].GetSize() - 1)
			Form DWMaceForm = VL_zFormListMaceArray[1].GetAt(DWMaceIndex)
			VL_zRandomizerMaceArray[1].SetValueInt((DWMaceForm As GlobalVariable).GetValueInt())
		Else
			VL_zRandomizerMaceArray[1].SetValueInt(0)
		endIf

			;--Single Axe------------------------------------------------------------------

		if(VL_zFormListAxeArray[0].GetSize() != 0)
			int SGAxeIndex = RandomInt(0, VL_zFormListAxeArray[0].GetSize() - 1)
			Form SGAxeForm = VL_zFormListAxeArray[0].GetAt(SGAxeIndex)
			VL_zRandomizerAxeArray[0].SetValueInt((SGAxeForm As GlobalVariable).GetValueInt())
		else
			VL_zRandomizerAxeArray[0].SetValueInt(0)
		endIf
		
			;--DW Axe--------------------------------------------------------------------

		if(VL_zFormListAxeArray[1].GetSize() != 0)
			int DWAxeIndex = RandomInt(0, VL_zFormListAxeArray[1].GetSize() - 1)
			Form DWAxeForm = VL_zFormListAxeArray[1].GetAt(DWAxeIndex)
			VL_zRandomizerAxeArray[1].SetValueInt((DWAxeForm As GlobalVariable).GetValueInt())
		Else
			VL_zRandomizerAxeArray[1].SetValueInt(0)
		endIf

			;--Greatsword-----------------------------------------------------------------

		if(VL_zFormListGreatswordArray[0].GetSize() != 0)
			int GreatswordIndex = RandomInt(0, VL_zFormListGreatswordArray[0].GetSize() - 1)
			Form GreatswordForm = VL_zFormListGreatswordArray[0].GetAt(GreatswordIndex)
			VL_zRandomizerGreatswordArray[0].SetValueInt((GreatswordForm As GlobalVariable).GetValueInt())	
		Else
			VL_zRandomizerGreatswordArray[0].SetValueInt(0)
		endIf


			;--Warhammer-----------------------------------------------------------------

		if(VL_zFormListWarhammerArray[0].GetSize() != 0)
			int WarhammerIndex = RandomInt(0, VL_zFormListWarhammerArray[0].GetSize() - 1)
			Form WarhammerForm = VL_zFormListWarhammerArray[0].GetAt(WarhammerIndex)
			VL_zRandomizerWarhammerArray[0].SetValueInt((WarhammerForm As GlobalVariable).GetValueInt())
		else
			VL_zRandomizerWarhammerArray[0].SetValueInt(0)
		endIf
		
			;--Battleaxe-----------------------------------------------------------------

		if(VL_zFormListBattleaxeArray[0].GetSize() != 0)
			int BattleaxeIndex = RandomInt(0, VL_zFormListBattleaxeArray[0].GetSize() - 1)
			Form BattleaxeForm = VL_zFormListBattleaxeArray[0].GetAt(BattleaxeIndex)
			VL_zRandomizerBattleaxeArray[0].SetValueInt((BattleaxeForm As GlobalVariable).GetValueInt())
		Else
			VL_zRandomizerBattleaxeArray[0].SetValueInt(0)
		EndIf

		;===================================Main Debug Notifications===================================================
		
		if(VL_Debug.GetValueInt() == 1 || VL_Debug.GetValueInt() == 3)
			if(CustomizeWeaponPageNumber == 1)
				notification("Unarmed:" + " " + VL_zFormListUnarmed.Getsize())
			elseif(CustomizeWeaponPageNumber == 2)
				notification("Shields:" + " " + VL_zFormListShield.Getsize())
			elseif(CustomizeWeaponPageNumber == 3)
				notification("Daggers:" + " " + VL_zFormListDaggerArray[0].Getsize())
				notification("Daggers DW:" + " " + VL_zFormListDaggerArray[1].Getsize())
			elseif(CustomizeWeaponPageNumber == 4)
				notification("Swords:" + " " + VL_zFormListSwordArray[0].Getsize())
				notification("Swords DW:" + " " + VL_zFormListSwordArray[1].Getsize())
			elseif(CustomizeWeaponPageNumber == 5)
				notification("Maces:" + " " + VL_zFormListMaceArray[0].Getsize())
				notification("Maces DW:" + " " + VL_zFormListMaceArray[1].Getsize())
			elseif(CustomizeWeaponPageNumber == 6)
				notification("Axes:" + " " + VL_zFormListAxeArray[0].Getsize())
				notification("Axes DW:" + " " + VL_zFormListAxeArray[1].Getsize())
			elseif(CustomizeWeaponPageNumber == 7)
				notification("Greatswords:" + " " + VL_zFormListGreatswordArray[0].Getsize())
			elseif(CustomizeWeaponPageNumber == 8)	
				notification("Warhammers:" + " " + VL_zFormListWarhammerArray[0].Getsize())
			elseif(CustomizeWeaponPageNumber == 9)
				notification("Battleaxes:" + " " + VL_zFormListBattleaxeArray[0].Getsize())
			endif
		endif

		;===================================Decapitations===================================================

		If(VL_Decapitation.GetValueInt() != 0)

			;--DW Dagger Decapitation-----------------------------------------------------------------

			if(VL_zFormListDaggerArray[2].GetSize() != 0)
				int DWDaggerDecapIndex = RandomInt(0, VL_zFormListDaggerArray[2].GetSize() - 1)
				Form DWDaggerDecapForm = VL_zFormListDaggerArray[2].GetAt(DWDaggerDecapIndex)
				VL_zRandomizerDaggerArray[2].SetValueInt((DWDaggerDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerDaggerArray[2].SetValueInt(0)
			endIf	
			
			;--DW Sword Decapitation-----------------------------------------------------------------

			if(VL_zFormListSwordArray[2].GetSize() != 0)
				int DWSwordDecapIndex = RandomInt(0, VL_zFormListSwordArray[2].GetSize() - 1)
				Form DWSwordDecapForm = VL_zFormListSwordArray[2].GetAt(DWSwordDecapIndex)
				VL_zRandomizerSwordArray[2].SetValueInt((DWSwordDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerSwordArray[2].SetValueInt(0)
			endIf
			
			;--DW Mace Decapitation-----------------------------------------------------------------

			if(VL_zFormListMaceArray[2].GetSize() != 0)
				int DWMaceDecapIndex = RandomInt(0, VL_zFormListMaceArray[2].GetSize() - 1)
				Form DWMaceDecapForm = VL_zFormListMaceArray[2].GetAt(DWMaceDecapIndex)
				VL_zRandomizerMaceArray[2].SetValueInt((DWMaceDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerMaceArray[2].SetValueInt(0)
			endIf
		
			
			;--DW Axe Decapitation-----------------------------------------------------------------

			if(VL_zFormListAxeArray[2].GetSize() != 0)
				int DWAxeDecapIndex = RandomInt(0, VL_zFormListAxeArray[2].GetSize() - 1)
				Form DWAxeDecapForm = VL_zFormListAxeArray[2].GetAt(DWAxeDecapIndex)
				VL_zRandomizerAxeArray[2].SetValueInt((DWAxeDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerAxeArray[2].SetValueInt(0)
			endIf
		
			
			;--Greatsword Decapitation------------------------------------------------------------------------

			if(VL_zFormListGreatswordArray[1].GetSize() != 0)
				int GreatswordDecapIndex = RandomInt(0, VL_zFormListGreatswordArray[1].GetSize() - 1)
				Form GreatswordDecapForm = VL_zFormListGreatswordArray[1].GetAt(GreatswordDecapIndex)
				VL_zRandomizerGreatswordArray[1].SetValueInt((GreatswordDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerGreatswordArray[1].SetValueInt(0)
			endIf

			
			;--Greatsword Bleedout Decapitation--------------------------------------------------------------------

			if(VL_zFormListGreatswordArray[2].GetSize() != 0)
				int GreatswordDecapBOIndex = RandomInt(0, VL_zFormListGreatswordArray[2].GetSize() - 1)
				Form GreatswordDecapBOForm = VL_zFormListGreatswordArray[2].GetAt(GreatswordDecapBOIndex)
				VL_zRandomizerGreatswordArray[2].SetValueInt((GreatswordDecapBOForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerGreatswordArray[2].SetValueInt(0)
			endIf
		
			
			;--Warhammer Decapitation--------------------------------------------------------------------------------

			if(VL_zFormListWarhammerArray[1].GetSize() != 0)
				int WarhammerDecapIndex = RandomInt(0, VL_zFormListWarhammerArray[1].GetSize() - 1)
				Form WarhammerDecapForm = VL_zFormListWarhammerArray[1].GetAt(WarhammerDecapIndex)
				VL_zRandomizerWarhammerArray[1].SetValueInt((WarhammerDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerWarhammerArray[1].SetValueInt(0)
			Endif

			
			;--Warhammer Bleedout Decapitation----------------------------------------------------------------------------

			if(VL_zFormListWarhammerArray[2].GetSize() != 0)
				int WarhammerDecapBOIndex = RandomInt(0, VL_zFormListWarhammerArray[2].GetSize() - 1)
				Form WarhammerDecapBOForm = VL_zFormListWarhammerArray[2].GetAt(WarhammerDecapBOIndex)
				VL_zRandomizerWarhammerArray[2].SetValueInt((WarhammerDecapBOForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerWarhammerArray[2].SetValueInt(0)
			endIf
		
			
			;--Battleaxe Decapitation----------------------------------------------------------------------------------------

			if(VL_zFormListBattleaxeArray[1].GetSize() != 0)
				int BattleaxeDecapIndex = RandomInt(0, VL_zFormListBattleaxeArray[1].GetSize() - 1)
				Form BattleaxeDecapForm = VL_zFormListBattleaxeArray[1].GetAt(BattleaxeDecapIndex)
				VL_zRandomizerBattleaxeArray[1].SetValueInt((BattleaxeDecapForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerBattleaxeArray[1].SetValueInt(0)
			endIf

			
			;--Battleaxe Bleedout Decapitation-------------------------------------------------------------------------------

			if(VL_zFormListBattleaxeArray[2].GetSize() != 0)
				int BattleaxeDecapBOIndex = RandomInt(0, VL_zFormListBattleaxeArray[2].GetSize() - 1)
				Form BattleaxeDecapBOForm = VL_zFormListBattleaxeArray[2].GetAt(BattleaxeDecapBOIndex)
				VL_zRandomizerBattleaxeArray[2].SetValueInt((BattleaxeDecapBOForm As GlobalVariable).GetValueInt())
			Else
				VL_zRandomizerBattleaxeArray[2].SetValueInt(0)
			endif

			;===================================Decapitation Debug Notifications===================================================
				
			if(VL_Debug.GetValueInt() == 1 || VL_Debug.GetValueInt() == 3)
				if(CustomizeWeaponPageNumber == 3)
					notification("Daggers DW Decap:" + " " + VL_zFormListDaggerArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 4)
					notification("Swords DW Decap:" + " " + VL_zFormListSwordArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 5)
					notification("Maces DW Decap:" + " " + VL_zFormListMaceArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 6)
					notification("Axes DW Decap:" + " " + VL_zFormListAxeArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 7)
					notification("Greatswords Decap:" + " " + VL_zFormListGreatswordArray[1].Getsize())
					notification("Greatsword Decap BlO:" + " " + VL_zFormListGreatswordArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 8)
					notification("Warhammer Decap:" + " " + VL_zFormListWarhammerArray[1].Getsize())
					notification("Warhammer Decap BlO:" + " " + VL_zFormListWarhammerArray[2].Getsize())
				elseif(CustomizeWeaponPageNumber == 9)
					notification("Battleaxe Decap:" + " " + VL_zFormListBattleaxeArray[1].Getsize())
					notification("Battleaxe Decap BlO:" + " " + VL_zFormListBattleaxeArray[2].Getsize())
				endif
			endif
		EndIf	
	EndIf
EndEvent

;====================================JCon Saving Custom Killmoves==============================================================

Function SaveCustomizeKillmoveProfile(string file)
	Int jSavingBox = jMap.object()

	;-----------------------------------------------------------------------------

	Int jVL_zValUnarmedArray = jArray.objectWithBooleans(VL_zValUnarmedArray)
	Int jVL_zValShieldArray = jArray.objectWithBooleans(VL_zValShieldArray)
	Int jVL_zValSGDaggerArray = jArray.objectWithBooleans(VL_zValSGDaggerArray)
	Int jVL_zValDWDaggerArray = jArray.objectWithBooleans(VL_zValDWDaggerArray)
	Int jVL_zValDaggerExtrasArray = jArray.objectWithBooleans(VL_zValDaggerExtrasArray)
	Int jVL_zValDWDaggerDecapArray = jArray.objectWithBooleans(VL_zValDWDaggerDecapArray)
	Int jVL_zValSGSwordArray = jArray.objectWithBooleans(VL_zValSGSwordArray)
	Int jVL_zValDWSwordArray = jArray.objectWithBooleans(VL_zValDWSwordArray)
	Int jVL_zValSwordExtrasArray = jArray.objectWithBooleans(VL_zValSwordExtrasArray)
	Int jVL_zValDWSwordDecapArray = jArray.objectWithBooleans(VL_zValDWSwordDecapArray)
	Int jVL_zValSGMaceArray = jArray.objectWithBooleans(VL_zValSGMaceArray)
	Int jVL_zValDWMaceArray = jArray.objectWithBooleans(VL_zValDWMaceArray)
	Int jVL_zValMaceExtrasArray = jArray.objectWithBooleans(VL_zValMaceExtrasArray)
	Int jVL_zValDWMaceDecapArray = jArray.objectWithBooleans(VL_zValDWMaceDecapArray)
	Int jVL_zValSGAxeArray = jArray.objectWithBooleans(VL_zValSGAxeArray)
	Int jVL_zValDWAxeArray = jArray.objectWithBooleans(VL_zValDWAxeArray)
	Int jVL_zValAxeExtrasArray = jArray.objectWithBooleans(VL_zValAxeExtrasArray)
	Int jVL_zValDWAxeDecapArray = jArray.objectWithBooleans(VL_zValDWAxeDecapArray)
	Int jVL_zValGreatswordArray = jArray.objectWithBooleans(VL_zValGreatswordArray)
	Int jVL_zValGreatswordDecapArray = jArray.objectWithBooleans(VL_zValGreatswordDecapArray)
	Int jVL_zValGreatswordDecapBOArray = jArray.objectWithBooleans(VL_zValGreatswordDecapBOArray)
	Int jVL_zValWarhammerArray = jArray.objectWithBooleans(VL_zValWarhammerArray)
	Int jVL_zValWarhammerDecapArray = jArray.objectWithBooleans(VL_zValWarhammerDecapArray)
	Int jVL_zValWarhammerDecapBOArray = jArray.objectWithBooleans(VL_zValWarhammerDecapBOArray)
	Int jVL_zValBattleaxeArray = jArray.objectWithBooleans(VL_zValBattleaxeArray)
	Int jVL_zValBattleaxeDecapArray = jArray.objectWithBooleans(VL_zValBattleaxeDecapArray)
	Int jVL_zValBattleaxeDecapBOArray = jArray.objectWithBooleans(VL_zValBattleaxeDecapBOArray)
	
	jMap.setObj(jSavingBox, "Unarmed", jVL_zValUnarmedArray)
	jMap.setObj(jSavingBox, "Shield", jVL_zValShieldArray)
	jMap.setObj(jSavingBox, "SGDagger", jVL_zValSGDaggerArray)
	jMap.setObj(jSavingBox, "DWDagger", jVL_zValDWDaggerArray)
	jMap.setObj(jSavingBox, "DaggerExtras", jVL_zValDaggerExtrasArray)
	jMap.setObj(jSavingBox, "DWDaggerDecap", jVL_zValDWDaggerDecapArray)
	jMap.setObj(jSavingBox, "SGSword", jVL_zValSGSwordArray)
	jMap.setObj(jSavingBox, "DWSword", jVL_zValDWSwordArray)
	jMap.setObj(jSavingBox, "SwordExtras", jVL_zValSwordExtrasArray)
	jMap.setObj(jSavingBox, "DWSwordDecap", jVL_zValDWSwordDecapArray)
	jMap.setObj(jSavingBox, "SGMace", jVL_zValSGMaceArray)
	jMap.setObj(jSavingBox, "DWMace", jVL_zValDWMaceArray)
	jMap.setObj(jSavingBox, "MaceExtras", jVL_zValMaceExtrasArray)
	jMap.setObj(jSavingBox, "DWMaceDecap", jVL_zValDWMaceDecapArray)
	jMap.setObj(jSavingBox, "SGAxe", jVL_zValSGAxeArray)
	jMap.setObj(jSavingBox, "DWAxe", jVL_zValDWAxeArray)
	jMap.setObj(jSavingBox, "AxeExtras", jVL_zValAxeExtrasArray)
	jMap.setObj(jSavingBox, "DWAxeDecap", jVL_zValDWAxeDecapArray)
	jMap.setObj(jSavingBox, "Greatsword", jVL_zValGreatswordArray)
	jMap.setObj(jSavingBox, "GreatswordDecap", jVL_zValGreatswordDecapArray)
	jMap.setObj(jSavingBox, "GreatswordDecapBO", jVL_zValGreatswordDecapBOArray)
	jMap.setInt(jSavingBox, "GreatswordToggle", VL_zValGreatswordToggle as int)
	jMap.setObj(jSavingBox, "Warhammer", jVL_zValWarhammerArray)
	jMap.setObj(jSavingBox, "WarhammerDecap", jVL_zValWarhammerDecapArray)
	jMap.setObj(jSavingBox, "WarhammerDecapBO", jVL_zValWarhammerDecapBOArray)
	jMap.setInt(jSavingBox, "WarhammerToggle", VL_zValWarhammerToggle as int)
	jMap.setObj(jSavingBox, "Battleaxe", jVL_zValBattleaxeArray)
	jMap.setObj(jSavingBox, "BattleaxeDecap", jVL_zValBattleaxeDecapArray)
	jMap.setObj(jSavingBox, "BattleaxeDecapBO", jVL_zValBattleaxeDecapBOArray)
	jMap.setInt(jSavingBox, "BattleaxeToggle", VL_zValBattleaxeToggle as int)

	;-----------------------------------------------------------------------------

	jValue.writeTofile(jSavingBox, CKMProfilePath + file)
	SavedProfileEdited = 0
	SavedProfileEditedStop = 0
	ForcePageReset()
	ShowMessage("\"" + file + "\" Saved.", false, "$OK")
endFunction

;====================================JCon Loading Custom Killmoves==============================================================

Function LoadCustomizeKillmoveProfile(string file)
	Int jLoadBox = jValue.readFromFile(CKMProfilePath + file)
	Int jWeaponsBox

	;--------------------------------------------------------------------------------

	jWeaponsBox = jMap.getObj(jLoadBox, "Unarmed")
	LoadWeaponToggles(VL_zValUnarmedArray, "Unarmed_Main_", 1, 0, jWeaponsBox, 17, 22)
	jWeaponsBox = jMap.getObj(jLoadBox, "Shield")
	LoadWeaponToggles(VL_zValShieldArray, "Shield_Main_", 2, 0, jWeaponsBox, 22, 30, 26, 29)
	jWeaponsBox = jMap.getObj(jLoadBox, "SGDagger")
	LoadWeaponToggles(VL_zValSGDaggerArray, "SGDagger_Main_", 3, 0, jWeaponsBox, 1, 26)
	jWeaponsBox = jMap.getObj(jLoadBox, "DaggerExtras")
	LoadWeaponToggles(VL_zValDaggerExtrasArray, "Dagger_Extras_", 3, 0, jWeaponsBox, 1, 4)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWDagger")
	LoadWeaponToggles(VL_zValDWDaggerArray, "DWDagger_Main_", 3, 3, jWeaponsBox, 1, 29)
	jWeaponsBox = jMap.getObj(jLoadBox, "DaggerExtras")
	LoadWeaponToggles(VL_zValDaggerExtrasArray, "Dagger_Extras_", 3, 3, jWeaponsBox, 4, 6)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWDaggerDecap")
	LoadWeaponToggles(VL_zValDWDaggerDecapArray, "Dagger_DWDecap_", 3, 3, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "SGSword")
	LoadWeaponToggles(VL_zValSGSwordArray, "SGSword_Main_", 4, 0, jWeaponsBox, 1, 26)
	jWeaponsBox = jMap.getObj(jLoadBox, "SwordExtras")
	LoadWeaponToggles(VL_zValSwordExtrasArray, "Sword_Extras_", 4, 0, jWeaponsBox, 1, 4)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWSword")
	LoadWeaponToggles(VL_zValDWSwordArray, "DWSword_Main_", 4, 4, jWeaponsBox, 1, 29)
	jWeaponsBox = jMap.getObj(jLoadBox, "SwordExtras")
	LoadWeaponToggles(VL_zValSwordExtrasArray, "Sword_Extras_", 4, 4, jWeaponsBox, 4, 6)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWSwordDecap")
	LoadWeaponToggles(VL_zValDWSwordDecapArray, "Sword_DWDecap_", 4, 4, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "SGMace")
	LoadWeaponToggles(VL_zValSGMaceArray, "SGMace_Main_", 5, 0, jWeaponsBox, 1, 26)
	jWeaponsBox = jMap.getObj(jLoadBox, "MaceExtras")
	LoadWeaponToggles(VL_zValMaceExtrasArray, "Mace_Extras_", 5, 0, jWeaponsBox, 1, 4)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWMace")
	LoadWeaponToggles(VL_zValDWMaceArray, "DWMace_Main_", 5, 5, jWeaponsBox, 1, 29)
	jWeaponsBox = jMap.getObj(jLoadBox, "MaceExtras")
	LoadWeaponToggles(VL_zValMaceExtrasArray, "Mace_Extras_", 5, 5, jWeaponsBox, 4, 6)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWMaceDecap")
	LoadWeaponToggles(VL_zValDWMaceDecapArray, "Mace_DWDecap_", 5, 5, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "SGAxe")
	LoadWeaponToggles(VL_zValSGAxeArray, "SGAxe_Main_", 6, 0, jWeaponsBox, 1, 26)
	jWeaponsBox = jMap.getObj(jLoadBox, "AxeExtras")
	LoadWeaponToggles(VL_zValAxeExtrasArray, "Axe_Extras_", 6, 0, jWeaponsBox, 1, 4)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWAxe")
	LoadWeaponToggles(VL_zValDWAxeArray, "DWAxe_Main_", 6, 6, jWeaponsBox, 1, 29)
	jWeaponsBox = jMap.getObj(jLoadBox, "AxeExtras")
	LoadWeaponToggles(VL_zValAxeExtrasArray, "Axe_Extras_", 6, 6, jWeaponsBox, 4, 6)
	jWeaponsBox = jMap.getObj(jLoadBox, "DWAxeDecap")
	LoadWeaponToggles(VL_zValDWAxeDecapArray, "Axe_DWDecap_", 6, 6, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "Greatsword")
	LoadWeaponToggles(VL_zValGreatswordArray, "Greatsword_Main_", 7, 0, jWeaponsBox, 1, 37, 26, 33)
	jWeaponsBox = jMap.getObj(jLoadBox, "GreatswordDecap")
	LoadWeaponToggles(VL_zValGreatswordDecapArray, "Greatsword_2HDecap_", 7, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "GreatswordDecapBO")
	LoadWeaponToggles(VL_zValGreatswordDecapBOArray, "Greatsword_2HDecapBO_", 7, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getInt(jLoadBox, "GreatswordToggle")
	if(VL_zValGreatswordToggle != jWeaponsBox as bool)
		automated = 1
		CustomizeWeaponPageNumber = 7
		DualWieldOptionPageNumber = 0
		GotoState("Greatsword_Toggle_")
		OnSelectST()
		automated = 0
	endif
	jWeaponsBox = jMap.getObj(jLoadBox, "Warhammer")
	LoadWeaponToggles(VL_zValWarhammerArray, "Warhammer_Main_", 8, 0, jWeaponsBox, 1, 33, 26, 30)
	jWeaponsBox = jMap.getObj(jLoadBox, "WarhammerDecap")
	LoadWeaponToggles(VL_zValWarhammerDecapArray, "Warhammer_2HDecap_", 8, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "WarhammerDecapBO")
	LoadWeaponToggles(VL_zValWarhammerDecapBOArray, "Warhammer_2HDecapBO_", 8, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getInt(jLoadBox, "WarhammerToggle")
	if(VL_zValWarhammerToggle != jWeaponsBox as bool)
		automated = 1
		CustomizeWeaponPageNumber = 8
		DualWieldOptionPageNumber = 0
		GotoState("Warhammer_Toggle_")
		OnSelectST()
		automated = 0
	endif
	jWeaponsBox = jMap.getObj(jLoadBox, "Battleaxe")
	LoadWeaponToggles(VL_zValBattleaxeArray, "Battleaxe_Main_", 9, 0, jWeaponsBox, 1, 33, 26, 30)
	jWeaponsBox = jMap.getObj(jLoadBox, "BattleaxeDecap")
	LoadWeaponToggles(VL_zValBattleaxeDecapArray, "Battleaxe_2HDecap_", 9, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getObj(jLoadBox, "BattleaxeDecapBO")
	LoadWeaponToggles(VL_zValBattleaxeDecapBOArray, "Battleaxe_2HDecapBO_", 9, 0, jWeaponsBox, 1, 3)
	jWeaponsBox = jMap.getInt(jLoadBox, "BattleaxeToggle")
	if(VL_zValBattleaxeToggle != jWeaponsBox as bool)
		automated = 1
		CustomizeWeaponPageNumber = 9
		DualWieldOptionPageNumber = 0
		GotoState("Battleaxe_Toggle_")
		OnSelectST()
		automated = 0
	endif

	;---------------------------------------------------------------------------------

	SavedProfileEdited = 0
	SavedProfileEditedStop = 0
	GotoState("CustomizeWeaponMenu")
	OnDefaultST()
	ShowMessage("\"" + file + "\" Loaded.", false, "$OK")

endFunction

;------------------Fixed for VioLens SE 2.22

Function LoadWeaponToggles(Bool[] WeaponArray, string WeaponStateName, int CWPN, int DWOPN, int jWeaponToggle, int StartInt, int StopInt, int FromInt = 0, int ToInt = 0)
	automated = 1
	CustomizeWeaponPageNumber = CWPN
	DualWieldOptionPageNumber = DWOPN
	While(StartInt < StopInt)
		if(StartInt == FromInt)
			StartInt = ToInt
		EndIf
		if(jArray.getInt(jWeaponToggle, StartInt) != WeaponArray[StartInt])
			GotoState(WeaponStateName+StartInt)
			OnSelectST()
		endif
		StartInt += 1
	EndWhile
	automated = 0
endfunction

;====================================JCon Saving Main==============================================================

Function SaveMainProfile(string file)
	Int jSavingBox = jMap.object()

	;--------------------------------------------------------------------------------------------------------------

	jMap.setInt(jSavingBox, "Killmoves", KillmoveListIndex)
	jMap.setInt(jSavingBox, "Advancing Killmoves", MoveAnimationsListIndex)
	jMap.setInt(jSavingBox, "Killmove Chance", KillmoveChance)
	jMap.setInt(jSavingBox, "Dragon Killmove Chance", KillmoveChanceDragon)
	jMap.setInt(jSavingBox, "Camera View", PerspectiveListIndex)
	jMap.setInt(jSavingBox, "Camera Setting", CameraSettingListIndex)
	jMap.setInt(jSavingBox, "Last Enemy Restriction", LastEnemyRestrictionVal as int)
	jMap.setInt(jSavingBox, "Player Killmove Immunity", PlayerImmunityVal as int)
	jMap.setInt(jSavingBox, "Decapitations", DecapitationListIndex)
	jMap.setInt(jSavingBox, "Decapitation Chance", DecapitationChanceInt)
	jMap.setInt(jSavingBox, "Mace Decapitations", MaceDecapitationsVal as int)
	jMap.setInt(jSavingBox, "Ranged Killmoves", RangedKillmoveListIndex)
	jMap.setInt(jSavingBox, "Ranged Selection Mode", RangedModeListIndex)
	jMap.setInt(jSavingBox, "Ranged Killmove Chance", RangedKillmoveChance)
	jMap.setInt(jSavingBox, "Ranged Dragon Killmove Chance", RangedKillmoveChanceDragon)
	jMap.setInt(jSavingBox, "Ranged Camera View", RangedPerspectiveListIndex)
	jMap.setInt(jSavingBox, "Ranged Toggle Key", RangedToggleKey)
	jMap.setInt(jSavingBox, "Ranged Last Enemy Restriction", RangedLastEnemyRestrictionVal as int)
	jMap.setInt(jSavingBox, "Stealth Killmove Chance", KillmoveStealthChance)
	jMap.setInt(jSavingBox, "Stealth Seated Killmoves", KillmoveStealthSittingKillsVal as int)
	jMap.setInt(jSavingBox, "Stealth Unarmed", KillmoveStealthUnarmedListIndex)
	jMap.setInt(jSavingBox, "Stealth Dagger", KillmoveStealthDaggerListIndex)
	jMap.setInt(jSavingBox, "Stealth Sword", KillmoveStealthSwordListIndex)
	jMap.setInt(jSavingBox, "Stealth Mace", KillmoveStealthMaceListIndex)
	jMap.setInt(jSavingBox, "Stealth Axe", KillmoveStealthAxeListIndex)
	jMap.setInt(jSavingBox, "Left Attacks", HandActivationVal as int)
	jMap.setInt(jSavingBox, "Alt Werewolf Attacks", WerewolfAltVal as int)
	jMap.setInt(jSavingBox, "Stagger Pulse", StaggerPulseVal as int)
	jMap.setFlt(jSavingBox, "Stagger Pulse Delay", StaggerPulseDelayTiming)
	jMap.setStr(jSavingBox, "Back Killmoves", MeleeBackKillmovesVal)
	jMap.setStr(jSavingBox, "Creature Killmoves", MeleeCreaturesVal)
	jMap.setStr(jSavingBox, "NPC's Killmoves", MeleeNPCsVal)
	Jmap.setStr(jSavingBox, "Debug", VL_DebugVal)

	;--------------------------------------------------------------------------------------------------------------

	jValue.writeTofile(jSavingBox, MainProfilePath + file)
	SavedProfileEdited2 = 0
	SavedProfileEditedStop2 = 0
	ForcePageReset()
	ShowMessage("\"" + file + "\" Saved.", false, "$OK")
endfunction

;====================================JCon Loading Main==============================================================

Function LoadMainProfile(string file)
	Int jLoadBox = jValue.readFromFile(MainProfilePath + file)
	Int jSettingsBox
	string jSettingsBox2
	float jSettingsBox3
	automated = 1

	SetPage(Pages[0], 0)

	jSettingsBox = jMap.getInt(jLoadBox, "Killmoves")
	while(jSettingsBox != KillmoveListIndex)
		OnOptionSelect(KillmoveOID)
	endwhile
	jSettingsBox = jMap.getInt(jLoadBox, "Advancing Killmoves")
	while(jSettingsBox != MoveAnimationsListIndex)
		OnOptionSelect(MoveAnimationsOID)
	endwhile
	jSettingsBox = jMap.getInt(jLoadBox, "Killmove Chance")
	if(KillmoveChance != jSettingsBox)
		OnOptionSliderAccept(KillmoveChanceOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Dragon Killmove Chance")
	if(KillmoveChanceDragon != jSettingsBox)
		OnOptionSliderAccept(KillmoveChanceDragonOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Camera View")
	if(PerspectiveListIndex != jSettingsBox)
		OnOptionMenuAccept(PerspectiveOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Camera Setting")
	if(CameraSettingListIndex != jSettingsBox)
		GotoState("CameraSettingMenu")
		OnMenuOpenST()
		OnMenuAcceptST(jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Last Enemy Restriction")
	if(LastEnemyRestrictionVal != jSettingsBox)
		OnOptionSelect(LastEnemyRestrictionOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Player Killmove Immunity")
	if(PlayerImmunityVal != jSettingsBox)
		OnOptionSelect(PlayerImmunityOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Decapitations")
	while(jSettingsBox != DecapitationListIndex)
		OnOptionSelect(DecapitationOID)
	endwhile
	jSettingsBox = jMap.getInt(jLoadBox, "Decapitation Chance")
	if(DecapitationChanceInt != jSettingsBox)
		OnOptionSliderAccept(DecapitationChanceOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Mace Decapitations")
	if(MaceDecapitationsVal != jSettingsBox)
		OnOptionSelect(MaceDecapitationsOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Killmoves")
	while(jSettingsBox != RangedKillmoveListIndex)
		OnOptionSelect(RangedKillmoveOID)
	endwhile
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Selection Mode")
	if(RangedModeListIndex != jSettingsBox)
		OnOptionSelect(RangedModeOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Killmove Chance")
	if(RangedKillmoveChance != jSettingsBox)
		OnOptionSliderAccept(RangedKillmoveChanceOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Dragon Killmove Chance")
	if(RangedKillmoveChanceDragon != jSettingsBox)
		OnOptionSliderAccept(RangedKillmoveChanceDragonOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Camera View")
	if(RangedPerspectiveListIndex != jSettingsBox)
		OnOptionSelect(RangedPerspectiveOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Toggle Key")
	if(RangedToggleKey != jSettingsBox)
		OnOptionKeyMapChange(RangedToggleKeyOID, jSettingsBox, "", "")
	endif

	jSettingsBox = jMap.getInt(jLoadBox, "Ranged Last Enemy Restriction")
	if(RangedLastEnemyRestrictionVal != jSettingsBox)
		OnOptionSelect(RangedLastEnemyRestrictionOID)
	endif
	SetPage(Pages[1], 1)

	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Killmove Chance")
	if(KillmoveStealthChance != jSettingsBox)
		OnOptionSliderAccept(KillmoveStealthChanceOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Seated Killmoves")
	if(KillmoveStealthSittingKillsVal != jSettingsBox)
		OnOptionSelect(KillmoveStealthSittingKillsOID)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Unarmed")
	if(KillmoveStealthUnarmedListIndex != jSettingsBox)
		OnOptionMenuAccept(KillmoveStealthUnarmedOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Dagger")
	if(KillmoveStealthDaggerListIndex != jSettingsBox)
		OnOptionMenuAccept(KillmoveStealthDaggerOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Sword")
	if(KillmoveStealthSwordListIndex != jSettingsBox)
		OnOptionMenuAccept(KillmoveStealthSwordOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Mace")
	if(KillmoveStealthMaceListIndex != jSettingsBox)
		OnOptionMenuAccept(KillmoveStealthMaceOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadBox, "Stealth Axe")
	if(KillmoveStealthAxeListIndex != jSettingsBox)
		OnOptionMenuAccept(KillmoveStealthAxeOID, jSettingsBox)
	endif
	jSettingsBox = jMap.getInt(jLoadbox, "Left Attacks")
	if(HandActivationVal != jSettingsBox)
		OnOptionSelect(HandActivationOID)
	endif
	jSettingsBox = jMap.getInt(jLoadbox, "Alt Werewolf Attacks")
	if(WerewolfAltVal != jSettingsBox)
		OnOptionSelect(WerewolfAltOID)
	endif
	jSettingsBox = jMap.getint(jLoadbox, "Stagger Pulse")
	if(StaggerPulseVal != jSettingsBox)
		GotoState("VL_StaggerPulseState")
		OnSelectST()
	endif
	jSettingsBox3 = jMap.getflt(jLoadbox, "Stagger Pulse Delay")
	if(StaggerPulseDelayTiming != jSettingsBox3)
		GotoState("VL_StaggerPulseDelayState")
		OnSliderAcceptST(JSettingsBox3)
	endif

	SetPage(Pages[2], 2)

	jSettingsbox2 = jMap.getstr(jLoadbox, "Back Killmoves")
	while(MeleeBackKillmovesVal != jSettingsBox2)
		GotoState("MeleeBackKillmovesText")
		OnSelectST()
	endwhile
	jSettingsbox2 = jMap.getstr(jLoadbox, "Creature Killmoves")
	while(MeleeCreaturesVal != jSettingsBox2)
		GotoState("MeleeCreaturesText")
		OnSelectST()
	endwhile
	jSettingsbox2 = jMap.getstr(jLoadbox, "NPC's Killmoves")
	while(MeleeNPCsVal != jSettingsBox2)
		GotoState("MeleeNPCsText")
		OnSelectST()
	endwhile
	jSettingsbox2 = jMap.getstr(jLoadbox, "Debug")
	while(VL_DebugVal != jSettingsBox2)
		GotoState("VL_DebugText")
		OnSelectST()
	endwhile

	SetPage(Pages[3], 3)

	automated = 0
	SavedProfileEdited2 = 0
	SavedProfileEditedStop2 = 0
	ForcePageReset()
	ShowMessage("\"" + file + "\" Loaded.", false, "$OK")
endfunction 
