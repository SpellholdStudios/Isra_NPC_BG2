// ---------------------------------------------
// Dorn
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("rh#IsraDornSoA","GLOBAL",1)~ THEN RH#ISRJ dorn
@0 /* My <PRO_LADYLORD>, this... this beast that you have taken into your company-- */
DO ~SetGlobal("rh#IsraDornSoA","GLOBAL",2)~
== DORNJ @1 /* You speak of me, paladin? Of course you do. I wonder, is it rage or fear that makes your voice shake so? */
== RH#ISRJ @2 /* Fear? If I recoil from you, fiend, 'tis out of revulsion, NOT fear. Whatever unholy pact you have made, the wrongness of it clings to you like a second skin. To be near you is to be ill. */
= @3 /* <CHARNAME>, if you will not put down this... this rabid dog, then you are as culpable as he. */
== DORNJ @4 /* You would keep such a simpering fool in your party, <CHARNAME>? Do not think that I will endure this one's sanctimonious nonsense any longer. */
END
	++ @5 /* Whoa! Is this really necessary? */ EXTERN DORNJ rh#dorn1
	++ @6 /* Very well. You brought this upon yourself, Isra. */ EXTERN RH#ISRJ rh#dorn2
	++ @7 /* I have no use for your vileness anyway, Dorn. */ EXTERN DORNJ rh#dorn3

CHAIN DORNJ rh#dorn1
@8 /* Do not expect me to make allowances for... delicate companions and their weakling gods. I will kill her, with your aid or without it. */
== RH#ISRJ @9 /* It may not prove as easy as that, fiend. */
END
	++ @10 /* You brought this upon yourself, Isra. */ EXTERN RH#ISRJ rh#dorn2
	++ @11 /* I have had enough of your vileness anyway, Dorn. */ EXTERN DORNJ rh#dorn3

CHAIN RH#ISRJ rh#dorn2
@12 /* Then this wretched creature has as good as dragged you down into the Abyss alongside him. If you do not fall to my sword, you will both surely fall to another's. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ rh#dorn3
@13 /* A poor decision, <CHARNAME>, and one that will be your last. */
DO ~SetGlobal("KICKEDOUT","LOCALS",1) LeaveParty() Enemy() Attack("rh#Isra2")~ 
EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("rh#IsraDornToB","GLOBAL",1)~ THEN RH#IS25J dorn
@0 /* My <PRO_LADYLORD>, this... this beast that you have taken into your company-- */
DO ~SetGlobal("rh#IsraDornToB","GLOBAL",2)~
== DORN25J @1 /* You speak of me, paladin? Of course you do. I wonder, is it rage or fear that makes your voice shake so? */
== RH#IS25J @2 /* Fear? If I recoil from you, fiend, 'tis out of revulsion, NOT fear. Whatever unholy pact you have made, the wrongness of it clings to you like a second skin. To be near you is to be ill. */
= @3 /* <CHARNAME>, if you will not put down this... this rabid dog, then you are as culpable as he. */
== DORN25J @4 /* You would keep such a simpering fool in your party, <CHARNAME>? Do not think that I will endure this one's sanctimonious nonsense any longer. */
END
	++ @5 /* Whoa! Is this really necessary? */ EXTERN DORN25J rh#dorn1
	++ @6 /* Very well. You brought this upon yourself, Isra. */ EXTERN RH#IS25J rh#dorn2
	++ @7 /* I have no use for your vileness anyway, Dorn. */ EXTERN DORN25J rh#dorn3

CHAIN DORN25J rh#dorn1
@8 /* Do not expect me to make allowances for... delicate companions and their weakling gods. I will kill her, with your aid or without it. */
== RH#IS25J @9 /* It may not prove as easy as that, fiend. */
END
	++ @10 /* You brought this upon yourself, Isra. */ EXTERN RH#IS25J rh#dorn2
	++ @11 /* I have had enough of your vileness anyway, Dorn. */ EXTERN DORN25J rh#dorn3

CHAIN RH#IS25J rh#dorn2
@12 /* Then this wretched creature has as good as dragged you down into the Abyss alongside him. If you do not fall to my sword, you will both surely fall to another's. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORN25J rh#dorn3
@13 /* A poor decision, <CHARNAME>, and one that will be your last. */
DO ~SetGlobal("KICKEDOUT","LOCALS",1) LeaveParty() Enemy() Attack("rh#Isra2")~ 
EXIT

// ---------------------------------------------
// Hexxat
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("rh#IsraHexxat","GLOBAL",1)~ THEN RH#ISRJ hexxat
@14 /* No. I will not work with this... this thing, <CHARNAME>. */
DO ~SetGlobal("rh#IsraHexxat","GLOBAL",2)~ 
== HEXXATJ @15 /* You speak of me, paladin? */
== RH#ISRJ @16 /* Evidently. I would no sooner share the company of a vampire than I would a devil or a demon. */
== HEXXATJ @17 /* Is that what I am to you, Isra? A demon? You are too quick to judge. */
== RH#ISRJ @18 /* The fact that you exist would indicate that I have not been quick enough! I will never believe a word from your tongue, witch! */
== HEXXATJ @19 /* A pity. We could have had something good, you and I. */
== RH#ISRJ @20 /* <CHARNAME>, send this creature away before I slay it where it stands! */
END
	++ @21 /* Isra, if you can't accept her, you have no place here. */ EXTERN RH#ISRJ hexxat1
	++ @22 /* I'm sorry, Hexxat. Perhaps it would be best if you left. */ EXTERN HEXXATJ hexxat2
	++ @23 /* Why don't you? That might be amusing. */ EXTERN HEXXATJ hexxat3

CHAIN RH#ISRJ hexxat1
@24 /* I see. Then I have little choice but to take my leave. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN HEXXATJ hexxat2
@25 /* You will come to regret this, I think, but I will not argue otherwise. */
DO ~SetGlobal("OHH_hexxatjoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN HEXXATJ hexxat3
@26 /* No. I will not play this game for you, <CHARNAME>. Send the paladin on her way, if you must. */
END
	++ @21 /* Isra, if you can't accept her, you have no place here. */ EXTERN RH#ISRJ hexxat1
	++ @27 /* I'm sorry, Hexxat. You're the one who has to leave. */ EXTERN HEXXATJ hexxat2

// ToB

CHAIN IF WEIGHT #-1 ~Global("rh#IsraHexxatToB","GLOBAL",1)~ THEN RH#IS25J hexxat
@14 /* No. I will not work with this... this thing, <CHARNAME>. */
DO ~SetGlobal("rh#IsraHexxatToB","GLOBAL",2)~ 
== HEXXA25J @15 /* You speak of me, paladin? */
== RH#IS25J @16 /* Evidently. I would no sooner share the company of a vampire than I would a devil or a demon. */
== HEXXA25J @17 /* Is that what I am to you, Isra? A demon? You are too quick to judge. */
== RH#IS25J @18 /* The fact that you exist would indicate that I have not been quick enough! I will never believe a word from your tongue, witch! */
== HEXXA25J @19 /* A pity. We could have had something good, you and I. */
== RH#IS25J @20 /* <CHARNAME>, send this creature away before I slay it where it stands! */
END
	++ @21 /* Isra, if you can't accept her, you have no place here. */ EXTERN RH#IS25J hexxat1
	++ @22 /* I'm sorry, Hexxat. Perhaps it would be best if you left. */ EXTERN HEXXA25J hexxat2
	++ @23 /* Why don't you? That might be amusing. */ EXTERN HEXXA25J hexxat3

CHAIN RH#IS25J hexxat1
@24 /* I see. Then I have little choice but to take my leave. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN HEXXA25J hexxat2
@25 /* You will come to regret this, I think, but I will not argue otherwise. */
DO ~SetGlobal("OHH_hexxatjoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN HEXXA25J hexxat3
@26 /* No. I will not play this game for you, <CHARNAME>. Send the paladin on her way, if you must. */
END
	++ @21 /* Isra, if you can't accept her, you have no place here. */ EXTERN RH#IS25J hexxat1
	++ @27 /* I'm sorry, Hexxat. You're the one who has to leave. */ EXTERN HEXXA25J hexxat2

// ---------------------------------------------
// Neera
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNeera1","GLOBAL",0)~ THEN BNEERA rh#IsraNeera1
@28 /* Um, Isra, I... uh, kind of had a bit of an accident. */
DO ~SetGlobal("rh#IsraNeera1","GLOBAL",1)~
== BRH#ISR @29 /* You-- by Sune, is that what I think it is? */
== BNEERA @30 /* Well, it used to be. But maybe it's a bit of an improvement? Rose patterns are nice and all, but actual roses... nobody else in Athklatla has a gown like that, right? */
== BRH#ISR @31 /* It has thorns, Neera. */
== BNEERA @32 /* Oh. Well... I'm sorry? It wasn't on purpose, I promise. I was just looking at it. I didn't mean to wild surge or anything. */
== BRH#ISR @33 /* 'Twas an old thing anyway. In the future, I expect you to stay away from my packs. */
== BNEERA @34 /* Right. I can do that. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNeera1","GLOBAL",1)
Global("rh#IsraNeera2","GLOBAL",0)~ THEN BNEERA rh#IsraNeera2
@35 /* I'm still really sorry about earlier, Isra. */
DO ~SetGlobal("rh#IsraNeera2","GLOBAL",1)~
== BRH#ISR @36 /* Hmm? Oh, yes-- that. As long as you do not somehow manage to do the same to my armor, I wouldn't worry about it. */
== BNEERA @37 /* Heh. That would be something. */
= @38 /* Well, usually I don't do the same thing twice, though the rose motif on that breastplate... at least you wouldn't need to worry about the thorns if I brought THAT to life. They would be your enemy's problem. */
== BRH#ISR @39 /* You do realize that armor needs to be maintained, I hope. */
== BNEERA @40 /* Oh, right. Well, I'll just have to keep my hands to myself, then. */
== BRH#ISR @41 /* (laugh) Hopefully you can manage that much. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraQuestTwo","GLOBAL",13)
Global("rh#IsraNeera3","GLOBAL",0)~ THEN BNEERA rh#IsraNeera3
@42 /* You really don't know how to run away at all, do you? */
DO ~SetGlobal("rh#IsraNeera3","GLOBAL",1)~
== BRH#ISR @43 /* What do you mean? */
== BNEERA @44 /* That mess with your sister. If it were me, I think I'd be halfway to Calimshan by now. */
== BRH#ISR @45 /* Ahh. */
== BNEERA @46 /* That sort of resolve... I honestly don't know whether to envy it or pity it. Whenever things get at all hard, I tend to just pick up and leave. */
== BRH#ISR @47 /* You cannot run forever, Neera. */
== BNEERA @48 /* Maybe not, but... for whatever it's worth, I'm sorry. */
== BRH#ISR @49 /* I know. Thank you. */
EXIT

// ToB

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNeeraToB","GLOBAL",0)~ THEN BNEERA25 rh#IsraNeeraToB
@50 /* Are you okay, Isra? You're beginning to look a little bit stressed out. */
DO ~SetGlobal("rh#IsraNeeraToB","GLOBAL",1)~
== BRH#IS25 @51 /* I imagine we all must be by now, though you seem as cheerful as ever. */
== BNEERA25 @52 /* Cheerful. Heh. Yeah, right. But I put up a good enough front, I suppose. */
== BRH#IS25 @53 /* Sometimes that is as important as the actual thing. */
== BNEERA25 @54 /* Is this some crazy Sunite theory about what's on the surface and what's underneath working together or something? Because I think I've heard it before. */
== BRH#IS25 @55 /* (laugh) I am becoming somewhat repetitive, I fear. */
== BNEERA25 @56 /* Oh, I don't mind. There are worse things you could repeat. */
== BRH#IS25 @57 /* Yes... I am sure there are. */
EXIT

// romance conflict

CHAIN IF ~Global("rh#IsraNeeraRomance","GLOBAL",2)~ THEN NEERAJ c5
@58 /* You and Isra seem to be spending a lot of time together these days. */
DO ~SetGlobal("rh#IsraNeeraRomance","GLOBAL",3)~
END
	++ @59 /* Do you think so? */ + c5.1
	++ @60 /* No more than we always have. */ + c5.1
	++ @61 /* I suppose that's true. */ + c5.1

APPEND NEERAJ

IF ~~ c5.1
 SAY @62 /* I guess you've always been friendly, but the way she's beginning to look at you these days is a little bit less innocent. Not that there's anything wrong with that! What goes on with you is between you, her, and her goddess, but I don't mean to just wait around and see what happens. Whatever you're thinking, I'd kind of like to know. No hard feelings, I promise. */
	++ @63 /* Isra is only a friend, Neera. It's you I'm interested in. */ + c5.2
	++ @64 /* Yes, I am interested in her. I'm sorry, Neera. */ + c5.3
END
 
IF ~~ c5.2
 SAY @65 /* That's -- that's good to know. Really good. Just make sure that she knows it too, alright? */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END
 
IF ~~ c5.3
 SAY @66 /* I see. Thanks for telling me. I wish I could say that I was surprised, but I'm not really. And she'll be good for you, I think. Myself, I guess this means I'm a free woman. That's actually kind of a relief. Should we get moving? */
IF ~~ DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3)~ EXIT
END
END

// ---------------------------------------------
// Rasaad
// ---------------------------------------------

// SoA

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaad1","GLOBAL",0)~ THEN BRASAAD rh#IsraRasaad1
@67 /* Do you ever have doubts, my friend? */
DO ~SetGlobal("rh#IsraRasaad1","GLOBAL",1)~
== BRH#ISR @68 /* 'Twould be madness, I think, to never doubt anything. */
== BRASAAD @69 /* I do not speak of anything, Isra. I speak of... everything. */
== BRH#ISR @70 /* Ahh. You speak of Selûne, you mean. */
= @71 /* I used to pay too much attention to what my faith's detractors said, but in the wake of my own trials... no, I cannot say that I do. */
== BRASAAD @72 /* I envy your clarity. */
== BRH#ISR @73 /* Rasaad... interpretation may vary depending upon circumstances, but truth does not. If you examine your faith closely enough, I expect that you will still find that. */
== BRASAAD @74 /* I hope that you are right. */
EXIT

// 2.
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaad2","GLOBAL",0)~ THEN BRH#ISR rh#IsraRasaad2
@75 /* Sometimes I worry for you, Rasaad. */
DO ~SetGlobal("rh#IsraRasaad2","GLOBAL",1)~
== BRASAAD @76 /* What do you mean? */
== BRH#ISR @77 /* Vengeance is a dangerous appetite to indulge. One of the most dangerous of all, mayhap. Your brother-- */
== BRASAAD @78 /* Will not be at peace until he is avenged. */
== BRH#ISR @79 /* And you may never know peace again if you continue this course. */
== BRASAAD @80 /* You would rather Alorgoth live? */
== BRH#ISR @81 /* I would rather you did not destroy yourself chasing him. 'Tis your mood and your methods that trouble me, Rasaad, not your goal. */
== BRASAAD @82 /* I've come too far to turn back now. */
EXIT

// 3.
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaad3","GLOBAL",0)~ THEN BRH#ISR rh#IsraRasaad3
@83 /* Rasaad, might I ask how much you know of this Twofold Heresy? */
DO ~SetGlobal("rh#IsraRasaad3","GLOBAL",1)~
== BRASAAD @84 /* More than I would like, my friend. */
== BRH#ISR @85 /* Do you know whether clerics are counted amongst their number? */
== BRASAAD @86 /* I fear they must be. */
== BRH#ISR @87 /* I cannot help but wonder which deity would grant them their spells. */
== BRASAAD @88 /* Shar, I think. */
== BRH#ISR @89 /* Mayhap, though I doubt she would tolerate the doctrine amongst her own followers. */
== BRASAAD @90 /* I could not say. I have never infiltrated a cult of Shar. */
== BRH#ISR @91 /* I would be more worried for you if you had. */
== BRASAAD @92 /* I... your concern is appreciated, Isra, but it is not necessary. */
= @93 /* Now tell me, my friend, did you have other questions about the heresy? */
== BRH#ISR @94 /* Rasaad-- (sigh) Aye, I suppose I did. */
EXIT

// ToB

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraRasaadToB","GLOBAL",0)~ THEN BRH#IS25 rh#IsraRasaadToB
@95 /* Would you walk with me a while, Rasaad? */
DO ~SetGlobal("rh#IsraRasaadToB","GLOBAL",2)~
== BRASAA25 @96 /* I would. */
== BRH#IS25 @97 /* We have not spoken much as of late, you and I... I am not entirely certain why that is. */
== BRASAA25 @98 /* I have not been very good company. */
== BRH#IS25 @99 /* You have had a lot on your mind. If there is anything that I might do to lighten that burden-- */
== BRASAA25 @100 /* Your sympathy is enough, Isra. */
== BRH#IS25 @101 /* I... can only hope that is true. */
EXIT

// romance conflict

CHAIN IF ~Global("rh#IsraRasaadRomance","GLOBAL",2)~ THEN RH#ISRJ c6
@102 /* May I speak with you a moment, <CHARNAME>? */
DO ~SetGlobal("rh#IsraRasaadRomance","GLOBAL",3)~
END
	++ @103 /* Of course, Isra. What is it? */ + c6.1
	++ @104 /* Technically, you already are. */ + c6.2

APPEND RH#ISRJ

IF ~~ c6.1
 SAY @105 /* I do not mean to impose, but Rasaad seems rather taken with you as of late. He is a good man, if somewhat... vulnerable at present. */
 	++ @106 /* Are you asking me if I'm interested in him? */ + c6.3
 	++ @107 /* You're not jealous, are you? */ + c6.4
 	++ @108 /* Too vulnerable, I'd say. And too clueless. */ + c6.5
END

IF ~~ c6.2
 SAY @109 /* Yes... I noticed that. */ 
IF ~~ + c6.1
END

IF ~~ c6.3
 SAY @110 /* Are you? */
 	++ @111 /* Not remotely. */ + c6.5
 	++ @112 /* Absolutely. */ + c6.6
 	++ @113 /* Yes, I think I am. */ + c6.6
END

IF ~~ c6.4
 SAY @114 /* Of *him*, mayhap, if his feelings are returned. */
 	++ @115 /* Oh. Well, you needn't worry about that. I'm not interested in him. */ + c6.5
 	++ @116 /* They are, actually. I'm sorry. */ + c6.6
 	++ @117 /* Can you take this bizarre love triangle elsewhere? I'm not interested in either of you. */ + c6.7
END

IF ~~ c6.5
 SAY 118 /* I see. Please, <CHARNAME>, let him know. I would not have him burdened with false hope. */
IF ~~ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ c6.6
 SAY @119 /* I see. Thank you for telling me, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c6.7
 SAY @120 /* I see. I shan't mention it again. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ EXIT
END 
END