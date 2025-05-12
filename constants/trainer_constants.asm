DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVsAndPersonality (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are indexes for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF KRIS EQU __trainer_class__
	trainerclass CARRIE ; 1

DEF CHRIS EQU __trainer_class__
	trainerclass CAL ; 2

DEF CRYS EQU __trainer_class__
	trainerclass JACKY ; 3

	trainerclass FALKNER ; 4

	trainerclass BUGSY ; 5

	trainerclass WHITNEY ; 6

	trainerclass MORTY ; 7

	trainerclass CHUCK ; 8

	trainerclass JASMINE ; 9

	trainerclass PRYCE ; a

	trainerclass CLAIR ; b

	trainerclass WILL ; c

	trainerclass KOGA ; d

	trainerclass BRUNO ; e

	trainerclass KAREN ; f

	trainerclass CHAMPION ; 10
	const LANCE
	const LANCE2

	trainerclass BROCK ; 11

	trainerclass MISTY ; 12

	trainerclass LT_SURGE ; 13

	trainerclass ERIKA ; 14

	trainerclass JANINE ; 15

	trainerclass SABRINA ; 16

	trainerclass BLAINE ; 17

	trainerclass BLUE ; 18

	trainerclass RED ; 19

	trainerclass OXYGEN ; 1a


	trainerclass LEAF ; 1b

	trainerclass RIVAL0 ; 1c

	trainerclass RIVAL1 ; 1d
	const RIVAL1_4
	const RIVAL1_5
	const RIVAL1_6
	const RIVAL1_7
	const RIVAL1_8
	const RIVAL1_9
	const RIVAL1_10
	const RIVAL1_11
	const RIVAL1_12
	const RIVAL1_13
	const RIVAL1_14
	const RIVAL1_15

	trainerclass RIVAL2 ; 1e

	trainerclass LYRA1 ; 1f
	const LYRA1_1
	const LYRA1_2
	const LYRA1_3
	const LYRA1_4
	const LYRA1_5
	const LYRA1_6
	const LYRA1_7
	const LYRA1_8
	const LYRA1_9
	const LYRA1_10
	const LYRA1_11
	const LYRA1_12

	trainerclass LYRA2 ; 20

	trainerclass YOUNGSTER ; 21
	const JOEY1
	const JOEY2
	const JOEY3
	const JOEY4
	const JOEY5
	const MIKEY
	const ALBERT
	const GORDON
	const WARREN
	const JIMMY
	const OWEN
	const JASON
	const YOUNGSTER_JOSH
	const REGIS
	const ALFIE
	const OLIVER
	const CHAZ
	const TYLER
	const ARDEN

	trainerclass BUG_CATCHER ; 22
	const WADE1
	const WADE2
	const WADE3
	const WADE4
	const WADE5
	const ARNIE1
	const ARNIE2
	const ARNIE3
	const ARNIE4
	const ARNIE5
	const DON
	const BENNY
	const AL
	const JOSH
	const KEN
	const WAYNE
	const OSCAR

	trainerclass CAMPER ; 23
	const TODD1
	const TODD2
	const TODD3
	const TODD4
	const TODD5
	const ROLAND
	const IVAN
	const BARRY
	const LLOYD
	const DEAN
	const SID
	const TED
	const JOHN
	const JERRY
	const SPENCER
	const QUENTIN
	const GRANT
	const CRAIG
	const FELIX
	const TANNER
	const CLARK
	const PEDRO
	const AMOS

	trainerclass PICNICKER ; 24
	const LIZ1
	const LIZ2
	const LIZ3
	const LIZ4
	const LIZ5
	const GINA1
	const GINA2
	const GINA3
	const GINA4
	const GINA5
	const ERIN1
	const ERIN2
	const ERIN3
	const TIFFANY1
	const TIFFANY2
	const TIFFANY3
	const TIFFANY4
	const KIM
	const CINDY
	const HOPE
	const SHARON
	const DEBRA
	const HEIDI
	const EDNA
	const TANYA
	const LILY
	const PIPER
	const GINGER
	const CHEYENNE
	const ADRIAN
	const ZANE

	trainerclass TWINS ; 25
	const AMYANDMAY1
	const AMYANDMAY2
	const ANNANDANNE1
	const ANNANDANNE2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2
	const DAYANDDANI1
	const DAYANDDANI2
	const KAYANDTIA1
	const KAYANDTIA2

	trainerclass FISHER ; 26
	const RALPH1
	const RALPH2
	const RALPH3
	const RALPH4
	const RALPH5
	const TULLY1
	const TULLY2
	const TULLY3
	const TULLY4
	const WILTON1
	const WILTON2
	const WILTON3
	const JUSTIN
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const ANDRE
	const RAYMOND
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const SCOTT
	const PATON
	const KILEY
	const FRANCIS
	const LEROY
	const KYLER
	const MURPHY
	const LIAM
	const GIDEON
	const HALL
	const DALLAS

	trainerclass BIRD_KEEPER ; 27
	const VANCE1
	const VANCE2
	const VANCE3
	const JOSE1
	const JOSE2
	const JOSE3
	const ROD
	const ABE
	const THEO
	const TOBY
	const DENIS
	const HANK
	const ROY
	const BORIS
	const BOB
	const PETER
	const PERRY
	const BRET
	const MICK
	const POWELL
	const BIRD_KEEPER_TONY
	const JULIAN
	const BIRD_KEEPER_JUSTIN
	const GAIL
	const BIRD_KEEPER_JOSH
	const BERT
	const ERNIE
	const KINSLEY
	const EASTON
	const BRYAN
	const TRENT

	trainerclass HIKER ; 28
	const ANTHONY1
	const ANTHONY2
	const ANTHONY3
	const ANTHONY4
	const ANTHONY5
	const PARRY1
	const PARRY2
	const PARRY3
	const RUSSELL
	const PHILLIP
	const LEONARD
	const BENJAMIN
	const ERIK
	const MICHAEL
	const TIMOTHY
	const BAILEY
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const EDWIN
	const DEVIN
	const SEAMUS
	const TONY
	const MARCOS
	const GERARD
	const DENT
	const BRUCE
	const DWIGHT
	const LESTER
	const GRADY
	const STEVE
	const DERRICK
	const FLOYD

	trainerclass GRUNTM ; 29

	trainerclass GRUNTF ; 2a

	trainerclass POKEFANM ; 2b
	const DEREK1
	const DEREK2
	const DEREK3
	const WILLIAM
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const ALEX
	const REX
	const ALLAN

	trainerclass POKEFANF ; 2c
	const BEVERLY1
	const BEVERLY2
	const BEVERLY3
	const RUTH
	const GEORGIA
	const JAIME
	const BOONE
	const ELEANOR

	trainerclass OFFICERM ; 2d
	const KEITH
	const DIRK

	trainerclass OFFICERF ; 2e
	const JAMIE
	const MARA
	const JENNY

	trainerclass NURSE ; 2f
	const BEATRICE
	const KEIKO
	const JOY
	const WINIFRED

	trainerclass POKEMANIAC ; 30
	const BRENT1
	const BRENT2
	const BRENT3
	const BRENT4
	const LARRY
	const ANDREW
	const CALVIN
	const SHANE
	const BEN
	const RON
	const ETHAN
	const ISSAC
	const DONALD
	const ZACH
	const ENZO
	const MILLER
	const AIDAN

	trainerclass COSPLAYER ; 31
	const CLARA
	const CHLOE
	const BROOKE
	const KUROKO
	const LYRIC

	trainerclass SUPER_NERD ; 32
	const STAN
	const ERIC
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const HUGH
	const MARKUS
	const CARY
	const WALDO
	const MERLE
	const LUIS
	const JOVAN
	const MIGUEL
	const RORY
	const GREGG
	const FOOTE
	const DAVE
	const KOUTA

	trainerclass LASS ; 33
	const DANA1
	const DANA2
	const DANA3
	const DANA4
	const DANA5
	const CATHY
	const AMANDA
	const KRISE
	const CONNIE
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const ELLEN
	const IRIS
	const MIRIAM
	const ABIGAIL
	const LAYLA
	const ROSE
	const MEADOW
	const JENNIFER
	const GINA
	const ALICE
	const DUPLICA
	const MAVIS

	trainerclass BEAUTY ; 34
	const VICTORIA
	const SAMANTHA
	const CASSIE
	const JULIA
	const VALENCIA
	const OLIVIA
	const CALLIE
	const CASSANDRA
	const CHARLOTTE
	const BRIDGET
	const VERONICA
	const BEAUTY_NICOLE
	const RACHAEL
	const IOANA

	trainerclass BUG_MANIAC ; 35
	const LOU
	const ROB
	const ED
	const DOUG
	const DANE
	const DION
	const STACEY
	const ELLIS
	const ABNER
	const KENTA
	const ROBBY
	const PIERRE
	const DYLAN
	const KAI

	trainerclass RUIN_MANIAC ; 36
	const JONES
	const LELAND
	const PETRY
	const GLYN
	const SMILTE

	trainerclass FIREBREATHER ; 37
	const OTIS
	const DICK
	const NED
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE
	const JAY
	const OLEG
	const TALA

	trainerclass JUGGLER ; 38
	const IRWIN1
;	const IRWIN2
;	const IRWIN3
;	const IRWIN4
	const FRITZ
	const HORTON

	trainerclass SCHOOLBOY ; 39
	const JACK1
	const JACK2
	const JACK3
	const JACK4
	const JACK5
	const ALAN1
	const ALAN2
	const ALAN3
	const ALAN4
	const ALAN5
	const CHAD1
	const CHAD2
	const CHAD3
	const CHAD4
	const CHAD5
	const KIPP
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const NATE
	const RICKY
	const SHERMAN
	const SCHOOLBOY_CONNOR
	const TORIN
	const TRAVIS

	trainerclass SCHOOLGIRL ; 3a
	const MOLLY
	const ELIZA
	const FAITH
	const SARAH
	const ISABEL
	const IMOGEN

	trainerclass PSYCHIC_T ; 3b
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY
	const LEON
	const URI
	const VIRGIL

	trainerclass HEX_MANIAC ; 3c
	const TAMARA
	const ASHLEY
	const AMY
	const LUNA
	const NATALIE
	const VIVIAN
	const ESTHER
	const MATILDA
	const BETHANY
	const CORYN

	trainerclass SAGE ; 3d
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL

	trainerclass MEDIUM ; 3e
	const MARTHA
	const GRACE
	const REBECCA
	const DORIS

	trainerclass KIMONO_GIRL_1 ; 3f
	const NAOKO

	trainerclass KIMONO_GIRL_2 ; 40
	const SAYO

	trainerclass KIMONO_GIRL_3 ; 41
	const ZUKI

	trainerclass KIMONO_GIRL_4 ; 42
	const KUNI

	trainerclass KIMONO_GIRL_5 ; 43
	const MIKI

	trainerclass KIMONO_GIRL_6 ; 44
	const MAKO

	trainerclass KIMONO_GIRL_7 ; 45
	const AMI

	trainerclass KIMONO_GIRL_8 ; 46
	const MINA

	trainerclass ELDER ; 47
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass SR_AND_JR ; 48
	const JOANDCATH1
	const JOANDCATH2
	const IVYANDAMY1
	const IVYANDAMY2
	const BEAANDMAY1
	const BEAANDMAY2

	trainerclass COUPLE ; 49
	const GAILANDELI1
	const GAILANDELI2
	const DUFFANDEDA1
	const DUFFANDEDA2
	const FOXANDRAE1
	const FOXANDRAE2
	const MOEANDLULU1
	const MOEANDLULU2
	const VICANDTARA1
	const VICANDTARA2
	const TIMANDSUE1
	const TIMANDSUE2
	const JOEANDJO1
	const JOEANDJO2

	trainerclass GENTLEMAN ; 4a
	const PRESTON
	const EDWARD
	const GREGORY
	const ALFRED
	const MILTON
	const CAMUS
	const GEOFFREY

	trainerclass RICH_BOY ; 4b
	const WINSTON
	const GERALD
	const IRVING
	const TOBIN

	trainerclass LADY ; 4c
	const JESSICA

	trainerclass BREEDER ; 4d
	const JULIE
	const THERESA
	const JODY
	const CARLENE
	const SOPHIE
	const BRENDA

	trainerclass BAKER ; 4e
	const CHELSIE
	const SHARYN
	const MARGARET
	const OLGA

	trainerclass COWGIRL ; 4f
	const ANNIE
	const APRIL
	const DANIELA

	trainerclass SAILOR ; 50
	const HUEY1
	const HUEY2
	const HUEY3
	const HUEY4
	const EUGENE
	const TERRELL
	const KENT
	const ERNEST
	const JEFF
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const PARKER
	const EDDIE
	const HARVEY

	trainerclass SWIMMERM ; 51
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL
	const JEROME
	const TUCKER
	const RICK
	const CAMERON
	const SETH
	const JAMES
	const WALTER
	const LEWIS
	const MICHEL
	const LUCAS
	const FRANK
	const NADAR
	const CONRAD
	const ROMEO
	const MALCOLM
	const ARMAND
	const THOMAS
	const SWIMMERM_LUIS
	const ELMO
	const DUANE
	const ESTEBAN
	const EZRA
	const ASHE

	trainerclass SWIMMERF ; 52
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const MARY
	const DAWN
	const NICOLE
	const LORI
	const NIKKI
	const DIANA
	const BRIANA
	const VIOLA
	const KATIE
	const JILL
	const LISA
	const ALISON
	const STEPHANIE
	const CAROLINE
	const NATALIA
	const BARBARA
	const SALLY
	const TARA
	const MAYU
	const LEONA
	const CHELAN
	const KENDRA
	const WODA
	const RACHEL
	const MARINA

	trainerclass BURGLAR ; 53
	const DUNCAN
	const ORSON
	const COREY
	const PETE
	const LOUIS

	trainerclass PI ; 54
	const LOOKER

	trainerclass SCIENTIST ; 55
	const LOWELL
	const DENNETT
	const LINDEN
	const OSKAR
	const BRAYDON
	const CARL
	const DEXTER
	const JOSEPH
	const NIGEL
	const PIOTR
	const SANDERS

	trainerclass ROCKET_SCIENTIST ; 56
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICH

	trainerclass BOARDER ; 57
	const RONALD
	const BRAD
	const DOUGLAS
	const SHAUN
	const BRYCE
	const STEFAN
	const MAX

	trainerclass SKIER ; 58
	const ROXANNE
	const CLARISSA
	const CADY
	const MARIA
	const BECKY

	trainerclass BLACKBELT_T ; 59
	const KENJI1
;	const KENJI2
;	const KENJI3
	const YOSHI
	const LAO
	const NOB
	const LUNG
	const WAI
	const INIGO
	const MANFORD
	const ANDER
	const TAKEO
	const RYLAN

	trainerclass BATTLE_GIRL ; 5a
	const SUBARU
	const DIANE
	const KAGAMI
	const NOZOMI
	const RONDA
	const PADMA
	const EMY
	const SASHA

	trainerclass DRAGON_TAMER ; 5b
	const PAUL
	const DARIN
	const ADAM
	const ERICK
	const KAZU
	const AEGON

	trainerclass ENGINEER ; 5c
	const SMITH
	const BERNIE
	const CAMDEN
	const LANG
	const HUGO
	const HOWARD
	const GRADEN
	const GUSTAV
	const NICOLAS

	trainerclass TEACHER_F ; 5d
	const COLETTE
	const HILLARY
	const SHIRLEY
	const KATHRYN
	const CLARICE
	const SERENA

	trainerclass TEACHER_M ; 5e
	const NOLAN

	trainerclass GUITARISTM ; 5f
	const CLYDE
	const VINCENT
	const ROGER
	const EZEKIEL
	const BIFF
	const GEDDY

	trainerclass GUITARISTF ; 60
	const JANET
	const MORGAN
	const RITSUKO
	const WANDA
	const JACLYN

	trainerclass BIKER ; 61
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const REILLY
	const JOEL
	const GLENN
	const DALE
	const JACOB
	const AIDEN
	const DAN
	const TEDDY
	const TYRONE

	trainerclass ROUGHNECK ; 62
	const BRIAN
	const THERON
	const MARKEY

	trainerclass TAMER ; 63
	const BRETT
	const VINCE
	const OSWALD
	const JORDAN

	trainerclass ARTIST ; 64
	const REINA
	const ALINA
	const MARLENE
	const RIN

	trainerclass AROMA_LADY ; 65
	const DAHLIA
	const BRYONY
	const HEATHER
	const HOLLY
	const PEONY

	trainerclass SOLDIER ; 66

	trainerclass WAITER ; 67
	const DAVID

	trainerclass WAITRESS ; 68

	trainerclass SIGHTSEERM ; 69
	const JASKA
	const BLAISE
	const GARETH
	const CHESTER
	const HARI

	trainerclass SIGHTSEERF ; 6a
	const ROSIE
	const KAMILA
	const NOELLE
	const PILAR
	const LENIE

	trainerclass SIGHTSEERS ; 6b
	const LIANDSU1
	const LIANDSU2
	const CYANDVI1
	const CYANDVI2

	trainerclass COOLTRAINERM ; 6c
	const GAVEN1
	const GAVEN2
	const GAVEN3
	const NICK
	const AARON
	const CODY
	const MIKE
	const RYAN
	const BLAKE
	const ANDY
	const SEAN
	const KEVIN
	const ALLEN
	const FRENCH
	const HENRI
	const CONNOR
	const KIERAN
	const FINCH
	const PETRIE
	const COOLTRAINERM_COREY
	const COOLTRAINERM_RAYMOND
	const FERGUS
	const DARIC

	trainerclass COOLTRAINERF ; 6d
	const BETH1
	const BETH2
	const BETH3
	const REENA1
	const REENA2
	const REENA3
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const MEGAN
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const SALMA
	const BONITA
	const SERA
	const NEESHA
	const CHIARA

	trainerclass ACE_DUO ; 6e
	const ELANANDIDA1
	const ELANANDIDA2
	const ARAANDBELA1
	const ARAANDBELA2
	const THOMANDKAE1
	const THOMANDKAE2
	const ZACANDJEN1
	const ZACANDJEN2
	const JAKEANDBRI1
	const JAKEANDBRI2
	const DANANDCARA1
	const DANANDCARA2

	trainerclass VETERANM ; 6f
	const MATT
	const REMY
	const BARKHORN
	const EN

	trainerclass VETERANF ; 70
	const JOANNE
	const JONET
	const LITVYAK
	const MADOKA

	trainerclass PROTON ; 71
	const PROTON1
	const PROTON2

	trainerclass PETREL ; 72
	const PETREL1
	const PETREL2

	trainerclass ARCHER ; 73
	const ARCHER1
	const ARCHER2

	trainerclass ARIANA ; 74
	const ARIANA1
	const ARIANA2

	trainerclass GIOVANNI ; 75
	const GIOVANNI1
	const GIOVANNI2

	trainerclass PROF_OAK ; 76

	trainerclass PROF_ELM ; 77

	trainerclass PROF_IVY ; 78

	trainerclass MYSTICALMAN ; 79
	const EUSINE

	trainerclass KARATE_KING ; 7a
	const KIYO

	trainerclass TOWERTYCOON ; 7b

	trainerclass FACTORYHEAD ; 7c

	trainerclass JESSIE_JAMES ; 7d

	trainerclass LORELEI ; 7e

	trainerclass AGATHA ; 7f

	trainerclass STEVEN ; 80

	trainerclass CYNTHIA ; 81

	trainerclass INVER ; 82

	trainerclass CHERYL ; 83

	trainerclass RILEY ; 84

	trainerclass BUCK ; 85

	trainerclass MARLEY ; 86

	trainerclass MIRA ; 87

	trainerclass ANABEL ; 88

	trainerclass DARACH ; 89

	trainerclass CAITLIN ; 8a

	trainerclass CANDELA ; 8b

	trainerclass BLANCHE ; 8c

	trainerclass SPARK_T ; 8d

	trainerclass FLANNERY ; 8e

	trainerclass MAYLENE ; 8f

	trainerclass MARLON ; 90

	trainerclass VALERIE ; 91

	trainerclass KUKUI ; 92

	trainerclass PIERS ; 93

	trainerclass KATY ; 94

	trainerclass VICTOR  ; 95

	trainerclass BILL_T ; 96

	trainerclass YELLOW ; 97

	trainerclass WALKER ; 98

	trainerclass IMAKUNI ; 99

	trainerclass LAWRENCE ; 9a

	trainerclass REI ; 9b

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1

	trainerclass OMASTAR_FOSSIL ; 9c

	trainerclass KABUTOPS_FOSSIL ; 9d

	trainerclass AERODACTYL_FOSSIL ; 9e

	trainerclass CUBONE_ARMOR ; 9f

	trainerclass METEORITE ; a0

	trainerclass SILHOUETTE ; a1

DEF NUM_TRAINER_CLASS_PICS EQU __trainer_class__ - 1
