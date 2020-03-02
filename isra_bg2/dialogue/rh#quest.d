// ---------------------------------------------
// Quest Stuff
// ---------------------------------------------

BEGIN RH#TAREN
BEGIN RH#ALIM
BEGIN RH#GHSLN
BEGIN RH#LAMIA

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwo","GLOBAL",1)~ THEN RH#ALIA q8
@0 /* Isra! Thank the gods, I'd hoped to still be able to find you in the city. I need your help. */
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",2)~
== RH#ISRJ @1 /* Alia? If you've gotten yourself into some trouble now as well-- */
== RH#ALIA @2 /* No, no. Nothing like that. It's Quentin Jysstev... he was arrested last night. Falsely, I might add. */
== RH#ISRJ @3 /* I see. Do you know the charges? */
== RH#ALIA @4 /* Smuggling, I think. Something to do with magical items. */
== RH#ISRJ @5 /* That does not surprise me. And say what you will about the policy, the government is unlikely to detain a member of the nobility without substantial evidence. */
== RH#ALIA @6 /* I know that you've always hated him, Izzy, but he's no criminal. If you'd bothered to speak with him more than a handful of times, you'd know that too. */
== RH#ISRJ @7 /* What exactly do you expect me to be able to do about it? I have no standing within the Athkatlan government. */
== RH#ALIA @8 /* You have more than I do. I tried to speak with one of Bylanna's people... a priest of Tyr, one of the Zoar family. I didn't get very far, of course, but he'd probably talk to you. Tyrrans like paladins, last I heard. */
== RH#ISRJ @9 /* Fine. I can't promise anything, but if by some miracle you're right about Quentin... */
= @10 /* <CHARNAME>, I trust we have time to visit the government headquarters? */
END
	++ @11 /* Certainly, if you wish to look into this matter. */ EXTERN RH#ISRJ q8.1
	++ @12 /* I thought that you didn't even like the man. */ EXTERN RH#ISRJ q8.2
	++ @13 /* There are a few other things that need to be done first. */ EXTERN RH#ISRJ q8.3
	++ @14 /* Sorry, but I don't want to get involved with this again. */ EXTERN RH#ISRJ q8.4

CHAIN RH#ISRJ q8.1
@15 /* Thank you. Sooner would be better. */
== RH#ALIA @16 /* Indeed. I'll leave you to it, then. Good luck. */
DO ~AddJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */,QUEST)
SetGlobalTimer("rh#IsraQuestTwoReminderTimer","GLOBAL",SEVEN_DAYS)
ActionOverride("rh#Alia2",EscapeAreaDestroy(5))~ 
EXIT

CHAIN RH#ISRJ q8.2
@18 /* I don't, though that has nothing to do with whether or not he is actually guilty. I cannot imagine that this would be a lengthy detour, though I would understand if you did not want to become involved. */
END
	++ @19 /* In that case, I'd be happy to accompany you. */ EXTERN RH#ISRJ q8.1
	++ @13 /* There are a few other things that need to be done first. */ EXTERN RH#ISRJ q8.3
	++ @20 /* That's good, because I don't. */ EXTERN RH#ISRJ q8.4
	
CHAIN RH#ISRJ q8.3
@21 /* Aye, though man's freedom may be at stake. I would prefer to look into it sooner rather than later. */
== RH#ALIA @16 /* Indeed. I'll leave you to it, then. Good luck. */
DO ~AddJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */,QUEST)
SetGlobalTimer("rh#IsraQuestTwoReminder","GLOBAL",SEVEN_DAYS)
ActionOverride("rh#Alia2",EscapeAreaDestroy(5))~ 
EXIT

CHAIN RH#ISRJ q8.4
@22 /* Very well. I will have to look into it on my own, then. I will hopefully see you again afterwards. */
DO ~AddJournalEntry(@23 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. Isra has left my company to look into the matter personally. I do not know if I shall see her again. */,QUEST_DONE)
ActionOverride("rh#Alia2",EscapeAreaDestroy(5))
SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// 2. Taren Zoar

CHAIN IF ~Global("rh#IsraQuestTwo","GLOBAL",2) OR(2) !InParty("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#TAREN q9x
@24 /* I am very busy, citizen. If you require something, you may speak with Chief Inspector Brega. */
EXIT

CHAIN IF ~Global("rh#IsraQuestTwo","GLOBAL",2) InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#TAREN q9
@24 /* I am very busy, citizen. If you require something, you may speak with Chief Inspector Brega. */
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",3)~
== RH#ISRJ @25 /* Forgive the intrusion, but are you the man handling the case against Quentin Jysstev? */
== RH#TAREN @26 /* I am. It is too soon to make an official comment concerning it, however. */
== RH#ISRJ @27 /* I am not asking for an official comment, sir. */
= @28 /* My sister is convinced that he is innocent. I am not so certain, but if there is anything that can be done to potentially clear his name, we would be glad to help. */
== RH#TAREN @29 /* So I see. And you are? */
== RH#ISRJ @30 /* Isra Ghadir, of the Sisters and Brothers of the Ruby Rose. */
== RH#TAREN IF ~!InParty("Keldorn")~ THEN @31 /* And your leader? Who might you be, <PRO_SIRMAAM>? */
== RH#TAREN IF ~InParty("Keldorn")~ THEN @32 /* Sir Keldorn I recognize as well, but your leader is unknown to me. Who might you be, <PRO_SIRMAAM>? */
END
	++ @33 /* I am <CHARNAME>, most recently of Baldur's Gate. */ EXTERN RH#TAREN q9.1
	++ @34 /* It hardly matters. I'm just waiting for Isra. */ EXTERN RH#TAREN q9.2
	+ ~!Class(Player1,PALADIN_ALL) OR(2) !Class(Player1,CLERIC_ALL) !Alignment(Player1,MASK_LAWFUL)~ + @35 /* If you won't trust Isra, you sure as hells won't trust me. */ EXTERN RH#TAREN q9.3
	+ ~Global("PaladinOrder","GLOBAL",1)~ + @36 /* I am <CHARNAME>, of the Order of the Radiant Heart. */ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) Global("rh#IsraSunitePC","GLOBAL",1)~ + @37 /* I am <CHARNAME>, paladin of Sune. */ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @38 /* I am <CHARNAME>, paladin of Tyr. */ DO ~SetGlobal("rh#IsraTyrranPC","GLOBAL",1)~ EXTERN RH#TAREN q9.5
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @39 /* I am <CHARNAME>, paladin of Torm. */ DO ~SetGlobal("rh#IsraTormitePC","GLOBAL",1)~ EXTERN RH#TAREN q9.6
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @40 /* I am <CHARNAME>, paladin of Ilmater. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.7
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @41 /* I am <CHARNAME>, paladin of Lathander. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @42 /* I am <CHARNAME>, paladin of Mystra. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @43 /* I am <CHARNAME>, paladin of Milil. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @44 /* I am <CHARNAME>, paladin of Helm. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4	
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @45 /* I am <CHARNAME>, paladin of Kelemvor. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @46 /* I am <CHARNAME>, paladin of the Red Knight. */ DO ~SetGlobal("rh#IsraRedKnightPC","GLOBAL",1)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,CLERIC_ALL) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraLliiranPC","GLOBAL",1) Alignment(Player1,MASK_GOOD)~ + @47 /* I am <CHARNAME>, cleric of Lathander. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,CLERIC_ALL) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraLliiranPC","GLOBAL",1) Alignment(Player1,MASK_GENEUTRAL)~ + @48 /* I am <CHARNAME>, cleric of Helm. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2)~ + @49 /* I am <CHARNAME>, cleric of Tyr. */ DO ~SetGlobal("rh#IsraTyrranPC","GLOBAL",1)~ EXTERN RH#TAREN q9.5
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2)~ + @50 /* I am <CHARNAME>, cleric of Torm. */ DO ~SetGlobal("rh#IsraTormitePC","GLOBAL",1)~ EXTERN RH#TAREN q9.6
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2)~ + @51 /* I am <CHARNAME>, cleric of Ilmater. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.7
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2) Race(Player1,HALFLING)~ + @52 /* I am <CHARNAME>, cleric of Arvoreen. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2) Race(Player1,DWARF)~ + @53 /* I am <CHARNAME>, cleric of Moradin. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_LAWFUL) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2) Race(Player1,GNOME)~ + @54 /* I am <CHARNAME>, cleric of Garl Glittergold. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ EXTERN RH#TAREN q9.4

CHAIN RH#TAREN q9.1
@55 /* Indeed, your tales preceed you. They have given me no cause to believe your company to be anything but honorable. You and the Lady Isra are welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.2
@56 /* Very well. I have no cause to mistrust the knights of the Ruby Rose or the company they keep. You are welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.3
@57 /* That is... discouraging, though I have no cause to mistrust the knights of the Ruby Rose or the company they keep. You are welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.4
@58 /* Then I have no cause to question your honor. You and the Lady Isra are welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.5
@59 /* Then I apologize for my reticence. You and the Lady Isra are more than welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.6
@60 /* I have nothing but respect for the servants of Torm. You and the Lady Isra are more than welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.7
@61 /* I have nothing but respect for the servants of Ilmater. You and the Lady Isra are more than welcome to inquire into the case, if you so desire. */
END
IF ~~ THEN EXTERN RH#TAREN q9.8

CHAIN RH#TAREN q9.8
@62 /* I will be frank with you. There are certain aspects of this case that worry me. I would eventually look into them myself, but given the current troubles that plague the city, my backlog is... considerable. */
== RH#ISRJ @63 /* You are not convinced that he is guilty? */
== RH#TAREN @64 /* Justice is ill-served by rushing to conclusions, my lady. The evidence against him is substantial, but it is also mostly circumstantial. Perhaps I should start at the beginning. */
END
	++ @65 /* I'd prefer the short version, really. */ EXTERN RH#TAREN q9.9
	++ @66 /* That would be appreciated. */ EXTERN RH#TAREN q9.10
	++ @67 /* That'd certainly be the normal way to do things. */ EXTERN RH#TAREN q9.10

CHAIN RH#TAREN q9.9
@68 /* I fear that would not be sufficient. */
END
IF ~~ THEN EXTERN RH#TAREN q9.10

CHAIN RH#TAREN q9.10
@69 /* We recently learned of the death of a Cowled Wizard. The mages would normally conceal such things, but we discovered both his laboratory and the illegal items that he had housed there. Cowled Wizards are not above the law, as much as they might like to believe otherwise. */
= @70 /* This mage seems to have made a habit of blackmailing his suppliers. He kept notes and information concerning a handful of known smugglers... and concerning Quentin Jysstev as well. That alone would not be damning, but a recently captured smuggler has named Jysstev as an accomplice. */
= @71 /* Several illegal magical items--one of which matched something the Cowled Wizard had requested prior to his death--were thereafter discovered hidden in a caravan owned by the Jysstevs. At this point, there are few other conclusions that can be drawn. */
== RH#ISRJ @72 /* And yet the case does not sit well with you. Why is that? */
== RH#TAREN @73 /* I am a member of a merchant clan myself, my lady. I know how they operate, and the Jysstevs are prouder than most. */
= @74 /* If it is not common knowledge yet, it will be soon enough. The Jysstevs have fallen upon hard times as of late. They supported the wrong side during the civil war in Tethyr, and if they have not lost everything yet, it is only a matter of time. */
= @75 /* While the smuggling of high-end magical items may be lucrative, it is also a very expensive endeavor. I am not sure that he could have afforded it without borrowing money, but I can't believe that any Jysstev would be willing to do so. */
= @76 /* It is a small thing, but the most important details often are. */
END
	++ @77 /* Is there anyone I should be talking to? */ EXTERN RH#TAREN q9.11
	++ @78 /* Would there be records of borrowed money anywhere? */ EXTERN RH#TAREN q9.12
	++ @79 /* You can believe he'd risk prison but draw a line at social stigma? */ EXTERN RH#TAREN q9.13
	++ @80 /* What do you expect us to be able to do about it? */ EXTERN RH#TAREN q9.14

CHAIN RH#TAREN q9.11
@81 /* There are likely a number of people. */
END
IF ~~ THEN EXTERN RH#TAREN q9.14

CHAIN RH#TAREN q9.12
@82 /* If the Jysstevs kept any, they have hidden them well. The lender would have that information, though it would take a miracle to find them. */
END
IF ~~ THEN EXTERN RH#TAREN q9.14

CHAIN RH#TAREN q9.13
@83 /* This is Amn. The illusion of wealth is often more important than the reality. */
END
IF ~~ THEN EXTERN RH#TAREN q9.14

CHAIN RH#TAREN q9.14
@84 /* I would suggest that you speak with the Jysstevs. They may prove more cooperative at this point than they did before. I can give you a copy of the financial documentation that was discovered in the Cowled Wizard's laboratory. */
= @85 /* Jysstev himself is not permitted visitors, but you may wish to speak with Alim al-Makram, the Calishite smuggler who named him as an accomplice. I will tell the jailer to expect you. */
== RH#ISRJ @86 /* Thank you. Is there anything else that we should know? */
== RH#TAREN @87 /* Only that I expect to be kept reasonably apprised of your findings, whatever they may be. Tyr's blessing upon you. */
DO ~GiveItemCreate("rh#docu1",Player1,1,0,0)
AddJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */,QUEST)~
EXIT

CHAIN IF ~GlobalGT("rh#IsraQuestTwo","GLOBAL",2)~ THEN RH#TAREN q9.15
@89 /* You are back, I see. Have you learned anything of note? */
END
	+ ~GlobalGT("rh#IsraQuestTwo","GLOBAL",6)~ + @90 /* The Jysstevs seem to be borrowing money from the Crytrappers. */ + q9.16
	+ ~Global("rh#AlimTalks","GLOBAL",6)~ + @91 /* Your Calishite smuggler might be covering for someone. */ + q9.17
	++ @92 /* Not yet, I'm afraid. */ + q9.18

CHAIN RH#TAREN q9.16
@93 /* Are they? That is most unusual, though more information is required than that. */
EXIT

CHAIN RH#TAREN q9.17
@94 /* He might be, you say? I cannot operate on mere opinion, <PRO_SIRMAAM>. */
EXIT

CHAIN RH#TAREN q9.18
@95 /* Very well. Come back when you have learned more. */
EXIT

// 3. Post meeting comments

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwo","GLOBAL",4)~ THEN RH#ISRJ q10
@96 /* I must admit, I had not expected that to go quite so smoothly. */ 
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",5)
SetGlobal("rh#QarTalks","GLOBAL",1)
SetGlobal("rh#AlimTalks","GLOBAL",1)~ 
== RH#ISRJ IF ~Global("rh#IsraTyrranPC","GLOBAL",1)~ THEN @97 /* With the exception of yourself, my encounters with the Church of Tyr have usually left something to be desired, I'm afraid. */
== RH#ISRJ IF ~!Global("rh#IsraTyrranPC","GLOBAL",1)~ THEN @98 /* My encounters with the Church of Tyr, such as they are, have usually been... considerably more heated. */
END
	++ @99 /* You've run into Tyrrans before? */ + q10.1
	++ @100 /* You were polite enough regardless. */ + q10.2
	++ @101 /* I can't imagine what your sister must have said to make him turn her away. */ + q10.3
	+ ~!Global("rh#IsraTyrranPC","GLOBAL",1)~ + @102 /* I always thought Tyrrans lost it at the slightest hint of someone questioning them. */ + q10.4
	+ ~!Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",2)~ + @103 /* He only warmed up because you told him you were a paladin. */ + q10.5
	+ ~OR(3) Kit(Player1,GODLATHANDER) Kit(Player1,GODHELM) Global("rh#IsraLliiranPC","GLOBAL",1)~ + @103 /* He only warmed up because you told him you were a paladin. */ + q10.5

APPEND RH#ISRJ

IF ~~ q10.1
 SAY @104 /* Aye, I was close with one of their squires once, though 'tis a long and not altogether pleasant story. */
IF ~~ + q10.6
END

IF ~~ q10.2
 SAY @105 /* I would certainly hope so. */
IF ~~ + q10.6
END

IF ~~ q10.3
 SAY @106 /* Truly? I can imagine any number of things she might have said. */
IF ~~ + q10.6
END

IF ~~ q10.4
 SAY @107 /* Their faith, aye. That much I can attest to. Their judgments, however... that is another matter entirely. */
IF ~~ + q10.6
END

IF ~~ q10.5
 SAY @108 /* Aye, such things carry weight with the Church of Tyr, as they should. */
IF ~~ + q10.6
END

IF ~~ q10.6
 SAY @109 /* But forgive the distraction, <CHARNAME>. We ought to make our way to the jail or the estate. Whatever else I might think of Quentin Jysstev, I do agree that he is too proud to beg for money. */
IF ~~ EXIT
END
END
 
// 4. Jysstev Estate

CHAIN IF WEIGHT #-1 ~InParty("rh#Isra2") Global("rh#QarTalks","GLOBAL",1)~ THEN SCQAR q11
@110 /* Lady Isra, I had thought you above boorish gloating. Has your father's common blood finally run true in the end? */
DO ~SetGlobal("rh#QarTalks","GLOBAL",2)~
== RH#ISRJ @111 /* My lord, there is no cause for hostility. Alia is convinced that your cousin is innocent, and Rana... where has my sister gone? */
== SCQAR @112 /* She is currently staying with her Crytrapper relatives instead, and good riddance, I say. This house has been too crowded as it is. */
== RH#ISRJ @113 /* I see. If you know anything that might clear Quentin's name-- */
== SCQAR @114 /* We have already cooperated with the authorities as much as is required by law. There is nothing more that needs to be said. */
== SCLJYSS @115 /* Qar, if they can help, surely there is no reason not to let them? */
END
	++ @116 /* Any financial information would be useful. */ EXTERN RH#ISRJ q11.1
	++ @117 /* A sensible suggestion if ever I've heard one. */ EXTERN RH#ISRJ q11.2
	++ @118 /* We won't bother if all we're going to get out of it is abuse. */ EXTERN RH#ISRJ q11.3

CHAIN RH#ISRJ q11.1
@119 /* Aye, especially concerning any money lent or borrowed. */
END
IF ~~ THEN EXTERN SCQAR q11.4

CHAIN RH#ISRJ q11.2
@120 /* If you could share any information about money he might have lent or borrowed, 'twould be appreciated. */
END
IF ~~ THEN EXTERN SCQAR q11.4

CHAIN RH#ISRJ q11.3
@121 /* <CHARNAME>, please! */
= @122 /* My lord, any financial information would be appreciated, especially concerning money lent or borrowed. */
END
IF ~~ THEN EXTERN SCQAR q11.4

CHAIN SCQAR q11.4
@123 /* If my cousin was borrowing money, I never heard about it... though I doubt he would admit to such sordid behavior. */
= @124 /* Fine. If it will get you out of my house any quicker, you may have Quentin and his wife's financial records. Now begone. */
DO ~ActionOverride("scljyss",SetNumTimesTalkedTo(0))
ActionOverride("scqar",SetNumTimesTalkedTo(0))
GiveItemCreate("rh#docu2",Player1,1,0,0)
AddJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */,QUEST)~ 
EXIT

// 5. Isra comments on Qar

CHAIN IF WEIGHT #-1 ~Global("rh#QarTalks","GLOBAL",3)~ THEN RH#ISRJ q12
@126 /* I am sorry you had to see that, <CHARNAME>. My relationship with the Jysstevs has always been... tumultuous. */ 
DO ~SetGlobal("rh#QarTalks","GLOBAL",4)~
END
	++ @127 /* Yes, I got that impression. */ + q12.1
	++ @128 /* Why does he seem to dislike you so much? */ + q12.2
	++ @129 /* You would think he'd have been more amenable to help. */ + q12.3
	++ @130 /* You did seem inclined to toss accusations at Quentin at first. */ + q12.4

APPEND RH#ISRJ

IF ~~ q12.1
 SAY @131 /* It is not a very well-kept secret. */
IF ~~ + q12.5
END

IF ~~ q12.2
 SAY @132 /* I have... not always been as gracious towards his family as would probably have been appropriate. */
IF ~~ + q12.5
END

IF ~~ q12.3
 SAY @133 /* You do not know Qar Jysstev very well. */
IF ~~ + q12.5
END

IF ~~ q12.4
 SAY @134 /* Aye, that is true. Whether that was wrong of me... well, we will find out soon enough. */
IF ~~ + q12.5
END

IF ~~ q12.5
 SAY @135 /* For now, however, we should simply focus upon these documents. 'Twill take some time to go through them all, of course... that may be a task best left until this evening. */
IF ~Global("rh#AlimTalks","GLOBAL",1)~ + q12.6
IF ~GlobalGT("rh#AlimTalks","GLOBAL",1) GlobalLT("rh#AlimTalks","GLOBAL",6)~ + q12.7
IF ~Global("rh#AlimTalks","GLOBAL",6)~ + q12.8
END

IF ~~ q12.6
 SAY @136 /* In the meanwhile, mayhap we should speak with the smuggler they are holding in the prison. */ 
IF ~~ EXIT
END

IF ~~ q12.7
 SAY @137 /* In the meanwhile, mayhap some of the Sea Bounty's ale will convince the smuggler to cooperate with us. */ 
IF ~~ EXIT
END

IF ~~ q12.8
 SAY @138 /* If there is anything else you had hoped to accomplish to<DAYNIGHT>, it may be best to postpone this matter until the morrow. */ 
IF ~~ EXIT
END
END

// 6. Jail

EXTEND_BOTTOM PRISONK1 0
+ ~Global("rh#IsraQuestTwo","GLOBAL",5)~ + @139 /* I'm here to speak with Alim al-Makram. */ + q13
END

CHAIN PRISONK1 q13
@140 /* Are you? Well, ain't that nice. You can find him through that door, the cell on the far right. */
EXIT

// Alim al-Makram

CHAIN IF ~Global("rh#AlimTalks","GLOBAL",1)~ THEN RH#ALIM q13.1
@141 /* Yeah? What do ye want? */
DO ~AddJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */,QUEST)
SetGlobal("rh#AlimTalks","GLOBAL",2)~
END
	++ @143 /* We have some questions concerning your smuggling activity. */ + q13.2
	++ @144 /* Are you the man claiming Quentin Jysstev as an accomplice? */ + q13.2
	++ @145 /* You could be friendlier. I doubt you get much company here. */ + q13.2
	++ @146 /* Just to speak with you for a few minutes. */ + q13.2

CHAIN RH#ALIM q13.2
@147 /* I ain't interested in talking with the likes o' ye. Least not unless ye've got a flask o' the Thumb's Bitter Black Ale with ye. I miss that stuff almost as much as freedom itself. */
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @148 /* And the ale will loosen your tongue, so to speak? */
== RH#ALIM IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @149 /* Ye won't know unless ye try, lady. */
EXIT

CHAIN IF ~GlobalGT("rh#AlimTalks","GLOBAL",1) !PartyHasItem("rh#ale")~ THEN RH#ALIM q13.3
@150 /* Are ye deaf, <PRO_BOYGIRL>? I've got nothing else to say to ye. */
EXIT

CHAIN IF ~GlobalGT("rh#AlimTalks","GLOBAL",1) PartyHasItem("rh#ale")~ THEN RH#ALIM q13.4
@151 /* Well... ain't that a blessed sight? Pity, though, that I've got nothing more to say than I did to your Tyrran friend. Quentin Jysstev is the one what's been payin' me to run goods from Calimshan. */
DO ~TakePartyItem("rh#ale")~
EXIT

// Sea Bounty

EXTEND_BOTTOM THUMB 0
	+ ~Global("rh#AlimTalks","GLOBAL",2)~ + @152 /* If you've got any Bitter Black Ale in stock, Alim al-Makram wants some. */ + q13.5
	+ ~Global("rh#AlimTalks","GLOBAL",2)~ + @153 /* Do you know anything about a smuggler called Alim al-Makram? */ + q13.6
END

EXTEND_BOTTOM THUMB 6
	+ ~Global("rh#AlimTalks","GLOBAL",2)~ + @152 /* If you've got any Bitter Black Ale in stock, Alim al-Makram wants some. */ + q13.5
	+ ~Global("rh#AlimTalks","GLOBAL",2)~ + @153 /* Do you know anything about a smuggler called Alim al-Makram? */ + q13.6
END

CHAIN THUMB q13.5
@154 /* Does he now? Once a customer, always a customer... that's what I like t' say, at least. How are they treatin' him o'er in the jail? Bad bit o' luck, that. */
END
	++ @155 /* Do you know anything about what happened? */ + q13.7
	++ @156 /* A bad bit of luck? Why do you say that? */ + q13.7

CHAIN THUMB q13.6
@157 /* Aye, that Calishite's been a fine customer these past five years or so... how are they treatin' him o'er in the jail? Bad bit o' luck, that. */
END
	++ @155 /* Do you know anything about what happened? */ + q13.7
	++ @156 /* A bad bit of luck? Why do you say that? */ + q13.7

CHAIN THUMB q13.7
@158 /* Look. I be keepin' me head out o' that business... least as far as I can. If ye wants to know more 'bout it, there's a Tethyrian here what used t' be tight with Alim... name o' Ghislain. */
= @159 /* Ye can talk t' him if ye wants... and here, take a jug o' that ale that Alim were so keen on... it's on the house. */
DO ~SetGlobal("rh#AlimTalks","GLOBAL",3)
GiveItemCreate("rh#ale",Player1,1,0,0)
AddJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */,QUEST)~
EXIT

// Ghislain

CHAIN IF ~!Global("rh#AlimTalks","GLOBAL",3)~ THEN RH#GHSLN q13.9
@161 /* You're blocking the view, friend. */
EXIT

CHAIN IF ~Global("rh#AlimTalks","GLOBAL",3)~ THEN RH#GHSLN q13.10
@162 /* Yes? You look as if you want something... I'm not sure that I care for that. */
DO ~SetGlobal("rh#AlimTalks","GLOBAL",4)~
END
	++ @163 /* Do you know anything about the magical item trade? */ + q13.11
	++ @164 /* The Thumb mentioned that you're a friend of Alim al-Makram? */ + q13.12
	++ @165 /* I take it you're a smuggler too. */ + q13.11

CHAIN RH#GHSLN q13.11
@166 /* What the hells sort of question is that? */
END
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN EXTERN RH#ISRJ q13.13
IF ~OR(2) !InParty("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN EXTERN RH#GHSLN q13.14

CHAIN RH#GHSLN q13.12
@167 /* Did he, now? I won't deny it. Alim is a good enough man... a bit daft at times, but that's fairly common. */
END
	++ @168 /* Daft? What do you mean by that? */ EXTERN RH#GHSLN q13.15
	++ @169 /* Good enough men normally don't end up in prison. */ EXTERN RH#GHSLN q13.16
	++ @170 /* Do you know anything about his current legal problems? */ EXTERN RH#GHSLN q13.15

CHAIN RH#ISRJ q13.13
@171 /* We have no interest in your own dealings, Ghislain. 'Tis those of your... associate Alim al-Makram that concern us. */
END
IF ~~ EXTERN RH#GHSLN q13.15

CHAIN RH#GHSLN q13.14
@172 /* Look, if you don't have anything of interest to say, do me a favor and get lost. */
END
	++ @173 /* Do you know someone called Alim al-Makram? */ + q13.15
	++ @174 /* The Thumb said you're a friend of a local Calishite smuggler? */ + q13.12

CHAIN RH#GHSLN q13.15
@175 /* You want information, I see. Well, I'm not about to sell out a good friend. At least... not for nothing. */
END
	+ ~PartyGoldGT(99)~ + @176 /* Will 100 gold loosen your tongue? */ EXTERN RH#GHSLN q13.17
	++ @177 /* And if I were to introduce you to a good friend of mine in the government? */ EXTERN RH#GHSLN q13.18
	++ @178 /* You'll talk or you'll find yourself regretting it. */ EXTERN RH#GHSLN q13.18

CHAIN RH#GHSLN q13.16
@179 /* No, sometimes they don't get so lucky. */
= @180 /* Shall I assume you want information? Well, I'm not about to sell out a good friend. At least... not for nothing. */
END
	+ ~PartyGoldGT(99)~ + @176 /* Will 100 gold loosen your tongue? */ EXTERN RH#GHSLN q13.17
	++ @177 /* And if I were to introduce you to a good friend of mine in the government? */ EXTERN RH#GHSLN q13.18
	++ @178 /* You'll talk or you'll find yourself regretting it. */ EXTERN RH#GHSLN q13.18

CHAIN RH#GHSLN q13.17
@181 /* I dare say it would. */
DO ~TakePartyGold(100)~
END
IF ~~ THEN EXTERN RH#GHSLN q13.18

CHAIN RH#GHSLN q13.18
@182 /* Look, I don't actually know that much about Alim's current predicament. He tends not to talk about business... bad policy, you know? */
= @183 /* I'm not surprised it went poorly, though. The guy's head over heels for some married woman... far out of reach, to say the least. He's been getting stupider about it recently. */
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @184 /* A married woman? Who is she? */
== RH#GHSLN IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @185 /* I don't know that either, I'm afraid. Alim has always been very tight-lipped where she's concerned. My guess is she's involved in his business also. */
== RH#GHSLN @186 /* Now, if you'll excuse me, I've said as much on the subject as I care to. */
DO ~AddJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */,QUEST)
EscapeAreaDestroy(5)~
EXIT

// 7. Isra comments on Ghislain

CHAIN IF WEIGHT #-1 ~Global("rh#AlimTalks","GLOBAL",5)~ THEN RH#ISRJ q14
@188 /* I would speak with Alim again, but I cannot imagine that he would share anything more than he already has. If he is lying about Quentin, his motives may be... different than I had assumed. */ 
DO ~SetGlobal("rh#AlimTalks","GLOBAL",6)~
END
	++ @189 /* It may still be worth a second visit. */ + q14.1
	++ @190 /* Do you think he might be covering for someone? */ + q14.2
	++ @191 /* What about the ale the Thumb gave us? */ + q14.3
	++ @192 /* You really thought he was lying before? */ + q14.4

APPEND RH#ISRJ

IF ~~ q14.1
 SAY @193 /* Mayhap, though I see little value in it. */
IF ~Global("rh#QarTalks","GLOBAL",4)~ + q14.5
IF ~!Global("rh#QarTalks","GLOBAL",4)~ + q14.6
END

IF ~~ q14.2
 SAY @194 /* I... think it is a distinct possibility, aye. */
IF ~Global("rh#QarTalks","GLOBAL",4)~ + q14.5
IF ~!Global("rh#QarTalks","GLOBAL",4)~ + q14.6
END

IF ~~ q14.3
 SAY @195 /* Even if the guards allowed it, sobriety might be a better choice for him at this point anyway. */
IF ~Global("rh#QarTalks","GLOBAL",4)~ + q14.5
IF ~!Global("rh#QarTalks","GLOBAL",4)~ + q14.6
END

IF ~~ q14.4
 SAY @196 /* I seldom expect truthfulness from such... characters. */
IF ~Global("rh#QarTalks","GLOBAL",4)~ + q14.5
IF ~!Global("rh#QarTalks","GLOBAL",4)~ + q14.6
END

IF ~~ q14.5
 SAY @197 /* I still need a chance to sort through Quentin's financial information, of course. If there is anything else you'd hoped to accomplish to<DAYNIGHT>, it may be best to postpone this matter until the morrow. */ 
IF ~~ EXIT
END

IF ~~ q14.6
 SAY @198 /* Truth be told, at this point, I am not quite sure what to make of it. Mayhap we should visit the Jysstev estate as well. I would still like to see any financial information available. */
IF ~~ EXIT
END
END

// 8. Morning, time to visit Crytrappers

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwo","GLOBAL",6)~ THEN RH#ISRJ q15
@199 /* Good morrow, <CHARNAME>. I... have had a chance to look through all of these documents now. For better or for worse. */ 
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",7)~
END
	++ @200 /* You don't look very happy. */ + q15.1
	++ @201 /* What do you make of them? */ + q15.2
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @202 /* Did you even sleep at all? */ + q15.3
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @203 /* That explains why you never came to bed. */ + q15.4
	++ @204 /* I would have helped you go through them, you know. */ + q15.5

APPEND RH#ISRJ

IF ~~ q15.1
 SAY @205 /* I cannot say that I am. */
IF ~~ + q15.6
END

IF ~~ q15.2
 SAY @206 /* I... am not quite certain. Nothing good, at least. */
IF ~~ + q15.6
END

IF ~~ q15.3
 SAY @207 /* Only briefly. */
IF ~~ + q15.6
END

IF ~~ q15.4
 SAY @208 /* I'm sorry. I did not mean to get quite so absorbed. */
IF ~~ + q15.6
END

IF ~~ q15.5
 SAY @209 /* I know. I do appreciate the thought. */
IF ~~ + q15.6
END

IF ~~ q15.6
 SAY @210 /* There are several influxes of money in these records that correlate with Gelion's... purchases, though the income is not what would be expected from this type of transaction. */
 = @211 /* What troubles me, however... they have been borrowing money. From House Crytrapper. Only small amounts, just enough that they can afford to remain in Athkatla, but... I do not like it. */
	++ @212 /* I didn't know that you knew that much about bookkeeping. */ + q15.7
	++ @213 /* Why was that not noticed earlier? */ + q15.8
	++ @214 /* You're related to the Crytrappers, aren't you? */ + q15.9
	++ @215 /* So much for the pride of House Jysstev. */ + q15.8
END

IF ~~ q15.7
 SAY @216 /* Aye, my mother made certain that all of us were taught... though she may have done too good a job in my sister's case. I found this in Rana's records, <CHARNAME>, not Quentin's. */
IF ~~ + q15.10
END

IF ~~ q15.8
 SAY @217 /* I... found this note in Rana's records, <CHARNAME>, not Quentin's. */
IF ~~ + q15.10
END

IF ~~ q15.9
 SAY @218 /* Aye, my mother is one of them. And Rana... I found this in her records, <CHARNAME>, not Quentin's. */
IF ~~ + q15.10
END

IF ~~ q15.10
 SAY @219 /* Alone, I would think little of it. 'Tis hardly unusual to rely upon family in difficult times, but I cannot help but remember Ghislain's words. Alim was in love with a married woman... a married noblewoman, most likely. */
 = @220 /* I do not like the implications, <CHARNAME>. I don't like them at all. */
	++ @221 /* Should we talk to your sister? */ + q15.11
	++ @222 /* If you'd rather just drop this, we can. */ + q15.12
	++ @223 /* I can't say I'm too surprised. She has been acting strange. */ + q15.13
	++ @224 /* What do you want to do now? */ + q15.14
END

IF ~~ q15.11
 SAY @225 /* Not yet... not until we know more. */
IF ~~ + q15.14
END

IF ~~ q15.12
 SAY @226 /* I cannot. Not now. */
IF ~~ + q15.14
END
 
IF ~~ q15.13
 SAY @227 /* I did not want to see it, but... I suppose she has. */
IF ~~ + q15.14
END

IF ~~ q15.14
 SAY @228 /* There are only two people who could say precisely how much money my sister has been borrowing... Rana herself and... our head of house. I doubt that Lady Lamia would be overly receptive to an outsider, but to me... */
 = @229 /* I am sure she would be willing to talk. We ought to visit the Crytrapper estate as soon as possible. */
	++ @230 /* We can head there immediately. */ + q15.15
	++ @231 /* Can't this wait? There are other things to do to<DAYNIGHT>. */ + q15.16
	++ @232 /* It's your family, Isra. You may be better off going yourself. */ + q15.17
END

IF ~~ q15.15
 SAY @66 /* That would be appreciated. */
IF ~~ DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",8)
AddJournalEntry(@233 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and has decided to visit the Crytrapper estate within the city. */,QUEST)
StartCutSceneMode() 
StartCutScene("rh#isct7")~
EXIT
END

IF ~~ q15.16
 SAY @234 /* Aye, though I would rather not postpone it too long. */
IF ~~ DO ~AddJournalEntry(@235 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and wishes to visit the Crytrapper estate as quickly as possible. */,QUEST)~
EXIT
END

IF ~~ q15.17
 SAY @236 /* I see. Very well, then. I will hopefully see you again afterwards. */
IF ~~ DO ~EraseJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */)

EraseJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */)

EraseJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */)

EraseJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */)

EraseJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */)

EraseJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */)

AddJournalEntry(@237 /* Another Day in Athkatla

While investigating charges of smuggling against Quentin Jysstev, Isra discovered that her sister Rana was borrowing money from relatives... a fact that may mean she herself is culpable. I could not accompany Isra to the Crytrapper estate, so she has left to handle matters personally. */,QUEST_DONE)
SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

// 9. Lamia Crytrapper

CHAIN IF ~Global("rh#IsraQuestTwo","GLOBAL",9)~ THEN RH#LAMIA q16
@238 /* Isra, dear, you should have told me that you meant to drop by. I'm afraid that this isn't the best time for company. */
== RH#ISRJ @239 /* I won't be very long. I... I'm afraid I have some questions of a financial nature. */
== RH#LAMIA @240 /* Questions you don't seem very eager to ask. */
== RH#ISRJ @241 /* No, my lady. They concern Rana... she has been borrowing money from you, has she not? More than the pittance noted in her records. */
== RH#LAMIA @242 /* Considerably more than that. She told me that she meant to open a business, though my investment was repaid quickly enough that I wondered... */
= @243 /* Her business is not entirely legal, is it? */
== RH#ISRJ @244 /* No, I'm afraid not. Is... is my sister still staying here? */
== RH#LAMIA @245 /* She is. I shall fetch her at once. */
== RH#ISRJ @246 /* Thank you, cousin. */
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",10) 
StartCutSceneMode() 
StartCutScene("rh#isct1")~
EXIT

CHAIN IF ~GlobalGT("rh#IsraQuestTwo","GLOBAL",9)~ THEN RH#LAMIA q16b
@247 /* I don't have time for anything else, I'm afraid. I'm expected back in Crimmor shortly. */
EXIT

// 10. Rana

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwo","GLOBAL",10)~ THEN RH#RANA q17
@248 /* Isra, what are you doing here-- */
= @249 /* Oh. Oh, by the gods, you... you *know*, don't you? */
== RH#ISRJ @250 /* Aye... I do. */
== RH#RANA @251 /* And that's all you have to say? */
== RH#ISRJ @252 /* What am I expected to say? You... why would you even get involved in something like this? */
== RH#RANA @253 /* You don't know Athkatla. Quentin lost all of his money, all of MY money, betting on the war in Tethyr. */
= @254 /* Lord Qar wanted us to go back to Eshpurta where living was cheaper... by Sune, you know how much I gave up to get out of there in the first place! */
== RH#ISRJ @255 /* But smuggling, Rana? */
== RH#RANA @256 /* I... knew people. */
== RH#ISRJ @257 /* Alim al-Makram, I assume. */
== RH#RANA @258 /* How did you-- yes. Alim. Is he the one who told you? */
== RH#ISRJ @259 /* Not in as many words. Was Quentin involved in this... endeavor as well? */
== RH#RANA @260 /* No. Never. He thought... he would have thought it too base. */
== RH#ISRJ @261 /* You must realize that he has been arrested regardless. In your place, Rana. I... I cannot believe that you would simply stand aside and allow that! */
== RH#RANA @262 /* As if you've ever care about him before! I... I never wanted... */
= @263 /* This is your fault, Izzy! If you had let me deal with that wizard on my own-- */
== RH#ISRJ @264 /* You would likely be dead. */
= @265 /* Rana, you need to come with me to the courts. This... isn't something that can simply be wished away. */
== RH#RANA @266 /* So you will toss me in prison now? By the gods, Isra, I wish you had stayed away! */
== RH#ISRJ @267 /* I'm sorry... truly, I am. */
= @268 /* <CHARNAME>, I'm afraid that this is something that I would sooner handle alone. Please, meet me in the Den of the Seven Vales afterwards. I... I will be waiting. */
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",11) AddexperienceParty(21250)
AddJournalEntry(@269 /* Another Day in Athkatla

Isra's worst suspicions have been proven true; her sister has as much as admitted to involvement in a smuggling operation. Isra wishes to handle matters alone at this point, though I will be able to find her in the Den of the Seven Vales afterwards. */,QUEST)
ActionOverride("rh#Rana",EscapeAreaDestroy(5))
SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty()
SetInterrupt(FALSE)
EscapeAreaMove("AR0709",412,768,9)
SetInterrupt(TRUE)~
EXIT

// 11. Rejoining

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwo","GLOBAL",11)~ THEN RH#ISRP q18
@270 /* <CHARNAME>... I'm glad to see you again. This has been... by Sune, words could not hope to describe it. Even if she were released tomorrow-- */ 
= @271 /* I would rather not think of it for once. I trust you are ready to continue on again? */
DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",12)~ 
END
	++ @272 /* I'm ready, though you still seem a bit out of sorts. */ + q18.1
	++ @273 /* If you want to keep busy, I certainly won't abandon you now. */ + q18.2
	++ @274 /* Perhaps you should stay with Alia for a while instead. */ + q18.3
	++ @275 /* Given that you'd toss your own sister to the wolves? No, I'm not. */ + q18.4

CHAIN RH#ISRP q18.1
@276 /* I am as well as can be expected, I assure you. */
DO ~EraseJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */)

EraseJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */)

EraseJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */)

EraseJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */)

EraseJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */)

EraseJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */)

EraseJournalEntry(@235 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and wishes to visit the Crytrapper estate as quickly as possible. */)

EraseJournalEntry(@233 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and has decided to visit the Crytrapper estate within the city. */)

EraseJournalEntry(@269 /* Another Day in Athkatla

Isra's worst suspicions have been proven true; her sister has as much as admitted to involvement in a smuggling operation. Isra wishes to handle matters alone at this point, though I will be able to find her in the Den of the Seven Vales afterwards. */)

AddJournalEntry(@277 /* Another Day in Athkatla

Our investigations into charges of smuggling against Quentin Jysstev have come to an unfortunate conclusion: Isra's sister was behind the operation. Isra has taken her sister to the courts, though the task has clearly brought her no pleasure. */,QUEST_DONE)
SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~ 
EXIT

CHAIN RH#ISRP q18.2
@278 /* Thank you, my <PRO_LADYLORD>. */
DO ~EraseJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */)

EraseJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */)

EraseJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */)

EraseJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */)

EraseJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */)

EraseJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */)

EraseJournalEntry(@235 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and wishes to visit the Crytrapper estate as quickly as possible. */)

EraseJournalEntry(@233 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and has decided to visit the Crytrapper estate within the city. */)

EraseJournalEntry(@269 /* Another Day in Athkatla

Isra's worst suspicions have been proven true; her sister has as much as admitted to involvement in a smuggling operation. Isra wishes to handle matters alone at this point, though I will be able to find her in the Den of the Seven Vales afterwards. */)

AddJournalEntry(@277 /* Another Day in Athkatla

Our investigations into charges of smuggling against Quentin Jysstev have come to an unfortunate conclusion: Isra's sister was behind the operation. Isra has taken her sister to the courts, though the task has clearly brought her no pleasure. */,QUEST_DONE)
SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~ 
EXIT

CHAIN RH#ISRP q18.3
@279 /* Aye, that may be for the best. */
DO ~EraseJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */)

EraseJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */)

EraseJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */)

EraseJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */)

EraseJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */)

EraseJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */)

EraseJournalEntry(@235 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and wishes to visit the Crytrapper estate as quickly as possible. */)

EraseJournalEntry(@233 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and has decided to visit the Crytrapper estate within the city. */)

EraseJournalEntry(@269 /* Another Day in Athkatla

Isra's worst suspicions have been proven true; her sister has as much as admitted to involvement in a smuggling operation. Isra wishes to handle matters alone at this point, though I will be able to find her in the Den of the Seven Vales afterwards. */)

AddJournalEntry(@277 /* Another Day in Athkatla

Our investigations into charges of smuggling against Quentin Jysstev have come to an unfortunate conclusion: Isra's sister was behind the operation. Isra has taken her sister to the courts, though the task has clearly brought her no pleasure. */,QUEST_DONE)~
EXIT

CHAIN RH#ISRP q18.4
@280 /* I see. Then we have nothing further to say to each other. Excuse me. */
DO ~EraseJournalEntry(@17 /* Another Day in Athkatla

Quentin Jysstev, Isra's sister's husband, has apparently been arrested for smuggling. While Isra seems to hold no great love for the man, she wants to visit the Government District to look into the matter. */)

EraseJournalEntry(@88 /* Another Day in Athkatla

I have spoken with Taren Zoar, a priest of Tyr involved in Quentin's case. He himself is apparently not convinced that Quentin is guilty, and has given me permission to speak with an alleged accomplice being held in the prison. I should also speak to Qar Jysstev at some point. */)

EraseJournalEntry(@125 /* Another Day in Athkatla

Qar Jysstev was very unhappy to see Isra, though he was willing to share his cousin's financial records... if only to get us out of his house. */)

EraseJournalEntry(@142 /* Another Day in Athkatla

Alim al-Makram is reluctant to talk... at least without the incentive of a flask of the Thumb's ale. Perhaps I can find some at the Sea Bounty. */)

EraseJournalEntry(@160 /* Another Day in Athkatla

The Thumb has told me that a friend of Alim al-Makram is currently staying in the tavern. I suspect he could tell me more about Alim's dealings. */)

EraseJournalEntry(@187 /* Another Day in Athkatla

Ghislain did not offer much information, though he did suggest that Alim was in love with some local woman. It may well be that he has accused Quentin Jysstev of smuggling to protect someone he holds dear. */)

EraseJournalEntry(@235 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and wishes to visit the Crytrapper estate as quickly as possible. */)

EraseJournalEntry(@233 /* Another Day in Athkatla

Upon looking through Quentin's books, Isra has discovered that her sister has been borrowing money from their Crytrapper relatives. She is very disturbed by this development and has decided to visit the Crytrapper estate within the city. */)

EraseJournalEntry(@269 /* Another Day in Athkatla

Isra's worst suspicions have been proven true; her sister has as much as admitted to involvement in a smuggling operation. Isra wishes to handle matters alone at this point, though I will be able to find her in the Den of the Seven Vales afterwards. */)

AddJournalEntry(@277 /* Another Day in Athkatla

Our investigations into charges of smuggling against Quentin Jysstev have come to an unfortunate conclusion: Isra's sister was behind the operation. Isra has taken her sister to the courts, though the task has clearly brought her no pleasure. */,QUEST_DONE)
EscapeArea()~
EXIT

// reminders

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestOneReminder","GLOBAL",1)~ THEN RH#ISRJ reminder1
@281 /* My <PRO_LADYLORD>, I hope I needn't remind you that you had agreed to investigate my sister's current dilemma? */
DO ~SetGlobalTimer("rh#IsraQuestOneReminderTimer","GLOBAL",SEVEN_DAYS) 
SetGlobal("rh#IsraQuestOneReminder","GLOBAL",2)~
== RH#ISRJ IF ~Global("rh#IsraQuestOne","GLOBAL",5)~ THEN @282 /* We ought to speak with Patricia in the Den of the Seven Vales as soon as possible. */
== RH#ISRJ IF ~OR(2) Global("rh#IsraQuestOne","GLOBAL",6) Global("rh#IsraQuestOne","GLOBAL",7)~ THEN @283 /* We ought to visit the Government District as soon as possible. */
== RH#ISRJ IF ~Global("rh#IsraQuestOne","GLOBAL",8)~ THEN @284 /* We ought to speak with that Cowled Wizard, Phedra, again before she changes her mind. */
== RH#ISRJ IF ~Global("rh#IsraQuestOne","GLOBAL",13)~ THEN @285 /* I would like to let her know what has transpired as soon as possible. */
EXIT

CHAIN IF WEIGHT #-1  ~Global("rh#IsraQuestOneReminder","GLOBAL",3)~ THEN RH#ISRJ reminder2
@286 /* <CHARNAME>, I cannot wait for you any longer. Forgive me, but I shall see to this matter on my own. */
DO ~SetGlobal("rh#IsraQuestOneReminder","GLOBAL",4)
SetGlobal("rh#IsraJoined","GLOBAL",0)
LeaveParty()
EscapeArea()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwoReminder","GLOBAL",1)~ THEN RH#ISRJ reminder3
@287 /* <CHARNAME>, I hope I needn't remind you that we had agreed to investigate Quentin Jysstev's current... problems? I do not relish the task either, but I would postpone it no longer. */
DO ~SetGlobalTimer("rh#IsraQuestTwoReminderTimer","GLOBAL",SEVEN_DAYS) 
SetGlobal("rh#IsraQuestTwoReminder","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestTwoReminder","GLOBAL",3)~ THEN RH#ISRJ reminder4
@286 /* <CHARNAME>, I cannot wait for you any longer. Forgive me, but I shall see to this matter on my own. */
DO ~SetGlobal("rh#IsraQuestTwoReminder","GLOBAL",4)
SetGlobal("rh#IsraJoined","GLOBAL",0)
LeaveParty()
EscapeArea()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestThreeReminder","GLOBAL",1)~ THEN RH#ISRJ reminder5
@288 /* <CHARNAME>, I know that there are other matters of importance, but I am of no use to anyone like this! Could we please return to the Temple of Lathander as quickly as possible? */
DO ~SetGlobalTimer("rh#IsraQuestThreeReminderTimer","GLOBAL",SEVEN_DAYS) 
SetGlobal("rh#IsraQuestTwoReminder","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestThreeReminder","GLOBAL",3)~ THEN RH#ISRJ reminder6
@289 /* <CHARNAME>, I cannot wait for you any longer. Forgive me, but I shall see to my restoration on my own. */
DO ~SetGlobal("rh#IsraQuestThreeReminder","GLOBAL",4)
SetGlobal("rh#IsraJoined","GLOBAL",0)
LeaveParty()
EscapeArea()~
EXIT