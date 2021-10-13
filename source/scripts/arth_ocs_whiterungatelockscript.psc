Scriptname ARTH_OCS_WhiterunGateLockScript extends ObjectReference  
{Provision for the main gate being unlocked due to alt-start mods where the MQ hasn't kicked on yet.}

ObjectReference Property OCSCityGate Auto
Quest Property MQ102 Auto
Quest Property CWSiege Auto
Quest Property DialogueWhiterunGuardGateStop Auto
CWScript Property CW Auto

Event OnTriggerEnter( ObjectReference ActorRef )
	if( ActorRef == Game.GetPlayer() )
		if( CWSiege.IsRunning() )
			if( CWSiege.GetStage() >= 50 )
				OCSCityGate.Lock(false)
			Elseif( CW.playerAllegiance != 1 )
				OCSCityGate.Lock(true)
				Return
			EndIf
		EndIf
		
		if( MQ102.GetStage() < 5 || DialogueWhiterunGuardGateStop.GetStageDone(10) == 1 )
			OCSCityGate.Lock(false)
		EndIf
	EndIf
EndEvent
