BEGIN RH#ISR
BEGIN RH#ALIA
BEGIN RH#RANA
BEGIN RH#THUG1
BEGIN RH#QUENT

// ---------------------------------------------
// Den of the Seven Vales
// ---------------------------------------------

CHAIN IF ~Global("rh#IsraSevenVales","GLOBAL",1)~ THEN RH#ISR den1
@0 /* You cannot expect me to believe that you know nothing of this matter, Alia. */ 
DO ~SetGlobal("rh#IsraSevenVales","GLOBAL",2)~ 
== RH#ALIA @1 /* What I know isn't important. The fact that you're even wasting your time on this... you're a knight now, Isra. Surely you have more important things to worry about. */
== RH#ISR @2 /* She is my sister also. */
== RH#ALIA @3 /* Yes, and it took you how many years to remember that? */
= @4 /* I understand that you're concerned, but she's capable of taking care of herself. She has so far. */
== RH#ISR @5 /* The evidence would certainly imply otherwise. */
== RH#ALIA @6 /* Izzy, let it go already. The Jysstevs aren't as bad as you think they are. Even the one she married. */
== RH#ISR @7 /* So you will tell me nothing? Nothing at all? If the situation is anywhere near as dire as I've heard, this is unbelievably irresponsible of you-- */
== RH#ALIA @8 /* Yes, well, that can't be much of a surprise by now. */
= @9 /* Go back to Crimmor, Izzy. Pursue this, and you may not like what you find. */
== RH#ISR @10 /* You know I can't do that. There is something very wrong here, even if you're not willing to admit it. */
== RH#ALIA @11 /* Fine. Do as you wish, but don't be surprised if the Jysstevs aren't exactly pleased to see you. */
== RH#ISR @12 /* I can't imagine that their welcome could prove colder than yours. */
DO ~EscapeAreaDestroy(5)~
EXIT

CHAIN IF ~OR(2) Global("rh#IsraSevenVales","GLOBAL",3) Global("rh#IsraSevenVales","GLOBAL",4)~ THEN RH#ALIA den2
@13 /* I do hope you enjoyed the show. */
DO ~SetGlobal("rh#IsraSevenVales","GLOBAL",5)~ 
END
	+ ~!Alignment(Player1,MASK_EVIL)~ + @14 /* I'm sorry to intrude. Isra was a friend of mine up north. */ + den2.1
	++ @15 /* Maybe it's not my place, but is there anything I can do to help? */ + den2.2
	++ @16 /* It was definitely loud enough. I'll be going now. */ + den2.3

CHAIN RH#ALIA den2.1
@17 /* Up north? Hmm. You must be <CHARNAME>, then. Interesting. */
= @18 /* If you're determined to get involved, I certainly won't try to stop you, though the best thing you could do is head to the estate and convince Izzy to drop this nonsense. Maybe she'd even listen. */
DO ~SetGlobal("rh#IsraWasInBGI","GLOBAL",1)
AddJournalEntry(@19 /* A Family Affair

I ran across Isra in the Den of Seven Vales, though she did not seem to notice me. She appears to have become embroiled in a bit of intrigue involving her sister and the powerful Jysstev family. I'll have to consider visiting their estate in the Government District if I want to learn more. */,QUEST)~
EXIT

CHAIN RH#ALIA den2.2
@20 /* Ah... no. No, we have far too much help right now as it is. */
= @21 /* If you're determined to get involved, the best thing you could do is head to the estate and convince my sister to drop this nonsense, though I can't imagine she'd listen. */
DO ~AddJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */,QUEST)~
EXIT

CHAIN RH#ALIA den2.3
@23 /* Wonderful. */
DO ~AddJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */,QUEST)~
EXIT

// ---------------------------------------------
// Government District
// ---------------------------------------------

CHAIN IF ~Global("rh#IsraRanaAttacked","GLOBAL",1)~ THEN RH#RANA govt1
@24 /* Wait! This is... this is just a big misunderstanding-- */
= @25 /* You there! Help me, please! */
== RH#THUG1 @26 /* Dammit! That blasted wizard won't be happy about complications. Kill them all! */
DO ~SetGlobal("rh#IsraRanaAttacked","GLOBAL",2) 
ActionOverride("rh#thug2",Enemy()) 
Enemy()~
EXIT

CHAIN IF ~Global("rh#IsraRanaAttacked","GLOBAL",3)~ THEN RH#RANA govt2
@27 /* Thank you, <PRO_SIRMAAM>... thank you. You very likely saved my life. */
= @28 /* I...I don't expect another attack, but if you could escort me to the Jysstev estate, I would be very grateful. */
DO ~SetGlobal("rh#IsraRanaAttacked","GLOBAL",4)~
END
	++ @29 /* It would be my pleasure. */ + govt2.1
	++ @30 /* Exactly how grateful are we talking about here? */ + govt2.2
	++ @31 /* I have no desire to get wrapped into this any further, lady. */ + govt2.3

CHAIN RH#RANA govt2.1
@32 /* Again, you have my thanks. The estate is just around the corner, if you'd please follow me. */
DO ~SetGlobal("rh#IsraRanaEscort","GLOBAL",1)
AddJournalEntry(@33 /* A Family Affair

I have agreed to escort Rana Jysstev, a noblewoman I rescued from several thugs, to her estate. Perhaps someone there will be willing to explain exactly why she is being threatened. */,QUEST)
StartCutSceneMode() 
StartCutScene("rh#isct4")~
EXIT

CHAIN RH#RANA govt2.2
@34 /* My husband will surely want to reward you for your trouble. The estate is just around the corner, if you would please follow me. */
DO ~SetGlobal("rh#IsraRanaEscort","GLOBAL",1)
AddJournalEntry(@33 /* A Family Affair

I have agreed to escort Rana Jysstev, a noblewoman I rescued from several thugs, to her estate. Perhaps someone there will be willing to explain exactly why she is being threatened. */,QUEST)
StartCutSceneMode() 
StartCutScene("rh#isct4")~
EXIT

CHAIN RH#RANA govt2.3
@35 /* Of course. Very well then, stranger. Good <DAYNIGHT>. */
DO ~EscapeAreaDestroy(5)

EraseJournalEntry(@19 /* A Family Affair

I ran across Isra in the Den of Seven Vales, though she did not seem to notice me. She appears to have become embroiled in a bit of intrigue involving her sister and the powerful Jysstev family. I'll have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */) 

AddJournalEntry(@36 /* A Family Affair

I rescued Rana Jysstev from several thugs, though I have decided not to get further involved in her family's intrigue. */,QUEST_DONE)~
EXIT

// ---------------------------------------------
// Jysstev Estate
// ---------------------------------------------

// 1.
CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",1)~ THEN RH#QUENT jyss1
@37 /* Rana? By the gods, you're bleeding! You should know better to associate with such-- */
DO ~SetGlobal("rh#IsraJysstevEstate","GLOBAL",2)~
== RH#RANA IF ~NumInPartyGT(1)~ THEN @38 /* Calm down, Quentin. It isn't what you think. These people saved my life. */
== RH#RANA IF ~!NumInPartyGT(1)~ THEN @39 /* Calm down, Quentin. It isn't what you think. This <PRO_MANWOMAN> saved my life. */
== RH#QUENT @40 /* Hmph. If you had heeded your sister's warning-- */
== RH#ISR @41 /* Indeed. What happened, Rana? You told me that you didn't need an escort. You insisted that the rumors of trouble were exaggeration. */
== RH#RANA @42 /* This is Athkatla. I'll have to hire myself some new guards. I said that I didn't need you hovering over my shoulder, and I meant it. */
== RH#QUENT @43 /* Your sister is only trying to help, Rana. */
== RH#RANA @44 /* Really. I'm not sure I've ever heard you defend her before. */
== RH#QUENT @45 /* This isn't the time for grudges. Your life is clearly in danger now, and we cannot continue to pretend that this will simply go away-- */
= @46 /* Isra, if you have something to say, say it. I grow tired of the constant glares. */
== RH#ISR @47 /* I have little to say now that I haven't said before. */
== RH#RANA @48 /* Surely all of this infighting can wait until a better time? */
= @49 /* I'm sorry, <CHARNAME>. No doubt you have other business to attend to. Quentin can see to a reward, if you require one. */
== RH#QUENT @50 /* Yes, of course. I trust this will be sufficient. */
DO ~GiveGoldForce(500)~
EXIT

// 2.
CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",2) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISR jyss2.1
@51 /* <CHARNAME>? By the gods, it is you. I am sorry... after last night's hectic ride from Crimmor, I can hardly think clearly. */ 
= @52 /* I don't know why you're in Athkatla, but thank Sune that you are. My sister... obviously all is not well here. */
DO ~SetGlobal("rh#IsraJysstevEstate","GLOBAL",3)~ 
END
	+ ~!InParty("Dorn")~ + @53 /* Isra, if you need any help, you only have to ask. */ + jyss2.3
	+ ~!InParty("Dorn")~ + @54 /* What exactly is going on here? */ + jyss2.4
	+ ~InParty("Dorn")~ + @53 /* Isra, if you need any help, you only have to ask. */ + jyss2.5
	+ ~InParty("Dorn")~ + @54 /* What exactly is going on here? */ + jyss2.5
	++ @55 /* Right. Well, good luck with that. See you around sometime. */ + jyss2.8
	
CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",2) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISR jyss2.2
@56 /* You have my heartfelt gratitude, my <PRO_LADYLORD>. Had you not been here... I don't care to even think about the likely outcome. */ 
DO ~SetGlobal("rh#IsraJysstevEstate","GLOBAL",3)~ 
END
	+ ~!Alignment(Player1,MASK_EVIL) !InParty("Dorn")~ + @57 /* If you need any further help, you only have to ask. */ + jyss2.3
	+ ~!Alignment(Player1,MASK_EVIL) !InParty("Dorn")~ + @54 /* What exactly is going on here? */ + jyss2.4
	+ ~OR(2) Alignment(Player1,MASK_EVIL) InParty("Dorn")~ + @57 /* If you need any further help, you only have to ask. */ + jyss2.6
	+ ~OR(2) Alignment(Player1,MASK_EVIL) InParty("Dorn")~ + @54 /* What exactly is going on here? */ + jyss2.7
	++ @55 /* Right. Well, good luck with that. See you around sometime. */ + jyss2.9

CHAIN RH#ISR jyss2.3
@58 /* That is very kind of you. */
= @59 /* Quentin, would you care to explain the situation? I would like to hear the full story myself. */
END
IF ~~ EXTERN RH#QUENT jyss2.10

CHAIN RH#ISR jyss2.4
@60 /* I would like to hear the full story myself. Quentin, would you care to explain the situation? */
END
IF ~~ EXTERN RH#QUENT jyss2.10

CHAIN RH#ISR jyss2.5
@61 /* <CHARNAME>, your current company... as much as I trust you, I would rather do without further assistance. At least for the moment. */
EXIT

CHAIN RH#ISR jyss2.6
@62 /* You have already done more than enough, my <PRO_LADYLORD>, I assure you. Good <DAYNIGHT>. */
DO ~SetGlobal("rh#IsraHelpRefused","GLOBAL",1)
EraseJournalEntry(@19 /* A Family Affair

I ran across Isra in the Den of Seven Vales, though she did not seem to notice me. She appears to have become embroiled in a bit of intrigue involving her sister and the powerful Jysstev family. I'll have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@33 /* A Family Affair

I have agreed to escort Rana Jysstev, a noblewoman I rescued from several thugs, to her estate. Perhaps someone there will be willing to explain exactly why she is being threatened. */)

AddJournalEntry(@63 /* A Family Affair

I have been paid for my service to the Jysstev family. They seem to have no further need for my assistance. */,QUEST_DONE)~
EXIT

CHAIN RH#ISR jyss2.7
@64 /* Nothing you need concern yourself with any further, my <PRO_LADYLORD>. Your assistance is appreciated. */
DO ~SetGlobal("rh#IsraHelpRefused","GLOBAL",1)EraseJournalEntry(@19 /* A Family Affair

I ran across Isra in the Den of Seven Vales, though she did not seem to notice me. She appears to have become embroiled in a bit of intrigue involving her sister and the powerful Jysstev family. I'll have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@33 /* A Family Affair

I have agreed to escort Rana Jysstev, a noblewoman I rescued from several thugs, to her estate. Perhaps someone there will be willing to explain exactly why she is being threatened. */)

AddJournalEntry(@63 /* A Family Affair

I have been paid for my service to the Jysstev family. They seem to have no further need for my assistance. */,QUEST_DONE)~
EXIT

CHAIN RH#ISR jyss2.8
@65 /* Of course. 'Twas a pleasure to see you again, my <PRO_LADYLORD>. If you will excuse me, there are things I must see to. */
EXIT

CHAIN RH#ISR jyss2.9
@66 /* Of course. Your assistance is appreciated, my <PRO_LADYLORD>. Good <DAYNIGHT>. */
EXIT

CHAIN RH#QUENT jyss2.10
@67 /* If I must. The men you encountered to<DAYNIGHT>, <CHARNAME>... their attack was not entirely unexpected. My wife and I have been receiving threatening letters for several weeks now. */
= @68 /* I can only guess that a business rival is attempting to intimidate us, though who in specific it might be, I could not say. */
== RH#RANA @69 /* Quentin, I can take care of matters myself. This really isn't necessary. */
== RH#QUENT @70 /* I'm afraid it is. */
== RH#ISR IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN @71 /* I intend to look into matters myself. If you wish to help, <CHARNAME>... you must know that I would be glad of your company. */
== RH#ISR IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN @72 /* I intend to look into matters myself. If you wish to help... you are obviously already involved anyway. */
END
	++ @73 /* I would be happy to aid you in this. */ EXTERN RH#ISR jyss2.11
	++ @74 /* We can at least look into the situation. */ EXTERN RH#ISR jyss2.11
	++ @75 /* I really don't have the time right now. */ EXTERN RH#ISR jyss2.12

CHAIN RH#ISR jyss2.11
@76 /* I'm glad to hear it. */ 
DO ~SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~
END
IF ~~ EXTERN RH#QUENT jyss2.13

CHAIN RH#ISR jyss2.12
@77 /* I see. You have my thanks all the same. Farewell. */
EXIT

CHAIN RH#QUENT jyss2.13
@78 /* Then it is settled. */
= @79 /* <CHARNAME>, this is one of the letters that we received. The initials GD... it is not much, but perhaps they will lead you to whomever is responsible for these attacks. */
= @80 /* Thank you, and the gods be with you. */
DO ~SetGlobalTimer("rh#IsraQuestOneReminderTimer","GLOBAL",SEVEN_DAYS) 
SetGlobal("rh#IsraQuestOne","GLOBAL",1)
GiveItemCreate("rh#lttr",Player1,1,0,0)

AddJournalEntry(@81 /* A Family Affair

I have decided to assist Quentin Jysstev in discovering who has been threatening his family. The only piece of evidence he was willing to share, however, was a letter signed with the initials GD. I may need to make inquiries elsewhere. */,QUEST)~
EXIT

// 3.
CHAIN IF ~OR(2) Global("rh#IsraHelpRefused","GLOBAL",1) InParty("Dorn")~ THEN RH#ISR evil1
@82 /* I am grateful for your help, my <PRO_LADYLORD>, but surely you have your own concerns to see to? */
EXIT

CHAIN IF ~OR(2) Global("rh#IsraHelpRefused","GLOBAL",1) InParty("Dorn")~ THEN RH#RANA evil2
@83 /* Thank you again for your aid, <PRO_SIRMAAM>. */
EXIT

CHAIN IF ~OR(2) Global("rh#IsraHelpRefused","GLOBAL",1) InParty("Dorn")~ THEN RH#QUENT evil3
@84 /* Further assistance will not be necessary, <PRO_SIRMAAM>. */
EXIT

CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",3) Global("rh#IsraQuestOne","GLOBAL",0)~ THEN RH#ISR questrestart
@85 /* How may I help you? */ 
END
	+ ~!Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ + jyss2.4
	+ ~Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ + jyss2.6
	++ @87 /* Never mind. */ + jyss2.9

CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",3) Global("rh#IsraQuestOne","GLOBAL",0)~ THEN RH#QUENT questrestart
@88 /* Yes? */
END
	+ ~!Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ EXTERN RH#ISR jyss2.4
	+ ~Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ EXTERN RH#ISR jyss2.6
	++ @87 /* Never mind. */ + restart2

CHAIN RH#QUENT restart2
@89 /* Your help is appreciated. */
EXIT

CHAIN IF ~Global("rh#IsraJysstevEstate","GLOBAL",3) Global("rh#IsraQuestOne","GLOBAL",0)~ THEN RH#RANA questrestart
@90 /* What is it? */
END
	+ ~!Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ EXTERN RH#ISR jyss2.4
	+ ~Alignment(Player1,MASK_EVIL)~ + @86 /* I've changed my mind about getting involved. */ EXTERN RH#ISR jyss2.6
	++ @87 /* Never mind. */ + restart2

CHAIN RH#RANA restart2
@91 /* Thank you again. */
EXIT

// ---------------------------------------------
// A Family Affair
// ---------------------------------------------

BEGIN RH#ISRJ
BEGIN RH#PHEDR
BEGIN RH#GELIO

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestOne","GLOBAL",2) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ q1a
@92 /* This is not exactly how I would have wished for you to meet my family, though had you not been there... I do not care to even think about it, <CHARNAME>. */ 
= @93 /* I only just arrived in Athkatla myself, and not a moment too early, apparently. When I heard word of my sister's predicament... 'twill be some time before the stables in Crimmor lend me another horse, I'm afraid. */ 
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",3)~
END
	++ @94 /* You didn't kill the poor thing, I hope. */ + q1.1
	++ @95 /* I'm happy to see you again regardless, Isra. */ + q1.2
	++ @96 /* At least now I know you weren't exaggerating the dysfunctional family. */ + q1.3

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestOne","GLOBAL",2) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ q1b
@97 /* I should thank you in advance, my <PRO_LADYLORD>, and apologize for the inconvenience. My family troubles... really, 'tis good of you to involve yourself. */ 
= @98 /* Forgive me my discourtesy... I should at least introduce myself properly. I am Isra Ghadir, of the Order of the Ruby Rose. */
= @99 /* My duties do not often bring me into Athkatla, but when I heard word of my sister's predicament... 'twill be some time before the stables in Crimmor lend me another horse, I'm afraid. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",3)~
END
	++ @94 /* You didn't kill the poor thing, I hope. */ + q1.1
	++ @100 /* It's a pleasure to meet you, my lady. */ + q1.4
	++ @101 /* The Ruby Rose? What's that? */ + q1.5
	+ ~!Class(Player1,PALADIN_ALL)~ + @102 /* Order? Duties? Gods, did I accidentally just let a paladin into my party? */ + q1.6
	
APPEND RH#ISRJ

IF ~~ q1.1
 SAY @103 /* No, I did not... though only because I healed her afterward. */
IF ~~ + q1.7
END

IF ~~ q1.2
 SAY @104 /* (smile) And I you, though I doubt we can spare the time for a proper reunion just yet. */
IF ~~ + q1.7
END

IF ~~ q1.3
 SAY @105 /* No... no I was not, though this is a poor time to complain. */
IF ~~ + q1.7
END

IF ~~ q1.4
 SAY @106 /* The sentiment is quite mutual, I assure you. */
IF ~~ + q1.7
END

IF ~~ q1.5
 SAY @107 /* 'Tis a paladinic order devoted to Sune Firehair. As much as I would like to describe it further, this is probably a poor time for such things. */
IF ~~ + q1.7
END

IF ~~ q1.6
 SAY @108 /* If you continue to display such poor manners, you will not need to worry about your... mistake for long. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ + q1.7
END

IF ~~ q1.7
 SAY @109 /* Come, I would like to take a look at your late attackers before we attempt to decipher that letter. Hopefully they will have left some clue as to their employer's identity as well. */
IF ~~ EXIT
END
END

// 2.
CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestOne","GLOBAL",4)~ THEN RH#ISRJ q2
@110 /* These men... I am certain I've seen them before. */ 
= @111 /* Oh, yes. They used to frequent the Den of the Seven Vales. I can guess all too well now how they obtained their drinking money. */
= @112 /* Perhaps we should visit Patricia in the tavern... she may know more about them. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",5)

AddJournalEntry(@113 /* A Family Affair

Isra believes that Rana's attackers may have once frequented the Den of the Seven Vales. Hopefully the innkeeper can tell me who they were. */,QUEST)	

ActionOverride("rh#rat",DestroySelf())~
EXIT

EXTEND_BOTTOM SEVBAR01 0
	+ ~Global("rh#IsraQuestOne","GLOBAL",5)~ + @114 /* I'm wondering if you could tell me anything about several of your late customers. */ + q2.1
END

EXTEND_BOTTOM SEVBAR01 1
	+ ~Global("rh#IsraQuestOne","GLOBAL",5)~ + @114 /* I'm wondering if you could tell me anything about several of your late customers. */ + q2.1
END

CHAIN SEVBAR01 q2.1
@115 /* Late, ye say? Well, that's no wonder. There are a handful I haven't seen recently, thank all the gods. */
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @116 /* These often preferred that back corner, as I recall. I'm afraid I don't remember their names. */
== SEVBAR01 IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @117 /* Neither do I, though I think I know who yer talkin' about. What do you want with them? */
END
	++ @118 /* They attacked someone. I want to know why. */ EXTERN SEVBAR01 q2.2
	++ @119 /* Had they mentioned anything strange recently? */ EXTERN SEVBAR01 q2.3
	++ @120 /* Do you know if they were working for someone? */ EXTERN SEVBAR01 q2.3
	
CHAIN SEVBAR01 q2.2
@121 /* Did they? That's none too surprisin'. */
END
IF ~~ THEN EXTERN SEVBAR01 q2.3

CHAIN SEVBAR01 q2.3
@122 /* Come to think of it, one of them had taken to mentionin' Cowled Wizards at his drunken best. Their deep pockets, that is. */
= @123 /* He wasn't stupid enough to name the mage, but if they got themselves into some trouble, I reckon it's related. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",6)

AddJournalEntry(@124 /* A Family Affair

Patricia, the proprietor of the Den of the Seven Vales, believes that the Rana's attackers had become involved with one of the Cowled Wizards. Perhaps I can ask the mages themselves, though I do not expect them to be very forthcoming. */,QUEST)~
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @125 /* A Cowled Wizard? They do have their headquarters in the city, though they tend to be an insular group. */
== SEVBAR01 IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @126 /* I wouldn't expect much cooperation out of them, but it's as fine a place to start as any. */
EXIT

// Corneil

EXTEND_BOTTOM CORNEIL 0
	+ ~Global("rh#IsraQuestOne","GLOBAL",6)~ + @127 /* Is there any Cowled Wizard in the city whose initials are GD? */ + q2.4
END

CHAIN CORNEIL q2.4
@128 /* I have nothing to say to you of any wizard, whatever his initials. Ask me no more of such things. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",7)

AddJournalEntry(@129 /* A Family Affair

I have asked Corneil, a Cowled Wizard in the government building, if he knows who the mysterious GD might be. He wasn't very obliging, of course. */,QUEST)~
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @130 /* Such vehemence... he knows something, <CHARNAME>. I am almost certain of it. Though if he won't speak... I don't relish the thought of searching Athkatla house by house. */
EXIT

// Phedra

CHAIN IF ~GlobalLT("rh#IsraQuestOne","GLOBAL",7)~ THEN RH#PHEDR q3x
@131 /* I'm very busy, citizen. Leave me be. */
EXIT

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",7)~ THEN RH#PHEDR q3
@132 /* I couldn't help but overhear your inquiry, <PRO_SIRMAAM>. I assume you have some... grievance with this particular Cowled Wizard? */ 
= @133 /* By the looks of that note he's left you, it would certainly seem that you do. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",8)~
END
	++ @134 /* Does it make much of a difference? */ + q3.1
	++ @135 /* You could put it like that. */ + q3.2
	++ @136 /* Oh, no. I'm sure that this mess can be sorted out. */ + q3.3
	++ @137 /* Can you tell me who he is? */ + q3.4

APPEND RH#PHEDR

IF ~~ q3.1
 SAY @138 /* It does, though I doubt your feelings for this man are any kinder than my own. Most people learn to steer clear of doing him any favors; he has a way of sinking his claws into a benefactor, so to speak. */
IF ~~ + q3.5
END

IF ~~ q3.2
 SAY @139 /* Well, then. That makes things easier. That he has made a new enemy is not surprising... most people learn to steer clear of doing him any favors; he has a way of sinking his claws into a benefactor, so to speak. */
IF ~~ + q3.5
END

IF ~~ q3.3
 SAY @140 /* Most decent people learn to steer clear of doing Gelion Deymiare any favors. He has a way of sinking his claws into a benefactor, so to speak. */
IF ~~ + q3.5
END

IF ~~ q3.4
 SAY @141 /* His name is Gelion Deymiare. Most decent people learn to steer clear of doing him any favors; he has a way of sinking his claws into a benefactor, so to speak. */
IF ~~ + q3.5
END

IF ~~ q3.5
 SAY @142 /* Gelion's ego may surpass his skill, but he's still a conjurer not to be trifled with. Few within the Cowled Wizards would mourn his passing, however, if you mean to deal with him... permanently. */
	++ @143 /* What sort of favors do people learn not to do for him? */ + q3.6
	++ @144 /* Few would mourn his passing... including you, I take it. */ + q3.7
	++ @145 /* Do you think I'll have to deal with him permanently? */ + q3.8
	++ @146 /* I didn't expect any Cowled Wizards to be eager to speak to me. */ + q3.9
END

IF ~~ q3.6
 SAY @147 /* I would know nothing of such things, of course. */
IF ~~ + q3.9
END

IF ~~ q3.7
 SAY @148 /* Especially me. */
IF ~~ + q3.9
END

IF ~~ q3.8
 SAY @149 /* Someone will have to, sooner or later. */
IF ~~ + q3.9
END

IF ~~ q3.9
 SAY @150 /* Enough talk. I shouldn't be discussing such things with outsiders, but as I said, few within our ranks would mourn him. */
 = @151 /* I can show you to his house, if you wish it. */
	++ @152 /* I would appreciate that. */ + q3.10
	++ @153 /* I'm not ready. Later, perhaps. */ + q3.11
END	

IF ~~ q3.10
 SAY @154 /* Very well. */
IF ~~ DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",9)
AddJournalEntry(@155 /* A Family Affair

Phedra, a Cowled Wizard who overheard my short conversation with Corneil, has proved somewhat more helpful. GD is apparently Gelion Deymiare, a conjurer of some skill. Phedra is willing to take me to his home in Athkatla. She seems to bear a grudge against him as well. */,QUEST)
StartCutSceneMode() 
StartCutScene("rh#isct5")~ EXIT
END

IF ~~ q3.11
 SAY @156 /* I won't promise that I'll still be available. */
IF ~~ DO ~AddJournalEntry(@155 /* A Family Affair

Phedra, a Cowled Wizard who overheard my short conversation with Corneil, has proved somewhat more helpful. GD is apparently Gelion Deymiare, a conjurer of some skill. Phedra is willing to take me to his home in Athkatla. She seems to bear a grudge against him as well. */,QUEST)~ EXIT
END

IF ~Global("rh#IsraQuestOne","GLOBAL",8)~ THEN BEGIN q3.12
 SAY @157 /* I did not expect to see you again so soon. */ 
	++ @158 /* Could you take me back to his house now? */ + q3.13
	++ @159 /* I'm still considering your offer. */ + q3.14
END

IF ~~ q3.13
 SAY @154 /* Very well. */
IF ~~ DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",9)
StartCutSceneMode() 
StartCutScene("rh#isct5")~ EXIT
END

IF ~~ q3.14
 SAY @160 /* Are you? Don't take too much time. */
IF ~~ EXIT
END
END

// Phedra takes you to Gelion's house

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",9)~ THEN RH#PHEDR q4.1
@161 /* If I'm not mistaken, Gelion should be upstairs. Speak with me again once you've done what you came for. */ 
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",10)~
EXIT

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",10) !Dead("rh#gelion")~ THEN RH#PHEDR q4.2
@162 /* Take your sweet time. Hopefully he won't notice. */ 
EXIT

// Fighting Gelion

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",10)~ THEN RH#GELIO q5.1
@163 /* You have made a terrible mistake by intruding upon me here, <PRO_GIRLBOY>. What do you mean by this? */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",11)~
END
	++ @164 /* I want you to stop harassing the Jysstevs. */ + q5.2
	++ @165 /* I mean to kill you, naturally. */ + q5.3
	++ @166 /* Sorry, I'll be going now. */ + q5.4
	
CHAIN RH#GELIO q5.2
@167 /* I should have expected them to grow so bold. I shall deal with you first, and then your masters. */
DO ~Enemy()
AddJournalEntry(@168 /* A Family Affair

I have slain the wizard Gelion Deymiare. Whatever business he had with the Jysstevs is still a mystery, though he will trouble them no more. */,QUEST)~
EXIT
	
CHAIN RH#GELIO q5.3
@169 /* Jysstev and his whore sent you, didn't they? */
END
IF ~~ EXTERN RH#GELIO q5.2
	
CHAIN RH#GELIO q5.4
@170 /* Wait one moment... Jysstev and his whore sent you, didn't they? */
END
IF ~~ EXTERN RH#GELIO q5.2

// Returning to Phedra

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",11) !Dead("rh#gelion")~ THEN RH#PHEDR q5.5
@171 /* You cannot mean to leave this half finished. */ 
EXIT

CHAIN IF ~Dead("rh#gelion") OR(2) Global("rh#IsraQuestOne","GLOBAL",10) Global("rh#IsraQuestOne","GLOBAL",11)~ THEN RH#PHEDR q5.6
@172 /* He is dead, then? Yes... yes, I imagine he would have otherwise followed you downstairs in a fury. Well, that is one less rival to worry myself over. */ 
= @173 /* Come, I'll return you to the Government District now. We won't speak of this again. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",12)
StartCutSceneMode() 
StartCutScene("rh#isct6")~ EXIT

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",12)~ THEN RH#PHEDR q5.7
@174 /* It has been a pleasure working with you, <CHARNAME>. Forgive me if I now make myself scarce. */ 
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",13) EscapeAreaDestroy(5)
AddJournalEntry(@175 /* A Family Affair

Phedra has gone her own way, and I doubt I will see her again. All that remains to be done now is to inform the Jysstevs of my findings. */,QUEST)~
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN @176 /* I cannot say that I'm sorry this mess is over. We ought to make haste for the Jysstev estate. I am sure Rana and Quentin will want to know what has transpired. */
EXIT

// Returning to the Jysstevs

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",13) InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#RANA q6.1
@177 /* Have you learned anything? */
== RH#ISRJ @178 /* Aye, we have. A Cowled Wizard named Gelion Deymiare was behind the attack. What he wanted with you, however, I could not say. */
== RH#RANA @179 /* When it comes to the mages, who can? He is... dead now, I trust? */
== RH#ISRJ @180 /* He is. */
END
IF ~~ THEN EXTERN RH#QUENT q6.8

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",13) InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#QUENT q6.2
@181 /* You've returned. With good news, I hope? */
== RH#ISRJ @182 /* Good enough, aye. A Cowled Wizard named Gelion Deymiare was behind the attack. What he wanted with you, however, I could not say. */
== RH#RANA @179 /* When it comes to the mages, who can? He is... dead now, I trust? */
== RH#ISRJ @180 /* He is. */
END
IF ~~ THEN EXTERN RH#QUENT q6.8

CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",13)~ THEN RH#RANA q6.3
@177 /* Have you learned anything? */
END
	++ @183 /* I hope you weren't adverse to the situation ending violently. */ EXTERN RH#RANA q6.5
	++ @184 /* Does the name Gelion Deymiare mean anything to you? */ EXTERN RH#RANA q6.6
	++ @185 /* It was a Cowled Wizard. What he wanted with you, I'm not sure. */ EXTERN RH#RANA q6.7
	
CHAIN IF ~Global("rh#IsraQuestOne","GLOBAL",13)~ THEN RH#QUENT q6.4
@181 /* You've returned. With good news, I hope? */
END
	++ @183 /* I hope you weren't adverse to the situation ending violently. */ EXTERN RH#RANA q6.5
	++ @184 /* Does the name Gelion Deymiare mean anything to you? */ EXTERN RH#RANA q6.6
	++ @185 /* It was a Cowled Wizard. What he wanted with you, I'm not sure. */ EXTERN RH#RANA q6.7
	
CHAIN RH#RANA q6.5
@186 /* No... no, not at all. */
END
IF ~~ THEN EXTERN RH#QUENT q6.8

CHAIN RH#RANA q6.6
@187 /* Gelion Deymiare... I-I cannot say that it does. He is dead now, I trust? No... of course he is. */
END
IF ~~ THEN EXTERN RH#QUENT q6.8

CHAIN RH#RANA q6.7
@188 /* Who can say for certain? But he is dead now, I trust? No... of course he is. */
END
IF ~~ THEN EXTERN RH#QUENT q6.8

CHAIN RH#QUENT q6.8
@189 /* Permanent solutions tend to be required for problems such as this. I am sure we can compensate you properly for the complications, <CHARNAME>. */
= @190 /* The past few days have been harrowing for us all. The butler can show you out when you are ready to leave. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",14) AddexperienceParty(21250) GiveGoldForce(2000)

EraseJournalEntry(@19 /* A Family Affair

I ran across Isra in the Den of Seven Vales, though she did not seem to notice me. She appears to have become embroiled in a bit of intrigue involving her sister and the powerful Jysstev family. I'll have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@22 /* A Family Affair

I seem to have stumbled upon a bit of intrigue involving the powerful Jysstev family. I will have to consider visiting their estate in the Government District if I want to learn more. */) 

EraseJournalEntry(@33 /* A Family Affair

I have agreed to escort Rana Jysstev, a noblewoman I rescued from several thugs, to her estate. Perhaps someone there will be willing to explain exactly why she is being threatened. */)

EraseJournalEntry(@81 /* A Family Affair

I have decided to assist Quentin Jysstev in discovering who has been threatening his family. The only piece of evidence he was willing to share, however, was a letter signed with the initials GD. I may need to make inquiries elsewhere. */)

EraseJournalEntry(@113 /* A Family Affair

Isra believes that Rana's attackers may have once frequented the Den of the Seven Vales. Hopefully the innkeeper can tell me who they were. */)

EraseJournalEntry(@124 /* A Family Affair

Patricia, the proprietor of the Den of the Seven Vales, believes that the Rana's attackers had become involved with one of the Cowled Wizards. Perhaps I can ask the mages themselves, though I do not expect them to be very forthcoming. */)

EraseJournalEntry(@129 /* A Family Affair

I have asked Corneil, a Cowled Wizard in the government building, if he knows who the mysterious GD might be. He wasn't very obliging, of course. */)

EraseJournalEntry(@155 /* A Family Affair

Phedra, a Cowled Wizard who overheard my short conversation with Corneil, has proved somewhat more helpful. GD is apparently Gelion Deymiare, a conjurer of some skill. Phedra is willing to take me to his home in Athkatla. She seems to bear a grudge against him as well. */)	

EraseJournalEntry(@168 /* A Family Affair

I have slain the wizard Gelion Deymiare. Whatever business he had with the Jysstevs is still a mystery, though he will trouble them no more. */)

EraseJournalEntry(@175 /* A Family Affair

Phedra has gone her own way, and I doubt I will see her again. All that remains to be done now is to inform the Jysstevs of my findings. */)

AddJournalEntry(@191 /* A Family Affair

The Jysstevs are pleased to hear that Gelion Deymiare is no more, though they were not very forthcoming about the reasons he was harassing them at all. It is possible that they do not even know. I may yet one day get to the bottom of this scheme, though that day may be very far away indeed. */,QUEST_DONE)~
EXIT

CHAIN IF ~GlobalGT("rh#IsraQuestOne","GLOBAL",0) GlobalLT("rh#IsraQuestOne","GLOBAL",16)~ THEN RH#RANA help2
@192 /* There's nothing more to tell, <CHARNAME>. You may well know more than we do by now. */
EXIT

CHAIN IF ~GlobalGT("rh#IsraQuestOne","GLOBAL",0) GlobalLT("rh#IsraQuestOne","GLOBAL",16)~ THEN RH#QUENT help3
@193 /* I have told you everything I know, <PRO_SIRMAAM>. Good luck. */
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("rh#IsraQuestOne","GLOBAL",0) GlobalLT("rh#IsraQuestOne","GLOBAL",14) Global("SarlesSpawn","GLOBAL",0)~ THEN SCQAR qar1
@194 /* Your business is with my cousin, peasant, not with myself. */
DO ~SetNumTimesTalkedTo(0)~ 
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("rh#IsraQuestOne","GLOBAL",0) GlobalLT("rh#IsraQuestOne","GLOBAL",14) Global("SarlesSpawn","GLOBAL",0) !Global("JanLissaPlot","GLOBAL",8) !Global("JanLissaPlot","GLOBAL",9)~ THEN SCLJYSS lady1
@195 /* Goodness, you must be the adventurers that Rana and Quentin have hired... how very odd. */
DO ~SetNumTimesTalkedTo(0)~ 
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("rh#IsraJysstevEstate","GLOBAL",0) !Global("rh#IsraJysstevButler","GLOBAL",1)~ THEN SCBUTLER butler1
@196 /* Oh! I did not realize that Lady Rana had company. Excuse me. */
DO ~SetGlobal("rh#IsraJysstevButler","GLOBAL",1)~
EXIT

EXTEND_BOTTOM SCBUTLER 0
	+ ~GlobalGT("rh#IsraQuestOne","GLOBAL",0) GlobalLT("rh#IsraQuestOne","GLOBAL",14)~ + @197 /* I'm here to speak with Rana and Quentin Jysstev. */ + butler2
END

CHAIN SCBUTLER butler2
@198 /* Yes, you were going to help them with some bother or another, I suppose. You are expected. */
EXIT

// Isra's post quest comments

CHAIN IF WEIGHT #-1 ~Global("rh#IsraQuestOne","GLOBAL",15)~ THEN RH#ISRJ q7
@199 /* I should thank you for your help, my <PRO_LADYLORD>. Intrigue is not exactly where my own talents lie. */ 
= @200 /* I might have preferred more... concrete answers, but I know as well as any that Athkatla seldom provides them. */
DO ~SetGlobal("rh#IsraQuestOne","GLOBAL",16)~
END
	++ @201 /* Yes, I've certainly noticed that as well. */ + q7.1
	++ @202 /* At least your sister should be safe now. */ + q7.2
	++ @203 /* Answers will surface eventually, I'm sure. They usually do. */ + q7.3
	++ @204 /* Are you planning on returning to the Ruby Rose now? */ + q7.4

APPEND RH#ISRJ

IF ~~ q7.1
 SAY @205 /* I can believe it. */
IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.5
IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.6
END

IF ~~ q7.2
 SAY @206 /* And thank the gods for that much. */
IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.5
IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.6
END

IF ~~ q7.3
 SAY @207 /* Aye. We can only wait and watch, I suspect. */
IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.5
IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.6
END

IF ~~ q7.4
 SAY @208 /* I haven't quite decided yet. */
IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.5
IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + q7.6
END


IF ~~ q7.5
 SAY @209 /* Might I ask what brings you to Amn, <CHARNAME>? I wouldn't have expected to find you so far south, and... I know you well enough to suspect that this is no mere social call. */
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @210 /* I'm sure you've noticed by now that Imoen is missing. Her absence isn't voluntary. */ + q7.7
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @211 /* I have my own grievances with the Cowled Wizards. They've arrested Imoen, alongside the mage that captured us. */ + q7.7
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @212 /* I'm hunting a mage called Irenicus. His people kidnapped me in Baldur's Gate. */ + q7.8
	+ ~!GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @213 /* It's a long story, but a mage called Irenicus stole my soul. */ + q7.9
	+ ~!GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @214 /* I'm trying to help the elves of Suldanessellar. They're being threatened by a powerful wizard. */ + q7.10
END

IF ~~ q7.6
 SAY @215 /* Unless I am very much mistaken, you seem to have pressing business in the city of your own. Might I ask as to its nature? */
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @216 /* Aid is hard to come by in Athkatla, and I'm trying to rescue an old friend. */ + q7.11
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @217 /* I have my own grievances with the Cowled Wizards. They've arrested a friend, alongside the mage that captured us. */ + q7.11
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @212 /* I'm hunting a mage called Irenicus. His people kidnapped me in Baldur's Gate. */ + q7.8
	+ ~!GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @213 /* It's a long story, but a mage called Irenicus stole my soul. */ + q7.9
	+ ~!GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @214 /* I'm trying to help the elves of Suldanessellar. They're being threatened by a powerful wizard. */ + q7.10
END

IF ~~ q7.7
 SAY @218 /* Oh. I had wondered why she was not with you, though... I had hoped the explanation would not be so dark. */
IF ~~ + q7.12
END

IF ~~ q7.8
 SAY @219 /* I see. If your evil mage is anything like my sister's was, it sounds like a cause well worth pursuing. */
IF ~~ + q7.12
END

IF ~~ q7.9
 SAY @220 /* I... I see. I did not realize such things were possible. */
IF ~~ + q7.12
END

IF ~~ q7.10
 SAY @221 /* I cannot say I know much about the elven city, though that sounds like a cause well worth pursuing. */
IF ~~ + q7.12
END

IF ~~ q7.11
 SAY @222 /* I'm sorry to hear about that, <CHARNAME>. */
IF ~~ + q7.12
END

IF ~~ q7.12
 SAY @223 /* If you would care for my continued company, I've no other immediate obligations at the moment, and your quest seems as urgent as any. I would be happy to lend my aid to it. */
	+ ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + @224 /* You don't need to ask your order first this time? */ + q7.13
	+ ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + @225 /* Don't you have an order to answer to? */ + q7.14
	+ ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + @226 /* Stop being so formal. You should know by now that I would appreciate your company. */ + q7.15
	+ ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + @227 /* I would certainly appreciate your company. */ + q7.16
	++ @228 /* For a while, perhaps. I won't promise that it'll work out. */ + q7.17
	++ @229 /* I think it would be better if we parted ways. */ + q7.18
END

IF ~~ q7.13
 SAY @230 /* I'm no longer a squire, <CHARNAME>. The Ruby Rose affords its actual members a great deal of freedom. */
	++ @231 /* In that case, I would certainly appreciate your company. */ + q7.16
	++ @232 /* I see. Then we'll see if it works out this time, I suppose. */ + q7.17
	++ @229 /* I think it would be better if we parted ways. */ + q7.18
END

IF ~~ q7.14
 SAY @233 /* Aye, the Ruby Rose. It affords its members a degree of freedom to choose their own missions, however. */
	++ @234 /* In that case, I would appreciate your company. */ + q7.16
	++ @235 /* I see. Then we'll see if it works out, I suppose. */ + q7.17
	++ @229 /* I think it would be better if we parted ways. */ + q7.18
END

IF ~~ q7.15
 SAY @236 /* Aye, though time can change things. I'm glad that hasn't proven the case here. */
IF ~~ EXIT
END

IF ~~ q7.16
 SAY @237 /* I am glad to hear it. */
IF ~~ EXIT
END

IF ~~ q7.17
 SAY @238 /* I would not ask for more. */
IF ~~ EXIT
END

IF ~~ q7.18
 SAY @239 /* Should you change your mind, I mean to visit my sister in the Den of the Seven Vales. You might be able to find me there, at least for a time. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeAreaMove("AR0709",412,768,9)~ EXIT
END
END