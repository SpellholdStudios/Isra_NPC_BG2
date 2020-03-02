// SoA

CHAIN 
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraTiaxSoABanter1","GLOBAL",0)~ THEN BO#TIAX IsraTiaxSoABanter#1.1
@167 /* Tiax will rule all, they said! Old companions of Tiax will be quartered, they said! No one will doubt the everlasting wrath of Tiax, they said, when they took the mighty Tiax to Spellhold to take his place among the greatest wizards and priests of his time! */
DO ~SetGlobal("G#XB.IsraTiaxSoABanter1","GLOBAL",1)~
== BO#TIAX @168 /* And now what? Even some pansy-prancy paladin girl has better gear than me! */
== BRH#ISR @169 /* <CHARNAME> has given you excellent gear, Tiax. Not that you are likely to use it for anything worthwhile. */
== BO#TIAX @170 /* Tiax is worthy! Once he stands atop the tallest mountain with snow in his beard and leopard fur around his loins, you will realize your undying love for Tiax, but it will be too late! */
== BRH#ISR @171 /* <CHARNAME>, just... keep him away from me. Please. */
EXIT

// ToB

CHAIN 
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Tiax",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraTiaxToBBanter1","GLOBAL",0)~ THEN BO#TIA25 IsraTiaxToBBanter#1.1
@172 /* You look very pretty today, black-haired paladin girl. Suspiciously Tiax asks: are you in love with him yet, that you paint your face so sensually and look at him with such ardor? Is it passion for the Great Tiax that he sees? */
DO ~SetGlobal("G#XB.IsraTiaxToBBanter1","GLOBAL",1)~
== BRH#IS25 @173 /* By Sune, Tiax, will you ever open your eyes and see the world for what it truly is? */
== BO#TIA25 @174 /* Cyric tried, and it brought him no good, Tiax knows. Tiax is clever! The real world may keep luring Tiax into its empty greyness, but Tiax will never submit! */
== BRH#IS25 @175 /* So it would seem. */
== BO#TIA25 @176 /* If the paladin girl behaves herself and brings Tiax his beer after dinner, Tiax will teach her the ways of Cyric, and show her the one true way to become His Chosen! But only after the Great Tiax, of course. For he will rule all! */
EXIT