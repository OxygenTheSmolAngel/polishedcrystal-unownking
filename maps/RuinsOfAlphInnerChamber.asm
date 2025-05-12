RuinsOfAlphInnerChamber_MapScriptHeader:
	def_scene_scripts
	scene_script RuinsofAlphInnerChamberTrigger0
	scene_script RuinsofAlphInnerChamberTrigger1

	def_callbacks

	def_warp_events
	warp_event 10, 15, RUINS_OF_ALPH_ENTRANCE_CHAMBER, 3
	warp_event  3, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 3
	warp_event  4, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 4
	warp_event 15,  5, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 16,  5, RUINS_OF_ALPH_KABUTO_CHAMBER, 4
	warp_event  3, 23, RUINS_OF_ALPH_OMANYTE_CHAMBER, 3
	warp_event  4, 23, RUINS_OF_ALPH_OMANYTE_CHAMBER, 4
	warp_event 15, 26, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3
	warp_event 16, 26, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 4

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  5, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  8,  3, BGEVENT_READ,     RuinsOfAlphUnownKing
	bg_event 11,  5, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 14,  5, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 17,  5, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  2, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  8, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 11, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 14, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 17, 10, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  2, 15, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5, 15, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 14, 15, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 17, 15, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  2, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  8, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 11, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 14, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 17, 20, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  2, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  8, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 11, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 14, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event 17, 26, BGEVENT_JUMPTEXT, RuinsofAlphStatueText

	def_object_events
	object_event  3,  9, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphInnerChamberFisherText, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event 14, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphInnerChamberTeacherText, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event 11, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphInnerChamberGrampsText, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event  7, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphInnerChamberScientistText, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS

RuinsofAlphInnerChamberTrigger1:
	sdefer RuinsOfAlphInnerChamberStrangePresenceScript
RuinsofAlphInnerChamberTrigger0:
	end

RuinsOfAlphInnerChamberStrangePresenceScript:
	showtext RuinsOfAlphStrangePresenceText
	setscene $0
	setevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
	end

RuinsOfAlphUnownKing:
	faceplayer
	checkevent EVENT_CAUGHT_UNKI
	iftruefwd .UnkiLiberated
	checkevent EVENT_UNKI_UNSEALED
	iffalsefwd .ChamberStatue
	opentext
	writetext RuinsOfAlphInnerChamberStatueAltText
	waitbutton
	closetext
	checkevent EVENT_BEAT_UNKI
	iftruefwd .EndUnownKing
	opentext
	writetext RuinsOfAlphInnerChamberStatueInteractText
	yesorno
	iffalsefwd .InteractionRefused
	special Special_FadeOutMusic
	pause 35
	playsound SFX_STRENGTH
	earthquake 30
	waitsfx
	pause 15
	writetext UnkiStatueText
	waitbutton
	playsound SFX_STRENGTH
	earthquake 50
	waitsfx
	pause 30
	earthquake 5
	writetext UnkiEncounterText
	cry UNOWN_KING
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	loadwildmon UNOWN_KING, 85
	startbattle
	reloadmapafterbattle
	special RestartMapMusic
	special CheckBattleCaughtResult
	iffalsefwd .UnkiNotCaught
	cry UNOWN_KING
	opentext
	writetext UnkiCaughtText
	waitbutton
	closetext
	setevent EVENT_CAUGHT_UNKI
	end

.ChamberStatue:
	jumptext RuinsOfAlphInnerChamberStatueText
.InteractionRefused:
	faceplayer
	opentext
	writetext InteractionRefusedText
	waitbutton
	closetext
	end
.EndUnownKing:
	faceplayer
	opentext
	writetext UnkiStatueEndText
	waitbutton
	closetext
	end
.UnkiLiberated
	opentext
	writetext UnkiLiberatedText
	waitbutton
	closetext
	end
.UnkiNotCaught:
	setevent EVENT_BEAT_UNKI
	opentext
	writetext UnkiStatueEndText
	waitbutton
	closetext
	pause 20
	end

RuinsOfAlphInnerChamberStatueAltText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."

	para "Something about it"
	line "seems... Strange."
	done

RuinsOfAlphInnerChamberStatueInteractText:
	text "Interact with the"
	line "statue?"
	done

InteractionRefusedText:
	text "You refused to"
	line "interact with the"
	cont "statue."
	done


RuinsOfAlphStrangePresenceText:
	text "There is a strange"
	line "presence here…"
	done

RuinsOfAlphInnerChamberFisherText:
	text "This is a big"
	line "room, but there's"
	cont "nothing here."
	done

RuinsOfAlphInnerChamberTeacherText:
	text "This place has a"
	line "mystical quality"
	cont "to it."

	para "It feels sort of"
	line "ethereal even."
	done

RuinsOfAlphInnerChamberGrampsText:
	text "The ruins have not"
	line "been robbed or"
	cont "tampered with."

	para "Something here"
	line "must make people"
	cont "want to preserve"
	cont "it."
	done

RuinsOfAlphInnerChamberScientistText:
	text "The patterns on"
	line "the wall appear to"
	cont "be words!"

	para "And those sliding"
	line "stone panels seem"

	para "to be signals of"
	line "some kind."

	para "I think they make"
	line "#mon appear,"

	para "but it's not clear"
	line "yet…"
	done

UnkiStatueText:
	text "......!!"

	para "The statue seems"
	line "to be shaking"
	cont "violently!"
	done

UnkiEncounterText:
	text "Kiiiiiiiingg!!!"
	done

UnkiStatueEndText:
	text "And with that..."
	line "The Unown King"
	cont "rests again..."
	done

RuinsOfAlphInnerChamberStatueText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

UnkiCaughtText:
	text "The Unown King"
	line "seems to admire"
	cont "your skills."

	para "Therefore, he will"
	line "join you and your"
	cont "party."

	para "The Unown King has"
	line "finally achieved"
	cont "liberation."
	done

UnkiLiberatedText:
	text "The Unown King"
	line "has been"
	cont "liberated."
	done
