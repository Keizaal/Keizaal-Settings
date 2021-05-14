scriptname DVA_ConfigMenu extends SKI_ConfigBase

; ---- Constants ----------------------------------------------------------------------------------
; ---- Logging Constants ----
int Property Debug_Info = 1 AutoReadOnly
int Property Debug_Flow = 2 AutoReadOnly
int Property Debug_Update = 5 AutoReadOnly
int Property Debug_Warn = 8 AutoReadOnly
int Property Debug_Error = 10 AutoReadOnly

; ---- Page Name Constants ----
string Property GeneralPage = "General" AutoReadOnly

; ---- Import Properties -------------------------------------------------------------------------
DVA1_Controller Property CS Auto
{Reference to the controller script (DVA1_Controller)}
GlobalVariable Property DVA_DebugLevel Auto

; SCRIPT VERSION ----------------------------------------------------------------------------------

int function GetVersion()
	return 2 ; Default version
endFunction


; PRIVATE VARIABLES -------------------------------------------------------------------------------

; OIDs (T:Text B:Toggle S:Slider M:Menu, C:Color, K:Key)
int _isEnabled_T

int _stages_H
int _useEyes_B
int _useComplexion_B
;int _useFaceMorph_B
;int _permaMorph_S

int _options_H
int _useCombatEyes_B
int _useNightVision_B
int _useBloodyFeeding_B

int _Troubleshoot_H
int _CompatButton_T

; State
; ---- Config State ----
bool IsEnabled = true

bool UseEyes = true
bool UseComplexion = true
;bool UseFaceMorph = true
;float PermaMorph = 0.0

bool UseCombatEyeGlow = true
bool UseNightVision = false
bool UseBloodyFeeding = false
; ---- Logging State ----
bool isLogOpen = false
; ...

; Internal

; ...


; INITIALIZATION ----------------------------------------------------------------------------------
Event OnGameReload()
	parent.OnGameReload()
	
	isLogOpen = false
endEvent

Event OnConfigInit()
	ModName = "DVA"
	Pages = new string[1]
	Pages[0] = GeneralPage

	SetTitleText("Dynamic Vampire Appearance")
endEvent

Event OnConfigOpen()
	; load in all the settings
	IsEnabled = CS.IsEnabled
	
	UseEyes = CS.ControlEyes
	UseComplexion = CS.ControlComplexion
	;UseFaceMorph = CS.ControlFaceMorph
	;PermaMorph = CS.PermaMorphValue

	UseCombatEyeGlow = CS.ControlCombatEyeGlow
	UseNightVision = CS.ControlNightVision
	UseBloodyFeeding = CS.ControlBloodyMouthFX
	
	Trace(Debug_Update, "Menu opening, Loaded current settings!")
endEvent

Event OnConfigClose()
	; commit settings such that enable/disabling the mod will be able to properly override
	bool oldIsEnabled = CS.IsEnabled

	Trace(Debug_Update, "Menu closing!")
	if( !oldIsEnabled && IsEnabled ) ; if going from disabled to enabled, do that first
		Trace(Debug_Update, "User enabled the mod!")
		CS.IsEnabled = IsEnabled
	endif
	
	if( (oldIsEnabled && !IsEnabled) || IsEnabled ) ; if going from enabled to disabled, commit first, then disable othewise only commit is we're enabled
		; all options
		CS.ControlEyes = UseEyes
		CS.ControlComplexion = UseComplexion
		;CS.ControlFaceMorph = UseFaceMorph
		;CS.PermaMorphValue = PermaMorph
		
		CS.ControlCombatEyeGlow = UseCombatEyeGlow
		CS.ControlNightVision = UseNightVision
		CS.ControlBloodyMouthFX = UseBloodyFeeding
	
		Trace(Debug_Update, "Commited new setting!")
	endif
	
	if( oldIsEnabled && !IsEnabled ) ; if going from enabled to disabled, do that last
		Trace(Debug_Update, "User disabled the mod!")
		CS.IsEnabled = IsEnabled
	endif
endEvent

; @implements SKI_QuestBase
event OnVersionUpdate(int a_version)
	{Called when a version update of this script has been detected}

	; ...
endEvent


; EVENTS ------------------------------------------------------------------------------------------

; @implements SKI_ConfigBase
event OnPageReset(string a_page)
	{Called when a new page is selected, including the initial empty page}

	if( a_page == "" )
		LoadCustomContent("DVA_SplashScreen.dds", 120, -33)
	else
		UnloadCustomContent()
	endif
	
	if( a_page == GeneralPage )
		SetCursorFillMode(TOP_TO_BOTTOM)
		; -- General
		AddHeaderOption("General")
		; ---- Enable/Disable
		_isEnabled_T = AddTextOption("DVA is", BoolToString(IsEnabled))
		
		int flags = OPTION_FLAG_NONE
		if( !IsEnabled )
			flags = OPTION_FLAG_DISABLED
		endif
		
		SetCursorPosition(6)
		; -- Stages
		_stages_H = AddHeaderOption("Stages", flags)
		; ---- Eyes On/Off
		_useEyes_B = AddToggleOption("Eyes", UseEyes, flags)
		; ---- Textures On/Off
		_useComplexion_B = AddToggleOption("Textures", UseComplexion, flags)
		; ---- Morph On/Off
		;_useFaceMorph_B = AddToggleOption("Morph", UseFaceMorph, flags)
		; ------ Perma Morph Slider
		; int permaMorphFlags = OPTION_FLAG_NONE
		; if( !IsEnabled || UseFaceMorph )
			; permaMorphFlags = OPTION_FLAG_DISABLED
		; endif
		; _permaMorph_S = AddSliderOption("Manual Morph (Auto-Morph off)", PermaMorph, "{0}%", flags)
		
		SetCursorPosition(14)
		; -- Troubleshooting
		_Troubleshoot_H = AddHeaderOption("Troubleshooting", flags)
		; ---- Reset Compatibility
		_CompatButton_T = AddTextOption("Reset Compatibility", "", flags)
		
		
		SetCursorPosition(22)
		; Please disable me before uninstall
		AddTextOption("Please disable this mod before uninstalling.", "", OPTION_FLAG_DISABLED)
		
		SetcursorPosition(1)
		; -- Options
		_options_H = AddHeaderOption("Options", flags)
		; ---- Combat Eyes on/off
		_useCombatEyes_B = AddToggleOption("Combat eyes", UseCombatEyeGlow, flags)
		; ---- Night Vision Eyes on/off
		_useNightVision_B = AddToggleOption("Night vision", UseNightVision, flags)
		; ---- Bloody mouth on/off
		_useBloodyFeeding_B = AddToggleOption("Bloody mouth", UseBloodyFeeding, flags)
		
		return
	endif
	; ...
endEvent

; @implements SKI_ConfigBase
event OnOptionHighlight(int a_option)
	{Called when highlighting an option}

	if( CurrentPage == GeneralPage )
		GeneralPage_Hightlight(a_option)
		return
	endif
	
	; ...
endEvent

; @implements SKI_ConfigBase
event OnOptionSelect(int option)
	{Called when a non-interactive option has been selected}

	if( option == _isEnabled_T )
		IsEnabled_Click()
	elseif( option == _useEyes_B )
		UseEyes_Click()
	elseif( option == _useComplexion_B )
		UseComplexion_Click()
	; elseif( option == _useFaceMorph_B )
		; UseFaceMorph_Click()
	elseif( option == _useCombatEyes_B )
		UseCombatEyes_Click()
	elseif( option == _useNightVision_B )
		UseNightVision_Click()
	elseif( option == _useBloodyFeeding_B )
		UseBloodyFeeding_Click()
	elseif( option == _CompatButton_T )
		CompatButton_Click()
	else
	
	endif
	; ...
endEvent

; @implements SKI_ConfigBase
event OnOptionDefault(int a_option)
	{Called when resetting an option to its default value}

	; ...
endEvent

; @implements SKI_ConfigBase
event OnOptionSliderOpen(int a_option)
	{Called when a slider option has been selected}
	
	; if( a_option == _permaMorph_S )
		; PermaMorph_Open()
	; endif
	; ...
endEvent

; @implements SKI_ConfigBase
event OnOptionSliderAccept(int a_option, float a_value)
	{Called when a new slider value has been accepted}
	
	; if( a_option == _permaMorph_S )
		; PermaMorph_Accept(a_value)
	; endif
	; ...
endEvent

; ---- Option "Click" Handlers --------------------------------------------------------------------
Function IsEnabled_Click()
	IsEnabled = !IsEnabled
	
	SetTextOptionValue(_isEnabled_T, BoolToString(IsEnabled))
	
	int flags = OPTION_FLAG_NONE
	if( !IsEnabled )
		flags = OPTION_FLAG_DISABLED
	endif

	; update UI
	SetOptionFlags(_stages_H, flags)
	SetOptionFlags(_useEyes_B, flags)
	SetOptionFlags(_useComplexion_B, flags)
	;SetOptionFlags(_useFaceMorph_B, flags)
	;SetOptionFlags(_permaMorph_S, flags)

	SetOptionFlags(_options_H, flags)
	SetOptionFlags(_useCombatEyes_B, flags)
	SetOptionFlags(_useNightVision_B, flags)
	SetOptionFlags(_useBloodyFeeding_B, flags)
		
endFunction

Function UseEyes_Click()
	UseEyes = !UseEyes
	SetToggleOptionValue(_useEyes_B, UseEyes)
endFunction

Function UseComplexion_Click()
	UseComplexion = !UseComplexion
	SetToggleOptionValue(_useComplexion_B, UseComplexion)
endFunction

; Function UseFaceMorph_Click()
	; UseFaceMorph = !UseFaceMorph
	; SetToggleOptionValue(_useFaceMorph_B, UseFaceMorph)
	
	; int flags = OPTION_FLAG_NONE
	; if( UseFaceMorph ) ; only disable when using auto-face morph
		; flags = OPTION_FLAG_DISABLED
	; endif
	
	; SetOptionFlags(_permaMorph_S, flags)
; endFunction

Function UseCombatEyes_Click()
	UseCombatEyeGlow = !UseCombatEyeGlow
	SetToggleOptionValue(_useCombatEyes_B, UseCombatEyeGlow)
endFunction

Function UseNightVision_Click()
	UseNightVision = !UseNightVision
	SetToggleOptionValue(_useNightVision_B, UseNightVision)
endFunction

Function UseBloodyFeeding_Click()
	UseBloodyFeeding = !UseBloodyFeeding
	SetToggleOptionValue(_useBloodyFeeding_B, UseBloodyFeeding)
endFunction

Function CompatButton_Click()
	CS.RunCompatConfig(true)
	Debug.MessageBox("Compatibility data has been reset/refreshed!")
endFunction

; ---- Slider Handling Pairs (Open/Accept) --------------------------------------------------------
; Function PermaMorph_Open()
	; SetSliderDialogStartValue(PermaMorph)
	; SetSliderDialogDefaultValue(50)
	; SetSliderDialogRange(0, 100)
	; SetSliderDialogInterval(10)
; endFunction
; Function PermaMorph_Accept(float newValue)
	; PermaMorph = newValue
	; SetSliderOptionValue(_permaMorph_S, newValue, "{0}%")
; endFunction

; ---- Option Hightlight handlers -----------------------------------------------------------------
Function GeneralPage_Hightlight(int option)
	if( option == _useEyes_B )
		SetInfoText("If enabled, eyes will look more bloodshot as you progress through the stages. If disabled, your eyes will be set back to your vanilla eyes.")

	elseif( option == _useComplexion_B )
		SetInfoText("If enabled, your face will look more decayed as you progress through the stages. If disabled, your face will remain normal.")
	
	; elseif( option == _useFaceMorph_B )
		; SetInfoText("If enabled, your cheeks will become more sunken in as you progress through the stages. If disabled, you will be able to select your permanent cheek state.")

	; elseif( option == _permaMorph_S )
		; SetInfoText("Select your permanent cheek state. 0% = not sunken in. 100% = fully sunken in.")

	elseif( option == _useCombatEyes_B )
		SetInfoText("If enabled, your eyes will turn glowing red when in combat (even if eye stages are disabled).")

	elseif( option == _useNightVision_B )
		SetInfoText("If enabled, your eyes will turn glowing yellow when you are using your night vision power (even if eye stages are disabled).")

	elseif( option == _useBloodyFeeding_B )
		SetInfoText("If enabled, your mouth will appear bloody for a short time after you feed.")

	elseif( option == _CompatButton_T )
		SetInfoText("If you're having trouble with DVA and Night Vision abilities in Better Vampires or Predator Vision")
	
	else
		SetInfoText("")
	endif
endFunction

; ---- Logging ------------------------------------------------------------------------------------
Function Trace(int level, string msg)
	if( level < DVA_DebugLevel.Value as int )
		return
	endif
	
	if( !isLogOpen )
		isLogOpen = Debug.OpenUserLog("DVA_ConfigTrace")
	endif
	
	int severity = 0
	if( level == Debug_Warn )
		severity = 1
	elseif( level == Debug_Error )
		severity = 2
	endif
	
	bool result = Debug.TraceUser("DVA_ConfigTrace", "DVA ("+level+")>> " + msg, severity)
	if( !result )
		if( isLogOpen )
			isLogOpen = false
			Trace(level, msg) ; loop in to fix the un-opened log file
		else
			; fall back to default logging
			Debug.Trace("DVA ("+level+")>> " + msg)
		endif
	endif
	
endFunction

; Global Function ---------------------------------------------------------------------------------
string Function BoolToString(bool value) global
	if( value )
		return "ENABLED"
	else
		return "DISABLED"
	endif
endFunction
"scripts\source\dva1_controller.ps