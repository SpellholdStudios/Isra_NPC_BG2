BEGIN RH#ISRP

IF ~Global("rh#IsraJoined","GLOBAL",1)~ p1
 SAY @0 /* You truly wish to part company, <CHARNAME>? */ 
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%) !Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @1 /* For the moment, yes. */ + p2
  	+ ~OR(3) Global("Chapter","GLOBAL",%bg2_chapter_4%) Global("Chapter","GLOBAL",%bg2_chapter_5%) Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @1 /* For the moment, yes. */ + p3
 	++ @2 /* Sorry, no. I'd rather not. */ + p4
END
 
IF ~~ p2
 SAY @3 /* I see. Should you change your mind, I intend to visit the Temple of Lathander at least briefly before leaving the city. Perhaps you can find me there. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) EscapeAreaMove("AR0902",761,1060,13)~ EXIT
END

IF ~~ p3
 SAY @4 /* I see. I've no wish to remain here in the meantime, I'm afraid. Perhaps we shall meet again. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) EscapeAreaMove("AR0902",761,1060,13)~ EXIT
END

IF ~~ p4
 SAY @5 /* Very well. I am pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("rh#IsraJoined","GLOBAL",0)~ p5
 SAY @6 /* Hello, <CHARNAME>. I'm pleased to see you again. */ 
	++ @7 /* Would you care to join up with me again? */ + p6
	++ @8 /* Hello, Isra. I was just checking to see how you were. */ + p7
END

IF ~~ p6
 SAY @9 /* Certainly, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p7
 SAY @10 /* Quite well, thank you. */
IF ~~ EXIT
END

// Vampire Abduction

// ---------------------------------------------
// Bodhi Abduction
// ---------------------------------------------

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("rh#Isra2")
!Global("rh#IsraRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 bodhinap1
== BODHIAMB IF ~Global("rh#IsraRomanceActive","GLOBAL",2)
InParty("rh#Isra2")~ THEN @11 /* You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. */
END
IF ~OR(2)
!InPartyAllowDead("rh#Isra2")
Dead("rh#Isra2")~ THEN EXTERN BODHIAMB 6
IF ~InPartyAllowDead("rh#Isra2")
!Dead("rh#Isra2")~ THEN EXTERN BODHIAMB bodhinap2

CHAIN BODHIAMB bodhinap2
@12 /* Consider the lovely Isra here. Some tales are too tragic even for a Sunite's tastes. */
== RH#ISRJ @13 /* I don't fear you, vampire. */
== BODHIAMB @14 /* Oh, but you should. Follow me further, <CHARNAME>, and you will lose more than you can imagine!  Starting now! */
END
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#isct2")~
UNSOLVED_JOURNAL @15 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Isra.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! */ EXIT

//Bodhi abduction: Oghma

ADD_TRANS_TRIGGER IMNBOOK1 0
~OR(2)
!Global("RevealUmar","GLOBAL",1)
!PartyHasItem("rh#isbdy")~

EXTEND_BOTTOM IMNBOOK1 0
IF ~PartyHasItem("rh#isbdy")
Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

EXTEND_BOTTOM DOGHMA 0 #5
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#isbdy")~ + @16 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#isbdy")~ + @16 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("rh#isbdy")~ + @17 /* I lost a loved one in a battle with his sister, Bodhi.  I seek a means of curing her. */ GOTO 3
END

APPEND OGHMONK1
IF WEIGHT #-1
~Global("RevealUmar","GLOBAL",1)
PartyHasItem("rh#isbdy")~ THEN BEGIN rh#AdrOghmaMonk
 SAY @18 /* Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready. */
	++ @19 /* No, thank you, I have no need of help at the moment. */ EXTERN OGHMONK1 5
	++ @16 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ EXTERN OGHMONK1 6
END
END

// Bodhi abduction: Elhan

EXTEND_BOTTOM C6ELHAN2 70
	+ ~PartyHasItem("rh#isbdy")~ + @20 /* Elhan! I've the half vampire body of Isra here because of you! You'll tell me now! */ + 76
END

EXTEND_BOTTOM WARSAGE 0
	+ ~!Dead("c6bodhi") Global("rh#IsraVampire","GLOBAL",2)~ + @21 /* A loved one was taken by a vampire. What can I expect when I find her? */ + 6
END

EXTEND_BOTTOM WARSAGE 0
	+ ~PartyHasItem("rh#isbdy")~ + @22 /* Someone I care about has fallen to a vampire. Is there any way to save her? */ + 5
END

// Final battle

// Bodhi section 2
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("rh#IsraVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 bodhinap3
  == C6BODHI IF ~Global("rh#IsraVampire","GLOBAL",2)~ THEN
  @23 /* But... no, I have already prepared much for this meeting, <CHARNAME>. I did warn you that you would suffer great loss if you continued your push towards me.  I did not lie. */
END
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @24 /* You have taken too much already!  You will return both Imoen's soul and Isra! */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @25 /* And you have delivered on that promise. Return Isra and perhaps I will be merciful. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @26 /* I would have hunted you for your theft of Isra alone. She is very important to me. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @27 /* You place too much confidence in sentiment.  The theft of Isra will not save you. */ EXTERN C6BODHI bodhinap5

APPEND C6BODHI

IF ~~ bodhinap4
 SAY @28 /* Here she is, though she is lost to you. They say that nothing is more vile than a fallen paladin, and it may yet prove true. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze. */
IF ~~ UNSOLVED_JOURNAL @29 /* The Final Battle with Bodhi.

Bodhi has turned Isra into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done.  Perhaps the elven war sage might know some way of restoration ... or Elhan... */
EXTERN RH#ISVMP bodhinap7
END

IF ~~ bodhinap5
SAY @30 /* An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not. */
IF ~~ + bodhinap4
END

IF ~~ bodhinap6
SAY @31 /* Do you see that, <CHARNAME>? She is not yet fully turned, and yet she is already mine to use against you. So much for true love. */
IF ~~ EXTERN C6BODHI 28
END
END

BEGIN RH#ISVMP

IF ~~ bodhinap7
SAY @32 /* What... do you wish of me, mistress? */
IF ~~ EXTERN C6BODHI bodhinap6
END

APPEND RH#ISRP

IF WEIGHT #-1 ~OR(2) Global("rh#IsraVampire","GLOBAL",3) Global("rh#IsraVampire","GLOBAL",4)~ THEN BEGIN v1
 SAY @33 /* <CHARNAME>? I-- by the gods, my head... */ 
IF ~~ DO ~ChangeAIScript("rh#isr",OVERRIDE) SetGlobal("rh#IsraVampire","GLOBAL",5)
EraseJournalEntry(@15 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Isra.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well! */)

EraseJournalEntry(@29 /* The Final Battle with Bodhi.

Bodhi has turned Isra into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done.  Perhaps the elven war sage might know some way of restoration ... or Elhan... */)~
SOLVED_JOURNAL @34 /* The Final Battle with Bodhi.

While I had feared for some time that Bodhi's final revenge on me would be to take away Isra forever, it seems that the information in the lorebook was right... Amaunator's idol has restored Isra not only to life, but has removed the vampiric curse from her, as well. */ + v1.0
END

IF ~~ v1.0
 SAY @35 /* It... it wasn't just some terrible nightmare, was it? */
	++ @36 /* Are you alright, Isra? You look awful. */ + v1.1
	++ @37 /* I'm afraid not. She turned you into a vampire. */ + v1.2
	++ @38 /* It's over now, at least. You're yourself again. */ + v1.3
	++ @39 /* Come on, Isra. We don't have time for a full account. */ + v1.4
END

IF ~~ v1.1
 SAY @40 /* I feel worse. I... I feel... */
IF ~~ + v1.5
END

IF ~~ v1.2
 SAY @41 /* Yes... yes, I remember. That explains why... why I feel... */
IF ~~ + v1.5
END

IF ~~ v1.3
 SAY @42 /* Is it? I... don't think so. I feel... */
IF ~~ + v1.5
END

IF ~~ v1.4
 SAY @43 /* You don't understand. I... I feel... */
IF ~~ + v1.5
END

IF ~~ v1.5
 SAY @44 /* By Sune, I have never felt so ill in my life. She... Bodhi has *damned* me, <CHARNAME>. Damned me utterly. */
 = @45 /* A paladin cannot commit evil... certainly cannot be evil, and I... to be a vampire is to be anathema, <CHARNAME>. You must understand. */
	++ @46 /* You mean... do you mean you've fallen? */ + v1.6
	++ @47 /* But it wasn't exactly your fault! */ + v1.7
	++ @48 /* I think I do. What happens now? */ + v1.8
	++ @49 /* This is a complication I don't need right now. You're on your own. */ + v1.9
END

IF ~~ v1.6
 SAY @50 /* I... yes, that is what I fear. */
IF ~~ + v1.8
END

IF ~~ v1.7
 SAY @51 /* I know. But the facts are what they are. */
IF ~~ + v1.8
END

IF ~~ v1.8
 SAY @52 /* I need to return to Athkatla... to send word to my order. They will know what to do. If we could await them in the temple of Lathander... */
 = @53 /* You've done enough for me already, <CHARNAME>, and I know that there are other pressing matters to attend to, but... please, I would have you with me. */
	++ @54 /* I would never abandon you now, Isra. Not like this. */ + v1.10
	++ @55 /* You only needed to ask. We'll head there immediately. */ + v1.10
	++ @56 /* I really don't have the time, Isra. You're on your own. */ + v1.9
END

IF ~~ v1.9
 SAY @57 /* I... I see. Then I shall handle this myself. Goodbye, <CHARNAME>. */
IF ~~ DO ~AddJournalEntry(@58 /* Isra Leaves.

Unfortunately, Isra's time as a vampire has had an unexpected side effect: she has fallen. I have asked her to handle this problem on her own and am not sure if I will see her again. */,QUEST_DONE)
EscapeArea()~ EXIT
END

IF ~~ v1.10
 SAY @59 /* Thank you, <CHARNAME>. Thank you. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",1) SetGlobal("rh#IsraVampire","GLOBAL",6)
SetGlobalTimer("rh#IsraQuestThreeReminderTimer","GLOBAL",SEVEN_DAYS)
AddJournalEntry(@60 /* A Song Yet to be Sung

Unfortunately, Isra's time as a vampire has had an unexpected side effect: she has fallen. We will need to visit the temple of Lathander to see what can be done for her. */,QUEST) JoinParty()~ EXIT
END
END

// ---------------------------------------------
// A Song Yet to be Sung
// ---------------------------------------------

BEGIN RH#EVEND
BEGIN RH#ILIAN

// 1.
CHAIN IF ~Global("rh#IsraPaladin","GLOBAL",1) InParty("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#EVEND pal1
@61 /* Isra. I came as soon as I heard. Shall I assume that your... predicament... has not improved? */
DO ~SetGlobal("rh#IsraPaladin","GLOBAL",2)~
== RH#ISRJ @62 /* It has not, sir. */
== RH#EVEND @63 /* I did not expect that it would. */
= @64 /* And you must be <CHARNAME>. I've heard your name mentioned more than once recently. Isra's version of events is known to me, but I would hear yours as well. */
END
	++ @65 /* She was turned against her will. Whatever evil she did can surely be forgiven? */ + pal1.1
	++ @66 /* This is my fault, not hers. Bodhi took her because of me. */ + pal1.1
	++ @67 /* You're insane to hold this against her. She didn't have a choice. */ + pal1.1
	
CHAIN RH#EVEND pal1.1	
@68 /* I see. You love her, do you not? */
== RH#ISRJ @69 /* Really, sir-- */
== RH#EVEND @70 /* 'Tis a simple enough question, Isra. */
END
	++ @71 /* I do. More than I could say. */ + pal1.2
	++ @72 /* What does that have to do with anything? */ + pal1.2
	++ @73 /* I... I'm not sure. I think I might. */ + pal1.2

CHAIN RH#EVEND pal1.2
@74 /* If I have the story correct, you cared for her enough to bring her back past all hope of resurrection.... that is no small feat. There are tales in our libraries less glorious than the one I read in this letter. */
== RH#ISRJ @75 /* You seem to be forgetting the way it ended, sir. */
== RH#EVEND @76 /* I have not. An appropriate penance will be required, of course. */
END
	++ @77 /* Whatever task you set us, we'd be happy to undertake it. */ + pal1.3
	++ @78 /* We have an elven city to save, sir. Time is of the essence. */ + pal1.3
	++ @79 /* And here it is. The unnecessarily deadly quest to complete. */ + pal1.3

CHAIN RH#EVEND pal1.3
@80 /* Isra did mention the troubles facing Suldanessellar. If they are even half as severe as she suspects, I have no wish to divert you from your true mission. */
= @81 /* Further proof of valor is hardly necessary, and violence is no fitting tribute to the Firehair anyway. Something simpler should suffice. */
== RH#ISRJ @82 /* Simpler, sir? */
== RH#EVEND @83 /* Aye. There is a bard of our faith staying at the Mithrest Inn called Ilian. Pass an evening with him; tell him your story. As I said, 'tis a tale that belongs in our records regardless. */
END
	++ @84 /* Then consider it done. */ + pal1.4
	++ @85 /* So... a token quest? Isn't that a bit pointless? */ + pal1.5
	++ @86 /* A relaxing evening would be very much appreciated anyway. */ + pal1.6
	++ @87 /* You guys really do have the most lax deity ever, don't you? */ + pal1.5

CHAIN RH#EVEND pal1.4
@88 /* I will consider it done when it is done, my <PRO_LADYLORD>. */
DO ~AddJournalEntry(@89 /* A Song Yet to be Sung

Isra's mentor, Sir Evendur, has set us a strange task for her reinvestiture. We are to meet a bard by the name of Ilian in the Mithrest Inn and share our story with him. */,QUEST)~ EXIT

CHAIN RH#EVEND pal1.5
@90 /* If you would prefer something more taxing, that can certainly be arranged. */
== RH#ISRJ @91 /* <CHARNAME>, behave yourself! I'm sorry, sir, I-- */
== RH#EVEND @92 /* No matter, Isra. Return in the morning and we will speak again. */
DO ~AddJournalEntry(@89 /* A Song Yet to be Sung

Isra's mentor, Sir Evendur, has set us a strange task for her reinvestiture. We are to meet a bard by the name of Ilian in the Mithrest Inn and share our story with him. */,QUEST)~ EXIT

CHAIN RH#EVEND pal1.6
@93 /* Given what likely lies ahead for your company, I can certainly believe it. */
DO ~AddJournalEntry(@89 /* A Song Yet to be Sung

Isra's mentor, Sir Evendur, has set us a strange task for her reinvestiture. We are to meet a bard by the name of Ilian in the Mithrest Inn and share our story with him. */,QUEST)~ EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2") Global("rh#IsraPaladin","GLOBAL",2)~ THEN RH#ILIAN pal2
@94 /* Well, well... what exquisite company I find myself in this fair eve. Pugney, my friend, can I trouble you for another round of wine? */
DO ~SetGlobal("rh#IsraPaladin","GLOBAL",3)~
== WINNKEEP @95 /* You still haven't paid me for the last one, Ilian. */
== RH#ILIAN IF ~Gender(Player1,MALE)~ THEN @96 /* Ahh... yes, well. Another drink and I may have been foolish enough to challenge this man for his lady's favor... */
== RH#ILIAN IF ~!Gender(Player1,MALE)~ THEN @97 /* Ahh... yes, well. I already seem to be seeing double... two young ladies here, each as lovely as the other. My, but the goddess has smiled upon me to<DAYNIGHT>... */
== RH#ISRJ @98 /* (laugh) That is quite enough of that. You are Ilian, I take it? */
== RH#ILIAN @99 /* The one and only. */
== RH#ISRJ @100 /* And you are familiar with Sir Evendur Crytrapper? */
== RH#ILIAN @101 /* I am-- oh, I see. You must be milord's wayward student... I have heard a great deal about you, milady, though not as much as I might like. */
END
	++ @102 /* If you're quite done flirting, we do have a tale to share. */ + pal2.1
	++ @103 /* Well, this should be a fairly entertaining evening. */ + pal2.1
	++ @104 /* Drunken Sunite bards, Isra? Come morning, he won't even remember the story! */ + pal2.2
	+ ~Class(Player1,BARD_ALL)~ + @105 /* On second thought, I'm a bard. Maybe I should write this out myself. */ + pal2.3
	+ ~InParty("HaerDalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ + @106 /* Maybe we should ask Haer'dalis to do this instead. */ EXTERN HAERDAJ pal2.4

CHAIN RH#ILIAN pal2.1
@107 /* Well, then... come, sit a while. Take care of the gold I owe to dear Pugney, if you would be so kind. It may take all evening to get this correct. */
DO ~AddJournalEntry(@108 /* A Song Yet to be Sung

We have met with Ilian... a garrulous man, to say the least. The evening was long indeed, but he seemed pleased with the tale at last. It still needs some polish, he says, but he has instructed us to inform Sir Evendur in the morning regardless. */,QUEST)
RestParty()~ 
EXIT

CHAIN RH#ILIAN pal2.2
@109 /* Oh, there is no danger of that, I assure you. */
END
IF ~~ EXTERN RH#ILIAN pal2.1

CHAIN RH#ILIAN pal2.3
@110 /* Do not be ridiculous, my friend. One can never do one's own tale justice... that much is settled fact. */
END
IF ~~ EXTERN RH#ILIAN pal2.1

CHAIN HAERDAJ pal2.4
@111 /* And deny another his moment of glory -- and myself the entertainment of it? Oh, my raven, I think not. */
END
IF ~~ EXTERN RH#ILIAN pal2.1

// 3.
CHAIN IF WEIGHT #-1 ~Global("rh#IsraPaladin","GLOBAL",4)~ THEN RH#ISRJ pal3
@112 /* Ahh... you are awake. Good. Might we return to the temple of Lathander now? */  
= @113 /* Forgive me for being restless, but I would prefer to put this nightmare behind me as quickly as possible. */
DO ~SetGlobal("rh#IsraPaladin","GLOBAL",5)~
EXIT

// 4.
CHAIN IF ~Global("rh#IsraPaladin","GLOBAL",5)~ THEN RH#EVEND pal4
@114 /* Shall I assume that you have spoken with Ilian? */
== RH#ISRJ @115 /* For the few hours during which he was sober enough to listen, aye. */
== RH#EVEND @116 /* That sounds very like him indeed. */
= @117 /* He may be... eccentric, but he is brilliant at what he does. I know of nobody who can set the heart at ease as well as he can. */
== RH#ISRJ @118 /* Oh. I see. Will you be collecting his story, then? */
== RH#EVEND @119 /* In time, aye. For now, however, if you feel worthy of prayer again, regaining your status should be as simple as that. */
== RH#ISRJ @120 /* Of course. Thank you, sir. */
== RH#EVEND @121 /* Before you leave, I have something to give you. I had considered handing it to you at your knighting, but sentiment won out in the end. */
== RH#ISRJ @122 /* What? Oh... no, I couldn't possibly-- */
== RH#EVEND @123 /* Take it, Isra. You will have greater use for it than I will in the future, and you have more than earned it. */
== RH#ISRJ @124 /* I... very well, if you insist. Thank you, sir, for everything. */
== RH#EVEND @125 /* Farewell, my friend, and good luck. */
DO ~SetGlobal("rh#IsraPaladin","GLOBAL",6)
RealSetGlobalTimer("rh#IsraPaladinTimer","GLOBAL",900)
ActionOverride("rh#Isra2",RegainPaladinHood())
AddexperienceParty(25000)
AddXPObject("rh#Isra2",55000)
GiveItem("rh#mail","rh#Isra2")
EraseJournalEntry(@60 /* A Song Yet to be Sung

Unfortunately, Isra's time as a vampire has had an unexpected side effect: she has fallen. We will need to visit the temple of Lathander to see what can be done for her. */)

EraseJournalEntry(@89 /* A Song Yet to be Sung

Isra's mentor, Sir Evendur, has set us a strange task for her reinvestiture. We are to meet a bard by the name of Ilian in the Mithrest Inn and share our story with him. */)

EraseJournalEntry(@108 /* A Song Yet to be Sung

We have met with Ilian... a garrulous man, to say the least. The evening was long indeed, but he seemed pleased with the tale at last. It still needs some polish, he says, but he has instructed us to inform Sir Evendur in the morning regardless. */)

AddJournalEntry(@126 /* A Song Yet to be Sung

Restoring Isra's paladinhood turned out to be a simple (if long-winded) matter. Now I can focus once more upon Irenicus. */,QUEST_DONE)
EscapeAreaDestroy(5)~
EXIT

// 5.
CHAIN IF ~InParty("rh#Isra2") Global("rh#IsraPaladin","GLOBAL",2)~ THEN RH#EVEND pal5
@127 /* I believe that Ilian is expecting you. */
EXIT

CHAIN IF ~OR(2) !InParty("rh#Isra2") !InMyArea("rh#Isra2")  
StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#EVEND pal6
@128 /* Leave me be. I am expecting someone. */
EXIT