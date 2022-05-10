Scriptname Keyhole_Exit extends ReferenceAlias  

import SimplyKnockSKSE ;Not needed currently, but might use it to detect doors connected to cells
import ui
import consoleutil ;Optional, it offers some extra functionalities

Actor Property PlayerREF Auto
ObjectReference TheDoor
ObjectReference Chair1
ObjectReference Chair2
furniture property keyhole_chair auto
furniture property keyhole_chair_2 auto
GlobalVariable Property keyhole_mode Auto
GlobalVariable Property SittingAngleLimit Auto
spell property SpyThroughKeyholespell auto
Int ActivateKey
idle property IdleLockPick Auto
ImageSpaceModifier Property FadeToBlackHoldImod  Auto  
ImageSpaceModifier Property FadeToBlackImod  Auto 
ImageSpaceModifier Property FadeToBlackBackImod Auto 
Bool DoorWasLocked
Spell property Invisibility auto
Message Property Spy_PressE Auto
SoundCategory Property VFX Auto
SoundCategory Property VOCGeneral Auto

idle property IdleStop_Loose auto
Keyhole Property ThisQuestHello  Auto  

Globalvariable property keyhole_changefov auto
Globalvariable property keyhole_defaultfov auto
Globalvariable property keyhole_tempfov auto
Globalvariable property keyhole_movement auto
Globalvariable property keyhole_DisableSaving auto
Globalvariable property keyhole_NoForcedThirdPerson auto
Globalvariable property keyhole_sneakmethod auto
Globalvariable property SomewhaLimited_keyhole auto
Formlist property Keyhole_DoorExceptions auto

DialogueFollowerScript Property DialogueFollower Auto


;;;;;;;;; ABILITY HAS TRIGGERED ;;;;;;;;;;


Event OnSpellCast(Form akSpell)

If akspell == SpyThroughKeyholespell && keyhole_mode.GetValue() == 0 && PlayerRef.IsWeaponDrawn()
	debug.notification("You must sheathe your weapons first")

elseif akspell == SpyThroughKeyholespell && keyhole_mode.GetValue() == 0 && PlayerRef.IsInCombat()
	debug.notification("You cannot do this during combat")

elseif akspell == SpyThroughKeyholespell && keyhole_mode.GetValue() > 0
	debug.notification("You must rest your eyes for a couple of seconds...")

elseif akspell == SpyThroughKeyholespell && keyhole_mode.GetValue() == 0
	takingapeek()

endif
endevent


;;;;;;;;;;;;;;;;; Now The Same, But NO ABILITY edition ;;;;;;;;;;;;;;;;;


Event OnInIt()
RegisterSneak()
SpyThroughKeyholespell.RemoveSpell()
EndEvent

Function RegisterSneak()

If keyhole_sneakmethod.GetValue() == 1
	RegisterForControl("Sneak") 
else
	UnregisterForControl("Sneak") 
endif
Endfunction





;;;;;;; Continuation of NO ABILITY edition ;;;;;;;;;;;


Event OnControlUp(string control, float HoldTime)
	
If control == "Sneak" && HoldTime > 1 && keyhole_mode.GetValue() == 0 && PlayerRef.IsWeaponDrawn()
	debug.notification("You must sheathe your weapons first")

elseif control == "Sneak" && HoldTime > 1 && keyhole_mode.GetValue() > 0
	debug.notification("You must rest your eyes for a couple of seconds...")

elseif control == "Sneak" && HoldTime > 1 && keyhole_mode.GetValue() > 0 && PlayerRef.IsInCombat()
	debug.notification("You cannot do this during combat")

elseif control == "Sneak" && HoldTime > 1 && keyhole_mode.GetValue() == 0
	takingapeek()
endif
endevent



;;;;;;;;;;;;;;;;;;;; The actual fun stuff ;;;;;;;;;;;;;;;;;;;;;;;;;;

Function TakingAPeek()
	TheDoor = Game.GetCurrentCrosshairRef()    
;;;;;ObjectReference linked_door = GetLinkedDoor(TheDoor)

If TheDoor.GetBaseObject() as Door && TheDoor.GetOpenState() == 3 && Keyhole_DoorExceptions.HasForm(TheDoor.GetBaseObject()) == false
;;;;;&& linked_door

DoorWasLocked = False

If TheDoor.IsLocked()
	DoorWasLocked = True
	TheDoor.Lock(false)
Endif

If Game.GetCameraState() == 0
	;nothing
else
	PlayerRef.PlayIdle(IdleLockPick)
	utility.wait(0.8)
endif

FadeToBlackImod.Apply()
utility.wait(1.1)
FadeToBlackImod.PopTo(FadeToBlackHoldImod)
Debug.SendanimationEvent(PlayerRef, "IdleForceDefaultState")
FollowerStaph()
playerRef.PlayIdle(IdleStop_Loose)
PlayerRef.AddSpell(Invisibility, false)
PlayerREF.SetAlpha(0.0)
PlayerREF.SetGhost(True)
Game.ForceFirstPerson()
Chair1 = PlayerRef.PlaceAtMe(keyhole_chair)
RegisterForControl("Activate")

If Keyhole_DisableSaving.GetValue() == 1
	; nothing, player disabled the mod messing with this
else
	Game.SetInChargen(true, true, false)
endif

keyhole_mode.SetValue(1)
RegisterForKey(ActivateKey)

If keyhole_movement.GetValue() == 1
	Game.DisablePlayerControls(True, True, True, False, True, False, False)
else
	Game.DisablePlayerControls(True, True, True, True, True, False, False)
endif

If SomewhaLimited_keyhole.GetValue() == 1
	SittingAngleLimit.SetValue(0.15)
endif

VFX.Mute()
TheDoor.Activate(PlayerRef)
Utility.Wait(1)
							VOCGeneral.SetVolume(0.25)

 if (TheDoor.GetParentCell() == PlayerRef.GetParentCell())
;Player might have a longer activate animation or door might be in the middle of opening, give it an extra second 
Utility.Wait(1.4)
endif


If keyhole_changefov.GetValue() == 1
	ExecuteCommand("fov " + keyhole_tempfov.GetValue())
endif

ExecuteCommand("tdetect")

Chair2 = PlayerRef.PlaceAtMe(keyhole_chair_2)
PlayerRef.Moveto(chair2)
Utility.Wait(0.1)
	Keyhole.OpenKeyholeMenu()

FadeToBlackHoldImod.Remove()

	VFX.UnMute()
	Utility.Wait(1.5)

Spy_PressE.ShowAsHelpMessage("Activate", 5, 1,1)

elseif TheDoor.GetBaseObject() as Door 
debug.notification("You cannot peek through this door")

else
debug.notification("You need to face a door first")
endif

EndFunction


;;;;;;;;;;;;;;; EVENT TO EXIT THE KEYHOLE MODE ;;;;;;;;;;;;;;;;;;;;;;;
;Also, hi! Curious person reading source. I'm a complete scripting noob with 0 actual experience. Please forgive any foolish stuff ;

Event OnControlDown(string control)

If control == "Activate" && keyhole_mode.GetValue() == 1

FadeToBlackHoldImod.Apply()
SittingAngleLimit.SetValue(0)
		PlayerRef.Moveto(chair1)
		chair2.Disable()
		Utility.Wait(0.3)
		PlayerRef.Moveto(chair1)
		keyhole_mode.SetValue(2)
		Keyhole.CloseKeyholeMenu() 

If DoorWasLocked == True
TheDoor.Lock()
endif

If DoorWasLocked == False
TheDoor.Lock()
TheDoor.Lock(false)
endif

If TheDoor.GetLockLevel() == 0
TheDoor.Lock()
TheDoor.lock(false)
	;we do this to make sure the door is closed in case it was not a loading cell door
endif


If keyhole_NoForcedThirdPerson.GetValue() == 0
		Game.ForceThirdPerson()
endif
			VOCGeneral.SetFrequency(1)
			VFX.SetFrequency(1)
			VOCGeneral.SetVolume(1)
		Utility.Wait(0.2)

If keyhole_changefov.GetValue() == 1
ExecuteCommand("fov " + keyhole_defaultfov.GetValue())
endif

		ExecuteCommand("tdetect")
		Game.EnablePlayerControls(True, True, True, True, True, True, True)
		PlayerRef.RemoveSpell(Invisibility)
		PlayerREF.SetAlpha(1.0)
		PlayerREF.SetGhost(False)

If Keyhole_DisableSaving.GetValue() == 1
	; nothing, player disabled the mod messing with this
else
	Game.SetInChargen(false, false, false)
endif

UnregisterForControl("Activate")
FadeToBlackHoldImod.PopTo(FadeToBlackBackImod)
;FadeToBlackBackImod.Apply()
FollowerFollow()

Utility.Wait(1)
FadeToBlackBackImod.Remove()
FadeToBlackImod.Remove()
FadeToBlackHoldImod.Remove()


Utility.Wait(3.5)
;VFX.UnMute()
chair1.Disable()
Utility.Wait(3.5)
keyhole_mode.SetValue(0)
endif
EndEvent


Function FollowerStaph()

Quest f = Game.getFormFromFile(0x0000434F, "nwsFollowerFramework.esp") as Quest
if(f)
(f as nwsfollowercontrollerscript).DoTaskAll(3)

else
	DialogueFollower.FollowerWait()
	DialogueFollower.AnimalWait()
endIf

endfunction


Function FollowerFollow()

Quest f = Game.getFormFromFile(0x0000434F, "nwsFollowerFramework.esp") as Quest
if(f)
(f as nwsfollowercontrollerscript).DoTaskAll(4)

else
	DialogueFollower.FollowerFollow()
	DialogueFollower.AnimalFollow()
endif
endfunction
