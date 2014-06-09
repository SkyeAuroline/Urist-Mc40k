 /*										*****New space to put all UristMcStation Clothing (except stuff for on your head, that's head.dm)*****

Please keep it tidy, by which I mean put comments describing the item before the entry. Icons go to 'icons/urist/items/clothes/clothes.dmi'
All UMcS clothing will now go here, to prevent unecessary .dm's. I mean, how much clothes do we need anyways... -Glloyd

Update 23/03/2014 - removed all the ports of BS12 clothing. So, naval stuff, swimsuits, detective gear, cap's jacket, HoP whimsy and storage webbing stuff.*/

//this is important to save me time with all these dresses

/obj/item/clothing/under/urist
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	icon = 'icons/urist/items/clothes/clothes.dmi'

//SciRIG. It's hip, it's happening and it protects against space and some other shit. You fuckers said you wanted more EVA.
//It's totally not just a reskin of the medrig...

/obj/item/clothing/suit/space/rig/science
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "Scirig"
	name = "science hardsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Built with lightweight materials for easier movement. Looks like it could hold up against an explosion."
	item_state = "Scirig"
	slowdown = 2
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank,/obj/item/weapon/storage/box/monkeycubes,/obj/item/device/aicard,/obj/item/device/paicard,/obj/item/weapon/hand_tele)
	armor = list(melee = 10, bullet = 5, laser = 10,energy = 5, bomb = 60, bio = 100, rad = 30)

//Emergency Suit. It's really shitty, but better than a firesuit when it comes to space or biological hazards. Will need a special "emergency locker" for this.
//One of the lockers will go in each of the emergency storages, and have one of these fuckers in them. Prepare to feel the suck as it slowly kills you.

/obj/item/clothing/suit/emergencysuit
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "emergency suit"
	desc = "A bulky suit meant to be used in emergencies only. It doesn't look too safe... Wait, is that blood?" //PREPARE FOR YOUR DOOM
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "emergency"
	item_state = "emergency"
	w_class = 4
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/emergency_oxygen)
	slowdown = 1.5
	armor = list(melee = 5, bullet = 0, laser = 5,energy = 0, bomb = 5, bio = 50, rad = 25)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	species_restricted = list("exclude","Vox")

//Armoured biosuit for sec

/obj/item/clothing/suit/bio_suit/asec
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "armoured bio suit"
	desc = "An armoured suit that protects against biological contamination and minor damage."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "Armouredbiosuit"
	item_state = "bio_suit"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	slowdown = 3.0 //disgusting slowdown to compensate.
	allowed = list(/obj/item/weapon/tank/emergency_oxygen,/obj/item/weapon/pen,/obj/item/device/flashlight/pen)
	armor = list(melee = 20, bullet = 10, laser = 25, energy = 10, bomb = 25, bio = 100, rad = 20)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

//Welder apron done by ShoesandHats and added by Cozarctan. Moved from welder. Welder machete goes into the new uristweapons.dm

/obj/item/clothing/suit/welderapron
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "welder's apron"
	desc = "A leather work apron."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "welderapron"
	item_state = "welderapron"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

//Naval Space suit. Or something like that. I don't fucking know.

/obj/item/clothing/suit/space/naval
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "naval space suit"
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "navyspace"
	desc = "A high quality space suit used by the Nanotrasen Navy. Smells like oppression."
	w_class = 3
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/melee/energy/sword,/obj/item/weapon/handcuffs,/obj/item/weapon/tank/emergency_oxygen,/obj/item/device/flashlight)
	slowdown = 1
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)

//Naval Commando Suit

/obj/item/clothing/suit/space/rig/commando
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "naval commando suit"
	desc = "A heavily armored suit that protects against moderate damage. Worn by the Nanotrasen Naval Commandos. It reeks of oppression."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "commando"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	allowed = list(/obj/item/weapon/gun,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/tank/emergency_oxygen,/obj/item/weapon/melee/energy/sword)
	slowdown = 1
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 30, rad = 30)

//Meido outfit, Pretty much Japanese for Maid outfit. I will most likely be doing more costumes. -Nien

/obj/item/clothing/suit/meido
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "meido costume"
	desc = "A black maid costume."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "meido"
	item_state = "meido"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

//psychologist clothing -- God I got lazy here.

/obj/item/clothing/under/rank/psychologist
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "psychologist's suit"
	desc = "A slightly weathered suit worn by the station's psychologist. Are those Cheesy Honker stains?" //you fukken slob
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "psychologist"
	item_state = "blacksuit"
	item_color = "psychologist"
	permeability_coefficient = 0.50
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0)

/obj/item/clothing/suit/psychologist
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "tweed jacket"
	desc = "A tweed jacket worn by the station's psychologist. It looks a tad worn at the elbows."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "tweedjacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	allowed = list(/obj/item/device/analyzer,/obj/item/stack/medical,/obj/item/weapon/dnainjector,/obj/item/weapon/reagent_containers/dropper,/obj/item/weapon/reagent_containers/syringe,/obj/item/weapon/reagent_containers/hypospray,/obj/item/device/healthanalyzer,/obj/item/device/flashlight/pen,/obj/item/weapon/reagent_containers/glass/bottle,/obj/item/weapon/reagent_containers/glass/beaker,/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/storage/pill_bottle,/obj/item/weapon/paper)

	verb/toggle()
		set name = "Toggle Coat Buttons"
		set category = "Object"
		set src in usr

		if(!usr.canmove || usr.stat || usr.restrained())
			return 0

		switch(icon_state)
			if("tweedjacket_open")
				src.icon_state = "tweedjacket"
				usr << "You button up the jacket."
			if("tweedjacket")
				src.icon_state = "tweedjacket_open"
				usr << "You unbutton the jacket."
			else
				usr << "You attempt to button-up the velcro on your [src], before promptly realising how retarded you are."
				return
		usr.update_inv_wear_suit()	//so our overlays update

//Terran Confederacy Trader outfit

/obj/item/clothing/under/terran
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	icon = 'icons/urist/items/clothes/clothes.dmi'

/obj/item/clothing/suit/terran
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	icon = 'icons/urist/items/clothes/clothes.dmi'

/obj/item/clothing/under/terran/trader
	name = "Terran Confederacy trader's outfit"
	desc = "An opulent outfit worn by a Terran Confederacy trader"
	icon_state = "TCToutfit"
	item_state = "TCToutfit"
	item_color = "TCToutfit"

/obj/item/clothing/suit/terran/trader
	name = "Terran Confederacy trader's cloak"
	desc = "An opulent cloak worn by a Terran Confederacy trader"
	icon_state = "TCTRobes"
	item_state = "TCTRobes"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

//Alternate space wizard outfits. I hope to see more than just the necromancer's robes here one day.

/obj/item/clothing/suit/wizrobe/urist
	urist_only = 1
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_override = 'icons/uristmob/clothes.dmi'

/obj/item/clothing/suit/wizrobe/urist/necro
	name = "necromancer's robes"
	desc = "A set of charcoal-black robes worn only by those practicing the darkest of arts. A variety of bones hang from it."
	icon_state = "necro"
	item_state = "necro"

//NT Outfits

/obj/item/clothing/under/urist/nanotrasen/blue
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "blue nanotrasen outfit"
	desc = "A standard blue Nanotrasen outfit with a white NT on back."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "NTsuit"
	item_state = "NTsuit"
	item_color = "NTsuit"


/obj/item/clothing/under/urist/nanotrasen/white
	urist_only = 1
	icon_override = 'icons/uristmob/clothes.dmi'
	name = "white nanotrasen outfit"
	desc = "A standard white Nanotrasen outfit with a blue NT on back."
	icon = 'icons/urist/items/clothes/clothes.dmi'
	icon_state = "NTWsuit"
	item_state = "NTWsuit"
	item_color = "NTWsuit"

//SO MANY FUCKING DRESSES

/obj/item/clothing/under/urist/dress/teal
	name = "teal dress"
	desc = "A pretty teal dress, for pretty ladies."
	icon_state = "tealdress"
	item_color = "tealdress"
	item_state = "tealdress"

/obj/item/clothing/under/urist/dress/yellow
	name = "floral yellow dress"
	desc = "A pretty yellow dress with some cute designs on it."
	icon_state = "yellowdress"
	item_color = "yellowdress"
	item_state = "yellowdress"

/obj/item/clothing/under/urist/dress/white1
	name = "short white dress"
	desc = "A pretty white dress. Short and sweet!"
	icon_state = "wd1"
	item_color = "wd1"
	item_state = "wd1"

/obj/item/clothing/under/urist/dress/white2
	name = "long white dress"
	desc = "A beautiful long white dress. Looks more formal than most dresses."
	icon_state = "wd2"
	item_color = "wd2"
	item_state = "wd2"

/obj/item/clothing/under/urist/dress/princess
	name = "princess dress"
	desc = "A cute dress fit for a princess!"
	icon_state = "princess"
	item_color = "princess"
	item_state = "princess"

//nurse joy

obj/item/clothing/under/urist/rank/nurse
	name = "white nurse outfit"
	desc = "A pretty nurse outfit. It brings a sense of joy to you."
	icon_state = "nursejoy"
	item_color = "nursejoy"
	item_state = "nursejoy"

//alt alt RD

obj/item/clothing/under/urist/rank/rdgreen
	name = "green RD's outfit"
	desc = "A cute green outfit sometimes worn by the Research Director."
	icon_state = "emaRD"
	item_color = "emaRD"
	item_state = "emaRD"

//trolololo

/obj/item/clothing/under/sakura_hokkaido_kimono
	name = "Kimono"
	desc = "A pale-pink, nearly white, kimono with a red and gold obi. There is a embroidered design of cherry blossom flowers covering the kimono."
	icon = 'icons/obj/custom_items.dmi'
	icon_state = "sakura_hokkaido_kimono"
	item_state = "sakura_hokkaido_kimono"
	item_color = "sakura_hokkaido_kimono"