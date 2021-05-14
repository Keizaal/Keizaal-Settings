Scriptname AR_MCMScript extends Ski_configbase

GlobalVariable Property AR_Bards Auto
GlobalVariable Property AR_Firewood Auto
GlobalVariable Property AR_Kegs Auto
GlobalVariable Property AR_Looting Auto
GlobalVariable Property AR_PetDog Auto
GlobalVariable Property AR_pickpocket Auto
GlobalVariable Property AR_PutOutFire Auto
GlobalVariable Property AR_SaluteChildren Auto
GlobalVariable Property AR_SaluteCommanders Auto
GlobalVariable Property AR_SaluteGuards Auto
GlobalVariable Property AR_Shrines Auto
GlobalVariable Property AR_SkyrimSouls Auto
GlobalVariable Property AR_SlowAlchemy Auto
GlobalVariable Property AR_ThirdPerson Auto
GlobalVariable Property AR_Doors Auto
GlobalVariable Property AR_DeadNPC Auto
GlobalVariable Property AR_DeadAnimals Auto
GlobalVariable Property AR_TakeItems Auto
GlobalVariable Property AR_PetHorse Auto
GlobalVariable Property AR_SaluteJarls Auto
GlobalVariable Property AR_HugFollower Auto
GlobalVariable Property AR_HugSpouse Auto
GlobalVariable Property AR_deadfriends Auto
GlobalVariable Property AR_Books Auto
GlobalVariable Property AR_stones Auto
GlobalVariable Property AR_PickUpBooks Auto
Actor Property PlayerRef Auto
Idle Property IdleStop_Loose Auto
GlobalVariable Property AR_dummys Auto
GlobalVariable Property AR_NoFirstPerson Auto
GlobalVariable Property AR_DisplayMessages Auto

int bards_B
int firewood_B
int kegs_B
int Looting_B
int PetDog_B
int pickpocket_B
int putoutfire_B
int salutechildren_B
int salutecommanders_B
int saluteguards_B
int shrines_B
int souls_B
int doors_B
int deadNPCs_B
int deadanimals_B
int deadfriends_B
int takeitems_B
int pethorse_B
int salutejarls_B
int hugspouse_B
int HugFollower_B
int books_B
int unstuckme
int stones_B
int pickupbooks_B
int newdog
int newhorse
int dummy_B
int displaymessages_b

bool bards_Toggle = True
bool firewood_Toggle = False
bool kegs_Toggle = False
bool Looting_Toggle = True
bool PetDog_Toggle = True
bool pickpocket_Toggle = False 
bool putoutfire_Toggle = False
bool salutechildren_Toggle = False
bool salutecommanders_Toggle = True
bool saluteguards_Toggle = True
bool shrines_Toggle = True
bool souls_Toggle = False
bool doors_Toggle = False
bool deadNPCs_Toggle = True
bool deadanimals_Toggle = True 
bool deadfriends_Toggle = True
bool takeitems_Toggle = True
bool pethorse_Toggle = True
bool salutejarls_Toggle = True
bool hugspouse_Toggle = True 
bool HugFollower_Toggle = False
bool books_Toggle = True
bool stones_Toggle = True
bool pickupbooks_Toggle = False
bool dummy_Toggle = False
bool displaymessages_Toggle = False

formlist property ar_moddeddogs auto
formlist property ar_moddedhorses auto

int slowalchemy_M
string slowalchemy
int slowalchemyindex = 2
string[] SlowAlchemyList

int Came_M
string Came
int CameIndex = 1
string[] CameList

Event OnConfigInit()
	Pages = new string[1]
	Pages[0] = "Settings"
EndEvent

event OnInit()
	parent.OnInit()
	SlowAlchemyList = new string[3]
	SlowAlchemyList[0] = "Disabled"
	SlowAlchemyList[1] = "Skill Based"
	SlowAlchemyList[2] = "Always Quick"

	CameList = new string[3]
	CameList[0] = "Always Play Animations"
	CameList[1] = "No 1st  Person (Default)"
	CameList[2] = "Force 3rd Person"
EndEvent

Event OnPageReset(string page)
	If (page == "")
				LoadCustomContent("MCM/MCM_Interactions.dds", 0.0, 0.0)
		Else
		UnloadCustomContent()
	Endif

If (page == "Settings")
SetCursorFillMode(LEFT_TO_RIGHT)

Actor crosshairActor = Game.GetCurrentCrosshairRef() as Actor

If Game.GetFormFromFile(0x02001827, "SimplyKnock.esp") == none
Looting_Toggle = False
endif

AddHeaderOption("General")
AddEmptyOption()
Came_M = AddMenuOption("Camera Mode", CameList[CameIndex])
Souls_B = AddToggleOption("Unpaused Menus Support", Souls_Toggle)
Unstuckme = AddTextOption("Unstuck Me!", "")
AddEmptyOption()
AddEmptyOption()
AddEmptyOption()
AddHeaderOption("Animations")
AddEmptyOption()
SlowAlchemy_M = AddMenuOption("Harvest Ingredients", SlowAlchemyList[SlowAlchemyIndex])
Books_B = AddToggleOption("Read Books/Notes", Books_Toggle)
Shrines_B = AddToggleOption("Pray at Shrines", Shrines_Toggle)
Bards_B = AddToggleOption("Applaud Bards", Bards_Toggle)
SaluteJarls_B = AddToggleOption("Salute Jarls", SaluteJarls_Toggle)
SaluteGuards_B = AddToggleOption("Salute Guards", SaluteGuards_Toggle)
SaluteChildren_B = AddToggleOption("Wave to Children", SaluteChildren_Toggle)
SaluteCommanders_B = AddToggleOption("Salute Generals", SaluteCommanders_Toggle)
Looting_B = AddToggleOption("Simply Knock Support", Looting_Toggle)
;Not a bug, Looting used to be something else, now takes care of Simply Knock.
Doors_B = AddToggleOption("Open Doors", Doors_Toggle)
deadanimals_B = AddToggleOption("Loot Animals", deadanimals_Toggle)
deadNPCs_B = AddToggleOption("Loot NPCs", deadNPCs_Toggle)
pickpocket_B = AddToggleOption("Pickpocket", Pickpocket_Toggle)
takeitems_B = AddToggleOption("Pick Up Items", takeitems_Toggle)
PetHorse_B = AddToggleOption("Pet Horses", PetHorse_Toggle)
PetDog_B = AddToggleOption("Pet Dogs", PetDog_Toggle)
HugFollower_B = AddToggleOption("Interact with Followers", HugFollower_Toggle)
HugSpouse_B = AddToggleOption("Interact with Spouse", HugSpouse_Toggle)
deadfriends_B = AddToggleOption("Mourn Dead Friends", deadfriends_Toggle)
stones_B = AddToggleOption("Touch Standing Stones", stones_Toggle)
AddEmptyOption()
AddEmptyOption()
AddHeaderOption("Special Interactions")
AddEmptyOption()
Firewood_B = AddToggleOption("Interact with Woodpiles", firewood_Toggle)
Kegs_B = AddToggleOption("Interact with Mead Kegs", kegs_Toggle)
PutOutFire_B = AddToggleOption("Put Out Campfires (Beta)", PutOutFire_Toggle)
PickUpBooks_B = AddToggleOption("Interact with Straw Bales", PickUpBooks_Toggle)
Dummy_B = AddToggleOption("Training Dummy (Boxing) ", Dummy_Toggle)
DisplayMessages_B = AddToggleOption("Show Warning If Interaction Fails", DisplayMessages_Toggle)
If crosshairActor && !crosshairActor.isdead() 
					newdog = AddTextOption("Add to Small Pet List", crosshairActor.GetDisplayName())
					newhorse = AddTextOption("Add to Big Pet List", crosshairActor.GetDisplayName())
						Else
					newdog = AddTextOption("Add to Small Pet List", "No Target", OPTION_FLAG_DISABLED)
					newhorse = AddTextOption("Add to Big Pet List", "No Target", OPTION_FLAG_DISABLED)
					Endif
Endif
EndEvent

event OnOptionMenuOpen(int option)
	if (option == SlowAlchemy_M)
		SetMenuDialogOptions(SlowAlchemyList)
		SetMenuDialogStartIndex(SlowAlchemyIndex)
		SetMenuDialogDefaultIndex(1)

elseif (option == Came_M)
		SetMenuDialogOptions(CameList)
		SetMenuDialogStartIndex(cameIndex)
		SetMenuDialogDefaultIndex(1)
	endIf
endEvent

event OnOptionMenuAccept(int option, int index)
	if (option == SlowAlchemy_M)
		SlowAlchemyIndex= index
		SetMenuOptionValue(SlowAlchemy_M, SlowAlchemyList[SlowAlchemyIndex])
	if index == 0
AR_SlowAlchemy.SetValue(0)
	elseif index == 1
AR_SlowAlchemy.SetValue(1)
	elseif index == 2
AR_SlowAlchemy.SetValue(2)
	endif
	endif
	
If  (option == Came_M)
		CameIndex = index
		SetMenuOptionValue(Came_M, CameList[CameIndex])
	if index == 0
AR_ThirdPerson.SetValue(0)
AR_NoFirstPerson.SetValue(0)
	elseif index == 1
AR_ThirdPerson.SetValue(0)
AR_NoFirstPerson.SetValue(1)
	elseif index == 2
AR_ThirdPerson.SetValue(1)
AR_NoFirstPerson.SetValue(0)
	endif
endif
EndEvent

event OnOptionSelect(int option)

Actor crosshairActor = Game.GetCurrentCrosshairRef() as Actor

If option == newdog
ShowMessage(crosshairActor.GetDisplayName()+" added to the list of small pettable animals!.")
ar_moddeddogs.AddForm(crosshairActor.GetActorBase())

elseif option == newhorse
ShowMessage(crosshairActor.GetDisplayName()+" added to the list of tall pettable animals.")
ar_moddedhorses.AddForm(crosshairActor.GetActorBase())

elseif (option == Souls_B) && Souls_Toggle == True
		Souls_Toggle = False
		SetToggleOptionValue(Souls_B, Souls_Toggle)
		AR_SkyrimSouls.SetValue(0)
	elseif (option == Souls_B) && Souls_Toggle == False
		Souls_Toggle = True
		SetToggleOptionValue(Souls_B, Souls_Toggle)
		AR_SkyrimSouls.SetValue(1)

	elseif option == unstuckme
	ShowMessage("Attempting to unstuck player animation. Exit Menu Now. -  If it doesn't work, try pressing the JUMP key.")
	Utility.Wait(1)
Game.disableplayercontrols()
Game.forcethirdperson()
Utility.Wait(0.2)
playerRef.PlayIdle(IdleStop_Loose)
Game.enableplayercontrols()
playerRef.SetDontMove(false)

elseif (option == Books_B) && Books_Toggle == True
		Books_Toggle = False
		SetToggleOptionValue(Books_B, Books_Toggle)
		AR_Books.SetValue(0)
	elseif (option == Books_B) && Books_Toggle == False
		Books_Toggle= True
		SetToggleOptionValue(Books_B, Books_Toggle)
		AR_Books.SetValue(1)

elseif (option == DisplayMessages_B) && DisplayMessages_Toggle == True
		DisplayMessages_Toggle = False
		SetToggleOptionValue(DisplayMessages_B, DisplayMessages_Toggle)
		AR_DisplayMessages.SetValue(0)
	elseif (option == DisplayMessages_B) && DisplayMessages_Toggle == False
		DisplayMessages_Toggle= True
		SetToggleOptionValue(DisplayMessages_B, DisplayMessages_Toggle)
		AR_DisplayMessages.SetValue(1)

elseif (option == Shrines_B) && Shrines_Toggle == True
		Shrines_Toggle = False
		SetToggleOptionValue(Shrines_B, Shrines_Toggle)
		AR_Shrines.SetValue(0)
	elseif (option == Shrines_B) && Shrines_Toggle == False
		Shrines_Toggle = True
		SetToggleOptionValue(Shrines_B, Shrines_Toggle)
		AR_Shrines.SetValue(1)

elseif (option == Bards_B) && Bards_Toggle == True
		Bards_Toggle = False
		SetToggleOptionValue(Bards_B, Bards_Toggle)
		AR_Bards.SetValue(0)
	elseif (option == Bards_B) && Bards_Toggle == False
		Bards_Toggle = True
		SetToggleOptionValue(Bards_B, Bards_Toggle)
		AR_Bards.SetValue(1)

elseif (option == SaluteJarls_B) && SaluteJarls_Toggle == True
		SaluteJarls_Toggle = False
		SetToggleOptionValue(SaluteJarls_B, SaluteJarls_Toggle)
		AR_SaluteJarls.SetValue(0)
	elseif (option == SaluteJarls_B) && SaluteJarls_Toggle == False
		SaluteJarls_Toggle = True
		SetToggleOptionValue(SaluteJarls_B, SaluteJarls_Toggle)
		AR_SaluteJarls.SetValue(1)

elseif (option == SaluteGuards_B) && SaluteGuards_Toggle == True
		SaluteGuards_Toggle = False
		SetToggleOptionValue(SaluteGuards_B, SaluteGuards_Toggle)
		AR_SaluteGuards.SetValue(0)
	elseif (option == SaluteGuards_B) && SaluteGuards_Toggle == False
		SaluteGuards_Toggle = True
		SetToggleOptionValue(SaluteGuards_B, SaluteGuards_Toggle)
		AR_SaluteGuards.SetValue(1)

elseif (option == SaluteChildren_B) && SaluteChildren_Toggle == True
		SaluteChildren_Toggle = False
		SetToggleOptionValue(SaluteChildren_B, SaluteChildren_Toggle)
		AR_SaluteChildren.SetValue(0)
	elseif (option == SaluteChildren_B) && SaluteChildren_Toggle == False
		SaluteChildren_Toggle = True
		SetToggleOptionValue(SaluteChildren_B, SaluteChildren_Toggle)
		AR_SaluteChildren.SetValue(1)

elseif (option == SaluteCommanders_B) && SaluteCommanders_Toggle == True
		SaluteCommanders_Toggle = False
		SetToggleOptionValue(SaluteCommanders_B, SaluteCommanders_Toggle)
		AR_SaluteCommanders.SetValue(0)
	elseif (option == SaluteCommanders_B) && SaluteCommanders_Toggle == False
		SaluteCommanders_Toggle = True
		SetToggleOptionValue(SaluteCommanders_B, SaluteCommanders_Toggle)
		AR_SaluteCommanders.SetValue(1)

elseif (option == Looting_B) && Looting_Toggle == True
		Looting_Toggle = False
		SetToggleOptionValue(Looting_B, Looting_Toggle)
		AR_Looting.SetValue(0)
	elseif (option == Looting_B) && Looting_Toggle == False
		Looting_Toggle = True
		SetToggleOptionValue(Looting_B, Looting_Toggle)
		AR_Looting.SetValue(1)

elseif (option == Doors_B) && Doors_Toggle == True
		Doors_Toggle = False
		SetToggleOptionValue(Doors_B, Doors_Toggle)
		AR_Doors.SetValue(0)
	elseif (option == Doors_B) && Doors_Toggle == False
		Doors_Toggle = True
		SetToggleOptionValue(Doors_B, Doors_Toggle)
		AR_Doors.SetValue(1)

elseif (option == deadanimals_B) && deadanimals_Toggle == True
		deadanimals_Toggle = False
		SetToggleOptionValue(deadanimals_B, deadanimals_Toggle)
		AR_deadanimals.SetValue(0)
	elseif (option == deadanimals_B) && deadanimals_Toggle == False
		deadanimals_Toggle = True
		SetToggleOptionValue(deadanimals_B, deadanimals_Toggle)
		AR_deadanimals.SetValue(1)

elseif (option == deadNPCs_B) && deadNPCs_Toggle == True
		deadNPCs_Toggle = False
		SetToggleOptionValue(deadNPCs_B, deadNPCs_Toggle)
		AR_deadNPC.SetValue(0)
	elseif (option == deadNPCs_B) && deadNPCs_Toggle == False
		deadNPCs_Toggle = True
		SetToggleOptionValue(deadNPCs_B, deadNPCs_Toggle)
		AR_deadNPC.SetValue(1)

elseif (option == pickpocket_B) && pickpocket_Toggle == True
		pickpocket_Toggle = False
		SetToggleOptionValue(pickpocket_B, pickpocket_Toggle)
		AR_pickpocket.SetValue(0)
	elseif (option == pickpocket_B) && pickpocket_Toggle == False
		pickpocket_Toggle = True
		SetToggleOptionValue(pickpocket_B, pickpocket_Toggle)
		AR_pickpocket.SetValue(1)

elseif (option == takeitems_B) && takeitems_Toggle == True
		takeitems_Toggle = False
		SetToggleOptionValue(takeitems_B, takeitems_Toggle)
		AR_takeitems.SetValue(0)
	elseif (option == takeitems_B) && takeitems_Toggle == False
		takeitems_Toggle = True
		SetToggleOptionValue(takeitems_B, takeitems_Toggle)
		AR_takeitems.SetValue(1)

elseif (option == PetHorse_B) && PetHorse_Toggle == True
		PetHorse_Toggle = False
		SetToggleOptionValue(PetHorse_B, PetHorse_Toggle)
		AR_PetHorse.SetValue(0)
	elseif (option == PetHorse_B) && PetHorse_Toggle == False
		PetHorse_Toggle = True
		SetToggleOptionValue(PetHorse_B, PetHorse_Toggle)
		AR_PetHorse.SetValue(1)

elseif (option == PetDog_B) && PetDog_Toggle == True
		PetDog_Toggle = False
		SetToggleOptionValue(PetDog_B, PetDog_Toggle)
		AR_PetDog.SetValue(0)
	elseif (option == PetDog_B) && PetDog_Toggle == False
		PetDog_Toggle = True
		SetToggleOptionValue(PetDog_B, PetDog_Toggle)
		AR_PetDog.SetValue(1)

elseif (option == HugFollower_B) && HugFollower_Toggle == True
		HugFollower_Toggle = False
		SetToggleOptionValue(HugFollower_B, HugFollower_Toggle)
		AR_HugFollower.SetValue(0)
	elseif (option == HugFollower_B) && HugFollower_Toggle == False
		HugFollower_Toggle = True
		SetToggleOptionValue(HugFollower_B, HugFollower_Toggle)
		AR_HugFollower.SetValue(1)

elseif (option == HugSpouse_B) && HugSpouse_Toggle == True
		HugSpouse_Toggle = False
		SetToggleOptionValue(HugSpouse_B, HugSpouse_Toggle)
		AR_HugSpouse.SetValue(0)
	elseif (option == HugSpouse_B) && HugSpouse_Toggle == False
		HugSpouse_Toggle = True
		SetToggleOptionValue(HugSpouse_B, HugSpouse_Toggle)
		AR_HugSpouse.SetValue(1)

elseif (option == deadfriends_B) && deadfriends_Toggle == True
		deadfriends_Toggle = False
		SetToggleOptionValue(deadfriends_B, deadfriends_Toggle)
		AR_deadfriends.SetValue(0)
	elseif (option == deadfriends_B) && deadfriends_Toggle == False
		deadfriends_Toggle = True
		SetToggleOptionValue(deadfriends_B, deadfriends_Toggle)
		AR_deadfriends.SetValue(1)

elseif (option == stones_B) && stones_Toggle == True
		stones_Toggle = False
		SetToggleOptionValue(stones_B, stones_Toggle)
		AR_stones.SetValue(0)
	elseif (option == stones_B) && stones_Toggle == False
		stones_Toggle = True
		SetToggleOptionValue(stones_B, stones_Toggle)
		AR_stones.SetValue(1)

elseif (option == Firewood_B) && Firewood_Toggle == True
		Firewood_Toggle = False
		SetToggleOptionValue(Firewood_B, Firewood_Toggle)
		AR_Firewood.SetValue(0)
	elseif (option == Firewood_B) && Firewood_Toggle == False
		Firewood_Toggle = True
		SetToggleOptionValue(Firewood_B, Firewood_Toggle)
		AR_Firewood.SetValue(1)

elseif (option == Kegs_B) && Kegs_Toggle == True
		Kegs_Toggle = False
		SetToggleOptionValue(Kegs_B, Kegs_Toggle)
		AR_Kegs.SetValue(0)
	elseif (option == Kegs_B) && Kegs_Toggle == False
		Kegs_Toggle = True
		SetToggleOptionValue(Kegs_B, Kegs_Toggle)
		AR_Kegs.SetValue(1)

elseif (option == PutOutFire_B) && PutOutFire_Toggle == True
		PutOutFire_Toggle = False
		SetToggleOptionValue(PutOutFire_B, PutOutFire_Toggle)
		AR_PutOutFire.SetValue(0)
	elseif (option == PutOutFire_B) && PutOutFire_Toggle == False
		PutOutFire_Toggle = True
		SetToggleOptionValue(PutOutFire_B, PutOutFire_Toggle)
		AR_PutOutFire.SetValue(1)

elseif (option == PickUpBooks_B) && PickUpBooks_Toggle == True
		PickUpBooks_Toggle = False
		SetToggleOptionValue(PickUpBooks_B, PickUpBooks_Toggle)
		AR_PickUpBooks.SetValue(0)
	elseif (option == PickUpBooks_B) && PickUpBooks_Toggle == False
		PickUpBooks_Toggle = True
		SetToggleOptionValue(PickUpBooks_B, PickUpBooks_Toggle)
		AR_PickUpBooks.SetValue(1)

elseif (option == Dummy_B) && Dummy_Toggle == True
		Dummy_Toggle = False
		SetToggleOptionValue(Dummy_B, Dummy_Toggle)
		AR_Dummys.SetValue(0)
	elseif (option == Dummy_B) && Dummy_Toggle == False
		Dummy_Toggle = True
		SetToggleOptionValue(Dummy_B, Dummy_Toggle)
		AR_Dummys.SetValue(1)
endif

endevent

event OnOptionHighlight(int option) 
if (option == SlowAlchemy_M) 
SetInfoText("This affects the harvesting of ingredients. Default is Skill-Based, which means the animation\nwill be slow in the beginning and get faster as you improve your alchemy skills.") 
elseif (option == Came_M) 
SetInfoText("How to deal with 1st person animations. If using Immersive First Person View, choose All Animations.\nOtherwise, decide between NO first person animations or FORCED third person camera")
elseif (option == Bards_B)
SetInfoText("Detects when a bard is playing music and\nyou will applaud their performance upon activation. Default: On.") 
elseif (option == Firewood_B)
SetInfoText("Approach a woodpile and hold E (or activation key) for longer than one second.\nThis will have you pick up wood. Default: On.") 
elseif (option == Kegs_B)
SetInfoText("Approach an Ale Keg and hold E (or activation key) for longer than one second.\nThis will have you pick up some ale from the keg. Default: On.") 
elseif (option == Looting_B)
SetInfoText("Auto detects if you have Simply Knock installed.\nThis option ensures compatibility and adds animations to the interactions of that mod. Default: Auto")
elseif (option == PetDog_B)
SetInfoText("Pet those dogs!\nI recommend facing them face to face so the animations look the best. Default: On")
elseif (option == PickPocket_B)
SetInfoText("Pickpocket animation when sneaking with no weapons in your hands.\n Default: On")
elseif (option == putoutfire_B)
SetInfoText("Holding E (or activation key) for longer than one second will put out campfires. This is useful for realism purposes\nif you want to get rid of a permanent vanilla fire and use your own campfire instead. Default: Off")
elseif (option == salutechildren_B)
SetInfoText("Look down and playfully wave hello to children.\nThey will respond with 1 out of 4 animations. Some kids are excluded. Default: On")
elseif (option == salutecommanders_B)
SetInfoText("If you have joined the Imperials or Stormcloaks,\nyou will salute your superior Generals when interacting with them. Default: On")
elseif (option == saluteguards_B)
SetInfoText("If you are a thane of their hold,\nmost guards will greet you respectfully. Default: On")
elseif (option == shrines_B)
SetInfoText("Pray at shrines when you activate them.\nDefault: On")
elseif (option == Souls_B)
SetInfoText("If you are using Skyrim Souls, tick\nthis box for extra compatibility. Default: Off")
elseif (option == doors_B)
SetInfoText("Opening doors and containers will play an animation.\nThis also includes lockpicking. Default: On")
elseif (option == deadNPCs_B)
SetInfoText("You will kneel when looting NPCs.\nDefault: On")
elseif (option == deadanimals_B)
SetInfoText("You will harvest the ingredients of dead animals when interacting with them.\nAutomatically detects Hunterborn to ensure compatibility. Default: On")
elseif (option == deadfriends_B)
SetInfoText("Mourn fallen allies. Requires having the 'Loot NPCs' option enabled.\nYou will pay your respects for a couple of seconds. Then you can loot them as usual. Default: On")
elseif (option == takeitems_B)
SetInfoText("Interacting with objects in the world.\nwill play a short pick-up animation. Default: On")
elseif (option == pethorse_B)
SetInfoText("You will pet your horse before riding it. You can skip the animation by double tapping\nthe activation key or having your weapon equipped. Default: On")
elseif (option == salutejarls_B)
SetInfoText("Show respect to the jarls by briefly saluting them.\nDefault: On")
elseif (option == hugspouse_B)
SetInfoText("Show some affection to your spouse.\nDefault: On")
elseif (option == hugfollower_B)
SetInfoText("Followers will greet you respectfully. There's also a small chance\nof giving them a hug. It does not work in combat. Default: On")
elseif (option == books_B)
SetInfoText("Activating a book or note from your inventory will play a reading animation.\nOn by default, but it will only work if using Skyrim Souls (Unpaused Menus).")
elseif (option == unstuckme)
SetInfoText("If for some reason your character is stuck performing\nan animation, this should unstuck them.")
elseif (option == stones_B)
SetInfoText("This will make you touch the standing stones\nbriefly before activating them. Default: On")
elseif (option == pickupbooks_B)
SetInfoText("Interact with straw bales, allowing you to get straw out ot them.\nRequires holding E near of them. Default: On")
elseif (option == newdog)
SetInfoText("Some modded small animals like cats or custom dogs might not be recognized automatically.\nYou can make them pettable by using this option.")
elseif (option == newhorse)
SetInfoText("Some modded tall animals like custom horses might not be recognized automatically.\nYou can make them pettable by using this option.")
elseif (option == dummy_b)
SetInfoText("Holding E (or activation key) for longer than one second near a training dummy\nwill play a boxing animation and give you a small buff. Default: On")
elseif (option == DisplayMessages_b)
SetInfoText("When you attempt to perform a special interaction\nbut there's no supported items nearby, a warning message will be displayed. Default: On")
endif
endevent