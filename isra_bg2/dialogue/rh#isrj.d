// ---------------------------------------------
// Dialogue Track
// ---------------------------------------------

// 1a.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",2) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t1a
@0 /* I'm afraid I have been somewhat too absorbed in my own affairs to give much thought to yours. This wizard you are pursuing... Irenicus, you called him? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1 /* The bastard who killed Khalid and Dynaheir? Yes, that's his name. */ + t1a.1
	++ @2 /* Yes. First Sarevok, now this. It's always something or another. */ + t1a.2
	++ @3 /* He's a monster, Isra, and I don't say that lightly. */ + t1a.3
	++ @4 /* I don't want to think about him. */ + t1a.4

APPEND RH#ISRJ

IF ~~ t1a.1
 SAY @5 /* Aye, I had not forgotten that. Khalid and Dynaheir-- */
IF ~~ + t1a.5
END

IF ~~ t1a.2
 SAY @6 /* Aye, and the cost... Khalid and Dynaheir-- */
IF ~~ + t1a.5
END

IF ~~ t1a.3
 SAY @7 /* I can believe it. Khalid and Dynaheir-- */
IF ~~ + t1a.5
END

IF ~~ t1a.4
 SAY @8 /* I do not blame you for that, though I find myself thinking about little else these days. Khalid and Dynaheir-- */
IF ~~ + t1a.5
END

IF ~~ t1a.5
 SAY @9 /* (sigh) 'Tis unsettling to think of it. I had mentioned you to a friend in Crimmor the other tenday, never guessing... never imagining... */
 = @10 /* By the gods, <CHARNAME>, I almost don't know what to say. There has been far too much cause for tears as of late. */
	++ @11 /* I know. I miss them also. More than I could tell you. */ + t1a.6
	+ ~Gender(Player1,MALE) !Alignment(Player1,MASK_CHAOTIC)~ + @12 /* Dynaheir... you have no idea how much her loss hurts. */ + t1a.7
	++ @13 /* Be that as it may, we don't have time for grief right now. */ + t1a.8
	++ @14 /* What can we do but carry on and honor their memory? */ + t1a.9
	++ @15 /* We barely even knew them, Isra. We didn't travel together that long. */ + t1a.10
END

IF ~~ t1a.6
 SAY @16 /* I know. I'm sorry. And... and when I look at you, I suspect that they were not his sole victims. */
IF ~~ + t1a.11
END

IF ~~ t1a.7
 SAY @17 /* No... no, I remember how close you were. What you must be enduring right now, <CHARNAME>... */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ + t1a.11
END // she won't romance someone in mourning

IF ~~ t1a.8
 SAY @18 /* I'm not entirely sure we have a choice in the matter. And you... trying might be doubly unwise for you. */
IF ~~ + t1a.11
END

IF ~~ t1a.9
 SAY @19 /* Nothing, mayhap, though that does not make the loss any easier. And you... when I look at you, I suspect that they were not his sole victims. */
IF ~~ + t1a.11
END

IF ~~ t1a.10
 SAY @20 /* 'Twas long enough to know to value them, at the least, though I can imagine you are likely... preoccupied. */
IF ~~ + t1a.11
END

IF ~~ t1a.11
 SAY @21 /* Loath as I am to raise such a painful subject, I... am beginning to think that you did not escape entirely unscathed yourself. */
	++ @22 /* That's a nice euphemism for "brutally tortured." */ + t1a.12
	++ @23 /* My own memory of that dungeon is blurry. Mercifully so. */ + t1a.12
	++ @24 /* I'm not sure what he wanted with me, but... yes, it was bad. */ + t1a.12
	++ @25 /* You don't want to know what happened in that dungeon. */ + t1a.12
END

IF ~~ t1a.12
 SAY @26 /* I... I see. */
 = @27 /* I know that words are little comfort, but should you ever wish to speak of it... */
	++ @28 /* I do appreciate the thought, Isra. */ + t1a.13
	++ @29 /* It's not like I'm not used to hardship by now. */ + t1a.14
	++ @30 /* I hope you're not simply worried about my sanity. */ + t1a.15
	++ @31 /* I've already been victimized once. I don't need to repeat it, even in memory. */ + t1a.14
END

IF ~~ t1a.13
 SAY @32 /* (sigh) Would that I could do more for you than that. */
IF ~~ + t1a.16
END

IF ~~ t1a.14
 SAY @33 /* Aye, your life has not been an easy one, though this... this is a new horror entirely. */
IF ~~ + t1a.16
END

IF ~~ t1a.15
 SAY @34 /* No. My concern runs deeper than that. */
IF ~~ + t1a.16
END

IF ~~ t1a.16
 SAY @35 /* Forgive me. Such morbidness is hardly an appropriate topic for a reunion, much less one as unexpected as this. */
 = @36 /* It is good to travel with you again, <CHARNAME>, even if I would have preferred other circumstances. */
	++ @37 /* I'm still not happy with you for leaving in the first place. */ + t1a.17
	++ @38 /* You wanted me to visit you in Crimmor. If only it had played out like that. */ + t1a.18
	++ @39 /* After all of this madness, finding you in Athkatla was a very welcome surprise. */ + t1a.19
	++ @40 /* The circumstances are what they are. They've always been before. */ + t1a.20
END

IF ~~ t1a.17
 SAY @41 /* I know. In retrospect, I cannot blame you for that at all. */ 
IF ~~ EXIT
END

IF ~~ t1a.18
 SAY @42 /* Aye, if only. But perhaps there will still be time for that. */ 
IF ~~ EXIT
END

IF ~~ t1a.19
 SAY @43 /* (smile) Then that is something, at least. */ 
IF ~~ EXIT
END

IF ~~ t1a.20
 SAY @44 /* No, I cannot argue with that. */ 
IF ~~ EXIT
END
END

// 1b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",2) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t1b
@0 /* I'm afraid I have been somewhat too absorbed in my own affairs to give much thought to yours. This wizard you are pursuing... Irenicus, you called him? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @45 /* The bastard who killed several of my friends? Yes, that's his name. */ + t1b.1
	++ @46 /* Everyone needs a hobby. Mine happens to involve chasing down maniacs. */ + t1b.2
	++ @3 /* He's a monster, Isra, and I don't say that lightly. */ + t1b.3
	++ @47 /* I don't want to talk about him, Isra. Ever. */ + t1b.4

APPEND RH#ISRJ

IF ~~ t1b.1
 SAY @48 /* I am sorry. I knew that your friend Imoen was missing, but aside from that... I had not realized. Perhaps I should have. */
IF ~~ + t1b.5
END

IF ~~ t1b.2
 SAY @49 /* Your casual phrasing aside, 'tis a nobler pastime than most. Though I suspect you have good reason for it. */
IF ~~ + t1b.5
END

IF ~~ t1b.3
 SAY @50 /* I can believe it. I saw the wreckage in Waukeen's Promenade. I can imagine what came before. */
IF ~~ + t1b.5
END

IF ~~ t1b.4
 SAY @51 /* I do not blame you for that. */ 
IF ~~ EXIT
END

IF ~~ t1b.5
 SAY @52 /* (sigh) Sometimes I fear that this country has more than its share of depraved wizards. Whether our policy on magic simply serves to drive them into secrecy or is the only thing keeping them at bay... 'twould take a wiser person than I to decipher that riddle. */
	++ @53 /* I ran into more than enough evil wizards further north as well. */ + t1b.6
	++ @54 /* Irenicus is far worse than your Cowled Wizard, I assure you. */ + t1b.7
	++ @55 /* I would be very surprised if Irenicus was originally from Amn. */ + t1b.8
	++ @56 /* Your policy doesn't create evil wizards. It just chases the good ones away. */ + t1b.9
END

IF ~~ t1b.6
 SAY @57 /* I do not doubt it, though this one... I look at you and I cannot help but wonder. */
IF ~~ + t1b.10
END

IF ~~ t1b.7
 SAY @58 /* I do not doubt it. The damage my sister's mage caused was more easily remedied, at least. This one... I look at you and I cannot help but wonder. */
IF ~~ + t1b.10
END

IF ~~ t1b.8
 SAY @59 /* Mayhap not, but he is an Amnian problem now, whatever his origin. And... he seems a large problem indeed. */
IF ~~ + t1b.10
END

IF ~~ t1b.9
 SAY @60 /* I do not doubt that, though I suspect at times that it lures the worst to us as well. And this one... I look at you and I cannot help but wonder. */
IF ~~ + t1b.10
END

IF ~~ t1b.10
 SAY @61 /* I am no stranger to suffering, my <PRO_LADYLORD>. I know what signs to look for when a person is reluctant to speak, and you-- */ 
 = @62 /* Loath as I am to raise such a painful subject, I am beginning to think that you did not escape entirely unscathed yourself. */
	++ @22 /* That's a nice euphemism for "brutally tortured." */ + t1b.11
	++ @23 /* My own memory of that dungeon is blurry. Mercifully so. */ + t1b.11
	++ @24 /* I'm not sure what he wanted with me, but... yes, it was bad. */ + t1b.11
	++ @25 /* You don't want to know what happened in that dungeon. */ + t1b.11
END

IF ~~ t1b.11
 SAY @63 /* Oh. I... I see. */
 = @27 /* I know that words are little comfort, but should you ever wish to speak of it... */
	++ @28 /* I do appreciate the thought, Isra. */ + t1b.12
	++ @64 /* To a relative stranger? No, I don't think so. */ + t1b.14
	++ @30 /* I hope you're not simply worried about my sanity. */ + t1b.13
	++ @31 /* I've already been victimized once. I don't need to repeat it, even in memory. */ + t1b.14
END

IF ~~ t1b.12
 SAY @65 /* Would that I could do more for you than that. */
IF ~~ + t1b.14
END

IF ~~ t1b.13
 SAY @34 /* No. My concern runs deeper than that. */
IF ~~ + t1b.14
END

IF ~~ t1b.14
 SAY @66 /* (sigh) Forgive me, <CHARNAME>. Such morbidness is hardly appropriate. */
 = @67 /* My own mentor was grievously injured nigh on a year ago now... I am afraid I have since become very good at pestering people, whether they would wish it or no. */
	++ @68 /* That's certainly not the worst vice imaginable. */ + t1b.15
	++ @69 /* Don't apologize. It's nice to know that you care. */ + t1b.16
	++ @70 /* I hope I won't have to endure these inquiries on a regular basis. */ + t1b.17
	++ @71 /* What happened to your mentor? */ + t1b.18
END

IF ~~ t1b.15
 SAY @72 /* No... I suppose that it is not. */
IF ~~ EXIT
END

IF ~~ t1b.16
 SAY @73 /* Then that is something, at least. */ 
IF ~~ EXIT
END

IF ~~ t1b.17
 SAY @74 /* No... I shall try to show more discipline than that. */
IF ~~ EXIT
END

IF ~~ t1b.18
 SAY @75 /* Knights of the Ruby Rose have a penchant for hunting dragons and other terrible creatures. We... do not always win. */
 = @76 /* I'm sorry. I care to speak of this no more than you would likely wish to speak of Irenicus. */
IF ~~ EXIT
END
END
 
// 2a. 
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",4) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t2a
@77 /* I cannot help but regret leaving for Amn so abruptly. After Sarevok's defeat, I had simply assumed that you were finally out of danger. Had I imagined otherwise... */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @78 /* You couldn't have guessed. That's the problem with ambushes. */ + t2a.1
	++ @79 /* You would likely be dead now yourself. */ + t2a.2
	++ @80 /* I could have used your help, but what's done is done. */ + t2a.3
	++ @81 /* I don't want to talk about it, Isra. */ + t2a.4

APPEND RH#ISRJ

IF ~~ t2a.1
 SAY @82 /* Aye. And yet given your unique heritage, I should have known better. */
IF ~~ + t2a.5
END

IF ~~ t2a.2
 SAY @83 /* That is possible, though it changes little. Given your unique heritage, I should have known better. */
IF ~~ + t2a.5
END

IF ~~ t2a.3
 SAY @84 /* I know. Given your unique heritage, I should have known that you might. */
IF ~~ + t2a.5
END

IF ~~ t2a.4
 SAY @85 /* Aye, of course. */
IF ~~ EXIT
END
 
IF ~~ t2a.5
 SAY @86 /* I am not quite arrogant enough to assume my presence would have made the difference, but... I don't know. 'Twould be better to live with failure than regret. */
	++ @87 /* You're not getting any sympathy from me. I'm the one with the scars. */ + t2a.6
	++ @88 /* Isra, you shouldn't blame yourself for what happened. */ + t2a.7
	++ @89 /* You had your own affairs to see to. I understood that. */ + t2a.7
	++ @90 /* Regret is part of life, Isra. We just need to move on. */ + t2a.7
END

IF ~~ t2a.6
 SAY @91 /* (sigh) I would not expect any. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t2a.7
 SAY @92 /* (sigh) I don't know why it troubles me so much. Even if I could change anything, you are a grown <PRO_MANWOMAN>, <CHARNAME>, not a child. */
 = @93 /* To offer aid when necessary is one thing, but to hover beside someone, ever waiting for the next catastrophe... I would not wish to do that to you. */
	++ @94 /* Which one of us are you trying to convince, Isra? */ + t2a.8
	++ @95 /* I would never have wanted that either. */ + t2a.9
	++ @96 /* You could have still waited just a few more days. */ + t2a.10
END

IF ~~ t2a.8
 SAY @97 /* I... I do not know. However I rationalize matters, the facts remain as they are. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t2a.11
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t2a.12
END

IF ~~ t2a.9
 SAY @98 /* I did not think that you would. And yet however I rationalize matters, the facts remain as they are. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t2a.11
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t2a.12
END

IF ~~ t2a.10
 SAY @99 /* Aye, that may well be so. Forgive me, <CHARNAME>. I do not mean to make excuses. */
IF ~~ EXIT
END

IF ~~ t2a.11
 SAY @100 /* Forgive me, <CHARNAME>. I should be more accustomed to terrible things by now, but... I do not care for associating them with you. */
 = @101 /* The mere thought of you in that mage's hands... you deserve better than that. Everybody does, truly, but you... life has treated you cruelly enough as it is. */
	++ @102 /* I know. Honestly, I'm grateful you weren't there. */ + t2a.13
	++ @103 /* It has its kindnesses also. Your company, for example. */ + t2a.14
	++ @104 /* I didn't realize I'd grown on you quite this much, Isra. */ + t2a.15
	++ @105 /* I'm the one who should be complaining about it, not you. */ + t2a.16
END

IF ~~ t2a.12
 SAY @106 /* Forgive me, <CHARNAME>. I should be more accustomed to terrible things by now, but you... life has treated you cruelly enough as it is. */
	++ @102 /* I know. Honestly, I'm grateful you weren't there. */ + t2a.13
	++ @107 /* It has its kindnesses also. Friends like you, for example. */ + t2a.14
	++ @105 /* I'm the one who should be complaining about it, not you. */ + t2a.16
END

IF ~~ t2a.13
 SAY @108 /* (smile) Then at least one of us takes some comfort in it. */
IF ~~ EXIT
END

IF ~~ t2a.14
 SAY @109 /* (smile) I cannot imagine it is much of a consolation, but... thank you, regardless. */
IF ~~ EXIT
END

IF ~~ t2a.15
 SAY @110 /* (smile) You have, my <PRO_LADYLORD>. That should not surprise you by now. */
IF ~~ EXIT
END

IF ~~ t2a.16
 SAY @111 /* Perhaps that is true. */
IF ~~ EXIT
END
END
 
// 2b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",4) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t2b1
@112 /* My <PRO_LADYLORD>, would I be correct in assuming that you are the same <CHARNAME> that prevented war with Baldur's Gate? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @113 /* My fame has spread quickly, I see. */ + t2b.1
	++ @114 /* What stories have they been telling in Amn? */ + t2b.2
	++ @115 /* Technically, it wasn't just me. */ + t2b.3
	++ @116 /* Ah... no, no. That was someone else entirely. */ + t2b.4

APPEND RH#ISRJ

IF ~~ t2b.1
 SAY @117 /* Aye, it has, though I could not say how closely the Athkatlans were watching the conflict. */
IF ~~ + t2b.5
END

IF ~~ t2b.2
 SAY @118 /* Suitably colorful ones, I assure you. You would likely not recognize half of them. */
IF ~~ + t2b.5
END

IF ~~ t2b.3
 SAY @119 /* Aye, it seldom is. And I believe I heard mention of several other names as well. */
IF ~~ + t2b.5
END

IF ~~ t2b.4
 SAY @120 /* Then the resemblance is uncanny, to say the least. */
IF ~~ EXIT
END

IF ~~ t2b.5
 SAY @121 /* I was in Eshpurta at the time... the Shield City, we call it. My own ancestral home, though I seldom have time or reason to visit anymore. Most of Amn's military operations are based there, however, and with the country on the brink of war... */
 = @122 /* My father had asked me to return home to aid in preparations. I... wasn't inclined to refuse. */
 	++ @123 /* You don't seem that thrilled with the request. */ + t2b.6
	++ @124 /* I take it your father isn't some random mercenary. */ + t2b.7
	++ @125 /* Your major military force isn't the Radiant Heart? */ + t2b.8
	++ @126 /* Did you people really never consider a diplomatic solution? */ + t2b.9
END

IF ~~ t2b.6
 SAY @127 /* My relationship with my father is... complicated, I'm afraid. */
IF ~~ + t2b.10
END

IF ~~ t2b.7
 SAY @128 /* His ancestors were, once upon a time, but... no, not exactly. */
IF ~~ + t2b.10
END

IF ~~ t2b.8
 SAY @129 /* No. The Radiant Heart is a holy order, not a secular one, though they were likely involved as well. Father has worked with them before under similar circumstances. */
IF ~~ + t2b.10
END

IF ~~ t2b.9
 SAY @130 /* I am sure it was attempted. I would have gladly accompanied such a mission myself, had my father not flatly forbidden it. */
IF ~~ + t2b.10
END

IF ~~ t2b.10
 SAY @131 /* He was a general once, and though he has since retired, conflicts such as this... he is not exactly content to sit one out. I sometimes think we would get along better if he were. */
 = @132 /* He was quite eager to see me sit it out, of course. He has never been entirely happy about my calling, and any opportunity to shield me from danger... he is quick to take it, I'm afraid. */
 	++ @133 /* Any decent father would be. */ + t2b.11
 	++ @134 /* Surely he would have asked you to do something useful? */ + t2b.12
 	++ @135 /* I'm guessing that you tend to make that hard for him. */ + t2b.13
 	++ @136 /* Your order didn't have a problem with that? */ + t2b.14
END

IF ~~ t2b.11
 SAY @137 /* I expect there is some truth to that. */
IF ~~ + t2b.15
END

IF ~~ t2b.12
 SAY @138 /* Aye, he did. Not very glorious chores, mayhap, though in wartime, few are. */
IF ~~ + t2b.15
END

IF ~~ t2b.13
 SAY @139 /* Surpassingly, aye. */
IF ~~ + t2b.15
END

IF ~~ t2b.14
 SAY @140 /* 'Twould have been difficult to refuse. There were important chores to be done in Eshpurta. */ 
IF ~~ + t2b.15
END

IF ~~ t2b.15
 SAY @141 /* I should not speak so bitterly. What I did or did not do is of precious little consequence with the war averted, and I thank the gods for that much. */
 = @142 /* I wish... truly, <CHARNAME>, I wish that you had been able to come to Amn under other circumstances. You deserved a warmer welcome than the one you received. */
 = @143 /* This madness with Irenicus... 'tis a poor reward for everything you accomplished on the Sword Coast. */
 	++ @144 /* Knowing Athkatla, even the warmest of welcomes would have strings attached. */ + t2b.16
	++ @145 /* The only reward I ever seem to get for my efforts is more misery. */ + t2b.17
	++ @146 /* I would enjoy a party or two in my honor right about now. */ + t2b.18
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @147 /* If you'd care to welcome me a bit more warmly, I certainly wouldn't refuse. */ + t2b.19
	++ @148 /* Being rewarded is the last thing on my mind right now. */ + t2b.20
END

IF ~~ t2b.16
 SAY @149 /* That is likely true. Still, even the Athkatlan elite can be accommodating when they wish to be. */
IF ~~ + t2b.21
END

IF ~~ t2b.17
 SAY @150 /* I am sorry to hear it. */
IF ~~ + t2b.21
END

IF ~~ t2b.18
 SAY @151 /* (laugh) A single Athkatlan party ought to be enough for anyone. */
IF ~~ + t2b.21
END

IF ~~ t2b.19
 SAY @152 /* (laugh) I shall need to keep that in mind, my <PRO_LADYLORD>. */
IF ~~ + t2b.21
END

IF ~~ t2b.20
 SAY @153 /* That is likely for the best. */
IF ~~ + t2b.21
END

IF ~~ t2b.21
 SAY @154 /* In better times... well, the times are what they are. Know that we are grateful regardless, as unlikely as it must seem at the moment. */
IF ~~ EXIT
END
END

// 3a.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",6) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t3a
@155 /* I apologize for my recent... preoccupation, <CHARNAME>. I'm sure my anxieties are doing little for your own peace of mind. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @156 /* My peace of mind is a lost cause at this point anyway. */ + t3a.1
	++ @157 /* I do appreciate the sympathy. */ + t3a.2
	++ @158 /* No, they really aren't. */ + t3a.3
	++ @159 /* I don't have time for this right now. */ + t3a.4

APPEND RH#ISRJ

IF ~~ t3a.1
 SAY @160 /* Don't say such things, my <PRO_LADYLORD>. */
IF ~~ + t3a.3
END

IF ~~ t3a.2
 SAY @73 /* Then that is something, at least. */
IF ~~ + t3a.3
END

IF ~~ t3a.3
 SAY @161 /* I don't mean to make little of your own trials, but recent days have been... frustrating, to say the least. This reunion... */
 = @162 /* So many of my others as of late have been full of strife or unpleasant surprises. 'Twas naive of me, mayhap, but I had expected that *this* one at least would be uncomplicated by such things. */
	++ @163 /* Any more problems I'm likely to run into? */ + t3a.5
	++ @164 /* You were going to go back to Eshpurta, weren't you? */ + t3a.6
	++ @165 /* You really weren't kidding about that dysfunctional family. */ + t3a.7
	++ @166 /* Naive indeed. You should know that I can't go a tenday without finding trouble. */ + t3a.8
END

IF ~~ t3a.4
 SAY @167 /* Oh? Forgive the intrusion, then. */
IF ~~ EXIT
END

IF ~~ t3a.5
 SAY @168 /* No. At least, I certainly hope not. I've told you that I meant to return to Eshpurta to speak with my father... */
IF ~~ + t3a.9
END

IF ~~ t3a.6
 SAY @169 /* I was, yes. I've told you that I meant to speak with my father... */
IF ~~ + t3a.9
END

IF ~~ t3a.7
 SAY @170 /* I would not jest about such things, <CHARNAME>. I've told you that I meant to return to Eshpurta to speak with my father... */
IF ~~ + t3a.9
END

IF ~~ t3a.8
 SAY @171 /* I am beginning to appreciate that, truly. Would that you were the only one. You know that I meant to return to Eshpurta to speak with my father... */
IF ~~ + t3a.9
END

IF ~~ t3a.9
 SAY @172 /* Even the return itself was strange, truth be told. I was never the most obscure of figures in Eshpurta, but news traveled more quickly than I did. Your name is now... quite popular there. */
 = @173 /* Which is not to say that there were no elements who would have preferred war, but by and large, 'twas a rather enthusiastic homecoming. */
	++ @174 /* Did you hear any interesting songs or stories about us? */ + t3a.10
	++ @175 /* I can't imagine you not being in your glory. */ + t3a.11
	++ @176 /* I hope those 'elements' didn't give you any trouble. */ + t3a.12
	++ @177 /* I'm glad at least one of us enjoyed the journey to Amn. */ + t3a.13
END

IF ~~ t3a.10
 SAY @178 /* Aye, though I doubt you would recognize them any more than I did. */
IF ~~ + t3a.14
END

IF ~~ t3a.11
 SAY @179 /* (laugh) For a short time, aye, though reality sunk in quickly enough. */
IF ~~ + t3a.14
END

IF ~~ t3a.12
 SAY @180 /* Not to my face. */
IF ~~ + t3a.14
END

IF ~~ t3a.13
 SAY @181 /* It was not entirely pleasant. */
IF ~~ + t3a.14
END

IF ~~ t3a.14
 SAY @182 /* My father... you might remember that I had meant to write home when we arrived in Baldur's Gate. My letter never reached him, though some of the stories certainly did. */
 = @183 /* We... quarreled. Again. Whatever pride he might have initially felt... I could not say. I begin to think that he simply worries incessantly. And after spending most of his own life in combat, I cannot understand it. */
  	++ @184 /* Fathers always think they know best. Gorion was the same. */ + t3a.15
	++ @185 /* He didn't flatly forbid you, did he? */ + t3a.16
	++ @186 /* I thought you were trying to reconcile with him. */ + t3a.17
	++ @187 /* It's easier to risk your own life than to watch someone you love do so. */ + t3a.18
END

IF ~~ t3a.15
 SAY @188 /* Yes, I can believe that. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.19
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.25
END

IF ~~ t3a.16
 SAY @189 /* Ah... no. He is somewhat adverse to giving commands that he knows will be disobeyed in any case. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.19
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.25
END

IF ~~ t3a.17
 SAY @190 /* Trying... yes. It isn't the sort of thing one can simply wave a wand at, though. Would that I could. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.19
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.25
END

IF ~~ t3a.18
 SAY @191 /* That may well be part of it. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.19
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t3a.25
END

IF ~~ t3a.19
 SAY @192 /* Needless to say, I was not terribly sad to bid farewell to Eshpurta again. I might have preferred to spend more than a fortnight in Crimmor afterwards, but such things cannot be helped. */
	++ @193 /* You'd get bored if you didn't have something important to do anyway. */ + t3a.20
	++ @194 /* A bit of relaxation would be nice in general. */ + t3a.21
	+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @195 /* You don't need to stay here if you don't want to, Isra. */ + t3a.22
	+ ~!GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @195 /* You don't need to stay here if you don't want to, Isra. */ + t3a.23
	++ @196 /* Not too long ago, I remember you being somewhat eager to be out in the world. */ + t3a.24
END

IF ~~ t3a.20
 SAY @197 /* That may well be so. */
IF ~~ EXIT
END

IF ~~ t3a.21
 SAY @198 /* Perhaps, though I suspect that the time for that has passed. */
IF ~~ EXIT
END

IF ~~ t3a.22
 SAY @199 /* I do want to. Even if I did not know and care for Imoen, I would never wish to simply abandon her to her fate. You should know that. */
IF ~~ EXIT
END

IF ~~ t3a.23
 SAY @200 /* I do want to. <CHARNAME>, I would never wish to simply abandon you to your fate at such a time. You should know that. */
IF ~~ EXIT
END

IF ~~ t3a.24
 SAY @201 /* That much has not changed, I admit. */ 
IF ~~ EXIT
END

IF ~~ t3a.25
 SAY @202 /* Needless to say, I was not terribly sad to bid farewell to Eshpurta again, and now that I find myself in your company once more instead... */
 = @203 /* (smile) I missed you, <CHARNAME>... far more than I realized I would. */
	++ @204 /* Oh, do you? And exactly how much more might that be? */ + t3a.26
	++ @205 /* The feeling is very mutual, I assure you. */ + t3a.27
	++ @206 /* I distinctly recall a conversation we had in Baldur's Gate concerning... certain possibilities. */ + t3a.28
	++ @207 /* That's flattering, but I think you may have the wrong idea about us. */ + t3a.29
END

IF ~~ t3a.26
 SAY @208 /* I am a Sunite, my <PRO_LADYLORD>. I must be allowed to keep some sense of mystery about me. */
IF ~~ EXIT
END

IF ~~ t3a.27
 SAY @209 /* That is most heartening to know. */
IF ~~ EXIT
END

IF ~~ t3a.28
 SAY @210 /* As do I... mayhap we shall need to discuss that again at some point. */
IF ~~ EXIT
END

IF ~~ t3a.29
 SAY @211 /* Ah. I see. Forgive me if I overstepped myself somewhat. */ 
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END
END

// 3b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",6) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t3b
@212 /* I must say, my <PRO_LADYLORD>, you seem to have adapted remarkably well to the pace of life in Athkatla. Mayhap that should not surprise me, but I would never have believed that you were actually raised in a library. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @213 /* Candlekeep wasn't quite as secluded as everyone seems to think. */ + t3b.1
	++ @214 /* I did spend quite a bit of time in Baldur's Gate as well. */ + t3b.2
	++ @215 /* Just because I can survive Athkatla doesn't mean I like it. */ + t3b.3
	++ @216 /* Isra, I'm a bit busy right now. Can't this wait? */ + t3b.4
	
APPEND RH#ISRJ

IF ~~ t3b.1
 SAY @217 /* Perhaps I have misjudged it, then. */
IF ~~ + t3b.5
END

IF ~~ t3b.2
 SAY @218 /* Aye, though that says less about a person than where <PRO_HESHE> grew up. */
IF ~~ + t3b.5
END

IF ~~ t3b.3
 SAY @219 /* Even the skill itself is noteworthy. And rarer than you may realize. */
IF ~~ + t3b.5
END

IF ~~ t3b.4
 SAY @220 /* Aye, if you would prefer it. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t3b.5
 SAY @221 /* Forgive my curiosity, <CHARNAME>, but after a lifetime spent amongst Sunites and Lliirans, such a quiet upbringing... I can scarce imagine it. I never could sit still in a library, I'm afraid. */
	++ @222 /* You do seem a bit too active to enjoy a contemplative life. */ + t3b.6
	++ @223 /* I never managed to sit still myself. You should hear the stories. */ + t3b.7
	++ @224 /* The solitude suited me well. It gave me a chance to prepare myself. */ + t3b.8
	++ @225 /* It wasn't as quiet as that. No place with its own barracks is. */ + t3b.9
END

IF ~~ t3b.6
 SAY @226 /* That is something of an understatement, but true enough regardless. */
IF ~~ + t3b.10
END

IF ~~ t3b.7
 SAY @227 /* I am sure that they would be well worth it. */
IF ~~ + t3b.10
END

IF ~~ t3b.8
 SAY @228 /* Truly? I would have expected excessively solitude to serve as a hindrance, though in your case, I would likely be wrong. */
IF ~~ + t3b.10
END

IF ~~ t3b.9
 SAY @229 /* Hmm. I should have realized that it would have a barracks. No, that certainly would make a difference. */
IF ~~ + t3b.10
END

IF ~~ t3b.10
 SAY @230 /* Loath as I am to admit it, I know very little about Candlekeep in general. I'm not certain that I even knew where it was before your own name made it famous. My knowledge of Sword Coast geography is... dismal, to say the least. */
 = @231 /* (laugh) My sisters would tell you that I was too busy drawing pictures of knights and banners into the margins of my books as a child, and they would not be entirely wrong. */
	++ @232 /* As far as Candlekeep is concerned, you didn't miss much. */ + t3b.11
	++ @233 /* I pity your former tutors, Isra. */ + t3b.12
	++ @234 /* The monks of Oghma would never have let me get away with that. */ + t3b.13
	++ @235 /* Knights and banners? Perhaps I shouldn't be surprised. */ + t3b.14
END

IF ~~ t3b.11
 SAY @236 /* I shall have to take your word for it. */
IF ~~ + t3b.15
END

IF ~~ t3b.12
 SAY @237 /* So do I, truth be told. */
IF ~~ + t3b.15
END

IF ~~ t3b.13
 SAY @238 /* I was broken of the habit relatively quickly myself, truth be told. */
IF ~~ + t3b.15
END

IF ~~ t3b.14
 SAY @239 /* No... I dare say you should not. */
IF ~~ + t3b.15
END

IF ~~ t3b.15
 SAY @240 /* (smile) Perhaps this is a poor time to indulge in memory, but I appreciate such conversation regardless. I shall need to tell you more about Crimmor at some point as well. 'Twas a very different experience than Candlekeep, I suspect. */
	++ @241 /* You were trained there, weren't you? */ + t3b.16
	++ @242 /* If it's anything like Athkatla, I can believe it. */ + t3b.17
	++ @243 /* Growing up in Amn must be an experience in and of itself. */ + t3b.18
	++ @244 /* If you think I have time for more inane discussion, you're wrong. */ + t3b.19
END

IF ~~ t3b.16
 SAY @245 /* Aye, I was. The Firehair's faith is based there instead of Athkatla, and it seems to me that Crimmor is a better place because of it. */
 = @246 /* But listen to me. I hardly need an excuse to prattle on about the city, I'm afraid. Consider yourself duly warned. */
IF ~~ EXIT
END

IF ~~ t3b.17
 SAY @247 /* 'Tis less so than you might think, and thank Sune for that much. The Firehair's faith is based there instead of Athkatla, and it seems to me that Crimmor is a better place because of it. */
 = @246 /* But listen to me. I hardly need an excuse to prattle on about the city, I'm afraid. Consider yourself duly warned. */
IF ~~ EXIT
END

IF ~~ t3b.18
 SAY @248 /* Aye, it can be, but I imagine that is true for any given country. */
IF ~~ EXIT
END

IF ~~ t3b.19
 SAY @249 /* I see. I'm sorry you feel that way. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END
END

// 4a.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",8) Global("rh#IsraWasInBGI","GLOBAL",1) Global("rh#IsraRomanceActive","GLOBAL",1)~ THEN RH#ISRJ t4a
@250 /* The month of Mirtul... oh, <CHARNAME>, finding you again now of all times seems such a cruel twist. We missed the Greengrass festivities by mere days. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @251 /* You're worried about parties at a time like this? */ + t4a.1
	++ @252 /* Greengrass festivities? What are those? */ + t4a.2
	++ @253 /* Not meeting at all would have been crueler by far. */ + t4a.3
	++ @254 /* Isra, this really isn't a good time. */ + t4a.4

APPEND RH#ISRJ

IF ~~ t4a.1
 SAY @255 /* 'Tis more than a simple party, my <PRO_LADYLORD>. 'Tis one of my faith's holiest days. */
IF ~~ + t4a.5
END

IF ~~ t4a.2
 SAY @256 /* 'Tis one of my faith's holiest days. We tend to celebrate it... thoroughly, to say the least. */
IF ~~ + t4a.5
END

IF ~~ t4a.3
 SAY @257 /* That is true, though I cannot help but regret missing one of my faith's holiest days. */
IF ~~ + t4a.5
END

IF ~~ t4a.4
 SAY @258 /* I see. Later, mayhap. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t4a.5
 SAY @259 /* This may seem a poor time to worry about such things, but when we parted in Baldur's Gate... 'twould be a lie to say that I had not entertained certain fantasies. I never expected them to come true, of course, but to come so close... */
 = @260 /* (smile) Well, we have far more than a single festival throughout the year. If we have finished this quest by Midsummer, mayhap I can convince you to come with me to that celebration instead. */
	++ @261 /* Convincing me wouldn't take that much work, I assure you. */ + t4a.6
	++ @262 /* Are you asking me out on a date, Isra? */ + t4a.7
	++ @263 /* How many festivals do you actually have? */ + t4a.8
	++ @264 /* I don't think that would be entirely appropriate, Isra. */ + t4a.9
END

IF ~~ t4a.6
 SAY @265 /* I shall need to remember that, my <PRO_LADYLORD>. */
IF ~~ + t4a.10
END

IF ~~ t4a.7
 SAY @266 /* That is not the way I would have put it, my <PRO_LADYLORD>, but... aye, I suppose I am. */
IF ~~ + t4a.10
END

IF ~~ t4a.8
 SAY @267 /* More than I could count, though these are our most important. */
IF ~~ + t4a.10
END

IF ~~ t4a.9
 SAY @268 /* I see. 'Twas not my intent to cause offense. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t4a.10
 SAY @269 /* Midsummer Night... I have only managed to attend it twice, I'm afraid. Two years past with a lover, and the year before that... well, a person who arrives alone in the evening is seldom still alone come morn. */
 = @270 /* (smile) That is the case for most Sunite festivities, though 'tis doubly true for this one. */ 
	++ @271 /* You... with a stranger...? Really? */ + t4a.11
	++ @272 /* Lovers, Isra? Is that what you see in our future? */ + t4a.12
	+ ~Gender(Player1,MALE)~ + @273 /* I wouldn't have to fend off the rest of your church for your favor, I hope. */ + t4a.13
	+ ~Gender(Player1,FEMALE)~ + @273 /* I wouldn't have to fend off the rest of your church for your favor, I hope. */ + t4a.14
	++ @274 /* Isra, I'm really not comfortable with this conversation. */ + t4a.9
END

IF ~~ t4a.11
 SAY @275 /* Few people at any Sunite festival are strangers to me, my <PRO_LADYLORD>, though that is a hardly an appropriate question. You will need to forgive me for remaining silent on the matter. At least for a while longer. */
IF ~~ EXIT
END

IF ~~ t4a.12
 SAY @276 /* I am no diviner, my <PRO_LADYLORD>... and that is as much your decision as mine. */
IF ~~ EXIT
END

IF ~~ t4a.13
 SAY @277 /* I am more likely to have that problem than you are, unfortunately. Such handsome men are all too rare. */
IF ~~ EXIT
END

IF ~~ t4a.14
 SAY @278 /* Oh, I have a longer attention span than that, my Lady. */
IF ~~ EXIT
END
END

// 4b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",8) Global("rh#IsraWasInBGI","GLOBAL",1) !Global("rh#IsraRomanceActive","GLOBAL",1)~ THEN RH#ISRJ t4b
@279 /* The month of Mirtul... we missed the Greengrass festivities by mere days, my <PRO_LADYLORD>. That seems a cruel twist of fate. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @251 /* You're worried about parties at a time like this? */ + t4b.1
	++ @252 /* Greengrass festivities? What are those? */ + t4b.2
	++ @280 /* Fate was kind to let us meet at all, Isra. I wouldn't complain. */ + t4b.3
	++ @254 /* Isra, this really isn't a good time. */ + t4b.4

APPEND RH#ISRJ

IF ~~ t4b.1
 SAY @255 /* 'Tis more than a simple party, my <PRO_LADYLORD>. 'Tis one of my faith's holiest days. */
IF ~~ + t4b.5
END

IF ~~ t4b.2
 SAY @256 /* 'Tis one of my faith's holiest days. We tend to celebrate it... thoroughly, to say the least. */
IF ~~ + t4b.5
END

IF ~~ t4b.3
 SAY @257 /* That is true, though I cannot help but regret missing one of my faith's holiest days. */
IF ~~ + t4b.5
END

IF ~~ t4b.4
 SAY @258 /* I see. Later, mayhap. */
IF ~~ EXIT
END

IF ~~ t4b.5
 SAY @281 /* This may seem a poor time to worry about such things, but there has been so little joy in your life as of late, and 'twill no doubt be even longer until we can afford such diversions again. */
 = @282 /* (laugh) Perhaps that is for the best. I am not entirely sure that I would wish to attend any revel hosted in Athkatla anyway. */
 	++ @283 /* You dislike the city that much? */ + t4b.6
 	++ @284 /* I didn't know you were so keen on festivals in the first place. */ + t4b.7
 	++ @285 /* I, for one, would jump at the opportunity. */ + t4b.8
 	++ @286 /* Have you ever been to one before? */ + t4b.9
END 

IF ~~ t4b.6
 SAY @287 /* Suffice it to say that we court the favor of its nobility more than I might like. */
IF ~~ + t4b.10
END

IF ~~ t4b.7
 SAY @288 /* I go to less than you might think, though I would be a poor Sunite indeed if I avoided them altogether. */
IF ~~ + t4b.10
END

IF ~~ t4b.8
 SAY @289 /* I doubt that even you could bear the Athkatlan nobility for very long. */
IF ~~ + t4b.10
END
 
IF ~~ t4b.9
 SAY @290 /* In Athkatla? Once, aye. Suffice it to say that we court the favor of its nobility more than I might like. */
IF ~~ + t4b.10
END
 
IF ~~ t4b.10
 SAY @291 /* But forgive me, <CHARNAME>. I should not let myself get distracted by such fanciful thoughts. Not when we have so much to accomplish. */
IF ~~ EXIT
END
END

// 4c.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",8) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t4c
@292 /* I must confess, my <PRO_LADYLORD>, I know that you were forced into this life, but I cannot imagine you doing anything else. */ 
= @293 /* Would you have rather preferred a simpler existence instead? */
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @294 /* I've never thought of it. I've gotten used to the one I have. */ + t4c.1
	++ @295 /* No. I spent life in Candlekeep preparing for the moment I could leave. */ + t4c.2
	++ @296 /* Definitely. My plans never used to involve traipsing through dungeons. */ + t4c.3
	++ @297 /* I try not to question what might have been. Nothing good can come of such thoughts. */ + t4c.4
	++ @298 /* Isra, could we talk later instead? */ + t4c.5

APPEND RH#ISRJ

IF ~~ t4c.1
 SAY @299 /* You certainly have. This lifestyle suits you exceedingly well. */
IF ~!Class(Player1,PALADIN_ALL)~ + t4c.6
IF ~Class(Player1,PALADIN_ALL)~ + t4c.7
END

IF ~~ t4c.2
 SAY @300 /* I cannot say that that surprises me. This lifestyle suits you exceedingly well. */
IF ~!Class(Player1,PALADIN_ALL)~ + t4c.6
IF ~Class(Player1,PALADIN_ALL)~ + t4c.7
END

IF ~~ t4c.3
 SAY @301 /* If you still feel that way, <CHARNAME>, you conceal it very well indeed. Truly, this lifestyle suits you more than I think you realize. */ 
IF ~!Class(Player1,PALADIN_ALL)~ + t4c.6
IF ~Class(Player1,PALADIN_ALL)~ + t4c.7
END

IF ~~ t4c.4
 SAY @302 /* Mayhap there is some truth to that. But despite whatever strain you may be feeling, <CHARNAME>, I think that this lifestyle suits you more than perhaps you realize. */
IF ~!Class(Player1,PALADIN_ALL)~ + t4c.6
IF ~Class(Player1,PALADIN_ALL)~ + t4c.7
END

IF ~~ t4c.5
 SAY @220 /* Aye, if you would prefer it. */
IF ~~ EXIT
END

IF ~~ t4c.6
 SAY @303 /* The things that you have accomplished, the things that you have endured... sometimes I wonder if you might not have been called to this life yourself. I am sure that this sounds like so much mystical nonsense to you, but to be as exceptional as you are... */
IF ~~ + t4c.8
END

IF ~~ t4c.7
 SAY @304 /* The things that you have accomplished, the things that you have endured... they should not surprise me, I know. This was no doubt a calling for you as much as it was for any of us, but you were still trained outside of any of the orders. To be as exceptional as you are... */
IF ~~ + t4c.8
END

IF ~~ t4c.8
 SAY @305 /* My <PRO_LADYLORD>, was there ever a moment when you simply knew that your life would take such a different track? */
	++ @306 /* I've always known that I was going to make something of myself. */ + t4c.9
	++ @307 /* I never knew for sure, but I certainly always hoped. */ + t4c.10
	++ @308 /* Anyone's life could take a different track, given the right motivators. */ + t4c.11
	++ @309 /* I'm still looking forward to the day I can stop adventuring. */ + t4c.12
END

IF ~~ t4c.9
 SAY @310 /* No, you certainly do not lack for ambition. */
IF ~~ + t4c.13
END

IF ~~ t4c.10
 SAY @311 /* And not in vain, 'twould seem. */
IF ~~ + t4c.13
END

IF ~~ t4c.11
 SAY @312 /* Aye. Why some encounter those motivators and others don't, however... */
IF ~~ + t4c.13
END

IF ~~ t4c.12
 SAY @313 /* I see. 'Twould be a great loss, I think, but that is your choice to make. */
IF ~~ + t4c.13
END

IF ~~ t4c.13
 SAY @314 /* Forgive me my curiosity, <CHARNAME>, but I do sometimes wonder at the forces that drive other people into this life. I have spent so much time with the knights of the Ruby Rose, and our stories tend to be... quite similar. */
 = @315 /* 'Tis often said that becoming a paladin is a matter largely of destiny, that it is a calling rather than a choice. Many people discount such talk as romantic, self-righteous nonsense, of course, but the calling itself is... a very real thing. For me, at least. */
	++ @316 /* How so? */ + t4c.14
	+ ~Class(Player1,PALADIN_ALL)~ + @317 /* And for me as well. When did you know? */ + t4c.15
	+ ~Class(Player1,PALADIN_ALL)~ + @318 /* I never experienced anything like that myself. How would you describe it? */ + t4c.16
	+ ~!Class(Player1,PALADIN_ALL)~ + @319 /* Complete with the compulsory divine visions, no doubt. */ + t4c.17
	+ ~!Class(Player1,PALADIN_ALL)~ + @320 /* Don't you people ever get tired of thinking you're better than everyone else? */ + t4c.18
	++ @321 /* We're all inclined to think that our own experiences are in some manner unique. */ + t4c.19
END

IF ~~ t4c.14
 SAY @322 /* 'Tis a long story, and I was only seven years old at the time... young enough that I could not really say how true my memory of it still is. */
 = @323 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a while. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t4c.20
END

IF ~~ t4c.15
 SAY @324 /* For certain? When I was a child of seven years, as strange at that might seem. */
 = @325 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t4c.20
END

IF ~~ t4c.16
 SAY @326 /* 'Tis possible that you simply did not recognize it as such, my <PRO_LADYLORD>, or mayhap you were never first pushed down a different path. As for how I would describe it... I was only seven years old at the time, so I could not really say how true my memory still is. */
 = @325 /* That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t4c.20
END

IF ~~ t4c.17
 SAY @327 /* (laugh) No, my <PRO_LADYLORD>, nothing quite so obvious, though one might say that devils were involved. */
 = @328 /* I was only seven years old when I knew for certain. That was 1356, the year that Dragonspear Castle was finally purged... at least for a while. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells, and the Baatezu that would issue forth at times. */
IF ~~ + t4c.20
END

IF ~~ t4c.18
 SAY @329 /* ... I apologize if I have offended you in some way, my <PRO_LADYLORD>. Mayhap we should simply continue on. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t4c.19
 SAY @330 /* Mayhap, though I am not entirely convinced. I look at my sisters, both of whom chose... other lives, and I cannot help but wonder where exactly it was that our paths diverged so. */
 = @331 /* I was only seven years old when I knew for certain. That was 1356, the year that Dragonspear Castle was finally purged... at least for a time. I am sure you have heard of it; the castle was infamous for its open portals to the Nine Hells. */
IF ~~ + t4c.20
END

IF ~~ t4c.20
 SAY @332 /* Seldom are Faerun's nations and city-states willing to work together, but to cleanse the old ruins, they made an exception. Baldur's Gate, Waterdeep... and Amn as well, I am proud to say. 'Twas my father's last serious campaign as a commanding general, and when he and his army marched home in victory-- */
 = @333 /* I normally see no beauty in warfare, but that day... that day I saw little else. You have likely never seen a victory parade before, so I can only say that the euphoria is... indescribable. All of Eshpurta was a-flush with celebration. All of Amn, mayhap, and likely of the Western Heartlands as well. Truly, my <PRO_LADYLORD>, 'twas more akin to a scene from a fairy-tale than to reality. */
 = @334 /* My father had spent much of my early childhood campaigning, so I barely knew him at all, but in that moment... in that moment, I wanted to *be* him, <CHARNAME>. To be the center of that whirlwind of passionate celebration. 'Twas considered most unseemly for a girl of my age, of course, and everyone expected the infatuation to pass soon enough. */
	++ @335 /* You? Grow bored of something? As if that would ever happen. */ + t4c.21
	++ @336 /* I take it that Amnian nobles don't like their daughters playing at war. */ + t4c.22
	++ @337 /* I'd have expected that calling to be more spiritual in nature. */ + t4c.23
	++ @338 /* Even for you, Isra, that's more than a bit vain. */ + t4c.24
END

IF ~~ t4c.21
 SAY @339 /* (laugh) They had reason to expect as much, my <PRO_LADYLORD>. */ 
IF ~~ + t4c.25
END

IF ~~ t4c.22
 SAY @340 /* No, not as such. Father understood it eventually, at least for a while, but at first... truly, they had reason to expect me to grow tired of it. */
IF ~~ + t4c.25
END

IF ~~ t4c.23
 SAY @341 /* (laugh) I am not altogether convinced that it wasn't. A deity's summons can be overwhelming and confusing for a child. Whatever it was, however, it... changed me in noticeable ways. */
IF ~~ + t4c.25
END

IF ~~ t4c.24
 SAY @342 /* (laugh) I was a child, my <PRO_LADYLORD>. Most children tend towards self-indulgence... though I will admit, I have never been able to dislodge the memory. */
IF ~~ + t4c.25
END

IF ~~ t4c.25
 SAY @343 /* I've been told that until that point, I had been a very... capricious child, given to picking up and abandoning hobbies with little warning or reason. My tutors considered me a menace, and everyone simply assumed that it would not be long before I grew bored of this newest fascination as well. */ 
 = @344 /* (laugh) Obviously, I never did. The first flush of obsession passed, of course, and my father eventually managed to teach me discipline. Why things played out quite like that... I could not say for certain. Mayhap my destiny truly was tied so tightly to this path that none other could ever have hoped to hold my attention for long. */
 = @345 /*  I have spoken with others since moving to Crimmor, and my story is far from unique. Of course, I do not know whether what is true for Sunites holds true for other faiths as well. */ 
	++ @346 /* That sounds more like madness than destiny, really. */ + t4c.26
	++ @347 /* Do you really like the idea that you could never have happily done anything else? */ + t4c.27
	++ @348 /* I still think there's an element of that in any calling, not just yours. */ + t4c.28
	++ @349 /* I imagine that paladins of other faiths would be less likely to first hear their call amidst revelry and celebration. */ + t4c.29
END
 
IF ~~ t4c.26
 SAY @350 /* Madness would have been to refuse it, I think. */
IF ~~ + t4c.30
END

IF ~~ t4c.27
 SAY @351 /* It troubles me little. Sometimes I think that striving against the will of the gods is the only certain path to misery that there is. For anyone, not simply for me. */
IF ~~ + t4c.30
END
 
IF ~~ t4c.28
 SAY @352 /* I imagine that there may well be. */
IF ~~ + t4c.30
END
 
IF ~~ t4c.29
 SAY @353 /* (laugh) You clearly have never had the pleasure of meeting a member of the Harmonious Order, though I will otherwise concede you the point. */ 
IF ~~ + t4c.30
END

IF ~~ t4c.30
 SAY @354 /* Forgive me my nostalgia, my <PRO_LADYLORD>. You must be growing tired of listening to my maundering tale. */
	++ @355 /* On the contrary, I was quite enjoying the story. */ + t4c.31
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @356 /* I never grow tired of listening to your voice, Isra. */ + t4c.32
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",1)~ + @356 /* I never grow tired of listening to your voice, Isra. */ + t4c.33
	++ @357 /* It was a bit less flashy than I was expecting. */ + t4c.34
	++ @358 /* Well, yes, we probably should be moving on now. */ + t4c.35
END
 
IF ~~ t4c.31
 SAY @359 /* Then I'm glad to hear it. */
 = @360 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t4c.32
 SAY @361 /* (laugh) You are a charming one, I see. */
 = @360 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t4c.33
 SAY @362 /* (laugh) Nor do I, apparently. */
 = @360 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t4c.34
 SAY @363 /* (laugh) Such is reality, I'm afraid. */
 = @360 /* Regardless, we've spent more than enough time speaking as it is. Mayhap we should consider moving on now. */
IF ~~ EXIT
END

IF ~~ t4c.35
 SAY @364 /* Yes, I'm inclined to agree. */
IF ~~ EXIT
END
END

// 5a. (upon rest in an inn)
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",10) Global("rh#IsraWasInBGI","GLOBAL",1) Global("rh#IsraRomanceActive","GLOBAL",1)~ THEN RH#ISRJ t5a
@365 /* Come, sit with me a while, <CHARNAME>. I would have you near me this evening. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @366 /* You look awfully pensive to<DAYNIGHT>, Isra. */ + t5a.1
	++ @367 /* You should know by now that I would be delighted to. */ + t5a.1
	++ @368 /* I was about to head to bed, actually. We can talk in the morning. */ + t5a.2

APPEND RH#ISRJ

IF ~~ t5a.1
 SAY @369 /* (smile) I have been thinking, my <PRO_LADYLORD>. */
 = @370 /* Do you still recall that night we spent in Baldur's Gate? There were many, I know, but this one... there was a minstrel playing, a talented young lady. And as splendid as she was... */
 = @371 /* I would have stayed up all night with you listening had I thought I could afford it. */
 	+ ~Gender(Player1,MALE)~ + @372 /* I asked you to dance with me, as I recall. */ + t5a.3
	+ ~Gender(Player1,FEMALE)~ + @372 /* I asked you to dance with me, as I recall. */ + t5a.4
	++ @373 /* I... think I might have asked you to spend the night with me. */ + t5a.5
 	++ @374 /* I remember it as well, Isra. Very fondly. */ + t5a.6
 	++ @375 /* I can't say that I have any idea what you're talking about. */ + t5a.7
END

IF ~~ t5a.2
 SAY @376 /* I suppose so. Sleep well. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ t5a.3
 SAY @377 /* Aye, and you were the perfect gentleman. */
IF ~~ + t5a.8
END

IF ~~ t5a.4
 SAY @378 /* Aye, and I told you to lead, and then... reneged on that. To the amusement of everyone else in the inn, I am sure. */
IF ~~ + t5a.8
END

IF ~~ t5a.5
 SAY @379 /* Aye, you did. You needn't be so bashful about it. Under other circumstances, I may well have accepted. */
IF ~~ + t5a.8
END

IF ~~ t5a.6
 SAY @380 /* I... had hoped that you would. */
IF ~~ + t5a.8
END
 
IF ~~ t5a.7
 SAY @381 /* Oh. I see. Forgive my nostalgia, then. Good night, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ t5a.8
 SAY @382 /* That night, <CHARNAME>... I know those days were not pleasant for any of us, but when I look back upon it now, I am astounded at how little has truly changed between us. And yet how much. */
 = @383 /* One day you were simply some beautiful stranger, my <PRO_LADYLORD>, and then the next... your company has become as comfortable to me as my own. */
	++ @384 /* You and I, Isra, do you think perhaps...? */ + t5a.9
	++ @385 /* You never told me that you felt that way. */ + t5a.10
	++ @386 /* I've felt the same for quite some time, you know. */ + t5a.11
	++ @387 /* Isra... I'm not sure I like where this is headed. */ + t5a.7
END

IF ~~ t5a.9
 SAY @388 /* I think... yes. Yes, I do. */
IF ~~ + t5a.12
END

IF ~~ t5a.10
 SAY @389 /* No... no, I did not. */
IF ~~ + t5a.12
END

IF ~~ t5a.11
 SAY @390 /* I... thought you had. I am sorry for not saying something sooner. */
IF ~~ + t5a.12
END

IF ~~ t5a.12
 SAY @391 /* When I left you in Baldur's Gate, I thought-- I could not say for certain, truth be told. That there was some strange nobility in leaving things unsaid and unspoken, mayhap. That if something was not perfectly timed, 'twas not meant to be at all. */
 = @392 /* That was childish of me. I know that now. */
	++ @393 /* What exactly are you trying to say? */ + t5a.13
	++ @394 /* What finally changed your mind? Seeing me again? */ + t5a.14
	++ @395 /* I could have told you that months ago, Isra. */ + t5a.15
	++ @396 /* Isra... I have to tell you that I don't feel the same. */ + t5a.16
END

IF ~~ t5a.13
 SAY @397 /* That I am... very fond of you. More than merely that. */
IF ~Gender(Player1,MALE)~ + t5a.17
IF ~Gender(Player1,FEMALE)~ + t5a.18
END

IF ~~ t5a.14
 SAY @398 /* Amongst other things, aye. */
IF ~Gender(Player1,MALE)~ + t5a.17
IF ~Gender(Player1,FEMALE)~ + t5a.18
END

IF ~~ t5a.15
 SAY @399 /* I do not think that I was ready to listen. */
IF ~Gender(Player1,MALE)~ + t5a.17
IF ~Gender(Player1,FEMALE)~ + t5a.18
END

IF ~~ t5a.16
 SAY @400 /* Oh. Oh... I see. Forgive me the presumption, then. Good night, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ t5a.17
 SAY @401 /* I must be fully honest with you, <CHARNAME>. There are certain things I cannot offer you. Marriage, family... */
IF ~~ + t5a.19
END

IF ~~ t5a.18
 SAY @402 /* I must be fully honest with you. There are certain things I cannot offer you. Marriage, family... well, unless we were to do something quite unconventional, children are unlikely anyway, and perhaps that is for the best. */
IF ~~ + t5a.19
END

IF ~~ t5a.19
 SAY @403 /* Some consider such prospects compatible with a paladin's calling, but I don't. I have seen the toll that this lifestyle can take on a lover... I would not wish bind someone to me with vows as well. */
 = @404 /* I doubt that such concerns are foremost on your mind at present, but you have the right to know. */
	++ @405 /* Then we just take each day as it comes? */ + t5a.20
	++ @406 /* Thank you. That's actually a bit of a relief. */ + t5a.21
	+ ~Class(Player1,PALADIN_ALL)~ + @407 /* I appreciate the honesty, and I can sympathize with your stance. */ + t5a.22
	+ ~!Class(Player1,PALADIN_ALL)~ + @408 /* Isra, sometimes your need for utter honesty is a bit of a mood killer. */ + t5a.23
	+ ~Class(Player1,PALADIN_ALL)~ + @409 /* You wouldn't be binding me to a lifestyle I haven't already embraced. */ + t5a.24
	++ @410 /* Don't speak in absolutes. You've changed your mind once already. */ + t5a.25
	++ @411 /* I see. I'm sorry, but that does change things. */ + t5a.26
END

IF ~~ t5a.20
 SAY @412 /* I would prefer that, yes... and each night as well. */
IF ~~ + t5a.31
END

IF ~~ t5a.21
 SAY @413 /* Is it? I would not have expected it to be such a surprise. */
IF ~~ + t5a.31
END

IF ~~ t5a.22
 SAY @414 /* I thought you would be able to. */
IF ~~ + t5a.31
END

IF ~~ t5a.23
 SAY @415 /* I can't say that I'm too sorry about that. */
IF ~~ + t5a.31
END

IF ~~ t5a.24
 SAY @416 /* I know. And that may well make a difference in the end, though you should know that my stance is... somewhat unconventional. */
	++ @417 /* I'm more than willing to live in the present instead. */ + t5a.27
	++ @418 /* It may be unconventional, but I understand it entirely. */ + t5a.22
	++ @419 /* And you really never want children? */ + t5a.28
	++ @420 /* So I see. I'm sorry, but that does change things. */ + t5a.26
END

IF ~~ t5a.25
 SAY @421 /* And I might again, should I survive another decade or so. In the meantime, however, all we have to work with is the present. */
	++ @422 /* That's more than acceptable. */ + t5a.27
	++ @405 /* Then we just take each day as it comes? */ + t5a.20
	++ @419 /* And you really never want children? */ + t5a.28
	++ @420 /* So I see. I'm sorry, but that does change things. */ + t5a.26
END

IF ~~ t5a.26
 SAY @423 /* I understand. Really, I do. Good night, <CHARNAME>, and I pray that you find what you are looking for. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ t5a.27
 SAY @424 /* I'm pleased to hear it. Very much so. */
IF ~~ + t5a.31
END

IF ~~ t5a.28
 SAY @425 /* Should I abandon them more often than not? Or risk orphaning them? I-- no, <CHARNAME>, that much is unlikely to ever change. */
	++ @426 /* I can more than sympathize with that. */ + t5a.22
	++ @427 /* I never really thought about it that way. */ + t5a.29
	++ @428 /* Well, I can't say I ever really wanted children anyway. */ + t5a.30
	++ @411 /* I see. I'm sorry, but that does change things. */ + t5a.26
END

IF ~~ t5a.29
 SAY @429 /* It is something that deserves far more than a passing thought. */
IF ~~ + t5a.31
END

IF ~~ t5a.30
 SAY @430 /* Then I suppose that is one less concern. */
IF ~~ + t5a.31
END

IF ~~ t5a.31
 SAY @431 /* But 'tis growing late now, and I ought to retire shortly. If you would care to continue this conversation in a more... private venue, I certainly have no objection. */
	++ @432 /* Are you asking-- of course you are. I'd love to spend the evening with you. */ + t5a.32
	++ @433 /* I... think it may be a bit too soon for that, my lady. */ + t5a.33
	++ @434 /* How could I possibly turn down such a gracious invitation? */ + t5a.34
	++ @435 /* You have no idea how long I've been waiting to hear those words. */ + t5a.35
	++ @436 /* On second thought, I don't think this is a good idea. Any of this. */ + t5a.16
END 
 
IF ~~ t5a.32
 SAY @437 /* I was hoping you would. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2) SetGlobal("rh#IsraSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t5a.33
 SAY @438 /* Of course. I had no intention of making you uncomfortable, <CHARNAME>. Good night. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ t5a.34
 SAY @439 /* Aye, how could you indeed? */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2) SetGlobal("rh#IsraSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t5a.35
 SAY @440 /* Oh, I think I have some idea, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2) SetGlobal("rh#IsraSex","GLOBAL",1) RestParty()~ EXIT
END
END

// 5b. (upon rest in an inn)
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",10) Global("rh#IsraWasInBGI","GLOBAL",1) !Global("rh#IsraRomanceActive","GLOBAL",1)~ THEN RH#ISRJ t5b
@441 /* Would you care to sit with me a while, <CHARNAME>? Your company... I would appreciate it this evening. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @366 /* You look awfully pensive to<DAYNIGHT>, Isra. */ + t5b.1
	++ @367 /* You should know by now that I would be delighted to. */ + t5b.1
	++ @368 /* I was about to head to bed, actually. We can talk in the morning. */ + t5b.2

APPEND RH#ISRJ

IF ~~ t5b.1
 SAY @369 /* (smile) I have been thinking, my <PRO_LADYLORD>. */
 = @442 /* How long would you say that we have been living out of taverns like this? I know we were apart for a time, of course, but that detail seems somewhat negligible now. */
	++ @443 /* It is a strange sort of life, isn't it? */ + t5b.3
	++ @444 /* Living out of taverns? Normally we live out of tents instead. */ + t5b.4
	++ @445 /* Months, Isra, though it seems like its own lifetime. */ + t5b.5
	++ @446 /* I wouldn't consider your habit of gallivanting off to be negligible. */ + t5b.6
END

IF ~~ t5b.2
 SAY @376 /* I suppose so. Sleep well. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5b.3
 SAY @447 /* I am not sure that I would say that, exactly. Truly, I think that I would be less comfortable with the alternative. */
IF ~~ + t5b.9
END

IF ~~ t5b.4
 SAY @448 /* Aye... and I cannot say that I care for that, though perhaps it makes the nights I can convince you to find an inn that much more precious. */ 
IF ~~ + t5b.9
END

IF ~~ t5b.5
 SAY @449 /* In this life, I would say that a few months *is* a lifetime... though I do not regret it a moment. */
IF ~~ + t5b.9
END

IF ~~ t5b.6
 SAY @450 /* Oh. I... did not realize that you were still upset over that. */
	++ @451 /* I was only teasing you, Isra. */ + t5b.7
	++ @452 /* Apparently you thought wrong. */ + t5b.8
END

IF ~~ t5b.7
 SAY @453 /* I see. Perhaps "gallivanting" is not such a terrible description anyway. */
IF ~~ + t5b.9
END

IF ~~ t5b.8
 SAY @454 /* So I see. Forgive me, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5b.9
 SAY @455 /* It may well seem strange, but to spend each night in a different place, to sup alongside travelers from every corner of Faerun... I grew rather accustomed to it in Baldur's Gate, I think. And I am growing used to it again here. */
 = @456 /* Before I met you, <CHARNAME>, my life was not quite so colorful. 'Twas colorful enough, certainly, but not like this. Mayhap I should thank you for that. */
	++ @457 /* At least one of us is enjoying the experience. */ + t5b.10
	++ @458 /* You didn't frequent taverns as much before? */ + t5b.11
	++ @459 /* And for the constant danger as well, no doubt. */ + t5b.12
	++ @460 /* You want to thank me, do you? What exactly do you have in mind? */ + t5b.13 
END

IF ~~ t5b.10
 SAY @461 /* (sigh) I should not have expected you to share my enthusiasm, though... I wish you did, my <PRO_LADYLORD>. */
IF ~~ + t5b.14
END

IF ~~ t5b.11
 SAY @462 /* Rural ones, aye. When we stay in a city, however, we are more likely to seek shelter in a temple instead. 'Tis an entirely different experience. */
IF ~~ + t5b.14
END

IF ~~ t5b.12
 SAY @463 /* (laugh) That is a fact of life regardless, I'm afraid. */
IF ~~ + t5b.14
END

IF ~~ t5b.13
 SAY @464 /* (laugh) Do not become greedy now, my <PRO_LADYLORD>. */
IF ~~ + t5b.14
END

IF ~~ t5b.14
 SAY @465 /* Those nights in Baldur's Gate... as dark as the days tended to be, as confusing and overwhelming as they often were, I think I shall always remember the evenings fondly. */
 = @466 /* I hope... I hope that you will feel the same way about Amn one day, <CHARNAME>. */
	++ @467 /* I think that will depend upon how this quest ends. */ + t5b.15
	++ @468 /* Do I really seem that miserable all the time? */ + t5b.16
	++ @469 /* I am already feeling that way about Amn. */ + t5b.17
	++ @470 /* I didn't realize that you thought so highly of the country. */ + t5b.18
END 

IF ~~ t5b.15
 SAY @471 /* Then I shall pray that it ends well. */
IF ~~ + t5b.19
END
 
IF ~~ t5b.16
 SAY @472 /* Not all the time, certainly, though... sometimes, aye. */
IF ~~ + t5b.19
END

IF ~~ t5b.17
 SAY @473 /* Good. I am glad to hear it. */
IF ~~ + t5b.19
END

IF ~~ t5b.18
 SAY @474 /* As many problems as it has, it is still my home. */
IF ~~ + t5b.19
END

IF ~~ t5b.19
 SAY @475 /* I should retire shortly, though before I do, I did mean to tell you that I asked the barkeep about local bathhouses. There is apparently one relatively close by that comes highly recommended. */
 = @476 /* Our Calishite style baths, <CHARNAME>... they truly are a treat. */
	++ @477 /* The inn's facilities aren't enough for you? */ + t5b.20
	++ @478 /* Are they? I haven't been to a decent one in ages. */ + t5b.21
	++ @479 /* As far as I'm concerned, a dip in a stream is enough of a treat. */ + t5b.22
	+ ~AreaCheck("AR0406")~ + @480 /* I can't imagine finding one in the slums. */ + t5b.23
	++ @481 /* Thank you. I shall need to keep that in mind. */ + t5b.21
END

IF ~~ t5b.20
 SAY @482 /* They suffice, though I do suggest you try something more refined at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5b.21
 SAY @483 /* Aye, I thought you would be glad to hear it. Good night, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5b.22
 SAY @484 /* I... have noticed that, aye. I can only suggest that you try something more refined at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5b.23
 SAY @485 /* Relatively close by, I said. Bernard's judgment is normally quite good. 'Tis worth at least considering at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 5c.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",10) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t5c
@486 /* 'Tis always such a welcome surprise to find true talent in establishments such as this, my <PRO_LADYLORD>. I trust you enjoyed the last performance. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @487 /* You're starting to get a bit starry-eyed there, Isra. */ + t5c.1
	++ @488 /* Are you sure you wouldn't like a drink? I'd be happy to order something. */ + t5c.2
	++ @489 /* Isra, you're watching that bard so intently, it's a wonder she's not getting nervous. */ + t5c.3
	++ @490 /* As enjoyable as this evening has been, I need to get some sleep. */ + t5c.4

APPEND RH#ISRJ

IF ~~ t5c.1
 SAY @491 /* (laugh) Aye, I do not doubt it. */
IF ~~ + t5c.5
END

IF ~~ t5c.2
 SAY @492 /* Quite sure, thank you. I have long since learned not to touch the stuff. */
IF ~~ + t5c.5
END

IF ~~ t5c.3
 SAY @493 /* (laugh) You have an odd definition of nervous, <CHARNAME>. She is quite clearly reveling in the attention. */
IF ~~ + t5c.5
END

IF ~~ t5c.4
 SAY @494 /* That would no doubt be a wise decision. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5c.5
 SAY @495 /* We spend so much time in combat, I find it all too easy to forget how many other ways there are to bring a touch of brightness into this darkened world. Better ways, mayhap. Ways well worth defending, at the very least. */
 = @496 /* That we can still bring ourselves to enjoy evenings such as this is a victory in and of itself, I think. */
	++ @497 /* And one I wish we could indulge in more often these days. */ + t5c.6
	++ @498 /* You really are a hopeless romantic, aren't you? */ + t5c.7
	++ @499 /* I'm usually too worried to have much of a taste for music. */ + t5c.8
	++ @500 /* I'm surprised I've never seen you play an instrument yourself. */ + t5c.9
END
 
IF ~~ t5c.6
 SAY @501 /* 'Tis little consolation, mayhap, but at least we know that the music still plays, even if we are not always so fortunate as to enjoy it. */
IF ~~ + t5c.10
END

IF ~~ t5c.7
 SAY @502 /* I am devoted to the Firehair, my <PRO_LADYLORD>. There is nothing hopeless about it. */
IF ~~ + t5c.10
END

IF ~~ t5c.8
 SAY @503 /* I do not blame you for that, <CHARNAME>, though cultivating an appreciation would likely do you well, particularly in times such as this. */
IF ~~ + t5c.10
END

IF ~~ t5c.9
 SAY @504 /* (laugh) I would never inflict such horror upon you, <CHARNAME>. */
IF ~~ + t5c.10
END

IF ~~ t5c.10
 SAY @505 /* Truly, sometimes I wish I were a better musician myself. My mother was a bard in her youth, aye, though I like to jest that my sisters inherited so much of her talent, there was little enough left over for me. */
 = @506 /* I do not begrudge them their superior skill, of course, though... I admit that I would rather they had better nurtured their gifts. */
	++ @507 /* Neither really struck me as bardic material. */ + t5c.11
	++ @508 /* Not everyone does exactly what we want them to. */ + t5c.12
	++ @509 /* I can't believe that you don't have any musical talent whatsoever. */ + t5c.13
	++ @510 /* The three of you have a pretty complicated relationship, don't you? */ + t5c.14
END

IF ~~ t5c.11
 SAY @511 /* They were once. Especially Rana. */
IF ~~ + t5c.15
END

IF ~~ t5c.12
 SAY @512 /* Aye, my <PRO_LADYLORD>, I am well aware of that. */
IF ~~ + t5c.15
END

IF ~~ t5c.13
 SAY @513 /* I have some training, I must admit, though I have never put it to great use. */
IF ~~ + t5c.15
END

IF ~~ t5c.14
 SAY @514 /* Aye... that would be something of an understatement. */
IF ~~ + t5c.15
END

IF ~~ t5c.15
 SAY @515 /* But this evening is too pleasant by far to focus on such thoughts. As strange as it may seem, to spend each night in a different place, to sup alongside travelers from every corner of Faerun... I am finding that I rather like it. */
 = @516 /* Before I met you, my life was not quite so colorful. 'Twas colorful enough, certainly, but not like this. Mayhap I should thank you for that. */
	++ @457 /* At least one of us is enjoying the experience. */ + t5c.16
	++ @517 /* What have you been doing with your time? Guarding temples? */ + t5c.17
	++ @518 /* And you'll thank me for the constant danger as well, no doubt. */ + t5c.18
	++ @460 /* You want to thank me, do you? What exactly do you have in mind? */ + t5c.19
END

IF ~~ t5c.16
 SAY @519 /* (sigh) Aye, it comes with its hardships as well. */
IF ~~ + t5c.20
END

IF ~~ t5c.17
 SAY @520 /* Sometimes, aye, though I meant the diverse company. I have always been more likely to seek shelter in a temple instead. */
IF ~~ + t5c.20
END

IF ~~ t5c.18
 SAY @463 /* (laugh) That is a fact of life regardless, I'm afraid. */
IF ~~ + t5c.20
END

IF ~~ t5c.19
 SAY @464 /* (laugh) Do not become greedy now, my <PRO_LADYLORD>. */
IF ~~ + t5c.20
END

IF ~~ t5c.20
 SAY @521 /* I ought to retire shortly, though before I do, I did mean to tell you that I asked the barkeep about local bathhouses. There is apparently one relatively close by that comes highly recommended. */
 = @476 /* Our Calishite style baths, <CHARNAME>... they truly are a treat. */
	++ @478 /* Are they? I haven't been to a decent one in ages. */ + t5c.21
	++ @479 /* As far as I'm concerned, a dip in a stream is enough of a treat. */ + t5c.22
	+ ~AreaCheck("AR0406")~ + @480 /* I can't imagine finding one in the slums. */ + t5c.23
	++ @477 /* The inn's facilities aren't enough for you? */ + t5c.24
	++ @481 /* Thank you. I shall need to keep that in mind. */ + t5c.21
END

IF ~~ t5c.21
 SAY @483 /* Aye, I thought you would be glad to hear it. Good night, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5c.22
 SAY @484 /* I... have noticed that, aye. I can only suggest that you try something more refined at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5c.23
 SAY @485 /* Relatively close by, I said. Bernard's judgment is normally quite good. 'Tis worth at least considering at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5c.24
 SAY @482 /* They suffice, though I do suggest you try something more refined at some point. But for now... sleep well, my <PRO_LADYLORD>. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 6a.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",12) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t6a
@522 /* Have you ever seen anything that simply made you stop and think of Imoen for a brief moment? A girl's laughter, mayhap, or a thousand other possibilities, I imagine. */ 
DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700) IncrementGlobal("rh#IsraTalks","GLOBAL",1)~
END
	++ @523 /* I think of Imoen often enough without needing a specific reason. */ + t6a.1
	++ @524 /* Occasionally, yes. How could I not? */ + t6a.2
	++ @525 /* I try not to think about her whenever possible. */ + t6a.3
	++ @526 /* Isra, I don't want to talk about her. */ + t6a.4

APPEND RH#ISRJ

IF ~~ t6a.1
 SAY @527 /* As do I, but sometimes... occasionally something happens to catch me by surprise. */
IF ~~ + t6a.5
END

IF ~~ t6a.2
 SAY @528 /* How indeed... 'tis the same way with me. */
IF ~~ + t6a.5
END

IF ~~ t6a.3
 SAY @529 /* 'Tis somewhat painful, I agree, but I would rather not let myself forget her. */
IF ~~ + t6a.5
END

IF ~~ t6a.4
 SAY @530 /* Oh. I see... I shall not make that mistake again. */
IF ~~ EXIT
END

IF ~~ t6a.5
 SAY @531 /* Several days ago, I saw a young woman who wore her hair in a style I had shown her once... a style she made me reproduce each morning for a tenday before she finally grew weary of it. */
 = @532 /* And then today, I found a bottle of kohl she had ruined. I thought I had gotten rid of it, but apparently I had not. */
	++ @533 /* I never realized that she was ruining your things. */ + t6a.6
	++ @534 /* Do you intend to keep it now? */ + t6a.7
	++ @535 /* You always were such a favorite target for her. */ + t6a.8
	++ @536 /* Sometimes I forget how much of a pest she could be at times. */ + t6a.9
END

IF ~~ t6a.6
 SAY @537 /* I never minded it overmuch, and now... now I almost long for it. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.10
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.15
END

IF ~~ t6a.7
 SAY @538 /* Aye, I do. 'Tis a strange memento, but... an appropriate one, I think. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.10
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.15
END

IF ~~ t6a.8
 SAY @539 /* I know. I never minded it overmuch, and now... now I almost long for it. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.10
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.15
END

IF ~~ t6a.9
 SAY @540 /* Aye, though I almost long for it now. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.10
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t6a.15
END
END

CHAIN RH#ISRJ t6a.10
@541 /* I never expected to miss finding her searching through by baggage in the evening, or the strange questions she would ask me at times, but... I do. More than I can say. Even her unwelcome advice... */
= @542 /* (smile) She used to like to tease me about you as well, <CHARNAME>. I do not know how she knew, but she did. Mayhap that should not surprise me either. */
== RH#ISRJ IF ~Gender(Player1,MALE)~ THEN @543 /* "A handsome guy like that? He must be perfect for a Sunite," she would tell me. I simply brushed her off, of course, though now... */
== RH#ISRJ IF ~Gender(Player1,FEMALE)~ THEN @544 /* "<CHARNAME> likes girls too, if that's what you're worried about," she would tell me. I simply brushed her off, of course, though now... */
== RH#ISRJ @545 /* I cannot help but wonder what she would say about us now. */
END
	++ @546 /* Probably something entirely inappropriate. */ + t6a.11
	++ @547 /* She really said that about me? */ + t6a.12
	++ @548 /* I'm sure she would just point out how right she had been. */ + t6a.13
	++ @549 /* We'll find out soon enough. I'm sure of it. */ + t6a.14

APPEND RH#ISRJ

IF ~~ t6a.11
 SAY @550 /* Quite likely. This once, however, I do not think that I would even mind. */
IF ~~ + t6a.20
END

IF ~~ t6a.12
 SAY @551 /* She was surprisingly discrete. I was always grateful for that much. */
IF ~~ + t6a.20
END

IF ~~ t6a.13
 SAY @552 /* And I would be more than willing to listen. */
IF ~~ + t6a.20
END

IF ~~ t6a.14
 SAY @553 /* I pray that you are correct. Truly, I do. */
IF ~~ + t6a.20
END

IF ~~ t6a.15
 SAY @554 /* (smile) I never expected to miss finding her searching through by baggage in the evening, or the strange questions she would ask me at times, but... I do. More than I can say. */
	++ @555 /* She only did it because it annoyed you, you know. */ + t6a.16
	++ @556 /* Strange questions? I must have missed those. */ + t6a.17
	++ @557 /* I'm beginning to miss the crazy antics as well. */ + t6a.18
	++ @558 /* Don't sound so regretful, Isra. We will get her back. */ + t6a.19
END

IF ~~ t6a.16
 SAY @559 /* I do. But she was harmless enough despite that. */
IF ~~ + t6a.20
END

IF ~~ t6a.17
 SAY @560 /* Imoen could be very... irreverent... at times. 'Twas somewhat refreshing, truth be told. */
IF ~~ + t6a.20
END

IF ~~ t6a.18
 SAY @561 /* 'Tis easy to view them fondly in retrospect. */
IF ~~ + t6a.20
END

IF ~~ t6a.19
 SAY @562 /* I know. At least, I certainly hope so. */
IF ~~ + t6a.20
END

IF ~~ t6a.20
 SAY @563 /* Situations such as this... they are never easy. One can eventually grow used to seeing loved ones in danger, but to be powerless to help them in any way... that is a different story entirely. */
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @564 /* I wouldn't say that. I dislike seeing you in danger. */ + t6a.21
	++ @565 /* I haven't really grown accustomed to either yet. */ + t6a.22
	++ @566 /* I wouldn't consider us powerless. We're doing everything we can. */ + t6a.23
	++ @567 /* I know. We'll just have to weather it for a while longer. */ + t6a.24
	++ @568 /* It helps to simply sit back and let things play out as they must. */ + t6a.25
END

IF ~~ t6a.21
 SAY @569 /* (smile) The feeling is very mutual, though 'tis something that we are both going to have to endure, I think. */
IF ~~ EXIT
END

IF ~~ t6a.22
 SAY @570 /* That is not necessarily a bad thing. It means that you still care. */
IF ~~ EXIT
END

IF ~~ t6a.23
 SAY @571 /* Perhaps I should have said instead that being absent can be more difficult, though I will not fault you on your composure. */
IF ~~ EXIT
END

IF ~~ t6a.24
 SAY @572 /* Aye. Hopefully it will be enough. */
IF ~~ EXIT
END

IF ~~ t6a.25
 SAY @573 /* That seems a dangerous philosophy, <CHARNAME>. Please, don't embrace it so. */
IF ~~ EXIT
END
END

// 6b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",12) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t6b
@574 /* I wish that I could tell you more about the Cowled Wizards, my <PRO_LADYLORD>. Or anything, truly. I have several friends within the Athkatlan government, but even they have little to share. */ 
= @575 /* Your friend... I try not to worry overmuch about her, but I do not care for being so very in the dark. */
DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700) IncrementGlobal("rh#IsraTalks","GLOBAL",1)~
END
	++ @576 /* Neither do I. I grow more terrified about her each day. */ + t6b.1
	++ @577 /* Worrying about it certainly won't get us anywhere. */ + t6b.2
	++ @578 /* She can be a bit annoying, but she deserves better than this. */ + t6b.3
	++ @579 /* You'd be surprised. I really couldn't care less. */ + t6b.4

APPEND RH#ISRJ

IF ~~ t6b.1
 SAY @51 /* I do not blame you for that. */
IF ~~ + t6b.5
END

IF ~~ t6b.2
 SAY @580 /* That can be difficult to remember at times. */
IF ~~ + t6b.5
END

IF ~~ t6b.3
 SAY @581 /* Aye, she does.. */
IF ~~ + t6b.5
END

IF ~~ t6b.4
 SAY @582 /* I see. Forgive the presumption, then. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t6b.5
 SAY @583 /* If I may be so bold as to ask... what is she like? Given the effort you are putting into her rescue, she must be someone well worth knowing. */
	++ @584 /* She's my oldest friend. What can I do but put in the effort? */ + t6b.6
	++ @585 /* I'm not sure you'd like her. She has... very sticky fingers. */ + t6b.7
	++ @586 /* I wouldn't go that far. She was always a bit of a pest. */ + t6b.8
	++ @587 /* Nothing ever seemed to get to her. Even if we do find her, that innocence will likely be gone. */ + t6b.9
END

IF ~~ t6b.6
 SAY @588 /* I know. I wouldn't expect you to do otherwise. */
IF ~~ + t6b.10
END 

IF ~~ t6b.7
 SAY @589 /* So does my sister Alia. If it were her in danger instead, however... */
IF ~~ + t6b.10
END 

IF ~~ t6b.8
 SAY @590 /* I see. 'Tis good of you to seek her out regardless. */
IF ~~ + t6b.10
END

IF ~~ t6b.9
 SAY @591 /* It may be, aye. There is always the risk of that. */
IF ~~ + t6b.10
END

IF ~~ t6b.10
 SAY @592 /* (sigh) I would advise you to prepare for the worst, my <PRO_LADYLORD>, but please, try not to expect it. Despair can be as dangerous a foe as any. */
	++ @593 /* I don't expect it. Imoen is stronger than she looks. */ + t6b.11
	++ @594 /* How exactly do you even prepare for something like that? */ + t6b.12
	++ @595 /* It's certainly one of the hardest to defeat. */ + t6b.13
	++ @596 /* I'm no stranger to death, Isra. Far from it. */ + t6b.14
END 

IF ~~ t6b.11
 SAY @597 /* Hopefully that will be enough. */
IF ~~ + t6b.15
END 

IF ~~ t6b.12
 SAY @598 /* Training and discipline, I imagine. And practice. */
IF ~~ + t6b.15
END 

IF ~~ t6b.13
 SAY @599 /* Aye, I know it. */
IF ~~ + t6b.15
END 

IF ~~ t6b.14
 SAY @600 /* Aye, though that is no reason to grow hardened to it. */
IF ~~ + t6b.15
END 

IF ~~ t6b.15
 SAY @601 /* Situations such as this... they are never easy. One can eventually grow used to seeing loved ones in danger, but to be powerless to aid them in any way... that is a different story entirely. */
	++ @565 /* I haven't really grown accustomed to either yet. */ + t6b.16
	++ @602 /* Have you been through anything like this before? */ + t6b.17
	++ @566 /* I wouldn't consider us powerless. We're doing everything we can. */ + t6b.18
	++ @567 /* I know. We'll just have to weather it for a while longer. */ + t6b.19
END

IF ~~ t6b.16
 SAY @570 /* That is not necessarily a bad thing. It means that you still care. */
IF ~~ EXIT
END

IF ~~ t6b.17
 SAY @603 /* Like this precisely? No, but powerlessness comes in many varieties, and I do not care for any of them. */
IF ~~ EXIT
END

IF ~~ t6b.18
 SAY @604 /* That is true, though powerlessness comes in many varieties, and I do not care for any of them. */
IF ~~ EXIT
END

IF ~~ t6b.19
 SAY @572 /* Aye. Hopefully it will be enough. */
IF ~~ EXIT
END
END

// 7. outside in Athkatla or Trademeet
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",14)~ THEN RH#ISRJ t7
@605 /* Oh, <CHARNAME>, do you hear that music? Somebody must be entertaining with Lliirans to<DAYNIGHT>... I would know that song anywhere. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	+ ~Class(Player1,CLERIC_ALL) OR(2) Alignment(Player1,MASK_CHAOTIC) Alignment(Player1,NEUTRAL_GOOD) !Global("rh#IsraSunitePC","GLOBAL",1) !Global("rh#IsraSunitePC","GLOBAL",2)~ + @606 /* I didn't realize you were so familiar with my faith's music. */ + t7.1
	++ @607 /* By the gods, Isra, you get excited at the strangest of things. */	+ t7.2
	++ @608 /* I hear it. Does it have some special significant for you? */ + t7.2
	++ @609 /* It sounds pretty close. Would you like to go see what's going on? */ + t7.3
	++ @610 /* Isra, we don't exactly have time to listen to music right now. */ + t7.4

APPEND RH#ISRJ	

IF ~~ t7.1
 SAY @611 /* I am more so than you might realize, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraLliiranPC","GLOBAL",1) SetGlobal("rh#IsraSunitePC","GLOBAL",2)~ + t7.2
END

IF ~~ t7.2
 SAY @612 /* (smile) This song... I remember the Joybringers dancing to it the night that I stood vigil for knighthood. If I grow somewhat nostalgic at the sound of it, mayhap that is to be expected. */
	++ @613 /* That was only just recently, wasn't it? */ + t7.5
	++ @614 /* Why would Lliirans be involved in a Sunite vigil? */ + t7.6
	++ @615 /* I always thought vigils were supposed to be solemn affairs. */ + t7.7
	++ @616 /* Don't take this the wrong way, but you're the oddest paladin I've ever met. */ + t7.8
END

IF ~~ t7.3
 SAY @617 /* I have no wish to intrude upon a private party, my <PRO_LADYLORD>. I am content simply to listen. */
IF ~~ + t7.2
END

IF ~~ t7.4
 SAY @618 /* No... no, I suppose not. Later, mayhap. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",2)~ EXIT
END

IF ~~ t7.5
 SAY @619 /* Aye, less than a tenday ere I met you in Athkatla. */
IF ~~ + t7.9
END

IF ~~ t7.6
 SAY @620 /* They were not. Not directly, at least. */
IF ~~ + t7.9
END

IF ~~ t7.7
 SAY @621 /* They often are, though I imagine it would depend upon one's faith. */
IF ~~ + t7.9
END

IF ~~ t7.8
 SAY @622 /* Am I? I am typical enough for one of my faith, I assure you. */
IF ~~ + t7.9
END
 
IF ~~ t7.9
 SAY @623 /* I shall need to show you our temple in Crimmor someday, I think. A more beautiful one I have never seen. We call it the Theater of Joy, and if that might seem an unusual name for a temple... well, ours is an unusual temple indeed. */
 = @624 /* We share it with the clergies of Milil and Lliira, you see, each faith dominating a portion of the day. The arrangement seldom causes problems, but when the only Sunite temple in the area is transformed into a Lliiran festhall come nightfall... */
 = @625 /* (laugh) I imagine you can guess how that might complicate a vigil. */
	++ @626 /* You seem less troubled by it than I might have expected. */ + t7.10
	++ @627 /* Could they not have held off for just one night? */ + t7.11
	++ @628 /* It's a good thing your goddess has a sense of humor. */ + t7.12
	++ @629 /* I assume this isn't a tale you want repeated in the presence of another paladin. */ + t7.13
END

IF ~~ t7.10
 SAY @630 /* I am hardly troubled by it at all. */
IF ~~ + t7.14
END

IF ~~ t7.11
 SAY @631 /* I would never have asked them to. 'Tis their temples as much as it is ours. */
IF ~~ + t7.14
END

IF ~~ t7.12
 SAY @632 /* Aye, though the impropriety was not as great as it might seem. */
IF ~~ + t7.14
END

IF ~~ t7.13
 SAY @633 /* I cannot imagine that anyone would be terribly surprised by it. */
IF ~~ + t7.14
END

IF ~~ t7.14
 SAY @634 /* I should not leave you believing that I was praying in the very midst of their revelry, of course. They did make accommodations for me, and even if it was impossible to block off the sound entirely... */
 = @635 /* Well, we are Sunites. Some of our most sacred rites involve music. Why should this be any different? Others might prefer solemnity, but myself, I see little reason for it. */
	+ ~!Class(Player1,CLERIC_ALL)~ + @636 /* You needn't convince me, Isra. I'm as much a Sunite as you are. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",1)~ + t7.15
	+ ~Class(Player1,CLERIC_ALL) !Global("rh#IsraSunitePC","GLOBAL",2) OR(2) Alignment(Player1,MASK_CHAOTIC) Alignment(Player1,NEUTRAL_GOOD)~ + @636 /* You needn't convince me, Isra. I'm as much a Sunite as you are. */ DO ~SetGlobal("rh#IsraSunitePC","GLOBAL",1)~ + t7.15
	+ ~Kit(Player1,GODLATHANDER)~ + @637 /* You needn't convince me. The Morninglord's followers are not very different from the Firehair's. */ + t7.15
	+ ~Global("rh#IsraLliiranPC","GLOBAL",1)~ + @638 /* You needn't convince me, Isra. Obviously we Lliirans are the same. */ + t7.15
	+ ~Kit(Player1,GODHELM)~ + @639 /* Amongst Helm's faithful, we value few things more highly. */  + t7.16
	++ @640 /* Profundity comes in many forms, it would seem. */ + t7.17
	++ @641 /* On any other tongue but yours, those words would come across as frivolous. */ + t7.18
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @642 /* This is just one more thing I will never understand about your faith. */ + t7.19
END

IF ~~ t7.15
 SAY @643 /* (smile) Of course. I did not mean to sound so defensive. That night... I still find myself overwhelmed simply thinking of it. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.20
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.26
END

IF ~~ t7.16
 SAY @644 /* I know. And I will not deny that it has its place, but a night like that one... 'twas perfect as it was. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.20
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.26
END

IF ~~ t7.17
 SAY @645 /* (smile) Aye, and that night... 'twas profound indeed. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.20
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.26
END

IF ~~ t7.18
 SAY @646 /* I shall take that as a compliment, my <PRO_LADYLORD>, and not a criticism. That night... I still find myself overwhelmed simply thinking of it. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.20
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.26
END

IF ~~ t7.19
 SAY @647 /* Mayhap not. I shan't deny that solemnity has its place, but a night like that one... 'twas perfect as it was. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.20
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t7.26
END

IF ~~ t7.20
 SAY @648 /* Oh, <CHARNAME>... would that I could describe it to you properly. People so often assume that our lives are full of divine visions and revelations, and mayhap for other people, that is true, but myself... I have never been so lucky before. */
 = @649 /* To actually feel her favor that intimately... the glory of it was indescribable. I remember the song that was playing when it began, obviously, but after that... it might have been moments or hours later, I couldn't tell you. The sheer beauty of it, however... */
 = @650 /* I am sorry, <CHARNAME>. I must be sounding hopelessly mystical to you now. */
	++ @651 /* Would I be here with you now if I didn't like mystical? */ + t7.21
	++ @652 /* I'm more than used to it by now, I assure you. */ + t7.22
	++ @653 /* I... sometimes I wonder how mortal love can compare to that, Isra. */ + t7.23
	++ @654 /* I'm no stranger to divine dreams... though mine aren't quite so nice. */ + t7.24
END

IF ~~ t7.21
 SAY @655 /* (laugh) I cannot argue with that. */
IF ~~ + t7.25
END
 
IF ~~ t7.22
 SAY @656 /* (laugh) I imagine you would have to be. */
IF ~~ + t7.25
END
 
IF ~~ t7.23
 SAY @657 /* (sigh) Mortal and divine love, my <PRO_LADYLORD>... they are different things entirely. The one does not detract from the other. Quite the opposite, truly. */
IF ~~ + t7.25
END

IF ~~ t7.24
 SAY @658 /* Oh. Oh, of course. Forgive me... I should have remembered as much. */
IF ~~ DO ~SetGlobal("rh#IsraTalkSeven","GLOBAL",1)~ EXIT
END

IF ~~ t7.25
 SAY @659 /* But come, that is enough talk for to<DAYNIGHT>. Had we more than a moment to spare, I would likely beg a quick dance of you. */
 = @660 /* Since it seems that we do not, I shall have to settle for a kiss instead. */
IF ~~ EXIT
END

IF ~~ t7.26
 SAY @661 /* Even if I had the words to describe it... some things are too private, I think. Suffice it to say that there was enough beauty in that one night to last a lifetime. */
IF ~~ EXIT
END
END

// 8.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",16)~ THEN RH#ISRJ t8
@662 /* <CHARNAME>, I am beginning to think that I might have left you with a somewhat uneven impression of a Sunite knighting. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) !Global("rh#IsraTalkSeven","GLOBAL",1)~ + @663 /* I'm afraid I can't remember anything from before you started kissing me. */ + t8.1
	++ @664 /* I take it there was more to it than music and visions? */ + t8.2
	++ @665 /* Uneven? It seemed fittingly Sunite to me. */ + t8.3
	++ @666 /* I suspect there were formalities involved at some point. */ + t8.4
	++ @667 /* I don't have time to talk right now. Later, maybe? */ + t8.exit
 
APPEND RH#ISRJ

IF ~~ t8.1
 SAY @668 /* (laugh) Then you have a very selective memory, my love. But there were formalities as well. We have our own ceremonies, just as any other order would. */
IF ~~ + t8.5 
END

IF ~~ t8.2
 SAY @669 /* Aye, there were formalities as well. We have our own ceremonies, just as any other order would. */
IF ~~ + t8.5 
END

IF ~~ t8.3
 SAY @670 /* It certainly was, though there were formalities as well. We have our own ceremonies, just as any other order would. */
IF ~~ + t8.5 
END

IF ~~ t8.4
 SAY @671 /* Aye, we have our own ceremonies, just as any other order would. */
IF ~~ + t8.5 
END

IF ~~ t8.exit
 SAY @672 /* Of course. As you wish. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END 

IF ~~ t8.5
 SAY @673 /* It was not terribly large, of course. There are not that many of us in Amn, and we are seldom ever gathered in one place, even for knightings. */
 = @674 /* Still, Sir Evendur, my mentor... 'twas nice to see him again, and under pleasant circumstances for once. I... think we both needed that. */
	++ @675 /* Was he the one who knighted you? */ + t8.6
	++ @676 /* I believe you've mentioned him once or twice. */ + t8.7
	++ @677 /* You've been very worried about him, haven't you? */ + t8.8
	++ @678 /* At least someone here gets pleasant circumstances from time to time. */ + t8.9
	+ ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + @679 /* You've never said exactly what happened to him. */ + t8.10
END

IF ~~ t8.6
 SAY @680 /* No, he wasn't. That was the Prelate's responsibility, and Sir Evendur-- he is no longer fit for service, I'm afraid. */
IF ~~ + t8.10
END

IF ~~ t8.7
 SAY @681 /* I have. He is... often on my mind as of late. */
IF ~~ + t8.10 
END

IF ~~ t8.8
 SAY @682 /* I have been. Times have been difficult, to say the least. */
IF ~~ + t8.10 
END

IF ~~ t8.9
 SAY @683 /* I know that things have not been very easy for you as of late, <CHARNAME>. You are not the only one, I'm afraid. */
IF ~~ + t8.10 
END

IF ~~ t8.10
 SAY @684 /* There was an... incident... early last year involving a green dragon on the eastern edge of the Snakewood. We had not expected to find one there. Sir Evendur managed to slay the beast, but the price was... very high. */
 = @685 /* Much of the damage was mendable, but his arm... there was nothing that could be done for that. Forced retirement is a cruel fate for any paladin, and for a Sunite-- better to lose his arm than his face, he jests, but I know he doesn't mean it. */
	++ @686 /* I'm sorry, Isra. That's terrible. */ + t8.11
	++ @687 /* At least he can joke about it. */ + t8.12
	++ @688 /* You never told me you'd taken on a dragon before. */ + t8.13
	++ @689 /* I can't imagine disfigurement goes over well in the Church of Sune. */ + t8.14
END

IF ~~ t8.11
 SAY @690 /* Yes... yes, it was. */
IF ~~ + t8.15 
END

IF ~~ t8.12
 SAY @691 /* I know. */
IF ~~ + t8.15 
END

IF ~~ t8.13
 SAY @692 /* I was only a squire. My only contributions were keeping out of the way and... getting him to safety after the fact. */
IF ~~ + t8.15 
END

IF ~~ t8.14
 SAY @693 /* Not always, no. He tends to avoid the Heartwarders now. Their pity can be harder to bear than their scorn. */
IF ~~ + t8.15 
END

IF ~~ t8.15
 SAY @694 /* Forgive me, <CHARNAME>. That was a morbid digression. */
 = @695 /* Whatever might have come before, 'twas good to find him in better spirits again. I have not had the chance to see as much of him as I would like. Or of anyone else, really. */
 = @696 /* Alia was at the ceremony as well, and our mother never needs an excuse to visit Crimmor. Father was too busy, given the recently averted war, but he did send gifts in congratulations. */
	++ @697 /* Your other sister didn't show up? */ + t8.16
	++ @698 /* He should have taken the time out for something like that. */ + t8.17
	++ @699 /* Yes, that ring you guard so jealously. */ + t8.18
	++ @700 /* Was this just a church and family affair? */ + t8.19
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @701 /* I'd have loved to have been there myself. */ + t8.20
END

IF ~~ t8.16
 SAY @702 /* No... she did not. Her excuses made less sense than our father's, but I saw little point in pressing the issue. */
IF ~~ + t8.21
END

IF ~~ t8.17
 SAY @703 /* He does have other responsibilities, and I see little point in pressing the issue with him anyway. */
IF ~~ + t8.21
END

IF ~~ t8.18
 SAY @704 /* Aye, 'twas an heirloom I never expected to receive. */
IF ~~ + t8.21
END

IF ~~ t8.19
 SAY @705 /* Traditionally, aye, though my closest friends within the Church of Lliira were there as well. */
IF ~~ + t8.21
END

IF ~~ t8.20
 SAY @706 /* Aye, I would have liked that as well. */
IF ~~ + t8.21
END

IF ~~ t8.21
 SAY @707 /* (sigh) 'Tis strange, sometimes, what weight ceremonies hold for us... one can spend a lifetime in preparation, and then the event itself is over in a moment. */
 = @708 /* Now, <CHARNAME>... 'tis like being wakened from a dream. A very long, very comforting dream. I do not always know what to make of that. */
	++ @709 /* I think that's called growing up, Isra. */ + t8.22
	++ @710 /* You wouldn't rather go back, would you? */ + t8.23
	++ @711 /* That was Candlekeep for me. You didn't have one settled home, though. */ + t8.24
	++ @712 /* That's the danger of defining yourself through titles and ceremonies. */ + t8.25
END

IF ~~ t8.22
 SAY @713 /* I suspect that is true enough. */
IF ~~ + t8.26
END

IF ~~ t8.23
 SAY @714 /* No... no, never that. */
IF ~~ + t8.26
END

IF ~~ t8.24
 SAY @715 /* No... I suppose I did not. Hmm. That is an interesting thought. */
IF ~~ + t8.26
END

IF ~~ t8.25
 SAY @716 /* Mayhap, though I suspect that the sensation is more universal than that. */
IF ~~ + t8.26
END

IF ~~ t8.26
 SAY @717 /* But forgive my strange fancies, my <PRO_LADYLORD>. This is too fine a <DAYNIGHT> to waste entirely upon such notions. */
IF ~~ EXIT
END
END

// 9a.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",18) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t9a
@718 /* 'Tis strange to think how little time has actually passed since we were in Baldur's Gate. So much has changed, it almost seems like another lifetime. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1) RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @719 /* It's been longer than you realize, I think. */ + t9a.1
	++ @720 /* A better lifetime. I miss the simplicity of it. */ + t9a.2
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @721 /* Some of those changes have been for the better. */ + t9a.3
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @721 /* Some of those changes have been for the better. */ + t9a.4
	++ @722 /* Life moves more quickly when you're on the road like this. */ + t9a.4
	
APPEND RH#ISRJ

IF ~~ t9a.1
 SAY @723 /* I suppose that is true, though the memory is still clear enough. Too clear, mayhap, if somewhat dreamlike at times. */
IF ~~ + t9a.5
END

IF ~~ t9a.2
 SAY @724 /* I do not recall it being too much simpler. Quite the opposite at times, though 'twas certainly different. */
IF ~~ + t9a.5
END

IF ~~ t9a.3
 SAY @725 /* (smile) Aye, and one in particular... one I would have no wish to ever take back, though several of the others still trouble me at times. */
IF ~~ + t9a.5
END

IF ~~ t9a.4
 SAY @726 /* I would have to agree, especially concerning our recent adventures. */
IF ~~ + t9a.5
END

IF ~~ t9a.5
 SAY @727 /* Nashkel just seems so far away now, and in more ways than the physical. The things we didn't know then, about ourselves, about the world in general... 'twould take a bard to recount them all. */
	++ @728 /* I think a book of prophecy would suffice in my case. */ + t9a.6
	+ ~Class(Player1,BARD_ALL)~ + @729 /* Well, we needn't look very far to find one of those. */ + t9a.7
	++ @730 /* What do they say, ignorance is bliss? */ + t9a.8
	++ @731 /* You don't miss it, I hope. I'd rather know what's going on. */ + t9a.9
	++ @732 /* Why so pensive all of a sudden? */ + t9a.10
END

IF ~~ t9a.6
 SAY @733 /* I know. I wish it were otherwise. */
IF ~~ + t9a.10
END

IF ~~ t9a.7
 SAY @734 /* No, indeed, we needn't. And you have more tales to tell than most. */
IF ~~ + t9a.10
END

IF ~~ t9a.8
 SAY @735 /* Is it? I am not so sure. */
IF ~~ + t9a.10
END

IF ~~ t9a.9
 SAY @736 /* No, I don't miss the ignorance. Not really. */
IF ~~ + t9a.10
END

IF ~~ t9a.10
 SAY @737 /* I have been thinking about our brief, ill-fated visit to Candlekeep fairly often recently, I must admit. Why now, I could not say. Perhaps I am simply more predisposed towards nostalgia as of late. */
	++ @738 /* It's not the easiest of things to forget. */ + t9a.11
	++ @739 /* "Nostalgia" may be the wrong word to apply to that mess. */ + t9a.12
	++ @740 /* You're not getting nervous about my heritage again, are you? */ + t9a.13
	++ @741 /* Gorion's letter... you were almost more upset about it than I was. */ + t9a.14
END

IF ~~ t9a.11
 SAY @742 /* No, it really is not. Still, I have had some time now to get used to the truth of your parentage. Enough time to consider it rationally, at least. */
IF ~~ + t9a.15
END 

IF ~~ t9a.12
 SAY @743 /* No, that particular memory is far from pleasant. Still, I have had some time now to get used to the truth of your parentage. Enough time to consider it rationally, at least. */
IF ~~ + t9a.15
END 

IF ~~ t9a.13
 SAY @744 /* No more than I usually am. Less, mayhap. I have had some time now to get used to the truth of it. Enough time to consider it rationally, at least. */
IF ~~ + t9a.15
END 

IF ~~ t9a.14
 SAY @745 /* I could have handled it better, I know. Still, I have had some time now to get used to the truth of your parentage. Enough time to consider it rationally, at least. */
IF ~~ + t9a.15
END 

IF ~~ t9a.15
 SAY @746 /* I cannot say I know much more now than I did then, but this world is full of strange and unusual stories. Not all of them end pleasantly, but more than a few end in ways even the prophets couldn't have predicted. */
 	++ @747 /* Destiny can be a tricky thing. I trust myself and my companions, not the sages. */ + t9a.16
	++ @748 /* You don't think that Alaundo's prophecies will come true? */ + t9a.17
 	++ @749 /* I'm not worried about a prophet's predictions. I'm worried about a god's intentions. */ + t9a.18
 	++ @750 /* This isn't one of your Sunite fairytales, Isra. This is uglier than that. */ + t9a.19
END

IF ~~ t9a.16
 SAY @751 /* That is a sensible outlook, I think. */
IF ~~ + t9a.20
END 

IF ~~ t9a.17
 SAY @752 /* Truly, I could not say. I think what you believe is more important than what I do. */
IF ~~ + t9a.20
END 

IF ~~ t9a.18
 SAY @753 /* And I don't mean to make light of what is at stake. Far from it. */
IF ~~ + t9a.20
END 

IF ~~ t9a.19
 SAY @754 /* That makes the words more necessary, not less. */
IF ~~ + t9a.20
END 
 
IF ~~ t9a.20
 SAY @755 /* I have not always been as supportive in this as I could be, I know. I am not sure what I was expecting at first. Perhaps the problem was that I did not know what to expect at all. */
 = @756 /* That much hasn't changed, but everything else, <CHARNAME>... every day I believe more strongly that you can overcome this curse. */
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @757 /* I envy your faith. I seldom feel the same. */ + t9a.21
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @757 /* I envy your faith. I seldom feel the same. */ + t9a.22
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @758 /* I wouldn't call it a curse. Divine blood is divine, whatever its origin. */ + t9a.23 
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @758 /* I wouldn't call it a curse. Divine blood is divine, whatever its origin. */ + t9a.24
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @759 /* I hope that happens before someone finally takes my head off because of it. */ + t9a.25
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @759 /* I hope that happens before someone finally takes my head off because of it. */ + t9a.26
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @760 /* Thank you, Isra. I need to hear that every so often. */ + t9a.27
	++ @761 /* I will because I have to. The only alternative is defeat. */ + t9a.28
	++ @762 /* So you don't think I'm about to sprout wings or anything? */ + t9a.29
END
	
IF ~~ t9a.21
 SAY @763 /* Try to. Despair is a dangerous enemy, and you have more than enough of those as it is. */	
IF ~~ EXIT
END

IF ~~ t9a.22
 SAY @764 /* I know. And I would repeat the words every night if I thought it would help you to believe them... despair is a dangerous enemy, and you have enough of those as it is. */	
IF ~~ EXIT
END 

IF ~~ t9a.23
 SAY @765 /* Whatever benefits it may bring, never forget that there is a price attached. What that will prove to be... I could not say. */
IF ~~ EXIT
END 

IF ~~ t9a.24
 SAY @766 /* Don't say such things, <CHARNAME>. Please, don't. That line of thought... you will not like its destination. Neither of us will. */  
IF ~~ EXIT
END 

IF ~~ t9a.25
 SAY @767 /* Aye... there are certainly enough people making the attempt. */
IF ~~ EXIT
END

IF ~~ t9a.26
 SAY @768 /* That won't happen. Not while I still have breath in my body, at least. */
IF ~~ EXIT
END 

IF ~~ t9a.27
 SAY @769 /* (smile) I know. And I can repeat it as often as you would like. */
IF ~~ EXIT
END 

IF ~~ t9a.28
 SAY @770 /* Aye, and that is no alternative at all. */
IF ~~ EXIT
END 

IF ~~ t9a.29
 SAY @771 /* (laugh) I should certainly hope not. That could prove awkward. */
IF ~~ EXIT
END
END

// 9b.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",18) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#ISRJ t9b
@772 /* I have... heard several rumors, <CHARNAME>. Rather, I heard them some time ago, but it never seemed an appropriate subject to broach. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1) RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @773 /* It probably isn't any more appropriate now. */ + t9b.1
	++ @774 /* Of course. I was wondering when this was going to come up. */ + t9b.2
	++ @775 /* What type of rumors? */ + t9b.2
	++ @776 /* I don't want to talk about it. */ + t9b.3

APPEND RH#ISRJ

IF ~~ t9b.1
 SAY @777 /* Perhaps not, but I must speak. */
IF ~~ + t9b.2
END

IF ~~ t9b.2
 SAY @778 /* If I may be very blunt, there were a few ugly stories told in Eshpurta concerning your heritage. I thought them mad at first, but now that I know you better... */
 = @779 /* <CHARNAME>, are you related to Bhaal? The dead god of murder? */
	++ @780 /* He was my father, unfortunately. */ + t9b.4
	++ @781 /* And if I am? Your reaction isn't going to be drastic, I hope. */ + t9b.5
	++ @782 /* As far as I'm aware, there are no other Bhaals. */ + t9b.6
	++ @783 /* No. You shouldn't listen to insane rumors. It's not true. */ + t9b.7
END

IF ~~ t9b.3
 SAY @784 /* I don't blame you, but I must speak. */
IF ~~ + t9b.2
END

IF ~~ t9b.4
 SAY @785 /* I see. I had hoped it mere gossip. */
IF ~~ + t9b.8
END

IF ~~ t9b.5
 SAY @786 /* No, of course not. Nothing of the sort. */
IF ~~ + t9b.8
END

IF ~~ t9b.6
 SAY @787 /* Thank the gods for that much, at least. */
IF ~~ + t9b.8
END

IF ~~ t9b.7
 SAY @788 /* I understand your reticence, my <PRO_LADYLORD>. If you would rather not speak of it, I shan't force you. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t9b.8
 SAY @789 /* This may seem an odd time to bring such a thing up, but 'tis a conversation that I have avoided for far too long already. */
 = @790 /* I... do not have to be worried, do I? Fiends may mate with mortals, but I can think of no precedent for this sort of heritage. */
	++ @791 /* I'm not about to turn into a dragon or anything, Isra. */ + t9b.9
	++ @792 /* You seem less upset about this than I'd have expected. */ + t9b.10
	++ @793 /* And if I say that you should worry? */ + t9b.11
	++ @794 /* You only need to worry about the people out to kill me because of it. */ + t9b.12
END 

IF ~~ t9b.9
 SAY @795 /* That is... somewhat encouraging, I suppose. */
IF ~~ + t9b.13
END

IF ~~ t9b.10
 SAY @796 /* I have had some time to consider the possibility now. This is not exactly a surprise. */
IF ~~ + t9b.13
END

IF ~~ t9b.11
 SAY @797 /* Then... then I would want to know what I could do to help you. */
IF ~~ + t9b.13
END

IF ~~ t9b.12
 SAY @798 /* Aye, and I imagine there have been more than a few. */
IF ~~ + t9b.13
END

IF ~~ t9b.13
 SAY @799 /* Please, <CHARNAME>, do not mistake me. I've no wish to judge you or see you harmed because of this... this cruel twist of fate. */
 = @800 /* Whatever else you might be, you are no monster. Far from it. I know you well enough to know that much, at least. */
	++ @801 /* Your support is certainly appreciated. */ + t9b.14
	++ @802 /* You know me now. Who can say what tomorrow may bring? */ + t9b.15
	++ @803 /* I'm not a monster? Gee, thanks for the insight, I guess. */ + t9b.16
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @804 /* From you, Isra... from you, that means a lot. */ + t9b.17
	+ ~!Global("HarperFight","GLOBAL",1)~ + @805 /* It's a pity everyone isn't quite as tolerant about it. */ + t9b.18
	+ ~Global("HarperFight","GLOBAL",1)~ + @806 /* It's a pity that the Harper Galvarey wasn't quite as tolerant about it. */ + t9b.19
END

IF ~~ t9b.14
 SAY @807 /* I had hoped that it would be. */
IF ~~ + t9b.20
END

IF ~~ t9b.15
 SAY @808 /* I know. The thought does trouble me occasionally, though not as much as it might. */
IF ~~ + t9b.20
END

IF ~~ t9b.16
 SAY @809 /* I'm sorry. 'Twas hardly my intent to patronize you. */
IF ~~ EXIT
END

IF ~~ t9b.17
 SAY @810 /* (smile) You are a good <PRO_MANWOMAN>, my <PRO_LADYLORD>... you deserve better than this lot you've received. Far better. */
IF ~~ + t9b.20
END

IF ~~ t9b.18
 SAY @811 /* I know. Life has been far from easy for you. */
IF ~~ + t9b.20
END

IF ~~ t9b.19
 SAY @812 /* I know. Men such as that are far more common than I would like. */
IF ~~ + t9b.20
END

IF ~~ t9b.20
 SAY @813 /* You were fortunate, I think, to at least have a mentor like Gorion. Everyone has to learn to bear the harsher realities of life eventually, and too few find proper guidance along that path. */
 = @814 /* I imagine that even having it does not always help. */
	++ @815 /* Trust me, he was less encouraging than you think. */ + t9b.21
	++ @816 /* I'm grateful for his tutelage every day. */ + t9b.22
	++ @817 /* I'm not most people. */ + t9b.23
	++ @818 /* A bit more optimism, my lady. Don't go suddenly glum on me. */ + t9b.24
END

IF ~~ t9b.21
 SAY @819 /* Mayhap not, though he clearly did something right. */
IF ~~ EXIT
END

IF ~~ t9b.22
 SAY @820 /* Aye, as you should be. */
IF ~~ EXIT
END

IF ~~ t9b.23
 SAY @821 /* No... no, you are not. */
IF ~~ EXIT
END

IF ~~ t9b.24
 SAY @822 /* I'm sorry, <CHARNAME>. That was hardly my intent. */
IF ~~ EXIT
END
END

// 10.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",20)~ THEN RH#ISRJ t10
@823 /* You have been in Amn for some time now, <CHARNAME>, certainly long enough to have formed an opinion. Might I ask what you think of it? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1) RealSetGlobalTimer("rh#IsraQuestTimer","GLOBAL",2700)~
END
	++ @824 /* I hope you won't be upset with me if I say I can't stand it. */ + t10.1
	++ @825 /* I find the country quite fascinating, actually. */ + t10.2
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @826 /* It gave me you, Isra. How can I help but love it? */ + t10.3
	++ @827 /* I think it's the most corrupt place I've ever seen. */ + t10.4
	++ @828 /* Isra, I don't have time for this right now. */ + t10.5
	
APPEND RH#ISRJ

IF ~~ t10.1
 SAY @829 /* No. I would prefer an unpleasant truth to a lie, and the sentiment is not entirely unexpected, I must admit. */ 
IF ~~ + t10.6
END

IF ~~ t10.2
 SAY @830 /* Do you? I am glad to hear it. Amn has so many poor qualities, 'tis common enough for people to ignore its better ones. */
IF ~~ + t10.6
END

IF ~~ t10.3
 SAY @831 /* (smile) If my company distracts you from the uglier truths of this country, 'tis something to be grateful for. */
IF ~~ + t10.6
END

IF ~~ t10.4
 SAY @832 /* There are worse countries, though Amn... I must admit, it has certainly earned its place amongst them. */
IF ~~ + t10.6
END

IF ~~ t10.5
 SAY @833 /* Oh. I see. Very well, then, perhaps we can speak again later. */
IF ~~ EXIT
END

IF ~~ t10.6
 SAY @834 /* Too much time spent in Athkatla can sour anybody on the country as a whole. The city is not exactly known for being overly welcoming to strangers. Unless, of course, said stranger has exceptionally deep pockets. */
 	++ @835 /* And a willingness to show off that wealth, no doubt. */ + t10.7
 	++ @836 /* Can you truly say that the rest of Amn is any different? */ + t10.8
 	++ @837 /* It doesn't seem to treat its own citizens too kindly either. */ + t10.9
 	++ @838 /* Plenty of other cities are the same way. */ + t10.10
END

IF ~~ t10.7
 SAY @839 /* Aye, that is certainly helpful as well. */
 IF ~~ + t10.11
END

IF ~~ t10.8
 SAY @840 /* In my own experience, it is, though I am somewhat biased in the matter. */
IF ~~ + t10.11
END

IF ~~ t10.9
 SAY @841 /* No... no, it does not. */
IF ~~ + t10.11
END

IF ~~ t10.10
 SAY @842 /* I know, though Athkatla is closer to home for me than most. */
IF ~~ + t10.11
END

IF ~~ t10.11
 SAY @843 /* This city... I am more acquainted with its aristocracy than I would like. Any paladin can find herself treated as a status symbol from time to time, but those of us affiliated with the Ruby Rose... we are considered particularly fine ornamentation. */
 = @844 /* I--I should not speak so bitterly, of course. 'Tis most ungracious of me. */
  	++ @845 /* I thought you would be more amenable to social functions than this. */ + t10.12
  	++ @846 /* I take it that they're not exactly the best dinner hosts. */ + t10.13
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @847 /* You don't need to wear that mask of utter courtesy around me, Isra. */ + t10.14
  	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @848 /* You don't need to be so courteous all of the time. */ + t10.15
  	++ @849 /* You're more amusing company when you're not being overly gracious. */ + t10.16
END
 
IF ~~ t10.12
 SAY @850 /* I am, though in Athkatla, I grow weary of the inevitable snide remark. */
IF ~~ + t10.17
END 

IF ~~ t10.13
 SAY @851 /* No, I am afraid not. */
IF ~~ + t10.17
END 

IF ~~ t10.14
 SAY @852 /* 'Tis hardly a mask, <CHARNAME>, but... no, I do grow frustrated at times. */
IF ~~ + t10.17
END 

IF ~~ t10.15
 SAY @853 /* I should at least try, though... no, I do grow frustrated at times. */
IF ~~ + t10.17
END 

IF ~~ t10.16
 SAY @854 /* Then you must be very fond of seeing me in Athkatla. */
IF ~~ + t10.17
END 
 
IF ~~ t10.17
 SAY @855 /* (sigh) They are not bad people... at least, not all of them are. And many follow my own faith, though some of those seem to have developed a very selective interpretation of the Firehair's dogma. */
	++ @856 /* Most people tend to pick and choose, whatever their religion. */ + t10.18
 	++ @857 /* And reflect poorly upon the entire religion, no doubt. */ + t10.19
	++ @858 /* That's their own loss, I would say. */ + t10.20
	++ @859 /* Athkatlans don't seem like they'd have much use for a goddess of love. */ + t10.21
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @860 /* It's not that selective. You're all obsessed with appearances. */ + t10.22
END 

IF ~~ t10.18
 SAY @861 /* I cannot disagree with that. */
IF ~~ + t10.27
END

IF ~~ t10.19
 SAY @862 /* At times, mayhap. */
IF ~~ + t10.27
END

IF ~~ t10.20
 SAY @863 /* I would have to agree. */
IF ~~ + t10.27
END

IF ~~ t10.21
 SAY @864 /* No, though an appreciation for beauty is common enough. */
IF ~~ + t10.27
END

IF ~~ t10.22
 SAY @865 /* I see. I did not realize that you thought so poorly of us. */
	++ @866 /* Calm down, I was just teasing you. */ + t10.23
	++ @867 /* Not of you, of course, but you're something of an anomaly. */ + t10.24
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @868 /* You must not be paying much attention. */ + t10.25
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @868 /* You must not be paying much attention. */ + t10.26
END

IF ~~ t10.23
 SAY @869 /* That is an exceedingly poor jest, <CHARNAME>. Perhaps we should simply continue on for now. */
IF ~~ EXIT
END

IF ~~ t10.24
 SAY @870 /* Am I? How very kind of you, <CHARNAME>. Perhaps we should simply continue on for now. */
IF ~~ EXIT
END

IF ~~ t10.25
 SAY @871 /* So it would seem. I shan't make that mistake again. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t10.26
 SAY @872 /* So it would seem. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t10.27
 SAY @873 /* Excuse me, <CHARNAME>. I wasn't simply looking for an excuse to complain about Athkatla, and I'm sure you don't care to listen to it. */
	++ @874 /* I don't mind at all. */ + t10.28
	++ @875 /* That barely counted as complaining, Isra. */ + t10.28
	++ @876 /* You're allowed to not like everyone, you know. */ + t10.28
	++ @877 /* No, I really don't. */ + t10.29
END

IF ~~ t10.28
 SAY @878 /* Even so. Perhaps we should simply continue on for now. */
IF ~~ EXIT
END
 
IF ~~ t10.29
 SAY @879 /* Then perhaps we should simply continue on for now. */
IF ~~ EXIT
END
END

// 11.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",22)~ THEN RH#ISRJ t11
@880 /* This is a poor time to be indulging in regret, I know, but Rana... she and I were close once, as difficult as it may be to believe it now. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @881 /* She won't hate you forever, Isra. */ + t11.1
	++ @882 /* Imoen and I were close like that too, once upon a time. */ + t11.2
	++ @883 /* Can't you at least visit her in prison? */ + t11.3
	++ @884 /* I'm sorry, but I don't have time for this. */ + t11.4

APPEND RH#ISRJ

IF ~~ t11.1
 SAY @885 /* Won't she? Would that I could believe that. */
IF ~~ + t11.5
END

IF ~~ t11.2
 SAY @886 /* I know. I never expected to find myself envying your situation, but... at least your friendship has not been poisoned. */
IF ~~ + t11.5
END

IF ~~ t11.3
 SAY @887 /* I would ask, though I doubt that she would even see me. */
IF ~~ + t11.5
END

IF ~~ t11.4
 SAY @888 /* I see. Then... later, mayhap. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t11.5
 SAY @889 /* If I could redo the past five or six years... by Sune, my relationship with Alia may have always been somewhat difficult, but 'twas different with Rana. She was the eldest. When we were children, she took that seriously. */
 = @890 /* Alia did not make it easy for her. She used to feed me fanciful stories, trying to get me to do foolish things. Our tutors kept me out of trouble as much as they could, but Rana was the only one I would actually listen to. */
	++ @891 /* What type of foolish things? */ + t11.6
	++ @892 /* You did say you were a mess before you heard your calling. */ + t11.7
	++ @893 /* Your parents weren't around? */ + t11.8
	++ @894 /* Nostalgia is a funny thing, isn't it? */ + t11.9
END

IF ~~ t11.6
 SAY @895 /* The type that should likely have gotten me killed. Eshpurta is no place for such nonsense. */
IF ~~ + t11.10
END

IF ~~ t11.7
 SAY @896 /* Aye, I was. And Eshpurta is no place for such nonsense. */
IF ~~ + t11.10
END

IF ~~ t11.8
 SAY @897 /* Father was away on campaign more often than not, and mother was usually engrossed in her own projects. Eshpurta was something of a playground for me. A very dangerous playground. */
IF ~~ + t11.10
END

IF ~~ t11.9
 SAY @898 /* Aye. Truly, strange as it may seem, sometimes I miss Eshpurta. */
IF ~~ + t11.10
END

IF ~~ t11.10
 SAY @899 /* Rana always hated the city, of course. Father was harder upon her than upon Alia or myself. She was an exceedingly skilled musician, and he did not consider that an appropriate profession for his firstborn child... especially when it became clear that there would be no sons. */
 = @900 /* He is... very Calishite in some ways. He wanted all of us married off as soon as possible, and Rana... she was so eager to be gone, I suspect that she accepted the first serious offer without a second thought. */
	++ @901 /* In her defense, the offer did come with a nice estate. */ + t11.11
	++ @902 /* And that came from the Jysstevs, I take it. */ + t11.12
	++ @903 /* I didn't realize people married so young here. */ + t11.13
	++ @904 /* That doesn't sound terribly romantic. */ + t11.14
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @905 /* I'm beginning to understand why you're so hesitant about marriage. */ + t11.15
END

IF ~~ t11.11
 SAY @906 /* Little consolation though that is in the end. */
IF ~~ + t11.16
END

IF ~~ t11.12
 SAY @907 /* It did. Our mother's family name is a powerful bargaining chip, even in Athkatla. */
IF ~~ + t11.16
END

IF ~~ t11.13
 SAY @908 /* Were we in Calimshan, I would be disgraced for my lack of a husband. We are not so bad about it in Amn, but the tendencies remain. */
IF ~~ + t11.16
END

IF ~~ t11.14
 SAY @909 /* I would have to agree, though I could not say for certain what passed between them. */
IF ~~ + t11.16
END

IF ~~ t11.15
 SAY @910 /* I am not sure that the two are related. I would like to think that most end successfully, though this one... */
IF ~~ + t11.16
END

IF ~~ t11.16
 SAY @911 /* I must admit, I know less about their marriage than I should. I was away when she was was betrothed, but when I finally met him at the wedding, he was jealous. Controlling. He thought it socially unacceptable for one's wife to be a minstrel. */
 = @912 /* I could not help but think that Rana was trading one unfortunate situation for another. I... could not help but say as much. */
	++ @913 /* You mean at the wedding? */ + t11.17
	++ @914 /* He didn't seem nearly that bad to me. */ + t11.18
	++ @915 /* Why would she even accept that? */ + t11.19
	++ @916 /* I don't really blame you for that. */ + t11.20
END

IF ~~ t11.17
 SAY @917 /* I am afraid so. */
IF ~~ + t11.20
END

IF ~~ t11.18
 SAY @918 /* Mayhap he has changed in the time since, or mayhap I misread him even at the beginning. */
IF ~~ + t11.20
END

IF ~~ t11.19
 SAY @919 /* I do not know. Mayhap there was more to it than I thought, or mayhap I simply saw what I wanted to see. What I expected to see. Mayhap she even loved him. */
IF ~~ + t11.20
END

IF ~~ t11.20
 SAY @920 /* I could not say whether I was right or wrong to think so poorly of him. I have never been very welcome amongst the Jysstevs since, and until recently, I was too proud to visit anyway. */
 = @921 /* Had I done otherwise... I don't know. 'Tis impossible to say what might have been, but I can't help but regret the years of silence now. */
	++ @922 /* If you truly were close, you'll be okay again eventually. */ + t11.21
	++ @923 /* Her choices were her own. You're not responsible for them. */ + t11.22
	++ @924 /* I can certainly sympathize with that. */ + t11.23
	++ @925 /* It doesn't do any good to dwell upon it, Isra. */ + t11.24
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @926 /* I wish there were something I could say to make this better. */ + t11.25
END

IF ~~ t11.21
 SAY @927 /* I hope so, but... I'm sorry, <CHARNAME>. I don't mean to burden you with such troubles. */
IF ~~ EXIT
END

IF ~~ t11.22
 SAY @928 /* No... no, I know that much. I'm sorry, <CHARNAME>. I don't mean to burden you with such troubles. */
IF ~~ EXIT
END

IF ~~ t11.23
 SAY @929 /* I'm sorry, <CHARNAME>. I don't mean to burden you with more troubles. */
IF ~~ EXIT
END

IF ~~ t11.24
 SAY @930 /* No... no, it does not. I'm sorry, <CHARNAME>. I don't mean to burden you with such troubles. */
IF ~~ EXIT
END

IF ~~ t11.25
 SAY @931 /* I know, <CHARNAME>, and that... truly, even that is enough. */
IF ~~ EXIT
END
END

// 12.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",24)~ THEN RH#ISRJ t12
@932 /* I never said exactly what happened at the courts, did I? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @933 /* Not in as many words, no. */ + t12.1
	++ @934 /* I assumed you didn't want to. */ + t12.2
	++ @935 /* I'll admit, I have been a bit curious. */ + t12.3
	++ @936 /* No, and I'd rather leave it like that. */ + t12.4

APPEND RH#ISRJ

IF ~~ t12.1
 SAY @937 /* 'Twas too soon earlier, but now... enough time has passed. */
IF ~~ + t12.5
END

IF ~~ t12.2
 SAY @938 /* Earlier I did not, but now... enough time has passed. */
IF ~~ + t12.5
END

IF ~~ t12.3
 SAY @939 /* I imagined you might be. 'Twas too soon earlier, but now... enough time has passed. */
IF ~~ + t12.5
END

IF ~~ t12.4
 SAY @940 /* Of course. I have dwelled upon it too much as it is. */ 
IF ~~ EXIT
END

IF ~~ t12.5
 SAY @941 /* 'Twould be otherwise, perhaps, if I expected her to remain in prison for very long, but I don't. It is no secret that Lady Lamia can call in any number of favors. She will likely do so once she feels that an appropriate amount of time has passed. */
 = @942 /* The thought troubles me less than mayhap it should. */
	++ @943 /* Athkatlan politics at its very finest. */ + t12.6
	++ @944 /* That isn't very impartial of you. */ + t12.7
	++ @945 /* She'd do that? She seemed pretty decent for an Amnian noble. */ + t12.8
 	++ @946 /* You have to obey the law. That doesn't mean you have to enjoy it. */ + t12.9
END

IF ~~ t12.6
 SAY @947 /* Aye, I know, though Lady Lamia genuinely wants whatever is best for Rana. For the moment, however, that may well be time spent in prison. Some of what has passed troubles me. Greatly. */
IF ~~ + t12.10
END

IF ~~ t12.7
 SAY @948 /* She is my sister, <CHARNAME>. I want what is best for her, though for now, that may well be time spent in prison. Some of what has passed troubles me. Greatly. */
IF ~~ + t12.10
END

IF ~~ t12.8
 SAY @949 /* Lady Lamia is a good person, <CHARNAME>, her rank notwithstanding. But she is also a powerful one, and she wants whatever is best for Rana. */
 = @950 /* For the moment, however, that may well be time spent in prison. Some of what has passed troubles me. Greatly. */
IF ~~ + t12.10
END

IF ~~ t12.9
 SAY @951 /* There is very little about this that I do enjoy. I want whatever is best for Rana, however, and for now that may well be time spent in prison. Some of what has passed troubles me. Greatly. */
IF ~~ + t12.10
END

IF ~~ t12.10
 SAY @952 /* Alim al-Makram claims now that he framed Quentin of his own accord, but... I am not entirely convinced that Rana was uninvolved. The evidence pointed too conveniently at her husband. Such things seldom happen by accident. */
 = @953 /* The smuggling I could bear, but deliberate treachery... I would not have thought her capable of it. */ 
	++ @954 /* People can do terrible things when they're under pressure. */ + t12.11
	++ @955 /* You don't know for certain that it was treachery. */ + t12.12
	++ @956 /* You also hadn't spoken to her in years. Athkatla can be corrupting. */ + t12.11
	++ @957 /* Were she and that smuggler lovers? He seemed interested enough. */ + t12.13
END

IF ~~ t12.11
 SAY @958 /* I cannot deny that. */
IF ~~ + t12.14
END

IF ~~ t12.12
 SAY @959 /* No, I don't, and I am not sure that she will ever tell me. */
IF ~~ + t12.14
END

IF ~~ t12.13
 SAY @960 /* Given his ill-will towards her husband... no, I do not think so. */
IF ~~ + t12.14
END

IF ~~ t12.14
 SAY @961 /* Whatever the truth may be, Quentin never disputed Alim's version of events after being released. I had assumed that he would force the issue, that he would wish to see Rana punished, but in the end... */
 = @962 /* In the end, I think he truly loved her. More than she loved him. */
	++ @963 /* Do you still disapprove of him anyway? */ + t12.15
	++ @964 /* I can't imagine how he still could. */ + t12.16
	+ ~Global("rh#IsraTyrranPC","GLOBAL",1)~ + @965 /* He may still have been framed. You didn't force the issue yourself? */ + t12.17
	+ ~!Global("rh#IsraTyrranPC","GLOBAL",1)~ + @965 /* He may still have been framed. You didn't force the issue yourself? */ + t12.18
	++ @966 /* If you can find anything positive in the mess, I won't fault you for that. */ + t12.19
END

IF ~~ t12.15
 SAY @967 /* I do not like him. I doubt I ever will, but disapproval... he deserves better than that. */
IF ~~ + t12.20
END

IF ~~ t12.16
 SAY @968 /* Love can be a strange thing at times. */
IF ~~ + t12.20
END

IF ~~ t12.17
 SAY @969 /* To what end? I understand your faith's emphasis upon truth, but here... sometimes I wonder if truth and facts are always the same thing. */
IF ~~ + t12.20
END

IF ~~ t12.18
 SAY @970 /* To what end? I am honor-bound to uphold truth and justice, aye, but here... sometimes I wonder if truth and facts are always the same thing. */
IF ~~ + t12.20
END

IF ~~ t12.19
 SAY @971 /* You misunderstand me, <CHARNAME>. This is not a matter of consolation. Not entirely, at least. */
IF ~~ + t12.20
END

IF ~~ t12.20
 SAY @972 /* I have questioned whether I should have pursued my suspicions, if I was blinded by affection for my sister, but I am not so certain. Even if she did betray him, 'twas his decision to forgive her. */
 = @973 /* To deny him the right to make such a gesture, to disdain the love that drove him to that choice... there was more truth that day in silence than in speaking out. */
	++ @974 /* Would you have believed that if she wasn't your sister? */ + t12.21
	++ @975 /* I am not sure that I agree, but I don't have all the facts. */ + t12.22
	++ @976 /* That's the most convoluted justification for mercy I've ever heard. */ + t12.23
	++ @977 /* You are allowed to not want to see her suffer more than necessary, you know. */ + t12.24
	+ ~Alignment(Player1,MASK_LAWFUL)~ + @978 /* There is never truth in silence. Howsoever you word it, it remains a failure of justice. */ + t12.25
END

IF ~~ t12.21
 SAY @979 /* I would like to think so, though I could not say for certain. I have never spent much time in the courts. */
IF ~~ + t12.26
END

IF ~~ t12.22
 SAY @980 /* Would that I could say that I did. */
IF ~~ + t12.26
END

IF ~~ t12.23
 SAY @981 /* Aye, perhaps that is all there is to it. */
IF ~~ + t12.26
END

IF ~~ t12.24
 SAY @982 /* And who determines what is necessary? Certainly not myself. */
IF ~~ + t12.26
END

IF ~~ t12.25
 SAY @983 /* I will not argue the point, my <PRO_LADYLORD>. On this matter, I fear that we would only speak past each other. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t12.26
 SAY @984 /* But come, <CHARNAME>, we have spoken more than enough on this topic. Enough to weary me, at least. */
IF ~~ EXIT
END
END

// 13.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",26)~ THEN RH#ISRJ t13
@985 /* We see so much death these days, I wish-- */ 
= @986 /* What I wish doesn't matter. Still, 'tis an understatement to say that it can grow wearying. */
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @987 /* "Wearying" is one way to put it. "Terrifying" and "appalling" would be others. */ + t13.1
	++ @988 /* We don't have much of an alternative, I'm afraid. */ + t13.2
	++ @989 /* Aren't you trained for this sort of thing? */ + t13.3
	++ @990 /* I don't have time for this right now, Isra. */ + t13.4

APPEND RH#ISRJ

IF ~~ t13.1
 SAY @991 /* And a handful of other adjectives, I am sure. */
IF ~~ + t13.5
END

IF ~~ t13.2
 SAY @992 /* No, we do not. */
IF ~~ + t13.5
END

IF ~~ t13.3
 SAY @993 /* Aye, as much as anyone can be. That does not mean that I like it. */ 
IF ~~ + t13.5
END

IF ~~ t13.4
 SAY @994 /* Then I shall not trouble you with it. */
IF ~~ EXIT
END

IF ~~ t13.5
 SAY @995 /* I accept the necessity of it, of course. That much I have always done, but sometimes... I suppose sometimes I cannot help but wonder why. */
 = @996 /* Why people do stupid things. Why they do terrible things. */
 	++ @997 /* The age-old question of evil, is it? */ + t13.6
	++ @998 /* There is a little thing called free will, you know. */ + t13.6
 	++ @999 /* That can be a dangerous question to look at too closely. */ + t13.7
	++ @1000 /* Generally, they do it because they can get away with it. */ + t13.6
END

IF ~~ t13.6
 SAY @1001 /* I once had a... friend... within the Church of Tyr who used to say that it took a lifetime of deeds to save a man, but just one to damn him. */
 = @1002 /* We argued over almost everything else, but that... I never challenged his cynicism there. Sometimes I wish I had. */
	++ @1003 /* He did have a point. Falling is easy; redemption is harder. */ + t13.8
	++ @1004 /* I would have. That's an extremely judgmental sentiment. */ + t13.9
	++ @1005 /* I take it you used to agree with him on the issue? */ + t13.10
	++ @1006 /* A friend? You don't sound so certain. */ + t13.11
END

IF ~~ t13.7
 SAY @1007 /* 'Tis far more dangerous when overlooked, I think. */
IF ~~ + t13.6
END

IF ~~ t13.8
 SAY @1008 /* I think it would have to be, to be truly worthwhile. */
IF ~~ + t13.12
END

IF ~~ t13.9
 SAY @1009 /* I am not so sure. I might consider it overly simplistic, however. Indiscriminate. */
IF ~~ + t13.12
END

IF ~~ t13.10
 SAY @1010 /* I did not disagree, at least. Not then. */
IF ~~ + t13.12
END

IF ~~ t13.11
 SAY @1011 /* ... A lover, <CHARNAME>. And one I've no wish to speak of. Especially not now. */
IF ~~ + t13.12
END

IF ~~ t13.12
 SAY @1012 /* My sister-- it should not surprise you that I have been thinking about her again. She is a Sunite also, you know. At least, she once was. */
 = @1013 /* Smuggling is of little consequence to our faith, but the rest, the way she treated Quentin throughout it... that is more serious by far. */
	++ @1014 /* Not serious enough to get her kicked out of paradise, I hope? */ + t13.13
	++ @1015 /* She still has time to fix things, at least. */ + t13.14
	++ @1016 /* Isra, your sister may have made some stupid mistakes, but she's hardly a monster. */ + t13.15
	++ @1017 /* This sounds like a conversation you should be having with her instead. */ + t13.16
END

IF ~~ t13.13
 SAY @1018 /* I... couldn't say. Not for certain. */
IF ~~ + t13.17
END

IF ~~ t13.14
 SAY @1019 /* She does... assuming that she even wants to. */
IF ~~ + t13.17
END

IF ~~ t13.15
 SAY @1020 /* No, but if she doesn't correct those mistakes... I couldn't say. */
IF ~~ + t13.17
END

IF ~~ t13.16
 SAY @1021 /* I know. I would like to, but I don't think that feasible. */
IF ~~ + t13.17
END

IF ~~ t13.17
 SAY @1022 /* She was so angry when I last saw her. Anger like that... if she can't let go of it, I don't know what it will do to her. And I don't know how to help. I don't know if she would even let me. */
	++ @1023 /* Give it time. She'll come around eventually. */ + t13.18
	++ @1024 /* Don't complain to me about siblings. At least yours haven't tried to conquer the Sword Coast yet. */ + t13.19
	++ @1025 /* Maybe you should have considered that before turning her in. */ + t13.20
	++ @1026 /* You can't expect to solve her problems for her. Especially one like this. */ + t13.21
END

IF ~~ t13.18
 SAY @1027 /* I can only hope that is true. */
IF ~~ + t13.22
END

IF ~~ t13.19
 SAY @1028 /* Ah... yes. You do know how to put things into perspective. */
IF ~~ EXIT
END

IF ~~ t13.20
 SAY @1029 /* I did. She received enough mercy as it was. More... I cannot imagine that it would have ended better. */
IF ~~ + t13.22
END

IF ~~ t13.21
 SAY @1030 /* I don't like feeling so helpless, but you may have the right of it. */
IF ~~ + t13.22
END

IF ~~ t13.22
 SAY @1031 /* (sigh) You are kind to listen to me, <CHARNAME>. Exceedingly so. I want you to know that I appreciate it. */
	++ @1032 /* You have my ear whenever you want it, Isra. */ + t13.23
	++ @1033 /* It's nothing that you wouldn't do for me. */ + t13.24
	++ @1034 /* This matter hasn't been easy for you. I understand that. */ + t13.23
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @1035 /* I would do far more than merely listen, you know. */ + t13.25
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1035 /* I would do far more than merely listen, you know. */ + t13.23
END

IF ~~ t13.23
 SAY @1036 /* I know. Thank you all the same. */
IF ~~ EXIT
END

IF ~~ t13.24
 SAY @1037 /* I suppose not. Thank you all the same. */
IF ~~ EXIT
END

IF ~~ t13.25
 SAY @1038 /* (smile) Thank you all the same, my <PRO_LADYLORD>. */
IF ~~ EXIT
END
END

// 14a. 
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",28) Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN RH#ISRJ t14a
@1039 /* Would you walk with me a while, <CHARNAME>? I would speak with you for a moment. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1040 /* Are you thinking about your sister again? */ + t14a.1
	++ @1041 /* Only for a moment, my lady? */ + t14a.2
	++ @1042 /* You should know by now that you can always have my ear. */ + t14a.3
	++ @254 /* Isra, this really isn't a good time. */ + t14a.4

APPEND RH#ISRJ

IF ~~ t14a.1
 SAY @1043 /* No. For once... for once, I am thinking of you instead. */
IF ~~ + t14a.5
END

IF ~~ t14a.2
 SAY @1044 /* (smile) For as long as you would like. */
IF ~~ + t14a.5
END

IF ~~ t14a.3
 SAY @1045 /* (smile) Aye, though sometimes I fear that I am abusing that privilege. */
IF ~~ + t14a.5
END

IF ~~ t14a.4
 SAY @1046 /* Of course. Then... later, I suppose. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t14a.5
 SAY @1047 /* You have been very good to me, my <PRO_LADYLORD>... my love. I wanted you to know that. I would be the first to admit that have not been as attentive as I could be as of late. */
 = @1048 /* This recent madness with Rana... I hope that I haven't neglected you too much. */
	++ @1049 /* You've had a lot on your mind. I understand that. */ + t14a.6
	++ @1050 /* You're quite welcome to make it up to me tonight. */ + t14a.7
	++ @1051 /* You don't need to see to my needs all of the time, Isra. */ + t14a.8
	++ @1052 /* And if you have? */ + t14a.9
END

IF ~~ t14a.6
 SAY @1053 /* Thank you. That is good to hear, though I should like to make it up to you regardless. */
IF ~~ + t14a.10
END

IF ~~ t14a.7
 SAY @1054 /* And I am sure that I will, though I had something more immediate in mind. */
IF ~~ + t14a.10
END

IF ~~ t14a.8
 SAY @1055 /* I should like to regardless. */
IF ~~ + t14a.10
END

IF ~~ t14a.9
 SAY @1056 /* If I have, then I should like to make it up to you. */
IF ~~ + t14a.10
END

IF ~~ t14a.10
 SAY @1057 /* Several of Athkatla's most skilled seamstresses are affiliated with the Church of Sune, and one of them in particular... I am pleased to say that I was able to find her mayhap a tenday ago. */
 = @1058 /* 'Tis no great secret that I would wish to see you bedecked in silks one day, my <PRO_LADYLORD>, but for now, this will have to suffice. */
	++ @1059 /* Oh, Isra. That is the most exquisite cloak I've ever seen. */ + t14a.11
	++ @1060 /* Aren't you afraid that I'll ruin something like this? */ + t14a.12
	++ @1061 /* Dare I even ask how much this thing cost you? */ + t14a.13
	++ @1062 /* I take it I'm not an appropriate consort for you when dressed in rags. */ + t14a.14
END 
 
IF ~~ t14a.11
 SAY @1063 /* 'Tis one of her best works, I would have to agree. */
IF ~~ + t14a.15
END

IF ~~ t14a.12
 SAY @1064 /* The enchantments should keep it clean and intact for some time. */
IF ~~ + t14a.15
END

IF ~~ t14a.13
 SAY @1065 /* I would certainly rather you did not. */
IF ~~ + t14a.15
END

IF ~~ t14a.14
 SAY @1066 /* Do not say such things, <CHARNAME>. They are not true. */
IF ~~ + t14a.15
END

IF ~~ t14a.15
 SAY @1067 /* But come, I should like to see how this looks on you right now. If you could stand still for one moment, I think-- hmm. */
 = @1068 /* Magnificent, my <PRO_LADYLORD>... though I had expected no less. I had hoped that it would prove a fetching color for you, and I seem to have judged well. Very well indeed. */
	++ @1069 /* Thank you, Isra. Sincerely. It's beautiful. */ + t14a.16
	++ @1070 /* It's red. Like everything else you own. You do realize other colors exist, I hope. */ + t14a.17
	++ @1071 /* Keep eyeing me like that, and you'll be seeing me out of it again... and everything else. */ + t14a.18
	++ @1072 /* I'm still somewhat worried about ruining it on the road. */ + t14a.19
END

IF ~~ t14a.16
 SAY @1073 /* (smile) Aye, it is... but no more so than you are yourself. */
IF ~~ + t14a.20
END

IF ~~ t14a.17
 SAY @1074 /* (laugh) I do, aye, though none of them are quite so grand. */
IF ~~ + t14a.20
END

IF ~~ t14a.18
 SAY @1075 /* (laugh) Will I? Hopefully not in public. */
IF ~~ + t14a.20
END

IF ~~ t14a.19
 SAY @1076 /* (smile) If you would rather not risk it, I shan't complain, though I do not believe that you need to worry about that. */
IF ~~ + t14a.20
END

IF ~~ t14a.20
 SAY @1077 /* Walk with me a moment longer, my love... I do not wish to strain my neck turning to look at you, and I am sure I shall be doing that for quite some time. */
IF ~~ DO ~GiveItemCreate("rh#cloak",Player1,1,0,0)~ EXIT
END
END

// 14b. 
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",28) Global("rh#IsraRomanceActive","GLOBAL",1)~ THEN RH#ISRJ t14b
@1078 /* Would you walk with me a while, my <PRO_LADYLORD>? I would speak with you for a moment. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1040 /* Are you thinking about your sister again? */ + t14b.1
	++ @1041 /* Only for a moment, my lady? */ + t14b.2
	++ @1079 /* You can always have my ear, Isra. */ + t14b.3
	++ @254 /* Isra, this really isn't a good time. */ + t14b.4

APPEND RH#ISRJ

IF ~~ t14b.1
 SAY @1080 /* No. For once... for once, I am not. */
IF ~~ + t14b.5
END

IF ~~ t14b.2
 SAY @1044 /* (smile) For as long as you would like. */
IF ~~ + t14b.5
END

IF ~~ t14b.3
 SAY @1045 /* (smile) Aye, though sometimes I fear that I am abusing that privilege. */
IF ~~ + t14b.5
END

IF ~~ t14b.4
 SAY @1046 /* Of course. Then... later, I suppose. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t14b.5
 SAY @1081 /* You have been very good to me. Your kindness as of late... I am exceedingly glad that I met you, <CHARNAME>. I have known many good people throughout my life, but you... */
 = @1082 /* I do not think that you realize how singular you are. */
	++ @1083 /* From you, Isra, that's high praise indeed. */ + t14b.6
	++ @1084 /* You must be exaggerating, surely. */ + t14b.7
	++ @1085 /* Not quite as much so as you are, I suspect. */ + t14b.8
	++ @1086 /* You're welcome to tell me. In as much detail as you'd like. */ + t14b.9
END

IF ~~ t14b.6
 SAY @1087 /* 'Tis no more than what you have earned, though... hopefully my next words will not seem overly forward. */
IF ~~ + t14b.10
END

IF ~~ t14b.7
 SAY @1088 /* I should hope not. My next words... hopefully they wll not seem overly forward. */ 
IF ~~ + t14b.10
END

IF ~~ t14b.8
 SAY @1089 /* You flatter me, though my next words... hopefully they will not seem overly forward. */ 
IF ~~ + t14b.10
END

IF ~~ t14b.9
 SAY @1090 /* Am I? Then I trust that may next words will not seem overly forward. */
IF ~~ + t14b.10
END

IF ~~ t14b.10
 SAY @1057 /* Several of Athkatla's most skilled seamstresses are affiliated with the Church of Sune, and one of them in particular... I am pleased to say that I was able to find her mayhap a tenday ago. */
 = @1091 /* I... hope that you will forgive me for taking the liberty of commissioning something on your behalf, <PRO_LADYLORD>. 'Twas too perfect an opportunity. */
	++ @1059 /* Oh, Isra. That is the most exquisite cloak I've ever seen. */ + t14b.11
	++ @1060 /* Aren't you afraid that I'll ruin something like this? */ + t14b.12
	++ @1061 /* Dare I even ask how much this thing cost you? */ + t14b.13
	++ @1092 /* I wish I had something to give you in return, Isra. */ + t14b.14
END 
 
IF ~~ t14b.11
 SAY @1063 /* 'Tis one of her best works, I would have to agree. */
IF ~~ + t14b.15
END

IF ~~ t14b.12
 SAY @1064 /* The enchantments should keep it clean and intact for some time. */
IF ~~ + t14b.15
END

IF ~~ t14b.13
 SAY @1065 /* I would certainly rather you did not. */
IF ~~ + t14b.15
END

IF ~~ t14b.14
 SAY @1093 /* Your company is more than enough, I assure you. */
IF ~~ + t14b.15
END

IF ~~ t14b.15
 SAY @1067 /* But come, I should like to see how this looks on you right now. If you could stand still for one moment, I think-- hmm. */
 = @1094 /* Magnificent, my <PRO_LADYLORD>... more so even than I had expected. I... I had hoped that the color would prove fetching... by Sune, does it ever. */
	++ @1070 /* It's red. Like everything else you own. You do realize other colors exist, I hope. */ + t14b.16
	++ @1095 /* I think I like the sight of you tongue-tied even better, Isra. */ + t14b.17
	++ @1096 /* Says the stunningly gorgeous Sunite. */ + t14b.18
	++ @1097 /* Isra... I'm not comfortable with the way you're looking at me. */ + t14b.19	
END

IF ~~ t14b.16
 SAY @1098 /* (smile) I do, aye, though none of them are quite so grand. And grandness... it becomes you. */
IF ~~ + t14b.20
END

IF ~~ t14b.17
 SAY @1099 /* (laugh) I shall try not to make a habit of it, though... I can promise little. */
IF ~~ + t14b.20
END

IF ~~ t14b.18
 SAY @1100 /* (laugh) Then you should trust my judgment. */
IF ~~ + t14b.20
END

IF ~~ t14b.19
 SAY @1101 /* Oh. I see. I... forgive me if I caused any offense. */ 
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t14b.20
 SAY @1102 /* I... I am sorry, <CHARNAME>. I do not mean to stare so. I... mayhap 'twould be better to simply move on now. */
IF ~~ DO ~GiveItemCreate("rh#cloak",Player1,1,0,0)~ EXIT
END
END

// 14c.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",28)~ THEN RH#ISRJ t14c
@1103 /* It cannot be too much longer until we get to the bottom of this. Do you mean to remain in Amn afterward? */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1104 /* I would like to. I've enjoyed the country so far. */ + t14c.1
	++ @1105 /* Not if I have any say in the matter. I hate Athkatla. */ + t14c.2
	++ @1106 /* Who says I'll have a choice? I've never had one before. */ + t14c.3
	++ @667 /* I don't have time to talk right now. Later, maybe? */ + t14c.4

APPEND RH#ISRJ

IF ~~ t14c.1
 SAY @1107 /* I am glad to hear it. I've no wish to see you leave. */
IF ~~ + t14c.5
END

IF ~~ t14c.2
 SAY @1108 /* That is unfortunate. Forgive my selfishness, but I've no wish to see you leave. */
IF ~~ + t14c.5
END

IF ~~ t14c.3
 SAY @1109 /* We can still hope for the best, then. Forgive my selfishness, but I've no wish to see you leave. */
IF ~~ + t14c.5
END

IF ~~ t14c.4
 SAY @1110 /* Of course, if that is what you would prefer. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t14c.5
 SAY @1111 /* People such as you, <CHARNAME>... there are not enough of them here as it is. One more or less may seem of little consequence, but I think the evidence would suggest otherwise. */ 
	++ @1112 /* I didn't ask you for a sermon, Isra. */ + t14c.6
	++ @1113 /* What exactly are you getting at? */ + t14c.7
	++ @1114 /* Is that really the only reason you'd want to keep me around? */ + t14c.8
	++ @1115 /* One person can make all the difference in the world, is it? */ + t14c.9
END

IF ~~ t14c.6
 SAY @1116 /* I did not realize I was giving one. I was just thinking aloud, I suppose. */
IF ~~ + t14c.10
END

IF ~~ t14c.7
 SAY @1117 /* I am just thinking aloud, I suppose. */
IF ~~ + t14c.10
END

IF ~~ t14c.8
 SAY @1118 /* No, it isn't. I should think that rather obvious by now also. */
IF ~~ + t14c.10
END

IF ~~ t14c.9
 SAY @1119 /* For good or for ill, aye. One person usually does. */
IF ~~ + t14c.10
END

IF ~~ t14c.10
 SAY @1120 /* I have been considering the future as of late. I don't do that terribly often, but you... I have enjoyed working with you, my <PRO_LADYLORD>. */
 = @1121 /* I would miss it, should circumstances push us apart. */
	++ @1122 /* I've enjoyed your company as well. */ + t14c.11
	++ @1123 /* I suspect they will sooner or later. */ + t14c.12
	++ @1124 /* Are you planning on leaving? */ + t14c.13
	++ @1125 /* Whatever. Could we please move on now? */ + t14c.14
END

IF ~~ t14c.11
 SAY @1126 /* Then that is something. */
IF ~~ + t14c.15
END

IF ~~ t14c.12
 SAY @1127 /* So do I, truth be told. I am always hesitant to make predictions. */
IF ~~ + t14c.15
END

IF ~~ t14c.13
 SAY @1128 /* Not yet, certainly. I intend to see this through until the end, but after that... I'm hesitant to make predictions. */
IF ~~ + t14c.15
END

IF ~~ t14c.14
 SAY @1129 /* As you wish. */
IF ~~ EXIT
END

IF ~~ t14c.15
 SAY @1130 /* (sigh) This is a poor time to be looking so far into the future, of course. Imoen... every day we wait is a day we lose. I am growing worried about what we might discover when we find her. */
	++ @1131 /* So am I, I assure you. */ + t14c.16
	++ @1132 /* We're moving as quickly as we can. */ + t14c.17
	+ ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + @1133 /* After a day with her in the party? A headache, more likely than not. */ + t14c.18
	+ ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + @1133 /* After a day with her in the party? A headache, more likely than not. */ + t14c.19
END

IF ~~ t14c.16
 SAY @1134 /* I can believe it. */
IF ~~ EXIT
END

IF ~~ t14c.17
 SAY @1135 /* I know. Hopefully it will be quickly enough. */
IF ~~ EXIT
END

IF ~~ t14c.18
 SAY @1136 /* Oh, <CHARNAME>. She is not quite as bad as that. */
IF ~~ EXIT
END

IF ~~ t14c.19
 SAY @1137 /* If she is as much of one as my sister Alia, I shall be very impressed indeed. */
IF ~~ EXIT
END
END

// 15. upon rest
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",30)~ THEN RH#ISRJ t15
@1138 /* I am almost glad there is so little entertainment this evening, <CHARNAME>. For once, I would simply rather think. And talk, mayhap. */ 
DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700) IncrementGlobal("rh#IsraTalks","GLOBAL",1)~
END
	++ @1139 /* With me, I hope. */ + t15.1
	++ @1140 /* What was on your mind? */ + t15.2
	++ @1141 /* You're not usually quite so withdrawn. */ + t15.3
	++ @1142 /* I was about to head to bed, actually. */ + t15.4

APPEND RH#ISRJ

IF ~~ t15.1
 SAY @1143 /* (smile) Aye, with you. */
IF ~~ + t15.5
END

IF ~~ t15.2
 SAY @1144 /* (smile) You, oddly enough. */
IF ~~ + t15.5
END

IF ~~ t15.3
 SAY @1145 /* (smile) I have my quiet moments as well, few though they may be. And tonight... */
IF ~~ + t15.5
END

IF ~~ t15.4
 SAY @1146 /* Oh. Very well, then. Good night. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.5
 SAY @1147 /* How often do you find yourself contemplating the past, my <PRO_LADYLORD>? Candlekeep, the struggle in Baldur's Keep... */
 = @1148 /* I live in the present as much as I can, but sometimes I wonder if I am not more inclined towards nostalgia than most people. */
	++ @1149 /* I don't think about Candlekeep very often at all. */ + t15.6
	++ @1150 /* When the present is so troubled, a bit of nostalgia can be expected. */ + t15.7
	++ @1151 /* You do generally seem more interested in the past than the future. */ + t15.8
	++ @1152 /* I hold my memories of Candlekeep very dear to me. */ + t15.9
END

IF ~~ t15.6
 SAY @1153 /* Then I may well think about it more than you do. */
IF ~~ + t15.10
END

IF ~~ t15.7
 SAY @1154 /* That may well be part of it. And the past has always held a certain fascination for me regardless... my own, those of the people around me. */
IF ~~ + t15.10
END

IF ~~ t15.8
 SAY @1155 /* I know. It has always held a certain fascination for me... my own, those of the people around me. */
IF ~~ + t15.10
END

IF ~~ t15.9
 SAY @1156 /* That is good, I think. And mayhap reassuring. */
IF ~~ + t15.10
END

IF ~~ t15.10
 SAY @1157 /* I have been trying to picture you as a child, <CHARNAME>, though 'tis somewhat more difficult than I might have expected. */ 
 = @1158 /* Perhaps that should not surprise me. A <PRO_MANWOMAN> such as you... the demands of this life have likely washed away whatever you might have been before. */
	++ @1159 /* Actually, I was always very much like I am now. */ + t15.11
	++ @1160 /* I never had much of a childhood. There was no time for it. */ + t15.12
	++ @1161 /* I was very much like any child, I think. Except a bit lonelier. */ + t15.13
	++ @1162 /* I was completely uncontrollable. You should hear the stories. */ + t15.14
END

IF ~~ t15.11
 SAY @1163 /* Were you? Mayhap that explains why I cannot imagine you any other way. */
IF ~~ + t15.15
END

IF ~~ t15.12
 SAY @1164 /* Aye, some of us get forced into adulthood before we are ready for it. */
IF ~~ + t15.15
END

IF ~~ t15.13
 SAY @1165 /* In a home like Candlekeep... I can believe that. */
IF ~~ + t15.15
END

IF ~~ t15.14
 SAY @1166 /* Were you, truly? You are very nearly a force of nature now, so mayhap that is to be expected. */
IF ~~ + t15.15
END

IF ~~ t15.15
 SAY @1167 /* It always astounds me, the unexpected ways in which people can grow and change over time. Myself... you would probably not have recognized me half a decade ago. */
 = @1168 /* You would certainly not have recognized me further back than that, but even in Crimmor, in the midst of my training... (laugh) I was a somber young thing, I'm afraid. I took the littlest of things utterly seriously. */
	++ @1169 /* I can't see you not knowing how to smile, Isra. */ + t15.16
	++ @1170 /* You didn't know how to take a joke, did you? */ + t15.17
	++ @1171 /* Obviously something must have happened to change that. */ + t15.18
	++ @1172 /* You still can get pretty unbearably formal at times. */ + t15.19
END

IF ~~ t15.16
 SAY @1173 /* Oh, I could smile. I was never entirely grim, but being able to laugh at myself... that had to be learned. */
IF ~~ + t15.20
END

IF ~~ t15.17
 SAY @1174 /* Not one directed at myself, certainly. That had to be learned. */
IF ~~ + t15.20
END

IF ~~ t15.18
 SAY @1175 /* Something did. Or someone, rather. */
IF ~~ + t15.20
END

IF ~~ t15.19
 SAY @1176 /* Oh, I know, but I no longer care when someone laughs at me because of it. I have become far too accustomed to such things. */
IF ~~ + t15.20
END
END

CHAIN RH#ISRJ t15.20
@1177 /* There was a woman in Crimmor, a priestess of Lliira... sometimes I think that combating solemnity must be one of Lliira's charges to her followers. If so, Mairen was very attentive to that duty. And very successful in the end. */
== RH#ISRJ IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ THEN @1178 /* I trust that it will not surprise you to learn that I loved her for a time, <CHARNAME>. Much like I love you now. Before her... my romances left something to be desired, I'm afraid. */
== RH#ISRJ IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ THEN @1179 /* I loved her for a time, <CHARNAME>. Much like I love you now. Before her... my romances left something to be desired, I'm afraid. */
== RH#ISRJ IF ~Global("rh#IsraLliiranPC","GLOBAL",1)~ THEN @1180 /* Mia and I... you would like her, I think. And not simply because you are both Lliirans. */
== RH#ISRJ IF ~!Global("rh#IsraLliiranPC","GLOBAL",1)~ THEN @1181 /* Mia and I... you would like her, I think. Most people do, truth be told. */
== RH#ISRJ @1182 /* If we ever have a chance to visit Crimmor, I shall need to introduce the two of you. She is engaged now, but I am sure she would appreciate meeting you regardless. */
END
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",1) Gender(Player1,MALE)~ + @1183 /* You're not... exclusively interested in women, I hope? */ + t15.21
 	++ @1184 /* You sound like you're still fond of her. */ + t15.22
	++ @1185 /* I think I would appreciate that as well. */ + t15.23
	++ @1186 /* An irreverent former lover? Imagine all the stories I could learn. */ + t15.24
	++ @1187 /* She's engaged? I pity the lover who has to come after you. */ + t15.25
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1188 /* I'm not sure how keen I'd be on meeting one of your former lovers, Isra. */ + t15.26

APPEND RH#ISRJ

IF ~~ t15.21
 SAY @1189 /* (laugh) Not at all, my Lord, I can assure you of that much. */
IF ~~ + t15.28
END

IF ~~ t15.22
 SAY @1190 /* I am. I expect that I shall always be, though we have both moved on by now. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t15.27
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t15.28
END

IF ~~ t15.23
 SAY @1191 /* (smile) Then I shall have to keep it in mind. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t15.27
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t15.28
END

IF ~~ t15.24
 SAY @1192 /* (laugh) Aye, and Mia would be all too happy to share them, I am sure. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t15.27
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t15.28
END

IF ~~ t15.25
 SAY @1193 /* (laugh) You flatter me, but as far as I can tell, they are well matched. Better by far than she and I were. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t15.27
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + t15.28
END

IF ~~ t15.26
 SAY @1194 /* If you think it would be awkward, I certainly shan't insist upon it, but I assure you, she and I have both moved on by now. */
IF ~~ + t15.27
END

IF ~~ t15.27
 SAY @1195 /* I shall need to tell you more about her later, I think. I do not normally like to discuss former lovers, but you have the right to know about such things. */
 = @1196 /* For now, however... the evening is still lovely, and I would hate to waste the entirety of it discussing the past. */
	++ @1197 /* With the future so uncertain, the past seems a better topic than most. */ + t15.29
	++ @1198 /* As would I. I'm sure we can think of more pleasant things to talk about. */ + t15.30
	++ @1199 /* If there were music playing tonight, I would ask you to dance. */ + t15.31
	++ @1200 /* Perhaps we should retire someplace a little more... private. */ + t15.32
END

IF ~~ t15.28
 SAY @1201 /* Perhaps I shall tell you more about her later. I do not normally like to discuss former lovers, but you... I trust you more than enough with such things. */
 = @1202 /* For now, however... the evening is still lovely. I would hate to waste the entirety of it discussing the past. */
	++ @1197 /* With the future so uncertain, the past seems a better topic than most. */ + t15.29
	++ @1203 /* As would I. Especially when the future is so much more interesting. */ + t15.33
	++ @1199 /* If there were music playing tonight, I would ask you to dance. */ + t15.31
	+ ~Gender(Player1,MALE)~ + @1204 /* Would you consider retiring someplace a little more... private? */ + t15.34
	+ ~Gender(Player1,FEMALE)~ + @1204 /* Would you consider retiring someplace a little more... private? */ + t15.35
END

IF ~~ t15.29
 SAY @1205 /* Aye, I cannot deny that much. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.30
 SAY @1206 /* I am certain that we can as well, my love. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.31
 SAY @1207 /* And I would be more than inclined to accept, <CHARNAME>. Perhaps the opportunity will present itself another evening. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.32
 SAY @1208 /* Later, my love. I think that I would prefer to simply rest with you here for a time. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.33
 SAY @1209 /* Hmm... mayhap we should discuss that, then. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.34
 SAY @1210 /* Hmm. You are a handsome man, <CHARNAME>, in more ways than one, but... I must decline. At least for the moment. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t15.35
 SAY @1211 /* Hmm. You are a beautiful woman, <CHARNAME>, in more ways than one, but... I must decline. At least for the moment. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 16.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",32)~ THEN RH#ISRJ t16
@1212 /* Our conversation from the other night, <CHARNAME>... mayhap I should not be surprised to find myself thinking of it again. Sometimes I am fonder of introspection than I should be. */ 
DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700) IncrementGlobal("rh#IsraTalks","GLOBAL",1)~
END
	++ @1213 /* I would certainly be inclined to agree with that, my lady. */ + t16.1
	++ @1214 /* What part of it exactly have you been thinking about? */ + t16.2
	++ @1215 /* You did say you were going to tell me more about her. */ + t16.3
	++ @1216 /* Isra, I don't really want to hear about your ex. At all. */ + t16.4

APPEND RH#ISRJ

IF ~~ t16.1
 SAY @1217 /* Aye, I cannot help but focus upon every little mistake I might have made... even if those mistakes are several years old now. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.5
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.6
END

IF ~~ t16.2
 SAY @1218 /* All of the small mistakes that I might have made, unfortunately. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.5
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.6
END

IF ~~ t16.3
 SAY @1219 /* I did, aye. Perhaps I should fulfill that promise now, though... all I can think of at the moment are the small mistakes I might have made. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.5
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.6
END

IF ~~ t16.4
 SAY @1220 /* Oh. I see. Forgive me, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

IF ~~ t16.5
 SAY @1221 /* I do not want you to think that I am unhappy with the way things have played out, because I am not, but... I have been a fool in the past, my <PRO_LADYLORD>. I do not want to be a fool with you as well. */
IF ~~ + t16.7
END

IF ~~ t16.6
 SAY @1222 /* 'Tis a strange thing to share with you, mayhap, but... I have become very comfortable with you, my <PRO_LADYLORD>. Even concerning matters such as this. */
IF ~~ + t16.7
END

IF ~~ t16.7
 SAY @1223 /* Mairen and I... sometimes I am astounded that we managed to save our friendship at all. I have not always been so fortunate in the past, and I was still quite young. At least in the ways that mattered. */
 = @1224 /* I did not yet realize exactly what my calling entailed. The difficulties that this lifestyle comes with... I was still romanticizing them, I think. I believed I could have everything that I might wish for. */
 = @1225 /* Mia didn't think that, of course, and I should have known better myself. That is easy enough to accept after the fact. */
	++ @1226 /* Don't sell yourself too short, Isra. */ + t16.8
	++ @1227 /* What exactly happened between you two? */ + t16.9
	++ @1228 /* I'm not sure I really want to hear the full story. */ + t16.4
END

IF ~~ t16.8
 SAY @1229 /* (smile) Your confidence in me is heartening, but in this matter... */
IF ~~ + t16.10
END

IF ~~ t16.9
 SAY @1230 /* (sigh) My life is... somewhat more complicated at times than I might wish at times. */
IF ~~ + t16.10
END

IF ~~ t16.10
 SAY @1231 /* This is a difficult path for any of us. It has to be. The fact that my goddess is gentler with us than most... that does little to moderate the challenges of it. */
 = @1232 /* I was never around enough once I began campaigning, and even when I was... tourneys and training only prepare one so much. Actual battle, <CHARNAME>... it changes a person. I am sure you have noticed the same. */
 = @1233 /* I tried to pretend that nothing had changed. The realities of battle... I did not want to subject her to the horror of it. 'Tis perhaps a nobler reason than some to shut a lover out of one's life, but the result is the same. */
	++ @1234 /* Silence and distrust. I can believe it. */ + t16.11
	++ @1235 /* At least you learn from your mistakes. Many don't bother. */ + t16.12
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1236 /* Perhaps you were simply not meant to be with her. */ + t16.13
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1236 /* Perhaps you were simply not meant to be with her. */ + t16.14
	++ @1237 /* She wasn't into adventuring herself? */ + t16.15
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1238 /* Don't ever shut me out like that, Isra. Please. */ + t16.16
END

IF ~~ t16.11
 SAY @1239 /* Aye, though more of the former than the latter, thank Sune. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.17
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + t16.22
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ + t16.23
END

IF ~~ t16.12
 SAY @1240 /* That is true enough. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.17
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + t16.22
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ + t16.23
END

IF ~~ t16.13
 SAY @1241 /* (smile) Perhaps not. */
IF ~~ + t16.17
END

IF ~~ t16.14
 SAY @1242 /* (smile) Clearly I was not. */
IF ~Gender(Player1,MALE)~ + t16.22
IF ~Gender(Player1,FEMALE)~ + t16.23
END

IF ~~ t16.15
 SAY @1243 /* No, she was not. 'Twas one of our many differences. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t16.17
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + t16.22
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ + t16.23
END

IF ~~ t16.16
 SAY @1244 /* I don't intend to. I can assure you of that much. */
IF ~Gender(Player1,MALE)~ + t16.22
IF ~Gender(Player1,FEMALE)~ + t16.23
END

IF ~~ t16.17
 SAY @1245 /* I... don't think I ever expected to find something like that again, you know. Though I cannot say that I have truly tried that hard. */
 = @1246 /* Perhaps that was not very pious of me, but at moments like this... I'm not altogether certain that I regret it. */
	++ @1247 /* You should smile at me like that more often, Isra. */ + t16.18
	++ @1248 /* If it means you're eligible, I can't say I regret it either. */ + t16.19
	++ @1249 /* Do you think that perhaps you and I...? */ + t16.20
	++ @1250 /* Isra, you do know that I'm not interested in women, right? */ + t16.21
	++ @1251 /* Isra, I don't want to give you the wrong idea about anything. */ + t16.21
END
 
IF ~~ t16.18
 SAY @1252 /* (laugh) I smile at you often enough, I should think. */
IF ~~ EXIT
END

IF ~~ t16.19
 SAY @1253 /* (laugh) Oh, <CHARNAME>. Such bluntness becomes you, I think. */
IF ~~ EXIT
END

IF ~~ t16.20
 SAY @1254 /* I think... I think that is something that remains to be seen. */
IF ~~ EXIT
END

IF ~~ t16.21
 SAY @1255 /* Oh. Oh, of course not. Forgive me if I overstepped myself, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END
 
IF ~~ t16.22
 SAY @1256 /* I... don't think I ever expected to find something like that again, you know. And truly, perhaps I have not. You and she, <CHARNAME>... you are like night and day, and not simply because you are a man instead. */
IF ~~ + t16.24
END

IF ~~ t16.23
 SAY @1257 /* I... don't think I ever expected to find something like that again, you know. And truly, perhaps I have not. You and she, <CHARNAME>... you are like night and day. I have never known two women to be so utterly different. */
IF ~~ + t16.24
END

IF ~~ t16.24
 SAY @1258 /* Mia does not have your venturesome spirit. I mean that as no slight to her; she also doesn't have your legion of enemies, but you and I... */
 = @1259 /* 'Tis by far a better match. I think she would agree. */
	++ @1260 /* Yes, there's no need to worry about tranquility with me around. */ + t16.25
	++ @1261 /* As long as you have no regrets. */ + t16.26
	++ @1262 /* We do have equally complicated lives, I suppose. */ + t16.27
	++ @1263 /* You don't need to try to spare my feelings, Isra. */ + t16.28
END
 
IF ~~ t16.25
 SAY @1264 /* Oh, we have our moments of that as well. */
IF ~~ + t16.29
END

IF ~~ t16.26
 SAY @1265 /* I regret many things, but not the fact that it ended. */ 
IF ~~ + t16.29
END

IF ~~ t16.27
 SAY @1266 /* Yours is likely more so than my own... which is something of a novelty itself. */
IF ~~ + t16.29
END

IF ~~ t16.28
 SAY @1267 /* 'Tis the simple truth. Nothing more and nothing less. */
IF ~~ + t16.29
END

IF ~~ t16.29
 SAY @1268 /* (smile) Would you give me your hand, my love? We have tarried long enough now, another moment would make litle difference. */
	++ @1269 /* In exchange for a kiss, my lady? */ + t16.30
	++ @1270 /* I would give you far more than a hand, Isra. */ + t16.31
	++ @1271 /* Moments have a way of multiplying, you know. */ + t16.32
	++ @1272 /* A moment may make all of the difference in the world. */ + t16.33
END

IF ~~ t16.30
 SAY @1273 /* A bargain as favorable as that... no Amnian lady could ever refuse it. */
IF ~~ EXIT
END

IF ~~ t16.31
 SAY @1274 /* Oh, I can certainly believe that, though at the moment, I dare say a hand would suffice. */
IF ~~ EXIT
END

IF ~~ t16.32
 SAY @1275 /* Aye, so they do. Shall we move on, then? */
IF ~~ EXIT
END
 
IF ~~ t16.33
 SAY @1276 /* Aye, so it might. I think I am willing to chance that, however. */
IF ~~ EXIT
END
END

// 17.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",34)~ THEN RH#ISRJ t17
@1277 /* You look thoughtful to<DAYNIGHT>, my <PRO_LADYLORD>. It suits you. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1278 /* I have a lot on my mind these days. */ + t17.1
	++ @1279 /* Does it, now? I'm glad to hear that you approve. */ + t17.2
	++ @1280 /* That's good, at least. Nothing else about this suits me. */ + t17.3
	++ @1281 /* That's awfully nonchalant of you. */ + t17.4
	++ @1282 /* Can't this wait until later, Isra? */ + t17.exit

APPEND RH#ISRJ

IF ~~ t17.1
 SAY @1283 /* I know. I would be more worried if you did not. */
IF ~~ + t17.5
END

IF ~~ t17.2
 SAY @1284 /* When it comes to you, <CHARNAME>, I almost always do. */
IF ~~ + t17.5
END

IF ~~ t17.3
 SAY @1285 /* I'm sorry to hear you say that. */
IF ~~ + t17.5
END

IF ~~ t17.4
 SAY @1286 /* 'Twas a compliment, <CHARNAME>. Nothing more. */
IF ~~ + t17.5
END

IF ~~ t17.exit
 SAY @1287 /* If you wish it, aye. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t17.5
 SAY @1288 /* I know this is not the easiest of situations. This is not the easiest of lives in general, and with Imoen still missing-- */
 = @1289 /* Sometimes I worry for you. */
	++ @1290 /* I'm doing just fine, I assure you. */ + t17.6
	++ @1291 /* Is it really that obvious that I'm in over my head? */ + t17.6
	++ @1292 /* I'm not about to fall apart. I can't exactly afford to. */ + t17.6
	++ @1293 /* What's there to worry about? */ + t17.6
END

IF ~~ t17.6
 SAY @1294 /* I sleep lightly, <CHARNAME>. I haven't said anything, but I have noticed that you sometimes have difficulty sleeping at all. */
 = @1295 /* We may be very busy, but if you need to take an evening to yourself every so often, 'twould hardly be inappropriate. */
	++ @1296 /* You know as well as I do that we haven't the time for that. */ + t17.7
	++ @1297 /* An evening of debauchery may be just the boost I need. */ + t17.8
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1298 /* We seem to be taking more than enough evenings as it is. */ + t17.9
	++ @1299 /* I'm not sure how that would help anything. */ + t17.10
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @1300 /* I doubt an evening would make much of a dent. A whole tenday, however... */ + t17.10
END

IF ~~ t17.7
 SAY @1301 /* I know that every person has their limits. Even you. */
IF ~~ + t17.11
END

IF ~~ t17.8
 SAY @1302 /* (laugh) I cannot say that is exactly what I had in mind. */
IF ~~ + t17.11
END

IF ~~ t17.9
 SAY @1303 /* And don't think me too greedy for more. I just... I hate to watch you struggle so. */
IF ~~ + t17.11
END

IF ~~ t17.10
 SAY @1304 /* An evening may make more of a difference than you realize. */
IF ~~ + t17.11
END

IF ~~ t17.11
 SAY @1305 /* We have a saying within the Ruby Rose... if a person cannot take the time to care for <PRO_HIMHER>self, <PRO_HESHE> should not be trusted to take care of anybody else either. */
 = @1306 /* I do not mean to preach, but I know how difficult it can be to remember when matters get serious. */
	++ @1307 /* You don't seem to have any trouble with it. */ + t17.12
	++ @1308 /* That isn't a problem. I'm not as selfless as you think I am. */ + t17.13
	++ @1309 /* Thank you. I do appreciate the reminder from time to time. */ + t17.14
	++ @1310 /* So even Sunite paladins make excuses for narcissism. */ + t17.15
	++ @1311 /* You don't mean to preach? It just happens by accident, then? */ + t17.16
END

IF ~~ t17.12
 SAY @1312 /* I have had time to learn. More than you have, mayhap. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.17
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.22
END

IF ~~ t17.13
 SAY @1313 /* Nor exactly selfish either. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.17
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.22
END

IF ~~ t17.14
 SAY @1314 /* I thought you might. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.17
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.22
END

IF ~~ t17.15
 SAY @1315 /* Is anything other than utter self-sacrifice suddenly narcissism? If you truly think that... well, you would do well to employ a bit more courtesy in the future. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t17.16
 SAY @1316 /* Sometimes, aye. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.17
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t17.22
END

IF ~~ t17.17
 SAY @1317 /* I do trust you, <CHARNAME>. More than I could say. With yourself, with this quest, with me... */
 = @1318 /* (smile) Especially with me. */ 
	++ @1319 /* And I do appreciate the thought. More than I can say. */ + t17.18
	++ @1320 /* I think I might like a demonstration of that later tonight. */ + t17.19
	++ @1321 /* I'd like to kiss you right now, Isra. */ + t17.20
	++ @1322 /* We'd have a bit of a problem if you didn't, wouldn't we? */ + t17.21
END

IF ~~ t17.18
 SAY @1323 /* Walk with me awhile, would you? This moment is too pleasant to simply cut short. */
IF ~~ EXIT
END

IF ~~ t17.19
 SAY @1324 /* Would you, now? Perhaps something along those lines can be arranged. */
IF ~~ EXIT
END

IF ~~ t17.20
 SAY @1325 /* I should like that as well... would that we had more than mere moments to spare for it. */
IF ~~ EXIT
END

IF ~~ t17.21
 SAY @1326 /* Oh, <CHARNAME>... I suppose that is true enough, though I do wish you would at least try to indulge my romantic flights a bit. */
IF ~~ EXIT
END
 
IF ~~ t17.22
 SAY @1327 /* Perhaps I shouldn't pry so, but I won't pretend that I haven't come to care about you, <CHARNAME>. A great deal. */
 = @1328 /* As a companion, but also... also as something more, I think. */
	++ @1329 /* The sentiment is certainly shared, Isra. */ + t17.23
	++ @1330 /* Do you think that maybe you and I...? */ + t17.24
	++ @1331 /* You've been hinting as much for some time now. */ + t17.25
	++ @1332 /* Please, stop. I really don't want to hear what comes next. */ + t17.26
END

IF ~~ t17.23
 SAY @1333 /* I had hoped as much, though... well. 'Twas impossible to be certain. */
IF ~Gender(Player1,MALE)~ + t17.27
IF ~Gender(Player1,FEMALE)~ + t17.28
END

IF ~~ t17.24
 SAY @1334 /* I think I would like that. I would like that very much. */
IF ~Gender(Player1,MALE)~ + t17.27
IF ~Gender(Player1,FEMALE)~ + t17.28
END

IF ~~ t17.25
 SAY @1335 /* I have never been terribly secretive about such things, though... well. I've learned to be a bit quieter. */
IF ~Gender(Player1,MALE)~ + t17.27
IF ~Gender(Player1,FEMALE)~ + t17.28
END
 
IF ~~ t17.26
 SAY @1336 /* Oh. I see. Very well, then. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t17.27
 SAY @1337 /* I must be fully honest with you. There are certain things I cannot offer you. Marriage, family... some consider such prospects compatible with a paladin's calling, but I don't. I have seen the toll that this lifestyle can take on a lover... I would not wish bind someone to me with vows as well. */
IF ~~ + t17.29
END

IF ~~ t17.28
 SAY @1338 /* I must be fully honest with you. There are certain things I cannot offer you. Marriage, family... well, unless we were to do something quite unconventional, children are unlikely anyway, and perhaps that's for the best. */
 = @403 /* Some consider such prospects compatible with a paladin's calling, but I don't. I have seen the toll that this lifestyle can take on a lover... I would not wish bind someone to me with vows as well. */
IF ~~ + t17.29
END

IF ~~ t17.29
 SAY @404 /* I doubt that such concerns are foremost on your mind at present, but you have the right to know. */
	++ @405 /* Then we just take each day as it comes? */ + t17.30
	++ @406 /* Thank you. That's actually a bit of a relief. */ + t17.31
	+ ~Class(Player1,PALADIN_ALL)~ + @407 /* I appreciate the honesty, and I can sympathize with your stance. */ + t17.32
	+ ~!Class(Player1,PALADIN_ALL)~ + @408 /* Isra, sometimes your need for utter honesty is a bit of a mood killer. */ + t17.33
	+ ~Class(Player1,PALADIN_ALL)~ + @409 /* You wouldn't be binding me to a lifestyle I haven't already embraced. */ + t17.34
	++ @1339 /* Don't speak in absolutes. People do change their minds. */ + t17.35
	++ @411 /* I see. I'm sorry, but that does change things. */ + t17.36
END

IF ~~ t17.30
 SAY @412 /* I would prefer that, yes... and each night as well. */
IF ~~ + t17.41
END

IF ~~ t17.31
 SAY @413 /* Is it? I would not have expected it to be such a surprise. */
IF ~~ + t17.41
END

IF ~~ t17.32
 SAY @414 /* I thought you would be able to. */
IF ~~ + t17.41
END

IF ~~ t17.33
 SAY @415 /* I can't say that I'm too sorry about that. */
IF ~~ + t17.41
END

IF ~~ t17.34
 SAY @416 /* I know. And that may well make a difference in the end, though you should know that my stance is... somewhat unconventional. */
	++ @417 /* I'm more than willing to live in the present instead. */ + t17.37
	++ @418 /* It may be unconventional, but I understand it entirely. */ + t17.32
	++ @419 /* And you really never want children? */ + t17.38
	++ @420 /* So I see. I'm sorry, but that does change things. */ + t17.36
END

IF ~~ t17.35
 SAY @1340 /* And I might as well, should I survive another decade or so. In the meantime, however, all we have to work with is the present. */
	++ @422 /* That's more than acceptable. */ + t17.37
	++ @405 /* Then we just take each day as it comes? */ + t17.30
	++ @419 /* And you really never want children? */ + t17.38
	++ @420 /* So I see. I'm sorry, but that does change things. */ + t17.36
END

IF ~~ t17.36
 SAY @1341 /* I understand, <CHARNAME>. Really, I do. I can only pray that you find what you are looking for. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t17.37
 SAY @424 /* I'm pleased to hear it. Very much so. */
IF ~~ + t17.41
END

IF ~~ t17.38
 SAY @425 /* Should I abandon them more often than not? Or risk orphaning them? I-- no, <CHARNAME>, that much is unlikely to ever change. */
	++ @426 /* I can more than sympathize with that. */ + t17.32
	++ @427 /* I never really thought about it that way. */ + t17.39
	++ @1342 /* Well, I can't say I ever really liked children anyway. */ + t17.40
	++ @411 /* I see. I'm sorry, but that does change things. */ + t17.36
END

IF ~~ t17.39
 SAY @429 /* It is something that deserves far more than a passing thought. */
IF ~~ + t17.41
END

IF ~~ t17.40
 SAY @430 /* Then I suppose that is one less concern. */
IF ~~ + t17.41
END

IF ~~ t17.41
 SAY @1343 /* Perhaps this conversation should have waited until the evening instead. This is no time to get distracted, and you... I don't think you realize exactly how distracting you are right now, <CHARNAME>. */
	++ @1344 /* We can spare the time at least for a kiss, I think. */ + t17.42
	++ @1345 /* Oh, I think I have an idea. Come over here, would you? */ + t17.42
	++ @1346 /* I... um, could we please take things a bit more slowly? */ + t17.43
	++ @1347 /* Not quite distracting enough, apparently. */ + t17.44
END

IF ~~ t17.42
 SAY @1348 /* That much I can certainly manage, my <PRO_LADYLORD>. Gladly. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2)~ EXIT
END 
 
IF ~~ t17.43
 SAY @1349 /* Of course. I had no intention of making you uncomfortable, my <PRO_LADYLORD>. Shall we simply continue on for now? */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ t17.44
 SAY @1350 /* (laugh) If you mean to test my discipline, my <PRO_LADYLORD>... well, 'tis a pleasanter trial than most. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",2)~ EXIT
END 
END

// 18. upon rest
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",36)~ THEN RH#ISRJ t18
@1351 /* I-- by the gods, <CHARNAME>, I'm sorry. I... didn't realize that you were still bathing. */ 
= @1352 /* I... I can come back later. If you would prefer it, that is. */
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1353 /* It's alright. I was done anyway. Could you pass me that towel? */ + t18.1
	+ ~Gender(Player1,MALE) !Global("rh#IsraSex","GLOBAL",1)~ + @1354 /* I didn't think that Sunites were quite so bashful. */ + t18.2
	+ ~Gender(Player1,FEMALE) !Global("rh#IsraSex","GLOBAL",1)~ + @1354 /* I didn't think that Sunites were quite so bashful. */ + t18.3
	+ ~Gender(Player1,MALE) Global("rh#IsraSex","GLOBAL",1)~ + @1355 /* Why so bashful? It's nothing you haven't seen before. */ + t18.4
	+ ~Gender(Player1,FEMALE) Global("rh#IsraSex","GLOBAL",1)~ + @1355 /* Why so bashful? It's nothing you haven't seen before. */ + t18.5
	+ ~Gender(Player1,MALE)~ + @1356 /* No need for that. Now that you're here, you might as well join me. */ + t18.6
	+ ~Gender(Player1,FEMALE)~ + @1356 /* No need for that. Now that you're here, you might as well join me. */ + t18.7
	++ @1357 /* Um, yes. Yes, I would. Knocking, Isra. It can't be that hard a concept. */ + t18.8

APPEND RH#ISRJ

IF ~~ t18.1
 SAY @1358 /* Of course. I would be more than happy to. Here it is, my <PRO_LADYLORD>. */
IF ~Gender(Player1,MALE)~ + t18.9
IF ~Gender(Player1,FEMALE)~ + t18.10
END

IF ~~ t18.2
 SAY @1359 /* Not about our own bodies, certainly, though I imagine it would be odd for chivalry to only run one way. */
 = @1360 /* Here, allow me to get you a towel to wrap around your waist, at least. */
IF ~~ + t18.9
END

IF ~~ t18.3
 SAY @1361 /* 'Tis a matter of chivalry, not faith. To walk upon a woman in such a state... were I a man, I imagine I would be too mortified to speak with you for a tenday. */
 = @1362 /* Luckily I am not. Here, allow me to get you a towel, at least. */
IF ~~ + t18.10
END

IF ~~ t18.4
 SAY @1363 /* 'Tis a matter of chivalry, my love. To be so careless... well, I suppose I would have laughed it off easily enough had our positions been reversed. */
 = @1360 /* Here, allow me to get you a towel to wrap around your waist, at least. */
IF ~~ + t18.9
END

IF ~~ t18.5
 SAY @1364 /* 'Tis a matter of chivalry, my love. To be so careless... were I a man, I imagine I would be too mortified to speak with you for a tenday. */
 = @1362 /* Luckily I am not. Here, allow me to get you a towel, at least. */
IF ~~ + t18.10
END

IF ~~ t18.6
 SAY @1365 /* As tempting as your offer is, I'm afraid I prefer cleaner water. Here, let me get you a towel to wrap around your waist, at least. */
IF ~~ + t18.9
END

IF ~~ t18.7
 SAY @1366 /* As tempting as your offer is, I'm afraid I prefer cleaner water. Here, let me get you a towel to wrap around yourself, at least. */
IF ~~ + t18.10
END

IF ~~ t18.8
 SAY @1367 /* I... yes. Yes, of course. I'm sorry. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t18.9
 SAY @1368 /* (laugh) I seem to have forgotten what I came here to say in the first place, though that isn't terribly surprising. You cut a fine enough figure when fully dressed. Like this... hmm. Perhaps I should get you a tunic as well. */
	++ @1369 /* I would appreciate it. */ + t18.11
	++ @1370 /* You're just looking for excuses to touch me now, aren't you? */ + t18.12
	++ @1371 /* I'd be happier helping you out of your own clothing, you know. */ + t18.13
	++ @1372 /* Isra, I don't need the help. This is awkward enough as it is. */ + t18.8
END

IF ~~ t18.10
 SAY @1373 /* (laugh) I seem to have forgotten what I came here to say in the first place, though that isn't terribly surprising. Perhaps... hmm. I might as well help you with those laces while I'm here. */
	++ @1369 /* I would appreciate it. */ + t18.11
	++ @1370 /* You're just looking for excuses to touch me now, aren't you? */ + t18.12
	++ @1371 /* I'd be happier helping you out of your own clothing, you know. */ + t18.13
	++ @1372 /* Isra, I don't need the help. This is awkward enough as it is. */ + t18.8
END

IF ~~ t18.11
 SAY @1374 /* I had hoped you would. I-- */
IF ~~ + t18.14
END

IF ~~ t18.12
 SAY @1375 /* I cannot say that isn't one of my motives, but-- */
IF ~~ + t18.14
END

IF ~~ t18.13
 SAY @1376 /* Would you, now? Perhaps in a little while, but for the moment-- */
IF ~~ + t18.14
END

IF ~~ t18.14
 SAY @1377 /* Oh. This scar, <CHARNAME>... is it new? I'm quite certain I've never seen it before. */
	++ @1378 /* I didn't think your touch could heal scarring. */ + t18.15
	++ @1379 /* Scar!? What scar? */ + t18.16
	++ @1380 /* I've picked up so many by now, it's hard to remember. */ + t18.17
	++ @1381 /* It's funny what well placed clothing can hide. */ + t18.18
END

IF ~~ t18.15
 SAY @1382 /* No, it can't, though there are salves that can fade it further, if you wish it, but... you do wear it well enough. */
IF ~~ + t18.19
END

IF ~~ t18.16
 SAY @1383 /* On your shoulder. It isn't that terrible, I assure you. You wear it quite well, actually. */
IF ~~ + t18.19
END

IF ~~ t18.17
 SAY @1384 /* I've never found permanent scarring easy to forget, though this one... you do wear it well enough. */
IF ~~ + t18.19
END

IF ~~ t18.18
 SAY @1385 /* Oh, I am as skilled at that as anyone. This one, though... you do wear it well enough. */
IF ~~ + t18.19
END

IF ~~ t18.19
 SAY @1386 /* Were it your face, I might have felt inclined to heal it immediately, but here... mayhap there is something to be said for scarring as a cosmetic choice. */ 
	++ @1387 /* By the gods, Isra, have you lost your mind entirely? */ + t18.20
	+ ~Gender(Player1,MALE)~ + @1388 /* I never guessed that you'd be the type to go for a man with scars. */ + t18.21
	+ ~Gender(Player1,FEMALE)~ + @1389 /* I never would have guessed that you appreciated scars at all. */ + t18.21
	++ @1390 /* It wasn't exactly a choice, Isra. */ + t18.22	
	++ @1391 /* If every scar gets me this sort of attention, I might be inclined to collect more. */ + t18.23
END

IF ~~ t18.20
 SAY @1392 /* I'm sorry. I shouldn't be quite so lighthearted, but... I find it odd, sometimes. */
IF ~~ + t18.24
END

IF ~~ t18.21
 SAY @1393 /* I usually don't, though... I find it odd, sometimes. */
IF ~~ + t18.24
END

IF ~~ t18.22
 SAY @1394 /* No, you're right. Perhaps I shouldn't be quite so lighthearted about it, but... I find it odd, sometimes. */
IF ~~ + t18.24
END

IF ~~ t18.23
 SAY @1395 /* Oh, I wouldn't go quite that far, though... I find it odd, sometimes. */
IF ~~ + t18.24
END

IF ~~ t18.24
 SAY @1396 /* 'Tis no great secret that Sunites are... unenthusiastic about blemishes and scars. Whether they actually detract from beauty, though... everything in this world is flawed in some way or another. Perhaps that makes less of a difference than we think. */
 = @1397 /* Or perhaps you've so beguiled me that these things no longer seem to matter at all. */
	++ @1398 /* Beguiling, am I? Not half so much as you are when you smile at me like that. */ + t18.30
	++ @1399 /* A simple scar or two shouldn't matter anyway. */ + t18.25
	+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL)~ + @1400 /* If charm spells worked on you, I'd be sorely tempted sometimes. */ + t18.26
	+ ~Gender(Player1,MALE)~ + @1401 /* Well, you know what they say about dashing young gentlemen. */ + t18.27
	+ ~Gender(Player1,FEMALE)~ + @1402 /* Well, you know what they say about womanly charms. */ + t18.27
	++ @1403 /* So I needn't worry about you losing interest if I ever get scarred for real? */ + t18.28
	+ ~Race(Player1,HALFORC)~ + @1404 /* Beguiling? That isn't a word a half-orc hears very often. */ + t18.29
	+ ~OR(2) Race(Player1,DWARF) Race(Player1,GNOME)~ + @1405 /* Beguiling? That isn't a sentiment a <PRO_RACE> hears from a human very ofen. */ + t18.29
	+ ~Race(Player1,HALFLING)~ + @1406 /* Beguiling, am I? A halfling normally hears "adorable" instead. */ + t18.29
END

IF ~~ t18.25
 SAY @1407 /* And they don't. Not really. What matters is you and me, and-- */
IF ~~ + t18.30
END

IF ~~ t18.26
 SAY @1408 /* Would you, my <PRO_LADYLORD>? Really, 'twould be a waste of a spell anyway. I-- */
IF ~~ + t18.30
END

IF ~~ t18.27
 SAY @1409 /* Aye, indeed. Not quite as much as they should in your case, that is. I-- */
IF ~~ + t18.30
END

IF ~~ t18.28
 SAY @1410 /* I do hope you're jesting now, my <PRO_LADYLORD>. There was never a danger of that, as I'm sure you know. I-- */
IF ~~ + t18.30
END

IF ~~ t18.29
 SAY @1411 /* I did not mispeak, my <PRO_LADYLORD>. Not where matters of beauty are concerned. You-- */
IF ~~ + t18.30
END

IF ~~ t18.30
 SAY @1412 /* (laugh) Oh, listen to us, <CHARNAME>... what an odd way this is to hold a conversation, with you half dressed, and me wearing... well, not a great deal more, truth be told. */
 = @1413 /* Perhaps we ought to do something about that. */
	+ ~Global("rh#IsraSex","GLOBAL",1)~ + @1414 /* As much as I enjoy scanty Sunite fashion... yes, I might enjoy you out of it even more. */ + t18.31
	+ ~!Global("rh#IsraSex","GLOBAL",1)~ + @1414 /* As much as I enjoy scanty Sunite fashion... yes, I might enjoy you out of it even more. */ + t18.32
	++ @1415 /* I should get dressed. I'd like to head back to the common room for a while longer. */ + t18.33
	+ ~Global("rh#IsraSex","GLOBAL",1)~ + @1416 /* Very subtle, Isra. You hardly need to seduce me, you know. */ + t18.34
	+ ~!Global("rh#IsraSex","GLOBAL",1)~ + @1417 /* Are you asking-- of course you are. I'd love to spend the night with you. */ + t18.35
	++ @1418 /* I'm not in the mood for anything more than a good night's rest, I'm afraid. */ + t18.36
END

IF ~~ t18.31
 SAY @1419 /* Would you? I think that can be arranged. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t18.32
 SAY @1419 /* Would you? I think that can be arranged. */
IF ~~ DO ~SetGlobal("rh#IsraSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t18.33
 SAY @1420 /* Then I suppose I shall see you in the morn. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t18.34
 SAY @1421 /* I still enjoy it from time to time... but come, I mean to retire now. You are welcome to join me, of course. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t18.35
 SAY @437 /* I was hoping you would. */
IF ~~ DO ~SetGlobal("rh#IsraSex","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ t18.36
 SAY @1422 /* I see. Well, I cannot fault you for that. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 19. in Athkatla, outdoors
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",38)~ THEN RH#ISRJ t19
@1423 /* Sometimes I wish we had a temple of our own within Athkatla. The Heartwarders in Crimmor have been talking about establishing one for years, but somehow those plans always fall through. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksMessengerTimer","GLOBAL",2700)~
END
	++ @1424 /* That is strange. Isn't the Sunite faith prevalent here? */ + t19.1
	++ @1425 /* Do they really get distracted that easily? */ + t19.2
	++ @1426 /* You could always just move in with the Lathandrites. */ + t19.3
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @1427 /* The Athkatlan nobility is frivolous enough as it is. */ + t19.4	
	++ @1428 /* I don't have the time for this right now, Isra. */ + t19.exit
	
APPEND RH#ISRJ

IF ~~ t19.1
 SAY @1429 /* Prevalent enough, aye. */ 
IF ~~ + t19.5
END

IF ~~ t19.2
 SAY @1430 /* They are enthusiastic people. And distractions are... all too common. */
IF ~~ + t19.5
END

IF ~~ t19.3
 SAY @1431 /* We... do. More often than you might think. But that is hardly the same. */
IF ~~ + t19.5
END

IF ~~ t19.4
 SAY @1432 /* That is not our doing. Sune does not encourage empty frivolity any more than Waukeen favors blind greed. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ t19.exit
 SAY @1129 /* As you wish. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t19.5
 SAY @1433 /* Several years ago, one of our high priestesses was in the process of getting government approval of the plans for a new temple. I am... not quite certain what happened. */
 = @1434 /* We left for campaign at the beginning of Mirtul, right after the Greengrass festivities, and when we returned, the high priestess was gone. She had apparently run off with a merchant from Berdusk or Iriaebor or Priapurl. Nobody could decide exactly which city. */
 = @1435 /* Much of the rest of the hierarchy had been inexplicably overturned as well, and by the time the new leadership managed to find the plans, the Athkatlan property that was being considered was no longer available. */
 = @1436 /* That... happens more often than I would like, I'm afraid. */
	++ @1437 /* I assume the Ruby Rose has a better relationship with structure. */ + t19.6
	++ @1438 /* Temples are fairly unimportant in the greater scheme of things anyway. */ + t19.7
	++ @1439 /* How do they ever get anything done at all? */ + t19.8
	++ @1440 /* Tell me, which was worse? The disorganization itself or the fact that nobody else could understand why it bothered you afterwards? */ + t19.9
END 

IF ~~ t19.6
 SAY @1441 /* To say the least. We're more casual about it than some orders, but not quite as casual as that. */
IF ~~ + t19.10
END

IF ~~ t19.7
 SAY @1442 /* I am not sure that I would agree. */
IF ~~ + t19.10
END

IF ~~ t19.8
 SAY @1443 /* I... truly, I couldn't answer that. I don't know. */
IF ~~ + t19.10
END

IF ~~ t19.9
 SAY @1444 /* The lack of understanding, I think. */
IF ~~ + t19.10
END

IF ~~ t19.10
 SAY @1445 /* I do not mind the disorganization. Not overly so, at least. One can grow accustomed to it over time, but other things... */
 = @1446 /* Other things are harder to ignore. Especially in Athkatla. We could be doing more here, <CHARNAME>. I am not sure why we are not. */
	++ @1447 /* From the outside, it's hard to say what is and isn't being done. */ + t19.11
	++ @1448 /* What more would you expect of the church? */ + t19.12
	++ @1449 /* Probably because that would involve a lot of hard work. */ + t19.13
	++ @1450 /* This city is unsalvageable, no matter how organized the effort. */ + t19.14
END

IF ~~ t19.11
 SAY @1451 /* Not as difficult as that. */
IF ~~ + t19.15
END

IF ~~ t19.12
 SAY @1452 /* I would expect more conviction. */
IF ~~ + t19.15
END

IF ~~ t19.13
 SAY @1453 /* I... I wish I could find fault with your cynicism. */
IF ~~ + t19.15
END

IF ~~ t19.14
 SAY @1454 /* That may prove true, but... I do not care for the thought. */
IF ~~ + t19.15
END
END

CHAIN RH#ISRJ t19.15
@1455 /* I am not certain that you realize exactly how popular the Firehair's faith is within this country, especially amongst the wealthy. Even in Athkatla, as unlikely as that might seem. */
= @1456 /* How a group of people who claim to worship love could be so blind to it, so callous and unconcerned... some churches wouldn't accept such behavior from their followers. We... well, clearly we do. */
== RH#ISRJ IF ~Global("rh#IsraSunitePC","GLOBAL",1)~ THEN @1457 /* You would know more than I would if matters are better further north, but here in Amn... sometimes I think that they can hardly be any worse. */
== RH#ISRJ @1458 /* It may be that we worry that pushing too hard would drive our richest patrons out of the church, but I don't think that much of an excuse. */
END
	++ @1459 /* The Sunite church couldn't function if it didn't have any gold. */ + t19.16
	++ @1460 /* Not everyone can be expected to be devoutly religious. */ + t19.17
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @1461 /* Have you ever raised this concern with your clergy? */ + t19.18
	+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,PALADIN_ALL) Global("rh#IsraSunitePC","GLOBAL",1)~ + @1462 /* Have you ever raised this concern with the clergy? */ + t19.18
	+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) Global("rh#IsraSunitePC","GLOBAL",1)~ + @1463 /* Have you ever raised this concern with anyone else in the clergy? */ + t19.19
	+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,PALADIN_ALL)~ + @1464 /* You're actually jealous of the more orderly churches' discipline, aren't you? */ + t19.20
	+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL)~ + @1465 /* You can't have it both ways, Isra. You can't suddenly expect discipline from a faith that largely rejects it. */ + t19.21
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @1466 /* The responsibility isn't entirely yours. The Lathandrites don't seem capable of doing that much with these people either. */ + t19.22
	+ ~Global("rh#IsraSunitePC","GLOBAL",1)~ + @1467 /* The responsibility isn't entirely ours. The Lathandrites don't seem capable of doing that much with these people either. */ + t19.22
	
APPEND RH#ISRJ

IF ~~ t19.16
 SAY @1468 /* Even so... I am sure we could challenge our patrons more than we do. */ 
IF ~~ + t19.23
END

IF ~~ t19.17
 SAY @1469 /* I do not ask for devoutness. Mere sincerity would suffice. */
IF ~~ + t19.23
END

IF ~~ t19.18
 SAY @1470 /* I haven't. Not yet, at least. It has been difficult enough to admit it even to myself. */
IF ~~ + t19.23
END

IF ~~ t19.19
 SAY @1471 /* Aside from yourself? No. Not yet, at least. It has been difficult enough to admit it even to myself. */
IF ~~ + t19.23
END

IF ~~ t19.20
 SAY @1472 /* I... I cannot really deny it. Sometimes I suppose I am. */
IF ~~ + t19.23
END

IF ~~ t19.21
 SAY @1473 /* I do not ask for that much, <CHARNAME>. */
IF ~~ + t19.23
END

IF ~~ t19.22
 SAY @1474 /* Then perhaps there is no hope whatsoever? That isn't exactly a comforting thought. */
IF ~~ + t19.23
END

IF ~~ t19.23
 SAY @1475 /* 'Tis no secret at all what other faiths think of us. Vain, frivolous, flighty... the list goes on and on. Most of those criticisms are ignorant nonsense, but this one... I hate that it is actually true. */
	++ @1476 /* Nobody is perfect, Isra. At least, no mortal is. */ + t19.24
	++ @1477 /* There are worse criticisms that can be leveled against a church. */ + t19.25
	++ @1478 /* I didn't realize that those stereotypes bothered you. */ + t19.26
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @1479 /* I would never say any of those things about you. */ + t19.27
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @1480 /* It's hardly the only one that's true. */ + t19.28
	+ ~Global("rh#IsraSunitePC","GLOBAL",1)~ + @1481 /* We can't be expected to work miracles. We do what we can. */ + t19.29
END

IF ~~ t19.24
 SAY @1482 /* That much I can't deny. */
IF ~~ + t19.30
END

IF ~~ t19.25
 SAY @1483 /* Perhaps, though that hardly serves as an excuse. */
IF ~~ + t19.30
END

IF ~~ t19.26
 SAY @1484 /* They bother me less than they once did, but... yes, they do. How could they not? */
IF ~~ + t19.30
END

IF ~~ t19.27
 SAY @1485 /* I didn't think that you would, but I'm glad to hear it regardless. */
IF ~~ + t19.30
END

IF ~~ t19.28
 SAY @1486 /* I... see. I hadn't realized that you felt that way. Forgive me if I refrain from discussing such things with you again. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t19.29
 SAY @1487 /* I know, <CHARNAME>. At least, I would like to believe as much. */
IF ~~ + t19.30
END

IF ~~ t19.30
 SAY @1488 /* I am not sure that it is fair of me to trouble you with this type of question. 'Tis to the high priestesses in Crimmor that I should be complaining instead, but... thank you, <CHARNAME>. */
 = @1489 /* I could not say how long I have been pretending that I did not feel like this. To finally admit it... 'tis something of a relief. */
 	++ @1490 /* You're welcome, Isra. */ + t19.31
	++ @1491 /* Thank you for trusting me enough to share it. */ + t19.31
	++ @1492 /* I can imagine that it would be. */ + t19.32
	++ @1493 /* That's part of what I'm here for. */ + t19.31
	++ @1494 /* I take it you don't want me telling this to everyone we meet. */ + t19.33
END 
 
IF ~~ t19.31
 SAY @1495 /* (smile) You are a very patient <PRO_MANWOMAN>, <CHARNAME>. That is rarer than you may realize. */
IF ~~ EXIT
END

IF ~~ t19.32
 SAY @1496 /* (smile) To say the least, aye. */
IF ~~ EXIT
END

IF ~~ t19.33
 SAY @1497 /* Ah... no. No, I would appreciate it if you did not. */
IF ~~ EXIT
END
END

// 20. city only

BEGIN RH#ISME

CHAIN IF ~Global("rh#IsraMessenger","GLOBAL",1)~ THEN RH#ISME messenger
@1498 /* Isra Ghadir? I have a message for you from Lady Corinna Ghadir. */
== RH#ISRJ @1499 /* From mother? Is she-- is something the matter? */
== RH#ISME @1500 /* Not that I know of, my lady. She merely wants you to know that she is in the city on business. She is staying in the Mithrest. */
== RH#ISRJ @1501 /* I see. Thank you very much, sir. */
DO ~SetGlobal("rh#IsraMessenger","GLOBAL",2)~
EXIT

CHAIN IF ~Global("rh#IsraTalks","GLOBAL",40)~ THEN RH#ISRJ t20
@1502 /* My apologies for the delay. Mother... well, business does bring her into Athkatla from time to time, though I suspect that her main reason for coming here now is Rana. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1503 /* Is she a merchant herself? */ + t20.1
	++ @1504 /* You knew that was likely to happen eventually. */ + t20.2
	++ @1505 /* Do you want to visit her while she's around? */ + t20.3
	++ @1506 /* Could we move on now, then? */ + t20.4

APPEND RH#ISRJ

IF ~~ t20.1
 SAY @1507 /* Aye, amongst other things. If we can find the time for it, I would like to visit her. */
IF ~~ + t20.5
END

IF ~~ t20.2
 SAY @1508 /* And I can't say that I'm terribly upset about it. If we can find the time, however, I would like to visit her. */
IF ~~ + t20.5
END

IF ~~ t20.3
 SAY @1509 /* I would, if we have the time for it. */
IF ~~ + t20.5
END

IF ~~ t20.4
 SAY @85 /* Aye, of course. */
IF ~~ DO ~SetGlobal("rh#IsraTalks","GLOBAL",45)~ EXIT
END

IF ~~ t20.5
 SAY @1510 /* I'm sure that she would love to meet you. Especially after the stress of Rana's legal predicaments, I expect that some good news would be very welcome right now, and you would certainly qualify as that. */
	+ ~Gender(Player1,MALE)~ + @1511 /* You're sure she'd approve of me? */ + t20.6
	+ ~Gender(Player1,FEMALE)~ + @1511 /* You're sure she'd approve of me? */ + t20.7
	++ @1512 /* I don't see how meeting one daughter's lover makes up for another one being in prison. */ + t20.8
	++ @1513 /* Meeting your parents? Isn't that something of a... big step? */ + t20.9
	++ @1514 /* I'd be happy to drop by the Mithrest Inn and see her. */ + t20.10
END

IF ~~ t20.6
 SAY @1515 /* Don't look so uncertain, <CHARNAME>. My mother is a Sunite also, and you are handsome enough for any of us. */
IF ~~ + t20.10
END

IF ~~ t20.7
 SAY @1516 /* Don't look so uncertain, <CHARNAME>. My mother is a Sunite also, and you are beautiful enough for any of us. */
IF ~~ + t20.10
END

IF ~~ t20.8
 SAY @1517 /* It doesn't, though my mother is a Sunite also. Such news always means a great deal for us. */
IF ~~ + t20.10
END

IF ~~ t20.9
 SAY @1518 /* Don't look so uncertain, <CHARNAME>. My mother is a Sunite also, and very flexible about such things. */
IF ~~ + t20.10
END

IF ~~ t20.10
 SAY @1519 /* If you do meet her, of course, 'twill only be a matter of time before my father finds out as well, and he... whatever his thoughts are, he is unlikely to be very quiet about them. */
	++ @1520 /* I'd hate to be another point of contention between you two. */ + t20.11
	++ @1521 /* You don't expect him to disinherit you over it, I hope? */ + t20.12
	++ @1522 /* I'm not keen on being some dark secret for you. */ + t20.13
	++ @1523 /* You really do fight over literally everything, don't you? */ + t20.14
END

IF ~~ t20.11
 SAY @1524 /* You shouldn't worry so. 'Tis nothing out of the ordinary. */
IF ~Gender(Player1,MALE)~ + t20.15
IF ~Gender(Player1,FEMALE)~ + t20.16
END

IF ~~ t20.12
 SAY @1525 /* If he hasn't disowned Rana yet... no, I doubt that very much. */
IF ~Gender(Player1,MALE)~ + t20.15
IF ~Gender(Player1,FEMALE)~ + t20.16
END

IF ~~ t20.13
 SAY @1526 /* And I have no intention of making you one. */
IF ~Gender(Player1,MALE)~ + t20.15
IF ~Gender(Player1,FEMALE)~ + t20.16
END

IF ~~ t20.14
 SAY @1527 /* We are not quite as bad as that. I hope. */
IF ~Gender(Player1,MALE)~ + t20.15
IF ~Gender(Player1,FEMALE)~ + t20.16
END

IF ~~ t20.15
 SAY @1528 /* I do expect a good deal of hounding, of course. He has wanted me married off for years. To whom may be of little enough concern at this point. */
 = @1529 /* He dreamed of Calishite noblemen once, but that is... unlikely, to put it mildly. More so now than ever. */
	++ @1530 /* Calishite noblemen? That's a very specific dream. */ + t20.17
	++ @1531 /* If it's a wedding he wants, I wouldn't mind obliging him. */ + t20.18
	++ @1532 /* No Calishite lord could ever hope to deserve you. */ + t20.19
	+ ~Race(Player1,HUMAN) !Class(Player1,PALADIN)~ + @1533 /* I can't imagine he'll be happy that I'm a northerner. */ + t20.20
	+ ~Class(Player1,PALADIN) !Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1533 /* I can't imagine he'll be happy that I'm a northerner. */ + t20.21
	+ ~Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1533 /* I can't imagine he'll be happy that I'm a northerner. */ + t20.22
	+ ~Race(Player1,ELF)~ + @1534 /* I can't imagine he'll be happy that I'm an elf. */ + t20.20
	+ ~!Race(Player1,ELF) !Race(Player1,HUMAN)~ + @1535 /* I can't imagine he'll be happy that I'm a <PRO_RACE>. */ + t20.20
	+ ~!Class(Player1,PALADIN)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.23
	+ ~Class(Player1,PALADIN) !Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.24
	+ ~Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.25
END

IF ~~ t20.16
 SAY @1537 /* I doubt that he will be overly pleased to find me with another woman again, of course. He has always wanted a proper, traditional Calishite marriage for me, like his sisters had. */
 = @1538 /* His daughters... well, we have all been less obliging. */
	++ @1539 /* I think I'm going to get along better with your mother. */ + t20.26
	++ @1540 /* I really can't see you in a traditional Calishite marriage. */ + t20.27
	++ @1541 /* I can't say that I regret that at all. */ + t20.28
	++ @1542 /* You've always seemed obliging enough to me. */ + t20.29
	+ ~!Class(Player1,PALADIN)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.23
	+ ~Class(Player1,PALADIN) !Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.24
	+ ~Global("rh#IsraRedKnightPC","GLOBAL",1)~ + @1536 /* I'm sure I'll be able to win him over eventually. */ + t20.25
END

IF ~~ t20.17
 SAY @1543 /* And not one without cause, I'm afraid. */
IF ~~ + t20.30
END	

IF ~~ t20.18
 SAY @1544 /* (laugh) Should I expect a two front war on that issue, then? */
IF ~~ + t20.30
END	

IF ~~ t20.19
 SAY @1545 /* (laugh) They are not all terrible, though even the best of them... */
IF ~~ + t20.30
END	

IF ~~ t20.20
 SAY @1546 /* I couldn't really say. I have never actually taken one as a lover before. */
IF ~~ + t20.30
END	

IF ~~ t20.21
 SAY @1547 /* I couldn't really say. You are a paladin, at least... that usually counts for something with him. */
IF ~~ + t20.30
END	

IF ~~ t20.22
 SAY @1548 /* I couldn't really say. He is likely to appreciate your devotion to the Red Knight. At my own expense, probably. */
IF ~~ + t20.30
END	

IF ~~ t20.23
 SAY @1549 /* You might be able to. I certainly hope so, at least. */
IF ~~ + t20.30
END	

IF ~~ t20.24
 SAY @1550 /* I certainly hope so. You are a paladin, at least. That usually counts for something with him. */
IF ~~ + t20.30
END	

IF ~~ t20.25
 SAY @1551 /* I certainly hope so. He is likely to appreciate your devotion to the Red Knight. At my own expense, probably. */
IF ~~ + t20.30
END	

IF ~~ t20.26
 SAY @1552 /* Most people do. */
IF ~~ + t20.30
END	

IF ~~ t20.27
 SAY @1553 /* I... very nearly was in one once, I must admit. */
IF ~~ + t20.30
END	

IF ~~ t20.28
 SAY @1554 /* (laugh) Nor do I. */
IF ~~ + t20.30
END

IF ~~ t20.29
 SAY @1555 /* (laugh) Where you are concerned, mayhap. */
IF ~~ + t20.30
END	

IF ~~ t20.30
 SAY @1556 /* The last time my father was truly pleased with me, he had let himself believe that I was about to marry well and settle down. When that... collapsed... well, I do not think that he ever entirely forgave me. */
 	++ @1557 /* You were going to get married? You're barely more than twenty! */ + t20.31
	++ @1558 /* I can't see you being happy settled down. */ + t20.32
	++ @1559 /* This certainly sounds like a promising story. */ + t20.33
	++ @1560 /* You were betrothed once and never thought to tell me? */ + t20.34
END

IF ~~ t20.31
 SAY @1561 /* For those of us with Calishite blood, 'tis more common than you realize. And it often ends as poorly as you might imagine. */
IF ~~ + t20.35
END	

IF ~~ t20.32
 SAY @1562 /* Neither can I, and those particular circumstances... they left much to be desired. */
IF ~~ + t20.35
END	

IF ~~ t20.33
 SAY @1563 /* Forgive me for not sharing that opinion. I seldom feel comfortable discussing past affairs when they end on good terms. When they do not... */
IF ~~ + t20.35
END	

IF ~~ t20.34
 SAY @1564 /* 'Twas less serious than it sounds, <CHARNAME>. You should know by now that I seldom feel comfortable discussing past affairs when they end on good terms. When they do not... */
IF ~~ + t20.35
END	
 
IF ~~ t20.35
 SAY @1565 /* I'm sorry. I would share the tale, but thinking of my father never puts me in the most charitable of moods, and this story... he deserves better than to be slandered in a moment of spite. */
IF ~~ EXIT
END
END

// 21.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",42)~ THEN RH#ISRJ t21
@1566 /* I believe I promised you a story, <CHARNAME>. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",2700)~
END
	++ @1567 /* About that torrid romance of yours? */ + t21.1
	++ @1568 /* You don't need to feel obligated to share it, Isra. */ + t21.2
	++ @1569 /* That depends. How rehearsed is it going to be by now? */ + t21.3
	++ @1570 /* I really don't want to hear it. */ + t21.exit

APPEND RH#ISRJ

IF ~~ t21.1
 SAY @1571 /* (laugh) 'Twas hardly torrid, though mayhap that is a matter of opinion. */
IF ~~ + t21.5
END

IF ~~ t21.2
 SAY @1572 /* 'Twould hardly be fair of me to comment on it and then remain silent, though I thank you for your compassion. */
IF ~~ + t21.5
END

IF ~~ t21.3
 SAY @1573 /* 'Twas hardly a matter of rehearsal. I simply needed some time to clear my head. Now, would you care to hear it or not? */
	++ @1574 /* I'm sorry. I would, please. */ + t21.5
	++ @1575 /* Fine. Go ahead, if you must. */ + t21.4
	++ @1576 /* I really don't want to. */ + t21.exit
END

IF ~~ t21.4
 SAY @1577 /* ... I've no desire to fight over this, <CHARNAME>. Mayhap 'twould be better simply to move on. */
IF ~~ EXIT
END

IF ~~ t21.exit
 SAY @1578 /* I see. If you would rather I kept my secrets... very well, then. */
IF ~~ EXIT
END

IF ~~ t21.5
 SAY @1579 /*  I was... just under seventeen, as I recall. A child, really, with her head too full of fanciful stories. You must understand that when I was still in training, the Radiant Heart's armies would ride through Crimmor each spring. They were so similar and yet so different... that was always a fascinating mix for me. */
 = @1580 /* When I met one of their squires at a tourney... 'twas love at first sight for both of us. Or so we thought. A Tyrran originally from Memnon... father liked that part as well. Most expatriated Calishites can only dream of marrying back into one of the ancient families. */
 	++ @1581 /* I can't really see you as a starry eyed damsel. */ + t21.6
 	++ @1582 /* You did once mention having history with the Church of Tyr. */ + t21.7
 	++ @1583 /* I didn't realize Tyr was even worshipped in Calimshan. */ + t21.8
 	++ @1584 /* Love at first sight, Isra? I didn't think you were into that. */ + t21.9
 END
 
IF ~~ t21.6
 SAY @1585 /* I was young, <CHARNAME>. And foolish. */
IF ~~ + t21.10
END

IF ~~ t21.7
 SAY @1586 /* Aye... and one that was not entirely pleasant. */
IF ~~ + t21.10
END

IF ~~ t21.8
 SAY @1587 /* Aye, given how brutal that country tends to be, he has a larger following than you might think. */
IF ~~ + t21.10
END
 
IF ~~ t21.9
 SAY @1588 /* I am not, <CHARNAME>. This is part of the reason why. */
IF ~~ + t21.10
END  

IF ~~ t21.10 
 SAY @1589 /* Roshan and I... our relationship was always complicated by circumstance. Being squired to different orders, we seldom saw each other in person. Sir Evendur thought I was mad; Roshan's mentor... I cannot imagine that he was any happier. */
 = @1590 /* Naturally we decided that the hardship only added to our love. 'Twas all highly romanticized. Too much so. We wrote letters for the most part. Elegant, emotional, devoid of any real content. */
 = @1591 /* I would show you them, but I... ah, I'm afraid I burnt them all. */
 	++ @1592 /* I doubt I would even want to look at them. */ + t21.11
 	++ @1593 /* That was very melodramatic of you. */ + t21.12
 	++ @1594 /* That's probably for the best. */ + t21.13
 	++ @1595 /* Why wouldn't your mentors have been happy about it? */ + t21.14
END

IF ~~ t21.11
 SAY @1596 /* Probably not. I would not want to look at them again anyway. */
IF ~~ + t21.15
END  

IF ~~ t21.12
 SAY @1597 /* I was seventeen, <CHARNAME>. Melodrama was an art to me. */
IF ~~ + t21.15
END

IF ~~ t21.13
 SAY @1598 /* Perhaps. I do like to keep tokens, but that... no, I imagine the memory itself is enough. */
IF ~~ + t21.15
END 

IF ~~ t21.14
 SAY @1599 /* One adolescent paladin can be willful enough, <CHARNAME>. Two, however... would that I had heeded the warnings. */ 
IF ~~ + t21.15
END  

IF ~~ t21.15
 SAY @1600 /* Courtly romance is a strange thing. I am not quite certain why so many of us are as susceptible to it as we are. I have discussed it with my clergy at some length, though no two clerics have ever given me the same answer. */
 = @1601 /* One priest in particular, though... he suspected that 'twas the one place in a paladin's life where the forbidden became the ideal instead. As uneasy as that possibility is, I cannot help but think there is some truth to it. */
 	+ ~!Class(Player1,PALADIN_ALL)~ + @1602 /* One chance to break all the rules you set for yourselves? */ + t21.16
  	+ ~Class(Player1,PALADIN_ALL)~ + @1603 /* One chance to break all the rules we set for ourselves? */ + t21.16
 	++ @1604 /* I can see why you're so much more careful with romance now. */ + t21.17
 	++ @1605 /* For you, perhaps. A Sunite should be in the minority. */ + t21.18
 	++ @1606 /* That sounds like an exceedingly dangerous fantasy. */ + t21.19
END

IF ~~ t21.16
 SAY @1607 /* Aye. There are reasons it seldom ends well. Roshan and I... */
IF ~~ + t21.20
END

IF ~~ t21.17
 SAY @1608 /* Aye. Roshan and I were luckier than most, though I wouldn't say that we escaped unscathed. */
IF ~~ + t21.20
END

IF ~~ t21.18
 SAY @1609 /* In this matter, I think we are all rather similar. Roshan and I... */
IF ~~ + t21.20
END

IF ~~ t21.19
 SAY @1610 /* Aye. 'Tis one of the most dangerous ones, I think, for all of its beauty. Roshan and I... */
IF ~~ + t21.20
END

IF ~~ t21.20
 SAY @1611 /* 'Twas a game to us, I think, though neither of us knew it at the time. We only really saw each other at tourneys, and I... I'm almost ashamed to admit it, but I enjoyed playing the role of the fair maiden at them too much to ever take up arms myself. */
 	++ @1612 /* You're only young once. It's better to take advantage of it. */ + t21.21
 	++ @1613 /* That has to be the vainest thing I have ever heard you say. */ + t21.22
 	++ @1614 /* Would it be uncouth of me to wonder just how long you remained a maiden? */ + t21.23
 	++ @1615 /* So you spent your time tying ribbons to his lances, did you? */ + t21.24
 END
 
IF ~~ t21.21
 SAY @1616 /* Thank you, <CHARNAME>. That is probably a more forgiving stance than I deserve. */
IF ~~ + t21.25
END
 
IF ~~ t21.22
 SAY @1617 /* I hope it is. I would hate to think that I've ever said anything worse. */
IF ~~ + t21.25
END

IF ~~ t21.23
 SAY @1618 /* It would, though in answer... not very long at all. */
IF ~~ + t21.25
END

IF ~~ t21.24
 SAY @1619 /* <CHARNAME>... I am going to pretend that that isn't the crudest euphemism I have heard all <DAYNIGHT>. */
IF ~~ + t21.25
END
 
IF ~~ t21.25
 SAY @1620 /* As I've said, we were very young. And very foolish. I know that Roshan has since worked at eliminating certain... tendencies that come with a childhood spent in Calimshan, but I did not push him nearly as much as I should have. */
 = @1621 /* We never communicated very well, never truly knew each other as well as we should have, and when the novelty finally wore off, he half expected me to enter some Calishite harem as his bride. Obviously that was never going to happen. */
 = @1622 /* Things were said. On both of our parts. Terrible things... things I wish never to repeat. 'Twas years before I was even willing to speak to him again. */
 	+ ~!Global("rh#IsraTyrranPC","GLOBAL",1)~ + @1623 /* Things that made you dislike the Church of Tyr in general. */ + t21.26
  	+ ~Global("rh#IsraTyrranPC","GLOBAL",1)~ + @1623 /* Things that made you dislike the Church of Tyr in general. */ + t21.27
 	++ @1624 /* So much for paladinic courtesy. */ + t21.28
 	++ @1625 /* Remind me never to get into a screaming match with you. */ + t21.29
 	+ ~Gender(Player1,FEMALE)~ + @1626 /* I can see why you prefer women now. */ + t21.30
 	++ @1627 /* I'm sorry you had to deal with that, Isra. */ + t21.31
END

IF ~~ t21.26
 SAY @1628 /* Aye. There is no excuse for it, but it is what it is. */
IF ~~ + t21.32
END

IF ~~ t21.27
 SAY @1629 /* Aye. I make no excuses for whatever prejudices I still have. If I have ever said anything insulting... I am sorry. */
IF ~~ + t21.32
END

IF ~~ t21.28
 SAY @1630 /* I know, <CHARNAME>. When we slip... well, 'tis seldom a pleasant sight to behold. */
IF ~~ + t21.32
END

IF ~~ t21.29
 SAY @1631 /* (laugh) My temper is far better now than it was then, <CHARNAME>. */
IF ~~ + t21.32
END

IF ~~ t21.30
 SAY @1632 /* (laugh) I prefer you, certainly. I hardly quarrel with every man in Amn, though. */
IF ~~ + t21.32
END

IF ~~ t21.31
 SAY @1633 /* I am not sure that I am, truth be told. It taught me things I needed to know. But thank you, regardless. */
IF ~~ + t21.32
END
 
IF ~~ t21.32
 SAY @1634 /* He apologized much later, I should add. We both did. We were always very good at apologizing. Much better than we were at anything else. */
 = @1635 /* And obviously I am still very good at that. I am almost inclined to apologize for subjecting you to this ugly tale at all, my <PRO_LADYLORD>. */
	++ @1636 /* You do apologize for almost everything else. */ + t21.33
	++ @1637 /* Don't apologize, Isra. I appreciate knowing. */ + t21.34
	++ @1638 /* Nobody seems to have died. It could be uglier by far. */ + t21.35
	++ @1639 /* You'd be better off apologizing for not sharing it sooner. */ + t21.36
END

IF ~~ t21.33
 SAY @1640 /* Aye... I suppose somtimes I do. */
IF ~~ EXIT
END

IF ~~ t21.34
 SAY @1641 /* I suppose I can understand that as well. */
IF ~~ EXIT
END

IF ~~ t21.35
 SAY @1642 /* Aye, that is true enough. */
IF ~~ EXIT
END

IF ~~ t21.36
 SAY @1643 /* Mayhap that is true. */
IF ~~ EXIT
END
END

// 22.
CHAIN IF ~Global("rh#IsraTalks","GLOBAL",44)~ THEN RH#ISRJ t22
@1644 /* The other day... I do not share that story very often. I seldom care to even think about it, truth be told. */ 
DO ~IncrementGlobal("rh#IsraTalks","GLOBAL",1)~
END
	++ @1645 /* I can't really blame you for that. */ + t22.1
	++ @1646 /* And you won't even tell me what you two said to each other. */ + t22.2
	++ @1647 /* You don't share anything that might make you look bad, do you? */ + t22.3
	++ @1648 /* I don't need to hear any more about it. Let's move on. */ + t22.4

APPEND RH#ISRJ

IF ~~ t22.1
 SAY @1649 /* Thank you, <CHARNAME>. */
IF ~~ + t22.5
END

IF ~~ t22.2
 SAY @1650 /* No... no, <CHARNAME>, I would rather not. */
IF ~~ + t22.5
END

IF ~~ t22.3
 SAY @1651 /* I shared it with you, <CHARNAME>. */
IF ~~ + t22.5
END

IF ~~ t22.4
 SAY @1652 /* If you would prefer it. */
IF ~~ EXIT
END

IF ~~ t22.5
 SAY @1653 /* I must admit, I did not expect to feel such relief at telling you even that much. 'Tis hardly the darkest of secrets, I know, but there is something terribly ironic in it regardless. */
 = @1654 /* So many assume that where romance is concerned, the Church of Sune has all of the answers... that the heart's mysteries are no great riddle to us. */
 = @1655 /* Obviously that is not true. */
	++ @1656 /* I don't think that anyone would expect perfection of you. */ + t22.6
	++ @1657 /* Few Sunites have the same complications that you do. */ + t22.7
	++ @1658 /* That only makes you more attractive, Isra, not less. */ + t22.8
	+ ~Global("rh#IsraSunitePC","GLOBAL",1)~ + @1659 /* There'd be little challenge in following our hearts if our goddess gave us the roadmap. */ + t22.9
END

IF ~~ t22.6
 SAY @1660 /* Anyone but myself? That may well be so. */
IF ~~ + t22.10
END
 
IF ~~ t22.7
 SAY @1661 /* Mayhap not, though certain complications may well be universal. */
IF ~~ + t22.10
END

IF ~~ t22.8
 SAY @43 /* (smile) Then that is something, at least. */
IF ~~ + t22.10
END

IF ~~ t22.9
 SAY @1662 /* (smile) Little challenge and less reward... perhaps that is true. */
IF ~~ + t22.10
END

IF ~~ t22.10
 SAY @1663 /* What a pair we are, my <PRO_LADYLORD>. What a pair indeed. Give me your hand, would you? I would like to keep you close for at least a moment longer. */
 = @1664 /* I used to think it strange, you know, the type of relationship that we have right now. Romance was always something to be saved for between quests. That made it brief and fleeting and seldom very real, but I thought it purer that way, untouched by violence and conflict. */
 = @1665 /* It never actually was, of course. Perhaps I should have realized that sooner. */
	++ @1666 /* And this relationship we have now? What of it? */ + t22.11
	++ @1667 /* I think you realized it about as soon as you needed to. */ + t22.12
	++ @1668 /* I never really used to believe in love at all. */ + t22.13
	++ @1669 /* It's never wise to try to barricade parts of your life away. */ + t22.14
END

IF ~~ t22.11
 SAY @1670 /* (smile) What of it, indeed. */
IF ~~ + t22.15
END

IF ~~ t22.12
 SAY @1671 /* (smile) Aye, I would have to agree with that. */
IF ~~ + t22.15
END

IF ~~ t22.13
 SAY @1672 /* (smile) I would never have taken you for such a skeptic. At least you have changed your mind in the time since. */
IF ~~ + t22.15
END

IF ~~ t22.14
 SAY @1673 /* (smile) No, and I do not intend to do so again. */
IF ~~ + t22.15
END

IF ~~ t22.15
 SAY @1674 /* You and I, <CHARNAME>... I have become far too accustomed to making the most of a short period of time. I have had to be. People tend to move in and out of my life quickly. Friends, lovers... I have learned not to plan for forever. */
 = @1675 /* It cannot be too much longer now until we get to the bottom of this. I hope... I hope you mean to remain in Amn afterward, if only for a time. */
	++ @1676 /* I would happily stay here for a lifetime, Isra. */ + t22.16
 	++ @1677 /* I think I can commit to at least that much. */ + t22.17
	++ @1678 /* You don't plan to follow me if I leave? */ + t22.18
	++ @1679 /* I doubt I'll know until after it happens. */ + t22.19
END

IF ~~ t22.16
 SAY @1680 /* It heartens me to hear you say as much, my love. */
IF ~~ + t22.20
END

IF ~~ t22.17
 SAY @1681 /* I certainly hope so, my love. */
IF ~~ + t22.20
END

IF ~~ t22.18
 SAY @1682 /* You know that the choice is not entirely mine, <CHARNAME>. */
IF ~~ + t22.20
END

IF ~~ t22.19
 SAY @1683 /* No, I suppose mere intentions mean little in the absence of facts. */
IF ~~ + t22.20
END
 
IF ~~ t22.20
 SAY @1684 /* For now, however, 'twould be best not to look quite so far into the future, I think. Imoen... every day we wait is a day we lose. I am growing worried about what we might discover when we find her. */
	++ @1131 /* So am I, I assure you. */ + t22.21
	++ @1132 /* We're moving as quickly as we can. */ + t22.22
	+ ~Global("rh#IsraWasInBGI","GLOBAL",1)~ + @1133 /* After a day with her in the party? A headache, more likely than not. */ + t22.23
	+ ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ + @1133 /* After a day with her in the party? A headache, more likely than not. */ + t22.24
END

IF ~~ t22.21
 SAY @1134 /* I can believe it. */
IF ~~ EXIT
END

IF ~~ t22.22
 SAY @1135 /* I know. Hopefully it will be quickly enough. */
IF ~~ EXIT
END

IF ~~ t22.23
 SAY @1136 /* Oh, <CHARNAME>. She is not quite as bad as that. */
IF ~~ EXIT
END

IF ~~ t22.24
 SAY @1137 /* If she is as much of one as my sister Alia, I shall be very impressed indeed. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Post-Spellhold Romance Track
// ---------------------------------------------

// 23.
CHAIN IF ~Global("rh#IsraSpellholdTalks","GLOBAL",2)~ THEN RH#ISRJ t23
@1685 /* <CHARNAME>, you-- I'm almost afraid to ask what he did to you. */ 
DO ~IncrementGlobal("rh#IsraSpellholdTalks","GLOBAL",1)~
END
	++ @1686 /* He... somehow he drained me of my soul. I don't know how. */ + t23.1
	++ @1687 /* And I'm almost afraid to tell you. He took my soul, Isra. */ + t23.1
	++ @1688 /* In case you didn't notice, we don't have time to discuss it. */ + t23.2

APPEND RH#ISRJ

IF ~~ t23.1
 SAY @1689 /* He... he did what? I-- */
 = @1690 /* I don't even know what to say. Such things... this shouldn't even be possible. */
	++ @1691 /* Don't look so stunned. I'm the one who should be panicking. */ + t23.4
	++ @1692 /* I think the evidence speaks for itself. */ + t23.5
	++ @1693 /* Irenicus didn't expect me to survive it either. */ + t23.6
	++ @1694 /* You're not making me feel better about anything. */ + t23.7
END

IF ~~ t23.2
 SAY @1695 /* Mayhap not, but I worry for you. You look... terrible. */
	++ @1696 /* I feel even worse. He took my soul, Isra. */ + t23.1
	++ @1697 /* I'm still alive. For a <PRO_MANWOMAN> whose soul was stolen, that's impressive enough. */ + t23.1
	++ @1698 /* Your concern is appreciated, but we need to move. Now. */ + t23.3
END

IF ~~ t23.3
 SAY @1699 /* Aye, if you insist. */
IF ~~ EXIT
END

IF ~~ t23.4
 SAY @1700 /* I am not panicking. Not yet, at least. I just have never heard of anybody surviving such a... a violation before. */
IF ~~ + t23.8
END 
 
IF ~~ t23.5
 SAY @1701 /* I know. I just have never heard of anybody surviving such a... a violation before. */
IF ~~ + t23.8
END

IF ~~ t23.6
 SAY @1702 /* As far as I know, nobody else ever has. */
IF ~~ + t23.8
END

IF ~~ t23.7
 SAY @1703 /* I'm sorry. I just have never heard of anybody surviving such a... a violation before. */
IF ~~ + t23.8
END

IF ~~ t23.8
 SAY @1704 /* To lose one's soul is to die instantly. That much is common knowledge, but you... you and Imoen, that is... */
 = @1705 /* Forgive me. I should not burden you with speculation. */
	++ @1706 /* This is hard enough as it is. Talking about it won't help. */ + t23.9
	++ @1707 /* If you have any theories, I'd rather know what they are. */ + t23.10
	++ @1708 /* You shouldn't. You should be glad that I'm simply alive. */ + t23.11
	++ @1709 /* Don't go silent on me, Isra. That's even more frightening. */ + t23.10
END

IF ~~ t23.9
 SAY @1710 /* Aye, I know. Once we have gotten through Bodhi's gauntlet... there will be time to talk then. */
IF ~~ EXIT
END

IF ~~ t23.10
 SAY @1711 /* You are no normal <PRO_RACE>. That much has always been obvious. I should like to let myself think that if Irenicus has not actually consumed your soul, you are still tenuously linked to it, but... I don't know. */
	++ @1712 /* You think it's because of what I am, don't you? */ + t23.12
	++ @1713 /* I had this vision when he took it. A vision involving Bhaal. */ + t23.13
	++ @1714 /* So much for religious training. */ + t23.14
	++ @1715 /* The "why" of it doesn't matter. What matters is getting it back. */ + t23.15
END

IF ~~ t23.11
 SAY @1716 /* Aye, and I am glad. More so than I could put into words. But you are right; we ought to move on now. */
IF ~~ + t23.16
END 

IF ~~ t23.12
 SAY @1717 /* 'Tis as likely as anything, I'm afraid. */
IF ~~ + t23.14
END 

IF ~~ t23.13
 SAY @1718 /* I... see. That is hardly surprising, though what it might mean, I could not say. */
IF ~~ + t23.14
END 

IF ~~ t23.14
 SAY @1719 /* I'm sorry, <CHARNAME>. I wish I knew more, but we really haven't the time to ponder theories right now anyway. */
IF ~~ + t23.16
END 

IF ~~ t23.15
 SAY @1720 /* Aye, you are right, of course. We really haven't the time to ponder theories right now anyway. */
IF ~~ + t23.16
END 

IF ~~ t23.16
 SAY @1721 /* Once we have gotten through Bodhi's gauntlet... there will be time to talk then. */
IF ~~ EXIT
END 
END

// 24.
CHAIN IF ~Global("rh#IsraSpellholdTalks","GLOBAL",5)~ THEN RH#ISRJ t24
@1722 /* For a moment I let myself believe that it would truly be that simple. That we would wrest back your soul and this quest would finally be at an end. */ 
= @1723 /* 'Twould seem that fate is never quite so kind. */
DO ~IncrementGlobal("rh#IsraSpellholdTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraSpellholdTimer","GLOBAL",2700)~
END
	++ @1724 /* I know. We get led on this merry little chase instead. */ + t24.1
	++ @1725 /* You needn't sound so resigned about it. */ + t24.2
	++ @1726 /* I wish that just once, something would go my way. */ + t24.3
	++ @1727 /* We'll find him again. We have to. */ + t24.4
	++ @1728 /* I need to concentrate, Isra. Just... stop it. */ + t24.exit

APPEND RH#ISRJ

IF ~~ t24.1
 SAY @1729 /* I cannot blame you for your bitterness. */
IF ~~ + t24.5
END

IF ~~ t24.2
 SAY @1730 /* I'm not resigned. I am worried. */
IF ~~ + t24.5
END

IF ~~ t24.3
 SAY @1731 /* I cannot fault you for that. */
IF ~~ + t24.5
END

IF ~~ t24.4
 SAY @1732 /* Aye, though in the meanwhile... */
IF ~~ + t24.5
END

IF ~~ t24.exit
 SAY @1733 /* I... very well. If that is what you wish. */
IF ~~ EXIT
END

IF ~~ t24.5
 SAY @1734 /* Are you... are you going to be alright? There is likely a long chase ahead of us now, and you... loath as I am to point it out, my <PRO_LADYLORD>, you look terrible. */
 = @1735 /* I... I can't help but wonder how much more time we actually have. */
	++ @1736 /* Before I lose control and try to kill everyone? */ + t24.6
	++ @1737 /* That question weighs upon me enough as it is. */ + t24.7
	++ @1738 /* I'm not going to lie down and die. I promise you that much. */ + t24.8
	++ @1739 /* I don't really feel that terrible. I think we can do this. */ + t24.9
END

IF ~~ t24.6
 SAY @1740 /* As troubling as those transformations are, that is not what I was thinking. I-- */
IF ~~ + t24.10
END

IF ~~ t24.7
 SAY @1741 /* I imagine it must. I-- */
IF ~~ + t24.10
END

IF ~~ t24.8
 SAY @1742 /* I will hold you to that. I-- */
IF ~~ + t24.10
END

IF ~~ t24.9
 SAY @1743 /* I... am not sure that you still have the capacity to feel it. I-- */
IF ~~ + t24.10
END

IF ~~ t24.10
 SAY @1744 /* I am afraid for you, <CHARNAME>. I don't fear very much, but losing you to this... I do not care to even think about it. */
IF ~~ EXIT
END
END

// 25.
CHAIN IF ~Global("rh#IsraSpellholdTalks","GLOBAL",7)~ THEN RH#ISRJ t25
@1745 /* Hold still a moment, <CHARNAME>. You look-- well, I would say you look tired, but that is nothing out of the ordinary. */ 
DO ~IncrementGlobal("rh#IsraSpellholdTalks","GLOBAL",1)
RealSetGlobalTimer("rh#IsraSpellholdTimer","GLOBAL",2700)~
END
	++ @1746 /* You're beginning to look a bit tired yourself, Isra. */ + t25.1
	++ @1747 /* Being tired is the least of my problems right now. */ + t25.1
	++ @1748 /* Sleep has been... harder to come by now than ever. */ + t25.1
	++ @1749 /* Please, Isra, we don't have time to talk right now. */ + t24.exit

APPEND RH#ISRJ

IF ~~ t25.1 
 SAY @1750 /* I can believe it. I-- */
 = @1751 /* I always realized that something terrible could happen, you know. I hoped that it would not, but I knew that it might. */
	++ @1752 /* In my experience, the worst usually does happen. */ + t25.2
	++ @1753 /* Being trapped down here isn't exactly a walk in the park, no. */ + t25.3
	++ @1754 /* This is a terrible world. There's nothing new there. */ + t25.4
	++ @1755 /* I know that things haven't been very pleasant as of late. */ + t25.5
END

IF ~~ t25.2
 SAY @1756 /* Aye, and the explanation for that... */
IF ~~ + t25.5
END

IF ~~ t25.3
 SAY @1757 /* Aye, though I was not speaking of that alone. */
IF ~~ + t25.5
END
	
IF ~~ t25.4
 SAY @1758 /* Aye, though I was not speaking of the world at large. */
IF ~~ + t25.5
END

IF ~~ t25.5
 SAY @1759 /* I am not exactly naive, <CHARNAME>. What you are... I don't comment on it very often, but that does not mean that I have never considered it. */
 = @1760 /* I told myself that it did not matter, of course, that even the ugliest of heritages could be surmounted. Whether that is actually true... we shall find out soon enough. */
	++ @1761 /* Faith, Isra. That's all that matters in the end. */ + t25.6
	++ @1762 /* You don't... regret anything now, do you? */ + t25.7
	++ @1763 /* We've survived thus far. Surely we can manage a bit longer. */ + t25.8
	++ @1764 /* You have been awfully morose lately. */ + t25.9
END

IF ~~ t25.6
 SAY @1765 /* I would not deny that. */
IF ~~ + t25.10
END

IF ~~ t25.7
 SAY @1766 /* No, <CHARNAME>. Never that. */
IF ~~ + t25.10
END

IF ~~ t25.8
 SAY @1767 /* I can only pray that you are right. */
IF ~~ + t25.10
END

IF ~~ t25.9
 SAY @1768 /* There has been precious little as of late to be pleased about. */
IF ~~ + t25.10
END

IF ~~ t25.10
 SAY @1769 /* (sigh) 'Tis strange to think of how many tales like this I have heard over the years. The quest to rescue the doomed lover, 'tis the song of choice for any Sunite bard. To actually live it, however... */
 = @1770 /* That is something else entirely. */
	++ @1771 /* But some of those stories have to be based in fact, right? */ + t25.11
	++ @1772 /* Hopefully it'll be worth retelling once it's over. */ + t25.12
	++ @1773 /* I'm going to get through this, Isra. We both are. */ + t25.13
	++ @1774 /* It's not quite as romantic as in the stories, is it? */ + t25.14
END

IF ~~ t25.11
 SAY @1775 /* Mayhap, though which is truth and which is fabrication... */
IF ~~ + t25.15
END

IF ~~ t25.12
 SAY @1776 /* Aye, if it ends well, I expect it will be. */
IF ~~ + t25.15
END

IF ~~ t25.13
 SAY @1777 /* Aye, we can only hope so. */
IF ~~ + t25.15
END

IF ~~ t25.14
 SAY @1778 /* No... nor is it nearly as glorious. */
IF ~~ + t25.15
END

IF ~~ t25.15
 SAY @1779 /* I am sorry, <CHARNAME>. I know that you don't need this from me right now. Your thoughts must already be heavy enough as it is. */
	++ @1780 /* And getting heavier by the moment. */ + t25.16
	++ @1781 /* Talking about it does help a bit. */ + t25.17
	++ @1782 /* I love you, Isra. You do know that, I hope. */ + t25.18
	++ @1783 /* Your concern means more to me than stoicism would. */ + t25.19
END

IF ~~ t25.16
 SAY @1784 /* I am sorry for that as well. */
IF ~~ EXIT
END 

IF ~~ t25.17
 SAY @1785 /* Then I am glad of that much. */
IF ~~ EXIT
END  
 
IF ~~ t25.18
 SAY @1786 /* (smile) I hoped... I had hoped that you still could. Perhaps that will be enough. */
IF ~~ EXIT
END

IF ~~ t25.19
 SAY @1787 /* (smile) I have never been very good at pretending I don't care. */
IF ~~ EXIT
END
END

// 26. upon rest
CHAIN IF ~Global("rh#IsraSpellholdTalks","GLOBAL",9)~ THEN RH#ISRJ t26
@1788 /* Sit with me, my-- Veldrin, while we have even a moment's privacy. I wanted to... hmm. */ 
DO ~IncrementGlobal("rh#IsraSpellholdTalks","GLOBAL",1)~
END
	++ @1789 /* Ow, Isra, that's my chin you're grabbing. */ + t26.1
	++ @1790 /* What are you doing? You don't need to study me that hard. */ + t26.2
	++ @1791 /* I'm not sure there's any such thing as privacy here. */ + t26.3
	++ @1792 /* As much as I enjoy the affection, I doubt the drow will be very impressed. */ + t26.4

APPEND RH#ISRJ

IF ~~ t26.1
 SAY @1793 /* I'm sorry. I did not mean to hurt you. I had hoped to find something familiar in your features. */
IF ~~ + t26.5
END

IF ~~ t26.2
 SAY @1794 /* I had hoped to find something familiar in your features. Some sign of <CHARNAME> instead of Veldrin. */
IF ~~ + t26.5
END

IF ~~ t26.3
 SAY @1795 /* Then I shall take a brief risk. I had hoped to find something familiar in your features. */
IF ~~ + t26.5
END

IF ~~ t26.4
 SAY @1796 /* Then forgive me the transgression. I had hoped to find something familiar in your features. */
IF ~~ + t26.5
END
 
IF ~~ t26.5
 SAY @1797 /* They say that the eyes are the window to the soul, but then, you have no soul at the moment. Perhaps that is why I see so very little of you in them now. */
	++ @1798 /* You look as strange as I do, I assure you. */ + t26.6
	++ @1799 /* Good. If you could tell, then so could our enemies. */ + t26.7
	++ @1800 /* Then look closer. I'm still myself underneath. */ + t26.8
	++ @1801 /* You don't like the new look? Some might consider it an improvement. */ + t26.9
END

IF ~~ t26.6
 SAY @1802 /* Do not remind me. I have taken to avoiding mirrors as of late. */
IF ~~ + t26.10
END

IF ~~ t26.7
 SAY @1803 /* I imagine you are likely right about that. */
IF ~~ + t26.10
END

IF ~~ t26.8
 SAY @1804 /* I believe it, but seeing you like this... being like this myself... */
IF ~~ + t26.10
END

IF ~~ t26.9
 SAY @1805 /* Then they would be fools. */
IF ~~ + t26.10
END

IF ~~ t26.10
 SAY @1806 /* I have never understood why some people considered the drow enchanting. Now I understand it even less. There is nothing about this place that isn't utterly loathsome to me. */
	++ @1807 /* None of us are enjoying this, Isra. At least, I'm not. */ + t26.11
	++ @1808 /* They do have a sort of deadly beauty about them, though. */ + t26.12
	++ @1809 /* This city is a farce. A complete travesty. */ + t26.13
	++ @1810 /* Solaufein seems decent enough, all things considered. */ + t26.14
END

IF ~~ t26.11
 SAY @1811 /* Aye, I know. I would be worried if you were. */
IF ~~ + t26.15
END

IF ~~ t26.12
 SAY @1812 /* Beauty? There is guile here, but beauty... I see none of that. */
IF ~~ + t26.15
END

IF ~~ t26.13
 SAY @1813 /* Aye, and that is the kindest thing that can be said about it. */
IF ~~ + t26.15
END

IF ~~ t26.14
 SAY @1814 /* He does. Would that he were not so unique in this city. */
IF ~~ + t26.15
END

IF ~~ t26.15
 SAY @1815 /* (sigh) We cannot afford to speak so frankly. Not in this place. The very walls likely have ears, and as much as I hate this deception, I should hate to ruin it even more. */
	++ @1816 /* Yes, that would be somewhat awkward for all of us. */ + t26.16
	+ ~Gender(Player1,FEMALE)~ + @1817 /* Spend the night with me. It'd look odd if you refused all pleasure here. */ + t26.17
	+ ~Gender(Player1,MALE)~ + @1817 /* Spend the night with me. It'd look odd if you refused all pleasure here. */ + t26.18
	++ @1818 /* Don't you think you should have considered that a bit sooner? */ + t26.19
	++ @1819 /* It will be over soon enough. Just keep your head down a while longer. */ + t26.20
END
 
IF ~~ t26.16
 SAY @1820 /* You have a gift for understatement, <CHARNAME>. Good night. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t26.17
 SAY @1821 /* Do drow females partake of each other's company? If they do, I doubt I would much care for their pleasures. */
 = @1822 /* Regardless, I could not. Not whilst under this spell. 'Twould be a mockery to me. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t26.18
 SAY @1823 /* No, <CHARNAME>, I couldn't. Not whilst under this spell. 'Twould be a mockery to me. */
IF ~~ DO ~RestParty()~ EXIT
END
 
IF ~~ t26.19
 SAY @1824 /* Mayhap, though I needed to speak with you, if only for a brief moment. But you are right. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END
 
IF ~~ t26.20
 SAY @1825 /* I have little enough alternative. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 27.
CHAIN IF ~Global("rh#IsraAthkatlaTalk","GLOBAL",2)~ THEN RH#ISRJ t27
@1826 /* By Sune, I never imagined that Athkatla could be such a welcome sight. */ 
DO ~IncrementGlobal("rh#IsraAthkatlaTalk","GLOBAL",1)~
END
	++ @1827 /* It's nice to finally see you high-spirited again. */ + t27.1
	++ @1828 /* We do have a mission here, don't forget. */ + t27.2
	++ @1829 /* It doesn't seem quite so corrupt and miserable now, does it? */ + t27.3
	++ @1830 /* It's not the only welcome sight here, I hope. */ + t27.4
 	++ @1831 /* Isra, we don't have the time for this right now. */ + t27.exit

APPEND RH#ISRJ

IF ~~ t27.1
 SAY @1832 /* Aye, it has been far too long, I know. */
IF ~~ + t27.5
END

IF ~~ t27.2
 SAY @1833 /* Aye, though I can enjoy the sights regardless. */
IF ~~ + t27.5
END

IF ~~ t27.3
 SAY @1834 /* (laugh) Oh, it is still that, though I can almost enjoy it regardless. */
IF ~~ + t27.5
END

IF ~~ t27.4
 SAY @1835 /* (laugh) Far from it, <CHARNAME>. Far from it indeed. */
IF ~~ + t27.5
END

IF ~~ t27.exit
 SAY @1836 /* Then that is a pity. */
IF ~~ EXIT
END

IF ~~ t27.5
 SAY @1837 /* Would that we had more than a moment to spare right now, however. Seeing you once more, finally looking like yourself again... */
 = @1838 /* I cannot begin to tell you how much I have missed that as well. */
	++ @1839 /* You're certainly welcome to *show* me, my dear. */ + t27.6
	++ @1840 /* No more than I have missed your face, Isra. */ + t27.7
	++ @1841 /* I guess that's my cue to avoid changing into the Slayer. */ + t27.8
	++ @1842 /* No? You don't exactly sound at a loss for words right now. */ + t27.9
END
 
IF ~~ t27.6
 SAY @1843 /* Oh, am I? The thought is rather tempting. */
IF ~~ + t27.10
END
 
IF ~~ t27.7
 SAY @1844 /* Oh, my <PRO_LADYLORD>, what a delightful flatterer you can be. */
IF ~~ + t27.10
END
 
IF ~~ t27.8
 SAY @1845 /* ... Don't jest so, my <PRO_LADYLORD>. Not right now. */
IF ~~ + t27.10
END
 
IF ~~ t27.9
 SAY @1846 /* Mayhap not, though having the correct words is a different matter entirely. Right now I fear I am somewhat too exhausted for that. */
IF ~~ + t27.10
END

IF ~~ t27.10
 SAY @1847 /* After Ust Natha... please, <CHARNAME>, just walk with me a while. Time may be short, but to finally be in a city where one can love without fear of reprisal... */
 = @1848 /* By the gods, the alternative is horrifying. */
	++ @1849 /* You're still thinking about Solaufein and Phaere, aren't you? */ + t27.11
	++ @1850 /* Please tell me you don't suddenly see Underdark crusades in your future. */ + t27.12
	++ @1851 /* Time may be short right now, but once this is over... */ + t27.13
	++ @1852 /* Of all the horrors of Ust Natha, you *would* focus upon that one. */ + t27.14
END

IF ~~ t27.11
 SAY @1853 /* I will never stop thinking of them. Nor would I wish to. I've heard tales of tragic love before, but that one... that one will stay with me forever. */
IF ~~ + t27.15
END 

IF ~~ t27.12
 SAY @1854 /* Oh, no. That battle is not mine, and thank the gods for that. I would gladly never set foot there again. */
IF ~~ + t27.15
END

IF ~~ t27.13
 SAY @1855 /* Once this is over... oh, that is another story entirely. And a more pleasant one, I hope. */
IF ~~ + t27.15
END

IF ~~ t27.14
 SAY @1856 /* I would. I do not disregard any of the others, but that one... it almost makes me pity them instead. */
IF ~~ + t27.15
END

IF ~~ t27.15
 SAY @1857 /* (sigh) But forgive me. This is a poor time for distractions. We should be considering the present for now, not the past or the future. */
 = @1858 /* The coming challenges... I hope you deem us ready for them. */
 	++ @1859 /* Do you expect them to be any worse than the previous ones? */ + t27.16
 	++ @1860 /* I hope you're not getting cold feet at this late date. */ + t27.17
 	++ @1861 /* We have to be. There's no more time for preparations. */ + t27.18
 	++ @1862 /* To be honest, I'm still surprised we even made it this far. */ + t27.19
 	+ ~Global("WorkingForAran","GLOBAL",1)~ + @1863 /* We've beaten them before. We can do it again. */ + t27.20
END

IF ~~ t27.16
 SAY @1864 /* 'Tis best to assume so. Overconfidence is as deadly a foe as any, though you, my <PRO_LADYLORD>... you have often proved more dangerous still. */
IF ~~ + t27.21
END

IF ~~ t27.17
 SAY @1865 /* I am getting serious, my <PRO_LADYLORD>. That is a different thing altogether. Overconfidence is as deadly a foe as any, though you... you have often proved more dangerous still. */
IF ~~ + t27.21
END

IF ~~ t27.18
 SAY @1866 /* No, I imagine not, but mayhap they will not prove necessary. You are as competent a <PRO_MANWOMAN> as any I have ever know. */
IF ~~ + t27.21
END

IF ~~ t27.19
 SAY @1867 /* You should not be, my <PRO_LADYLORD>. You are as competent a <PRO_MANWOMAN> as any I have ever know. */
IF ~~ + t27.21
END

IF ~~ t27.20
 SAY @1868 /* Aye, I imagine we can. You are as competent a <PRO_MANWOMAN> as any I have ever know, my <PRO_LADYLORD>. */
IF ~~ + t27.21
END

IF ~~ t27.21
 SAY @1869 /* But the time for talk has passed, I think. Come, let us finish this. */
IF ~~ EXIT
END
END

// 28.
CHAIN IF ~Global("rh#IsraPaladin","GLOBAL",7)~ THEN RH#ISRJ t28
@1870 /* I should thank you again, <CHARNAME>. What Bodhi did... were you anyone else, I doubt you would be able to imagine it, but I suspect that you can. */ 
DO ~SetGlobal("rh#IsraPaladin","GLOBAL",8)~
END
	++ @1871 /* I am developing a nasty habit of getting kidnapped myself. */ + t28.1
	++ @1872 /* That whole experience must have been terrible for you. */ + t28.2
	++ @1873 /* I was never going to just abandon you, Isra. */ + t28.3
	++ @1874 /* I'm just glad your people didn't ask us to slay a dragon for them. */ + t28.4

APPEND RH#ISRJ

IF ~~ t28.1
 SAY @1875 /* So I have noticed. Vampires may well be the only captors you have avoided at this point. */
IF ~~ + t28.5
END

IF ~~ t28.2
 SAY @1876 /* It was. You do not know the half of it. */
IF ~~ + t28.5
END

IF ~~ t28.3
 SAY @1877 /* (smile) I know that. And I am grateful for it. */
IF ~~ + t28.5
END

IF ~~ t28.4
 SAY @1878 /* (laugh) Oh, my people are quite capable of slaying dragons themselves, though I did not mean helping me with my order. Not only, at least. */
IF ~~ + t28.5
END

IF ~~ t28.5
 SAY @1879 /* The memory fades quickly, thank Sune, but what little I do remember... */
 = @1880 /* I hated everything, <CHARNAME>. Everything. I hated you, I... I even hated *her*. After that, I couldn't just go back to what I had been again. Not with such memories as that. */
	++ @1881 /* So your fall wasn't specifically tied to doing evil? */ + t28.6
	++ @1882 /* You still haven't forgotten it entirely, though. */ + t28.7
	++ @1883 /* At least your order was supportive throughout it. */ + t28.8
	++ @1884 /* You hated your goddess? No wonder she told you to get lost. */ + t28.9
END

IF ~~ t28.6
 SAY @1885 /* To hate as much as that, <CHARNAME>... that is evil. I know no other word for it. */
IF ~~ + t28.10
END

IF ~~ t28.7
 SAY @1886 /* I haven't, no, though 'tis vague enough to be bearable now. */
IF ~~ + t28.10
END

IF ~~ t28.8
 SAY @1887 /* I know. Sir Evendur... he has enough experience of his own coping with terrible things. His sympathy does not surprise me. */
IF ~~ + t28.10
END

IF ~~ t28.9
 SAY @1888 /* I... did. I don't know who turned away from whom in the aftermath, but the specifics of it make little difference. */ 
IF ~~ + t28.10
END

IF ~~ t28.10
 SAY @1889 /* Our evening spent with Ilian... redemption can be a strange thing at times. I wouldn't have expected that simply discussing it would help so, but mayhap there is something to be said for disowning a story and handing it over to the minstrels instead. */
	++ @1890 /* He certainly made us repeat it enough times. */ + t28.11
	++ @1891 /* I'm just glad that something so simple was so effective. */ + t28.12
	++ @1892 /* Good for you. I'm still having nightmares about that bard. */ + t28.13
	++ @1893 /* You're a Sunite, my dear. That comes with certain eccentricities. */ + t28.14
END

IF ~~ t28.11
 SAY @1894 /* I think he needed to. */
IF ~~ + t28.15
END

IF ~~ t28.12
 SAY @1895 /* Aye, so am I. */
IF ~~ + t28.15
END

IF ~~ t28.13
 SAY @1896 /* Oh, he was not quite as bad as that. */
IF ~~ + t28.15
END

IF ~~ t28.14
 SAY @1897 /* How very observant of you. */
IF ~~ + t28.15
END

IF ~~ t28.15
 SAY @1898 /* I... you know, I don't think I ever understood violation before. Not truly. I could sympathize, certainly, but sympathy is painless enough. */
 = @1899 /* What was done to you in Spellhold, <CHARNAME>... I always knew it was terrible, but now I can appreciate exactly what that entails. */
 = @1900 /* I would not trade back that knowledge if I could. */
	++ @1901 /* Ignorance may be bliss, but it's still ignorance. */ + t28.16
	++ @1902 /* At least you've actually been restored now. I haven't. */ + t28.17
	++ @1903 /* Does understanding it actually help at all? */ + t28.18
	++ @1904 /* If you can find some meaning in this, I won't begrudge you that. */ + t28.19
END

IF ~~ t28.16
 SAY @1905 /* I do not disagree. It gives me reason to wonder, though. */
IF ~~ + t28.20
END

IF ~~ t28.17
 SAY @1906 /* You will be, though... I'm beginning to wonder what that might mean for you. */
IF ~~ + t28.20
END

IF ~~ t28.18
 SAY @1907 /* I think so, though... it gives me reason to wonder. */
IF ~~ + t28.20
END

IF ~~ t28.19
 SAY @1908 /* I can, though... it gives me reason to wonder. */
IF ~~ + t28.20
END

IF ~~ t28.20
 SAY @1909 /* Recovering your soul won't simply wash away everything that has happened. I assumed at first that it would, but now I doubt it. A thing once broken can never again be whole. Not truly whole, at least. */
 = @1910 /* Once this is over... what do you think we are going to be, <CHARNAME>? We won't be what we were when it began. That much I am sure of. */
	++ @1911 /* I wish I knew. Hopefully we'll survive that long. */ + t28.21
	++ @1912 /* I didn't think you were interested in an ever after before. */ + t28.22
	++ @1913 /* We'll be ourselves, I suspect. Just a little bit older. */ + t28.23
	++ @1914 /* Promise me you'll stick around to find out. */ + t28.24
END

IF ~~ t28.21
 SAY @1915 /* Aye, I suppose that should be the first priority. The rest can wait until afterward. */ 
IF ~~ EXIT
END

IF ~~ t28.22
 SAY @1916 /* I... wasn't, no. I think that might have changed as well. */
 = @1917 /* I suspect that may be another thing to consider once this is over. */
IF ~~ EXIT
END

IF ~~ t28.23
 SAY @1918 /* Older and wiser... I suspect you are right. */
IF ~~ EXIT
END

IF ~~ t28.24
 SAY @1919 /* I... I do not make promises I am not certain I can keep, though in this case, I wish I could. */
 = @1917 /* I suspect that may be another thing to consider once this is over. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Scenery Dialogue
// ---------------------------------------------

// Ophals in Waukeen's Promenade

EXTEND_BOTTOM NOBLEM3 0
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ DO ~SetGlobal("rh#IsraOphals","GLOBAL",1)~ EXTERN NOBLEW3 1
END

CHAIN IF ~Global("rh#IsraOphals","GLOBAL",3)~ THEN RH#ISRJ i1
@1920 /* Well. That was quite easily the most pleasant conversation I've had with an Ophal in years. */
DO ~SetGlobal("rh#IsraOphals","GLOBAL",4)~ 
END
	++ @1921 /* You considered that pleasant? */ + i1.1
	++ @1922 /* I don't recall you actually saying anything. */ + i1.2
	++ @1923 /* They seemed a delightful bunch in general. */ + i1.1
	++ @1924 /* Hilarious, I'm sure. */ + i1.4

APPEND RH#ISRJ

IF ~~ i1.1
 SAY @1925 /* You have never met their cousins in Crimmor. */
IF ~~ + i1.4
END

IF ~~ i1.2
 SAY @1926 /* And thank Sune that I did not have to. */
IF ~~ + i1.4
END

IF ~~ i1.3
 SAY @1927 /* I don't mean to laugh, but you have never met their cousins in Crimmor. */
IF ~~ + i1.4
END

IF ~~ i1.4
 SAY @1928 /* I'm happy they did not recognize me. Our families have been feuding for... oh, I couldn't even say how long. */
 = @1929 /* If they had been aware of my kinship with House Crytrapper, we would likely still be screaming at each other. */
	++ @1930 /* You Amnian nobles can be too much at times. */ + i1.5
	++ @1931 /* I guess I should consider myself lucky to simply be snubbed. */ + i1.6
	++ @1932 /* A screaming match? So much for courtesy. */ + i1.7
	++ @1933 /* Now, that'd be a sight. Perhaps we should go back and introduce you. */ + i1.8
END

IF ~~ i1.5
 SAY @958 /* I cannot deny that. */
IF ~~ EXIT
END

IF ~~ i1.6
 SAY @1934 /* I certainly do. */
IF ~~ EXIT
END

IF ~~ i1.7
 SAY @1935 /* Perhaps not literally screaming, but one never can tell. */
IF ~~ EXIT
END

IF ~~ i1.8
 SAY @1936 /* (laugh) No, I don't think so. */
IF ~~ EXIT
END
END

// Radiant Heart

CHAIN IF ~Global("rh#IsraRadiantHeart","GLOBAL",1)~ THEN RH#ISRJ i2
@1937 /* I had forgotten how beautiful these halls were. My memories of the place... well, they could stand to be somewhat more pleasant. */
DO ~SetGlobal("rh#IsraRadiantHeart","GLOBAL",2)~ 
END
	++ @1938 /* More pleasant? What happened? */ + i2.1
	++ @1939 /* You've been here before? */ + i2.2
	++ @1940 /* I'd have expected you to be more comfortable here. */ + i2.3
	++ @1941 /* You don't spend that much time with the Radiant Heart? */ + i2.4

APPEND RH#ISRJ

IF ~~ i2.1
 SAY @1942 /* Suffice it to say that my mentor thought it best not to return. */
IF ~~ + i2.5
END

IF ~~ i2.2
 SAY @1943 /* Once. My mentor thought it best not to return. */
IF ~~ + i2.5
END

IF ~~ i2.3
 SAY @1944 /* "Comfortable" is not the way I would describe my last visit. Suffice it to say that my mentor thought it best not to return. */
IF ~~ + i2.5
END

IF ~~ i2.4
 SAY @1945 /* Ah... no. Suffice it to say that my mentor thought it best not to return. */
IF ~~ + i2.5
END

IF ~~ i2.5
 SAY @1946 /* He had come to speak with one of the older knights on some matter or another, and I'm afraid I got into a rather... heated discussion with several of the Tyrran squires. */
  = @1947 /* I doubt that anyone here would still remember it. */
	++ @1948 /* Let's hope not. That's all we need. */ + i2.6
	++ @1949 /* I'll be extremely amused if they do. */ + i2.7
	++ @1950 /* They're probably used to troublesome squires anyway. */ + i2.8
	++ @1951 /* That would probably depend on just how loud this discussion of yours was. */ + i2.9
	+ ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @1952 /* I'm guessing Keldorn remembers it now. */ EXTERN KELDORJ i2.10
END

IF ~~ i2.6
 SAY @1953 /* 'Twould be slightly awkward, aye. */
IF ~~ EXIT
END

IF ~~ i2.7
 SAY @1954 /* I can believe that too easily. */
IF ~~ EXIT
END

IF ~~ i2.8
 SAY @1955 /* I imagine they would have to be. */
IF ~~ EXIT
END

IF ~~ i2.9
 SAY @1956 /* 'Twas loud enough, unfortunately. */
IF ~~ EXIT
END
END

CHAIN KELDORJ i2.10
@1957 /* Do not concern yourselves over such things. We hold no grudges over the antics of squires. */
== RH#ISRJ @1958 /* I thought not, though I'm glad to hear it regardless. */
EXIT

// Umar Hills, Shade Lord

CHAIN IF ~Global("rh#IsraShadeLord","GLOBAL",2)~ THEN RH#ISRJ i3
@1959 /* I cannot decide whether or not to consider this a victory. I am in no mood for celebrating, at least. */
DO ~SetGlobal("rh#IsraShadeLord","GLOBAL",3)~ 
END
	+ ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @1960 /* Neither is Mazzy, I suspect. */ + i3.1
	++ @1961 /* I suppose that rules out a night of debauchery. */ + i3.2
	++ @1962 /* Too many good people are dead for that. */ + i3.5
	++ @1963 /* At least the village is safer now than it was yesterday. */ + i3.3
	++ @1964 /* We're still alive. Our resident Shade Lord isn't. */ + i3.4

APPEND RH#ISRJ

IF ~~ i3.1
 SAY @1965 /* No... no, I cannot imagine that she would be. */
IF ~~ + i3.5
END

IF ~~ i3.2
 SAY @1966 /* I would certainly not be joining you. */
IF ~~ + i3.5
END

IF ~~ i3.3
 SAY @1967 /* The village is, aye. */
IF ~~ + i3.5
END

IF ~~ i3.4
 SAY @1968 /* We are, aye. */
IF ~~ + i3.5
END 
 
IF ~~ i3.5
 SAY @1969 /* I know we had no hope of saving these people. Their fates were sealed long before we found them, but I don't like to pretend that makes this an acceptable outcome. */
 	++ @1970 /* I don't think anyone disagrees with you. */ + i3.6
	++ @1971 /* We did save them. They're no longer undead, at least. */ + i3.7
	++ @1972 /* We did everything we could. You can't expect miracles. */ + i3.8
	++ @1973 /* They made the decision to tangle with that creature. */ + i3.9
END

IF ~~ i3.6
 SAY @1974 /* Just once I would like to see a victory that did not come with such a terrible price. */
IF ~~ EXIT
END

IF ~~ i3.7
 SAY @1975 /* That is something to hold onto, though just once I would like to see a victory that did not come with such a terrible price. */
IF ~~ EXIT
END

IF ~~ i3.8
 SAY @1976 /* I know, though just once I would like to see a victory that did not come with such a terrible price. */
IF ~~ EXIT
END

IF ~~ i3.9
 SAY @1977 /* And so did we. Just once I would like to see a victory that did not come with such a terrible price. */
IF ~~ EXIT
END
END

// Windspear Hills, Firkraag

ADD_TRANS_ACTION GARREN BEGIN 39 40 41 42 END 
BEGIN END
~SetGlobal("rh#IsraFirkraag","GLOBAL",3)~

CHAIN IF ~Global("rh#IsraFirkraag","GLOBAL",1)~ THEN RH#ISRJ i4
@1978 /* A red dragon... I had not thought to find one here. */
= @1979 /* 'Tis no small matter when beasts such as that take an interest in you, my <LADYLORD>. */
DO ~SetGlobal("rh#IsraFirkraag","GLOBAL",2)~ 
END
	++ @1980 /* Everyone seems to be taking an interest in me these days. */ + i4.1
	++ @1981 /* You're not worried about it, are you? */ + i4.2
	+ ~Dead("Firkra02")~ + @1982 /* Well, he won't bother us again. */ + i4.3
	+ ~!Dead("Firkra02")~ + @1983 /* Hopefully he actually will leave us alone. */ + i4.4
	++ @1984 /* I wonder how many other grudges I've inherited. */ + i4.5

APPEND RH#ISRJ

IF ~~ i4.1
 SAY @872 /* So it would seem. */
IF ~Dead("Firkra02")~ + i4.6
IF ~!Dead("Firkra02")~ + i4.7
END

IF ~~ i4.2
 SAY @1985 /* I cannot say that it really surprises me. */
IF ~Dead("Firkra02")~ + i4.6
IF ~!Dead("Firkra02")~ + i4.7
END

IF ~~ i4.3
 SAY @1986 /* I'm grateful for that much. */
IF ~~ + i4.6
END

IF ~~ i4.4
 SAY @1987 /* I would not count on it. */
IF ~~ + i4.7
END

IF ~~ i4.5
 SAY @1988 /* More than a few, I would guess. */
IF ~Dead("Firkra02")~ + i4.6
IF ~!Dead("Firkra02")~ + i4.7
END

IF ~~ i4.6
 SAY @1989 /* Your foster father... I would have liked to have known him, I think. If this is any indication, he must have had scores of stories to tell. */
 	++ @1990 /* You would have liked him a lot, I think. */ + i4.8
	++ @1991 /* Given his age, it wouldn't surprise me. */ + i4.9
	++ @1992 /* Good luck getting a Harper to tell a story straight. */ + i4.10
	++ @1993 /* This was another one he never told me. */ + i4.11
END

IF ~~ i4.7
 SAY @1994 /* We will need to return for him at some point, you must realize. Would that your foster father had finished the deed. */
	++ @1995 /* Trust a Harper to leave a deed half done. */ + i4.10
	++ @1996 /* I only wish he had told me about it at all. */ + i4.11
	++ @1997 /* I doubt he had much of a say in the matter. */ + i4.12
	++ @1998 /* It would certainly have saved me a lot of trouble. */ + i4.13
END

IF ~~ i4.8
 SAY @1999 /* I believe so as well. */
IF ~~ EXIT
END

IF ~~ i4.9
 SAY @2000 /* Aye, one does not survive that long without accumulating a number of tales. */
IF ~~ EXIT
END

IF ~~ i4.10
 SAY @2001 /* That is quite ungracious of you, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ i4.11
 SAY @2002 /* I'm sorry to hear that, though tales of dragons... they are easier to share when they end in true victory. */
IF ~~ EXIT
END

IF ~~ i4.12
 SAY @2003 /* Aye, when a foe has wings... that does complicate matters. */
IF ~~ EXIT
END

IF ~~ i4.13
 SAY @2004 /* Aye, and the rest of the Windspear Hills as well. */
IF ~~ EXIT
END
END

// Working for Aran

CHAIN IF ~Global("rh#IsraShadowThieves","GLOBAL",1)~ THEN RH#ISRJ i5
@2005 /* I knew it would come to this eventually, but I did not want to believe it. */
= @2006 /* Shadow Thieves, <CHARNAME>? Are you certain there were no other options? */
DO ~SetGlobal("rh#IsraShadowThieves","GLOBAL",2)~ 
END
	++ @2007 /* Taking the higher road here is only going to get Imoen killed. */ + i5.1
	++ @2008 /* There was one, if you recall. */ + i5.2
	++ @2009 /* What's done is done. There's no use second guessing it now. */ + i5.1
	++ @2010 /* The city is ruled by thieves anyway. At least these are honest ones. */ + i5.3

APPEND RH#ISRJ

IF ~~ i5.1
 SAY @2011 /* Then I can only hope that our association with them proves short. */
IF ~~ EXIT
END

IF ~~ i5.2
 SAY @2012 /* I don't consider *that* an option, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

IF ~~ i5.3
 SAY @2013 /* Do not make the mistake of considering them honest, my <PRO_LADYLORD>. */
IF ~~ EXIT
END
END

// Brynnlaw

CHAIN IF ~Global("rh#IsraBrynnlaw","GLOBAL",2)~ THEN RH#ISRJ i6
@2014 /* By Sune, that... establishment was utterly revolting. I won't validate it by calling it a festhall, whatever it purported to be. */
= @2015 /* Though it shouldn't surprise me that these tyrants take more pleasure in suffering than in anything real. */ 
DO ~SetGlobal("rh#IsraBrynnlaw","GLOBAL",3)~ 
END
	++ @2016 /* At least we've shut it down now. */ + i6.1
	++ @2017 /* Calm down, Isra. We're not about to start a crusade here. */ + i6.2
	++ @2018 /* What do you think will happen to those people now? */ + i6.3
	++ @2019 /* You might want to save your anger for Spellhold. That may be worse. */ + i6.4

APPEND RH#ISRJ

IF ~~ i6.1
 SAY @2020 /* Aye, though I wonder if it will be enough. */
IF ~~ + i6.5
END

IF ~~ i6.2
 SAY @2021 /* Would that we could. I doubt that what we've done will be enough. */
IF ~~ + i6.5
END 

IF ~~ i6.3
 SAY @2022 /* I wish I knew. I doubt that what we've done will be enough. */
IF ~~ + i6.5
END 

IF ~~ i6.4
 SAY @2023 /* That doesn't change what happened here. */ 
IF ~~ + i6.5
END 

IF ~~ i6.5
 SAY @2024 /* Galvena was repulsive, but this entire island... it is what it is. Whoever rises to take her place will likely prove equally vile. */
 = @2025 /* I don't expect that hell to remain vacant for very long. */
	++ @2026 /* You can't change human nature, I'm afraid. */ + i6.6
	++ @2027 /* We have to let these people take care of themselves eventually. */ + i6.7
	++ @2028 /* I hope you're not planning something stupid. */ + i6.8
	+ ~!Global("TakeSaemonRoute","GLOBAL",1)~ + @2029 /* We can worry about that after we've saved Imoen. */ + i6.9
	+ ~Global("TakeSaemonRoute","GLOBAL",1)~ + @2030 /* We can worry about that after we've dealt with Irenicus. */ + i6.9
END

IF ~~ i6.6
 SAY @2031 /* Not easily, mayhap, though this isn't a problem that can be solved overnight anyway. */
IF ~!Global("TakeSaemonRoute","GLOBAL",1)~ + i6.10
IF ~Global("TakeSaemonRoute","GLOBAL",1)~ + i6.11
END  

IF ~~ i6.7
 SAY @2032 /* Eventually, mayhap, but they don't have the means right now. This isn't a problem that can be solved overnight, though. */
IF ~!Global("TakeSaemonRoute","GLOBAL",1)~ + i6.10
IF ~Global("TakeSaemonRoute","GLOBAL",1)~ + i6.11
END  

IF ~~ i6.8
 SAY @2033 /* No, I'm not. This isn't a problem that can be solved overnight anyway. */
IF ~!Global("TakeSaemonRoute","GLOBAL",1)~ + i6.10
IF ~Global("TakeSaemonRoute","GLOBAL",1)~ + i6.11
END   

IF ~~ i6.9
 SAY @2034 /* Aye. This isn't a problem that can be solved overnight anyway. */
IF ~!Global("TakeSaemonRoute","GLOBAL",1)~ + i6.10
IF ~Global("TakeSaemonRoute","GLOBAL",1)~ + i6.11
END  

IF ~~ i6.10
 SAY @2035 /* Depending upon what we find in Spellhold, perhaps the Council of Six could be persuaded to take an interest in this island. I don't know. */
	++ @2036 /* Do you really think they'd care about Brynnlaw? */ + i6.12
	++ @2037 /* They should be paying more attention to the Cowled Wizards than they do. */ + i6.13
	++ @2038 /* Someone ought to wipe this nest of pirates out, once and for all. */ + i6.14
	++ @2039 /* We can't afford to worry about that right now. */ + i6.15
END

IF ~~ i6.11
 SAY @2040 /* Considering what we found in Spellhold, perhaps the Council of Six could be persuaded to take an interest in this island. I don't know. */
	++ @2036 /* Do you really think they'd care about Brynnlaw? */ + i6.12
	++ @2037 /* They should be paying more attention to the Cowled Wizards than they do. */ + i6.13
	++ @2038 /* Someone ought to wipe this nest of pirates out, once and for all. */ + i6.14
	++ @2039 /* We can't afford to worry about that right now. */ + i6.15
END

IF ~~ i6.12
 SAY @2041 /* No, I don't. But a place such as Spellhold potentially in the hands of pirates... that is enough to worry anyone. */
IF ~~ + i6.16
END 

IF ~~ i6.13
 SAY @2042 /* They should. A place such as Spellhold potentially in the hands of pirates... that is enough to worry anyone. */
IF ~~ + i6.16
END 

IF ~~ i6.14
 SAY @2043 /* And someone probably will. A place such as Spellhold potentially in the hands of pirates... that is enough to worry anyone. */
IF ~~ + i6.16
END 

IF ~~ i6.15
 SAY @2044 /* You're probably right. */
IF ~~ + i6.16
END  

IF ~~ i6.16
 SAY @2045 /* Enough of this. Speaking about it is only going to make me angrier, and I need a clear head for what likely lies ahead. */
IF ~~ EXIT
END
END

// Soullessness, Upon Rest in Chapter 5. Friendship only.

CHAIN IF ~Global("rh#IsraSpellhold","GLOBAL",1)~ THEN RH#ISRJ i7
@2046 /* <CHARNAME>, you-- I can't imagine what this must be like for you. */ 
= @2047 /* Is there anything I can do to help? Pardon me for being frank, but you look terrible. */
DO ~SetGlobal("rh#IsraSpellhold","GLOBAL",2)~
END
	++ @2048 /* I don't think there's anything anyone can do. */ + i7.1
	++ @2049 /* I feel even worse, I assure you. */ + i7.2
	++ @2050 /* I don't think divine healing is going to work on this. */ + i7.3
	++ @2051 /* How do you expect me to look? I'm dying! */ + i7.4
	++ @2052 /* Do you know anything about my... condition? */ + i7.5

APPEND RH#ISRJ

IF ~~ i7.1
 SAY @2053 /* Perhaps not. */
IF ~~ + i7.5
END 

IF ~~ i7.2
 SAY @2054 /* I'm sorry to hear it. Really, I am. */
IF ~~ + i7.5
END 

IF ~~ i7.3
 SAY @2055 /* Neither do I, truly. */
IF ~~ + i7.5
END 

IF ~~ i7.4
 SAY @2056 /* I... I know. I'm sorry. */
IF ~~ + i7.5
END 

IF ~~ i7.5
 SAY @2057 /* I have heard tales of people who lost their souls, but I know of none who lingered on after the fact. This is... uncanny. */
 = @2058 /* (sigh) I am not doing a very good job of reassuring you. */
	++ @2059 /* Well, someone had to be the first to survive, I suppose. */ + i7.6
	++ @2060 /* I would never have asked you for false hope. */ + i7.7
	++ @2061 /* Thank you for at least trying. */ + i7.7
	++ @2062 /* I really don't want to talk about this, Isra. */ + i7.7
END

IF ~~ i7.6
 SAY @2063 /* That is one way of looking at it. */
IF ~~ + i7.7
END 

IF ~~ i7.7
 SAY @2064 /* Mayhap you should get some rest. You may not feel better come the morrow, but... hopefully you won't feel any worse. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// Adalon 

CHAIN IF ~Global("rh#IsraAdalon","GLOBAL",2)~ THEN RH#ISRJ i8
@2065 /* I have seen dragons before, but metallic ones... how absurd it is to first meet one in the Underdark! Of all the creatures we could come across here, I was not expecting that at all. */
DO ~SetGlobal("rh#IsraAdalon","GLOBAL",3)~
END
	++ @2066 /* The irony of the situation isn't lost upon me. */ + i8.1
	++ @2067 /* It's about time we ran into something pleasant for a change. */ + i8.2
	++ @2068 /* Save the euphoria for after we've done her bidding. */ + i8.3
	++ @2069 /* She certainly had the temper to fit in with the rest of the Underdark. */ + i8.4
	
APPEND RH#ISRJ

IF ~~ i8.1
 SAY @2070 /* Would that the rest of it were as amusing. What they took from her... */
IF ~~ + i8.5
END

IF ~~ i8.2
 SAY @2071 /* Aye, would that it could last. What they took from her... */
IF ~~ + i8.5
END

IF ~~ i8.3
 SAY @2072 /* Her bidding... aye, that is no cause for celebrating. */
IF ~~ + i8.5
END

IF ~~ i8.4
 SAY @2073 /* That does not surprise me. Given what they took from her... */
IF ~~ + i8.5
END

IF ~~ i8.5
 SAY @2074 /* I am not looking forward to this, <CHARNAME>. I am not looking forward to it at all. */
	++ @2075 /* It's Veldrin now. Don't forget that. */ + i8.6
 	++ @2076 /* Neither am I, honestly. */ + i8.7
 	++ @2077 /* There isn't much of an alternative, unfortunately. */ + i8.8
 	++ @2078 /* We'll get through it, one way or another. */ + i8.9
 	+ ~!Class(Player1,PALADIN_ALL)~ + @2079 /* Just keep your mouth shut and don't try anything too noble. */ + i8.10
 	++ @2080 /* Hey, it might actually be a bit exciting. */ + i8.11
END

IF ~~ i8.6
 SAY @2081 /* Veldrin... I don't care for that at all either. */
IF ~~ EXIT
END

IF ~~ i8.7
 SAY @1134 /* I can believe it. */
IF ~~ EXIT
END

IF ~~ i8.8
 SAY @2082 /* None that I can see, no. */
IF ~~ EXIT
END

IF ~~ i8.9
 SAY @2083 /* That is part of what worries me. */
IF ~~ EXIT
END

IF ~~ i8.10
 SAY @2084 /* I doubt that will be as easy as you make it sound. */
IF ~~ EXIT
END

IF ~~ i8.11
 SAY @2085 /* I doubt that. */
IF ~~ EXIT
END
END

// Phaere & Solaufein

CHAIN IF ~Global("rh#IsraPhaere","GLOBAL",2)~ THEN RH#ISRJ i9
@2086 /* I would almost pity her, you know. Phaere. What she might have been, had circumstances allowed it. What they both might have been. */
DO ~SetGlobal("rh#IsraPhaere","GLOBAL",3)~
END
	++ @2087 /* Even drow can love. Who would have thought? */ + i9.1
	++ @2088 /* I feel worse for Solaufein. He's the one with a heart. */ + i9.2
	++ @2089 /* I do pity her. This is no way to live a life. */ + i9.3
	++ @2090 /* This is a city of drow. How did you expect it to end? */ + i9.4

APPEND RH#ISRJ

IF ~~ i9.1
 SAY @2091 /* Any being can. Any mortal being, at least. */
IF ~~ + i9.5
END

IF ~~ i9.2
 SAY @2092 /* Though whether that is due to luck or to integrity, I couldn't say. */
IF ~~ + i9.5
END

IF ~~ i9.3
 SAY @2093 /* No, it is not. I think it a shame. */
IF ~~ + i9.5
END

IF ~~ i9.4
 SAY @2094 /* Precisely as it did, though I think it a shame. */
IF ~~ + i9.5
END

IF ~~ i9.5
 SAY @2095 /* Every time I see something like this, <CHARNAME>... I would feel vindicated if it were not so sad. They call it weakness, they call it folly, but they still stamp it out wherever they find it. That is a mark of fear, not of contempt. */
 = @2096 /* I wonder what this city would look like if it let its people love. */
	++ @2097 /* There's hope, I think. Look at Solaufein. */ + i9.6
	++ @2098 /* If their goddess has any say in the matter, we'll never know. */ + i9.7
	++ @2099 /* I intend to be out of here long before we have a chance to find out. */ + i9.8
	++ @2100 /* It'd be stabler, I think. More cooperative. More dangerous to the rest of us. */ + i9.9
END

IF ~~ i9.6
 SAY @2101 /* I have been, my <PRO_LADYLORD>. I certainly have. */
IF ~~ EXIT
END

IF ~~ i9.7
 SAY @2102 /* Indeed, though 'twould seem that she is not the only one with an interest here. Solaufein's Eilistraee... well, there is room for hope, at least. */
IF ~~ EXIT
END

IF ~~ i9.8
 SAY @2103 /* (laugh) Yes, I would prefer that as well. */
IF ~~ EXIT
END

IF ~~ i9.9
 SAY @2104 /* Mayhap, though I would not be so certain. A little bit of empathy can go a very long way at times. */
IF ~~ EXIT
END
END

// Phaere Innuendo

CHAIN IF ~Global("rh#IsraPhaereInnuendo1","GLOBAL",1)~ THEN RH#ISRJ i10
@2105 /* Are you quite mad, <CHARNAME>? What were you thinking, encouraging that... that vile creature? */
DO ~SetGlobal("rh#IsraPhaereInnuendo1","GLOBAL",2)~
END
	++ @2106 /* Are you jealous, Isra? I wouldn't have expected that from you. */ + i10.1
	++ @2107 /* Calm down, Isra... it's only a ploy. */ + i10.2
	++ @2108 /* It's hardly your business whom I flirt with, Isra. */ + i10.3
	
APPEND RH#ISRJ

IF ~~ i10.1
 SAY @2109 /* Jealous? I worry for your eyes if you find that disgusting woman attractive. I'm horrified that you would play this game with her at all. */
	++ @2107 /* Calm down, Isra... it's only a ploy. */ + i10.2
	++ @2108 /* It's hardly your business whom I flirt with, Isra. */ + i10.3
END

IF ~~ i10.2
 SAY @2110 /* I can't say that I see the need for such nonsense. */
IF ~~ EXIT
END

IF ~~ i10.3
 SAY @2111 /* No? If you are so indiscriminate that you would cast your eyes at a dark elf, then I suppose that is true enough. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END
END

CHAIN IF ~Global("rh#IsraPhaereInnuendo2","GLOBAL",1)~ THEN RH#ISRJ i10.4
@2112 /* You-- what happened, <CHARNAME>? Tell me. */
DO ~SetGlobal("rh#IsraPhaereInnuendo2","GLOBAL",2)~
END
	++ @2113 /* Calm down, Isra. It wasn't that bad. Far from it, actually. */ + i10.5
	++ @2114 /* I'm sorry. I wasn't sure she'd take 'no' for an answer. */ + i10.6
	++ @2115 /* She forced me, Isra. I didn't want to. */ + i10.6
	++ @2116 /* Step by step, or would you like a diagram instead? */ + i10.5
	
APPEND RH#ISRJ

IF ~~ i10.5
 SAY @2117 /* And to think that I worried for you. I shan't bother to do that again. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ i10.6
 SAY @2118 /* No, I'm sure refusal would have been fatal, and resistance even worse... */
 = @2119 /* I will see her *dead* for this, I swear it. As soon as we find the dragon's eggs. Are you-- */
 = @2120 /* No, of course you are not alright. What a foolish thing to ask. Let us try to bury this until we have the chance to finally redress it. */
IF ~~ EXIT
END
END

// Elhan. Friendship only.

CHAIN IF ~Global("rh#IsraElhan","GLOBAL",2)~ THEN RH#ISRJ i11
@2121 /* By Sune, 'tis good to see the sky again... and to finally have a task that is unlikely to drive me half mad with fury. */
DO ~SetGlobal("rh#IsraElhan","GLOBAL",3)~
END
	++ @2122 /* I know the feeling. */ + i11.1
	++ @2123 /* These elves don't seem to be much of an improvement. */ + i11.2
	++ @2124 /* I'm certainly looking forward to evening the score with Bodhi. */ + i11.3
	++ @2125 /* Perhaps I should congratulate you on not melting down completely in Ust Natha. */ + i11.4

APPEND RH#ISRJ

IF ~~ i11.1
 SAY @1134 /* I can believe it. */
IF ~~ + i11.5
END
IF ~~ i11.2
 SAY @2126 /* They may not be the most amiable of people, but they are also not drow. */
IF ~~ + i11.5
END

IF ~~ i11.3
 SAY @2127 /* As am I, I assure you. */
IF ~~ + i11.5
END

IF ~~ i11.4
 SAY @2128 /* Aye, though another moment in that place... I don't know. */
IF ~~ + i11.5
END

IF ~~ i11.5
 SAY @2129 /* We ought to make haste for Athkatla, <CHARNAME>. I have never wanted to see it more than I do right now, and I do not say that lightly. */
IF ~~ EXIT
END
END

// Low Reputation

CHAIN IF ~Global("rh#IsraLowReputation","GLOBAL",1)~ THEN RH#ISRJ rep1
@2130 /* <CHARNAME>, I should like to warn you that I don't care for some of the decisions that you have been making. I trust that you will rectify matters as quickly as possible? */
DO ~SetGlobal("rh#IsraLowReputation","GLOBAL",2)~
END
	+ ~InParty("Viconia")~ + @2131 /* If people look at us poorly, it's only because of Viconia. */ + rep2
	++ @2132 /* I'm afraid this is how I operate. */ + rep3
	++ @2133 /* Don't worry, I intend to. */ + rep4

CHAIN RH#ISRJ rep2
@2134 /* Then see to it that we compensate properly for the Sharran's presence. */
EXIT

CHAIN RH#ISRJ rep3
@2135 /* I see. Then I'm afraid I have little choice but to take my leave of your company. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN RH#ISRJ rep4
@2136 /* I certainly hope so. */
EXIT

CHAIN IF ~Global("rh#IsraReputationBreak","GLOBAL",1)~ THEN RH#ISRJ rep5
@2137 /* I had thought you better than this, <CHARNAME>, but I see that I was mistaken. In honor of our former friendship, I won't take action against you now, but I pray our paths don't meet again. */
DO ~SetGlobal("rh#IsraReputationBreak","GLOBAL",2) SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// ---------------------------------------------
// Romance Conflicts
// ---------------------------------------------

// Viconia

CHAIN IF ~Global("rh#IsraViconiaRomance","GLOBAL",2)~ THEN RH#ISRJ c1
@2138 /* <CHARNAME>, might I have a brief word? Privately? */
DO ~SetGlobal("rh#IsraViconiaRomance","GLOBAL",3)~
END
	++ @2139 /* Of course, Isra. What is it? */ + c1.1
	++ @2140 /* This sounds somewhat ominous. */ + c1.1
	++ @2141 /* Whatever it is, I don't want to hear it. */ + c1.exit

APPEND RH#ISRJ

IF ~~ c1.1
 SAY @2142 /* I am growing somewhat concerned about Viconia. I may not have objected to her presence, but I have seen the way that she eyes you, <CHARNAME>. I can only wonder what her ulterior motive might be. */ 
	++ @2143 /* She may be drow, but she's as in need of support as anyone. */ + c1.2
	++ @2144 /* Can you drop the judgmental paladin act for once? */ + c1.3
	++ @2145 /* What do you want me to do? Kick her out? */ + c1.4
	++ @2146 /* I've been wondering much the same thing. */ + c1.5
END

IF ~~ c1.exit
 SAY @2147 /* So I see. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ c1.2
 SAY @2148 /* She is in the service of Shar, my Lord. Do not assume that she thinks like you do. */
IF ~~ + c1.5
END

IF ~~ c1.3
 SAY @2149 /* Act? She is in the service of Shar, my Lord, and the foulness of that allegiance clings to her like a second skin. */
 = @2150 /* 'Tis no great stretch to assume that she means you ill. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ c1.4
 SAY @2151 /* I would hardly regret that choice, though I won't ask you to make it. */
IF ~~ + c1.5
END

IF ~~ c1.5
 SAY @2152 /* All I can do is warn you to turn down her... advances, such as they are. Whatever she might feel for you, my Lord, 'tis far removed from love. */
	++ @2153 /* Maybe now, though who can say what the future may bring? */ + c1.6
	++ @2154 /* I'm more interested in lust than love anyway. */ + c1.7
	++ @2155 /* If you're so worried, I'll have to tell her to stop. */ + c1.8
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @2156 /* She's less attractive than she thinks she is anyway... especially compared to you. */ + c1.9
END

IF ~~ c1.6
 SAY @2157 /* (sigh) I cannot tell you what to do, but... be careful. Please. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ c1.7
 SAY @2158 /* I see. I cannot tell you what to do, but... be careful. Please. */
IF ~~ DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~ EXIT
END

IF ~~ c1.8
 SAY @2159 /* Hopefully she will actually listen. */
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c1.9
 SAY @2160 /* (laugh) I would not normally appreciate being compared to a dark elf, but in this context, I cannot say that I mind it at all. */
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
END
END

// Anomen

CHAIN IF ~Global("rh#IsraAnomenRomance","GLOBAL",2)~ THEN RH#ISRJ c2
@2138 /* <CHARNAME>, might I have a brief word? Privately? */
DO ~SetGlobal("rh#IsraAnomenRomance","GLOBAL",3)~
END
	++ @2139 /* Of course, Isra. What is it? */ + c2.1
	++ @2140 /* This sounds somewhat ominous. */ + c2.1
	++ @2141 /* Whatever it is, I don't want to hear it. */ + c1.exit

APPEND RH#ISRJ

IF ~~ c2.1
 SAY @2161 /* I would speak of Anomen, my Lady. I tried to speak to him earlier myself, but he was... not exactly amenable. */
 = @2162 /* I have seen the way he looks at you. The way he speaks with you. He is a good enough man, 'tis true, but... please, make sure he is not so blinded by the idea of you that he fails to see the mortal woman beneath. */
 = @2163 /* I have seen the alternative. 'Tis seldom pleasant for anybody involved. */
	++ @2164 /* You dislike courtly love? What sort of Sunite are you anyway? */ + c2.2
	++ @2165 /* You're not just saying this because you don't like him, I hope. */ + c2.3
	++ @2166 /* Thank you for the advice, Isra. I'll keep that in mind. */ + c2.4
	+ ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + @2167 /* As attractive as knights in shining armor can be, I actually prefer the female ones. */ + c2.5
END

IF ~~ c2.2
 SAY @2168 /* One who can tell the difference between stories and reality. */
IF ~~ + c2.4
END

IF ~~ c2.3
 SAY @2169 /* No... no, I hope that I would not be so petty. */
IF ~~ + c2.4
END

IF ~~ c2.4
 SAY @2170 /* I will not tell you what to do, and I shan't say that any romance between you is doomed to failure, but be careful, <CHARNAME>. Please. */
IF ~~ EXIT
END

IF ~~ c2.5
 SAY @2171 /* (laugh) Oh, do you? Then I can't say I regret this conversation at all. */
 = @2172 /* If you do not share his affections, though, you should tell him, and sooner rather than later. 'Tis no kindess to give him false hope. */
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END
END

// Aerie

CHAIN IF WEIGHT #-1 ~Global("rh#IsraAerieRomance","GLOBAL",2)~ THEN AERIEJ c3
@2173 /* <CHARNAME>, do you... do you have a moment? I wanted to ask you something. */
DO ~IncrementGlobal("rh#IsraAerieRomance","GLOBAL",1)~
END
	++ @2174 /* Of course I do. What is it? */ + c3.1
	++ @2175 /* Fine, but make it quick. */ + c3.1
	++ @2176 /* For you? No, Aerie, not right now. */ + c3.2

APPEND AERIEJ

IF ~~ c3.1
 SAY @2177 /* You seem to be talking to Isra a lot recently. Do you... do you think that she's pretty? */
	++ @2178 /* Not nearly as pretty as you are, Aerie. */ + c3.3
	++ @2179 /* Pretty? I think that's a bit of an understatement. */ + c3.4
	++ @2180 /* She's definitely pleasant enough company. */ + c3.4
	++ @2181 /* I wouldn't kick her out of bed, though I'll need to find a way to get her there first. */ + c3.5
END
 
IF ~~ c3.2
 SAY @2182 /* Then... then that answers my question, I guess. I... I'm sorry. */
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c3.3
 SAY @2183 /* Oh! I--I don't know if that's true, but thank you for saying so. You don't... you don't like her, then? Like *that*, I mean. */
	++ @2184 /* No, Aerie, I don't. Not with you around. */ + c3.6
	++ @2185 /* I might. Do you think she's actually interested? */ + c3.7
	++ @2186 /* Actually, I do. Very much so. */ + c3.8
	++ @2187 /* Your jealousy is not very becoming, you know. */ + c3.9
END

IF ~~ c3.4
 SAY @2188 /* Oh. The does that mean that you... that you like her? Like *that*, I mean. */
	++ @2184 /* No, Aerie, I don't. Not with you around. */ + c3.6
	++ @2185 /* I might. Do you think she's actually interested? */ + c3.7
	++ @2186 /* Actually, I do. Very much so. */ + c3.8
	++ @2187 /* Your jealousy is not very becoming, you know. */ + c3.9
END
 
IF ~~ c3.5
 SAY @2189 /* Y-you are a very bad man, <CHARNAME>! I'm going to tell her that you said that! */
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c3.6
 SAY @2190 /* Thank you, <CHARNAME>. That is very kind of you. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c3.7
 SAY @2191 /* I--I think she might be. */
 = @2192 /* I'm sorry, <CHARNAME>. I don't want to talk right now. */
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c3.8
 SAY @2193 /* Oh. I... I see. Thank you for telling me the truth, <CHARNAME>. */
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ c3.9
 SAY @2194 /* I wasn't... I wasn't jealous! Ohh, never mind! */
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END
END

// Jaheira

CHAIN IF WEIGHT #-1 ~Global("rh#IsraJaheiraRomance","GLOBAL",2)~ THEN JAHEIRAJ c4
@2195 /* I expect to one day find that you have accidentally drowned yourself in that new perfume of yours, child. */
DO ~IncrementGlobal("rh#IsraJaheiraRomance","GLOBAL",1)~
== RH#ISRJ @2196 /* ... Does the scent trouble you in some way, Jaheira? */
== JAHEIRAJ @2197 /* It is not the scent that concerns me, but your lack of focus. Your carefully cultivated beauty is of no use on the battlefield. */
== RH#ISRJ @2198 /* How strange. I had always thought that Harpers preached religious tolerance... especially amongst those faiths that supported their activities. */
== JAHEIRAJ @2199 /* Hmph. You cannot wave your faith about as an excuse for everything you do, Isra. Your habits have changed recently. Do not think that I did not notice that deeper shade of lip stain that you purchased. */
== RH#ISRJ @2200 /* 'Twas my own money, I assure you. */
== JAHEIRAJ @2201 /* I did not think otherwise. But I will warn you now not to indulge your taste for cosmetics merely because you find a man attractive. He is not the type to appreciate such superficial concerns anyway. */
== RH#ISRJ @2202 /* Oh. Oh, I see. */
== JAHEIRAJ @2203 /* You see what exactly? */
== RH#ISRJ @2204 /* Nothing I care to share. */
= @2205 /* Jaheira, I have no desire to argue with you over this. Or over anything else, preferably. I assure you, my focus is as strong as it ever was... regardless of which shade I paint my lips. */
== JAHEIRAJ @2206 /* For one who has no wish to argue, you are surprisingly combative. */
EXIT

// Breakup

CHAIN IF WEIGHT #-1 ~Global("rh#IsraRomanceBreakup","GLOBAL",1)~ THEN RH#ISRJ c5
@2207 /* <CHARNAME>, I thought that this would work, but I'm beginning to believe that I was mistaken. I'll remain at your side, but more than that... */
= @2208 /* I'm sorry. */
DO ~SetGlobal("rh#IsraRomanceBreakup","GLOBAL",2)~
EXIT

// ---------------------------------------------
// Flirts
// ---------------------------------------------

// Morning After
CHAIN IF ~Global("rh#IsraMorning","GLOBAL",1)~ THEN RH#ISRJ fl1
@2209 /* <CHARNAME>... mmm, good morrow, my love. */ 
DO ~SetGlobal("rh#IsraMorning","GLOBAL",2)~ 
END
	++ @2210 /* "My love?" I could get used to that. */ + fl1.1
	++ @2211 /* You're not usually still abed this late in the morning. */ + fl1.2
	+ ~Gender(Player1,MALE)~ + @2212 /* Last night, Isra... I hope you enjoyed it also. */ + fl1.3
	+ ~!Gender(Player1,MALE)~ + @2212 /* Last night, Isra... I hope you enjoyed it also. */ + fl1.4
	++ @2213 /* I... don't think this is such a good idea. I'm sorry. */ + fl1.5
	
APPEND RH#ISRJ

IF ~~ fl1.1
 SAY @2214 /* I tend to use the word sparingly, but after last night, I cannot help but think it appropriate. */
IF ~~ + fl1.6
END

IF ~~ fl1.2
 SAY @2215 /* No, 'tis undisciplined of me, I know, but for one morning, at least, I couldn't make myself leave your side. */
IF ~~ + fl1.6
END

IF ~~ fl1.3
 SAY @2216 /* You needn't be so bashful, <CHARNAME>. It was wonderful. You were wonderful. */
IF ~~ + fl1.6
END

IF ~~ fl1.4
 SAY @2217 /* Every moment of it, though I am sure you already knew that. */
IF ~~ + fl1.6
END

IF ~~ fl1.5
 SAY @2218 /* You... I see. Then... I suppose we shall speak no more of it. */ 
 = @2219 /* Excuse me, my <PRO_LADYLORD>. I won't abandon you, but... I've no wish to look at you right now. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ fl1.6
 SAY @2220 /* If we could lie here all morning... listen to me. One evening together and I am already speaking like an idle hedonist. */
 = @2221 /* (smile) I shall need to be careful of you, I think. */
	++ @2222 /* There's nothing wrong with a bit of relaxation, Isra. */ + fl1.7
	++ @2223 /* Not *too* careful, I hope. */ + fl1.8
	++ @2224 /* So I can't talk you into a repeat performance right now? */ + fl1.9
	++ @2225 /* And here I was thinking just the same thing. */ + fl1.10
END

IF ~~ fl1.7
 SAY @2226 /* No, certainly not, though I am disinclined to redraw the line between "a bit" and "too much." */
IF ~~ + fl1.11
END

IF ~~ fl1.8
 SAY @2227 /* Oh, certainly not that. */
IF ~~ + fl1.11
END

IF ~~ fl1.9
 SAY @2228 /* I don't think so, <CHARNAME>. Tonight... well, that will be another story entirely. */
IF ~~ + fl1.11
END

IF ~~ fl1.10
 SAY @2229 /* Oh, were you? I cannot say that I've been called a bad influence in... well, quite some time now. */
IF ~~ + fl1.11
END

IF ~~ fl1.11
 SAY @2230 /* But come, we accomplish little by lying here, and there are preparations to be made before we can set out for the day. */
IF ~~ EXIT
END

// Post-Quest Flirts
IF ~Global("rh#IsraTimeForFlirt","GLOBAL",1)
Global("rh#IsraQuestTwo","GLOBAL",13) GlobalLT("rh#IsraTalks","GLOBAL",27)~ fl2
 SAY @2231 /* (You momentarily find your attention drawn to Isra.) */
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",0)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl2.1
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",1)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl2.2
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",2)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl2.3
   	IF ~Global("rh#IsraFlirtCounter","GLOBAL",3)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl2.4
END

IF ~~ fl2.1
 SAY @2232 /* (She has been somewhat quiet recently, and she carries about her an air of distraction that would be worrying from someone less composed.) */
 = @2233 /* (She notices your attention and smiles, as if to reassure you that she is quite alright. The smile takes several moments to fade again.) */
IF ~~ EXIT
END

IF ~~ fl2.2
 SAY @2234 /* (Her moods have been decidedly somber as of late, but the ghost of a smile touches her lips as she notices you watching her.) */
IF ~Global("rh#IsraRomanceActive","GLOBAL",1)~ + fl2.2.1
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + fl2.2.2
END

IF ~~ fl2.2.1
 SAY @2235 /* (She reaches out as if she means to brush your arm, but catches herself at the last moment, her smile turning slightly rueful.) */
IF ~~ EXIT
END

IF ~~ fl2.2.2
 SAY @2236 /* (She reaches out, her fingers briefly brushing against the side of your arm in a silent, rueful gesture.) */
IF ~~ EXIT
END

IF ~~ fl2.3
 SAY @2237 /* (You find her murmuring softly under her breath, the words lilting as if they are meant to be sung to music. She smiles at you, the expression as laced with nostalgia as her voice.) */
 = @2238 /* 'Twas one of my sister's favorites... once upon a time. I could never do it justice, of course. */
	++ @2239 /* I'd love to hear it from your tongue regardless, Isra. */ + fl2.3.1
	++ @2240 /* Are you feeling any better about things? */ + fl2.3.2
	++ @2241 /* Perhaps we can find a bard to sing it tonight. */ + fl2.3.3
END

IF ~~ fl2.3.1
 SAY @2242 /* One day I shall have to oblige you, then, though... not just yet. */
IF ~~ EXIT
END

IF ~~ fl2.3.2
 SAY @2243 /* Aye, somewhat. And sometimes. Thank you, regardless. */
IF ~~ EXIT
END

IF ~~ fl2.3.3
 SAY @2244 /* I think I would appreciate that. */
IF ~~ EXIT
END

IF ~~ fl2.4
 SAY @2245 /* (She draws close to you, her movements quieter than one would expect from a woman in full armor. She says nothing, content merely to walk in step with you for a moment, but there is a new warmth to her smile that had not been there before.) */
IF ~~ EXIT
END

// Uncommitted Flirts
IF ~Global("rh#IsraTimeForFlirt","GLOBAL",1) Global("rh#IsraRomanceActive","GLOBAL",1)
GlobalGT("rh#IsraTalks","GLOBAL",26)~ fl3
 SAY @2246 /* (Isra has always treated you considerately, but sometimes you wonder if there might be something more.) */
  	IF ~GlobalLT("rh#IsraFlirtCounter","GLOBAL",4)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	SetGlobal("rh#IsraFlirtCounter","GLOBAL",4) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl3.1
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",4)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl3.2
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",5)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl3.3
   	IF ~Global("rh#IsraFlirtCounter","GLOBAL",6)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0)
  	IncrementGlobal("rh#IsraFlirtCounter","GLOBAL",1) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl3.4
  	IF ~Global("rh#IsraFlirtCounter","GLOBAL",7)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl3.5
END  	
  	
IF ~~ fl3.1
 SAY @2247 /* (Isra does not normally like to touch people without permission, though this once, your backpack is in such a state of disorder that she decides to make an exception. With a slightly breathy apology, she quickly rearranges the straps that hold it in place.) */
 = @2248 /* (If her fingers linger a moment longer than propriety would demand, she does not seem to notice.) */
IF ~~ EXIT
END

IF ~~ fl3.2
 SAY @2249 /* (Isra's eyes follow you for a moment, her gaze decidedly appreciative. She smiles when she sees that you've noticed, utterly unperturbed.) */ 
IF ~~ EXIT
END

IF ~~ fl3.3
 SAY @2250 /* (You notice Isra watching you, a thoughtful, somewhat appraising gleam in her eyes. She shakes her head ruefully, laughing lightly to herself.) */ 
IF ~Gender(Player1,MALE)~ + fl3.3.1
IF ~Gender(Player1,FEMALE)~ + fl3.3.2
END

IF ~~ fl3.3.1
 SAY @2251 /* Apologies, my Lord. I was imagining you in one of the latest courtly styles. It may seem somewhat foppish to you, but there is no lady in Athkatla who would not appreciate the sight. */
IF ~~ EXIT
END

IF ~~ fl3.3.2
 SAY @2252 /* Apologies, my Lady. I was... well, sometimes I think it a pity there is no use for courtly dress upon the road. Though there is no lady in Athkatla you do not put to shame regardless. */
IF ~~ EXIT
END

IF ~~ fl3.4
 SAY @2253 /* (Isra seems to sense your needs almost as quickly as you do sometimes. The <DAYNIGHT>s have been warm as of late, and she silently draws beside you, offering you a slightly lopsided smile and a drink from her water bottle. Your own, you notice afterwards, is very nearly empty.) */
IF ~~ EXIT
END

IF ~~ fl3.5
 SAY @2254 /* (Isra comes to walk beside you, her step light and untroubled. She smiles, her eyes lingering upon you for a brief moment longer than necessary before she returns to scanning the surroundings for potential trouble.) */
IF ~~ EXIT
END

// Committed Flirts, Chapter 4
IF ~Global("rh#IsraTimeForFlirt","GLOBAL",1) Global("chapter","GLOBAL",%bg2_chapter_4%) Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN BEGIN fl4a
 SAY @2255 /* (A small smile playing across her lips, Isra approaches you, each step radiating quiet, unconscious confidence.) */
  	IF ~RandomNum(8,1)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.2
  	IF ~RandomNum(8,2) Gender(Player1,MALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.1
  	IF ~RandomNum(8,2) Gender(Player1,FEMALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.2
  	IF ~RandomNum(8,2) Gender(Player1,MALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.3
  	IF ~RandomNum(8,2) Gender(Player1,FEMALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.4 	
  	IF ~RandomNum(8,3) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.4.1
   	IF ~RandomNum(8,3) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.4.2 	
  	IF ~RandomNum(8,4)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.7
  	IF ~RandomNum(8,5)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.8
  	IF ~RandomNum(8,6) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.18.1
   	IF ~RandomNum(8,6) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.18.2
  	IF ~RandomNum(8,7)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.19
	IF ~RandomNum(8,8)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.20
END

// Committed Flirts
IF ~Global("rh#IsraTimeForFlirt","GLOBAL",1) Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN BEGIN fl4
 SAY @2255 /* (A small smile playing across her lips, Isra approaches you, each step radiating quiet, unconscious confidence.) */
 	IF ~RandomNum(20,1)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.1
  	IF ~RandomNum(20,2)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.2
  	IF ~RandomNum(20,3) Gender(Player1,MALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.1
  	IF ~RandomNum(20,3) Gender(Player1,FEMALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.2
  	IF ~RandomNum(20,3) Gender(Player1,MALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.3
  	IF ~RandomNum(20,3) Gender(Player1,FEMALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.3.4 	
  	IF ~RandomNum(20,4) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.4.1
   	IF ~RandomNum(20,4) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.4.2
  	IF ~RandomNum(20,5)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.5
  	IF ~RandomNum(20,6) Gender(Player1,MALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.6.1
  	IF ~RandomNum(20,6) Gender(Player1,FEMALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.6.2  	
  	IF ~RandomNum(20,7)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.7
  	IF ~RandomNum(20,8)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.8
    IF ~RandomNum(20,9)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.9
  	IF ~RandomNum(20,10)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.10	
  	IF ~RandomNum(20,11)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.11  	
  	IF ~RandomNum(20,12)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.12  	
  	IF ~RandomNum(20,13)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.13
  	IF ~RandomNum(20,14)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.14
  	IF ~RandomNum(20,15)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.15
  	IF ~RandomNum(20,16) Gender(Player1,MALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.16.1
  	IF ~RandomNum(20,16) Gender(Player1,FEMALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.16.2  	
  	IF ~RandomNum(20,17)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.17
  	IF ~RandomNum(20,18) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.18.1
   	IF ~RandomNum(20,18) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.18.2
  	IF ~RandomNum(20,19)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.19
	IF ~RandomNum(20,20)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl4.20
END

IF ~~ fl4.1
 SAY @2256 /* (She has taken advantage of a rare peaceful moment to rebraid a portion of her plaited hair. Noticing your attention, her smile widens.) */
IF ~Gender(Player1,MALE)~ + fl4.1.1
IF ~Gender(Player1,FEMALE)~ + fl4.1.2
END

IF ~~ fl4.1.1
 SAY @2257 /* I would leave it down for you, my Lord, but I cannot imagine that is the safest of options. */
IF ~~ EXIT
END

IF ~~ fl4.1.2
 SAY @2258 /* You are more than welcome to help, my Lady, if you wish it. */
IF ~~ EXIT
END

IF ~~ fl4.2
 SAY @2259 /* (She seems to sense your needs almost as quickly as you do sometimes. The <DAYNIGHT>s have been warm as of late, and as she silently draws beside you, Isra offers you a drink from her water bottle. Your own, you notice afterwards, is very nearly empty.) */
IF ~~ EXIT
END

IF ~~ fl4.3.1
 SAY @2260 /* (She reaches up, the back of her hand brushing against your cheek as she runs her fingers through your hair. With a soft sigh, she presses a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl4.3.2
 SAY @2261 /* (She reaches up, the back of her hand brushing against your cheek as she runs her fingers through your hair. She examines one lock thoughtfully, and you get the distinct impression that had you more than a moment to spare, she would start braiding it.) */
 = @2262 /* (With a soft sigh, Isra presses a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl4.3.3
 SAY @2263 /* (She kneels down, the back of her hand brushing against your cheek as she runs her fingers through your hair. With a soft sigh, she bends down to press a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl4.3.4
 SAY @2264 /* (She kneels down, the back of her hand brushing against your cheek as she runs her fingers through your hair. She examines one lock thoughtfully, and you get the distinct impression that had you more than a moment to spare, she would start braiding it.) */
 = @2265 /* (With a soft sigh, Isra bends down to press a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl4.4.1
 SAY @2266 /* (Her hands find their way to your shoulders, and with a self-satisfied sigh, she begins to give you an impromptu massage. Her fingers are deceptively strong, and it is several moments before you can find the heart to call an end to this brief break.) */
IF ~~ EXIT
END

IF ~~ fl4.4.2
 SAY @2267 /* (She kneels down, her hands unexpectedly finding their way to your shoulders. With a self-satisfied sigh, Isra begins to give you an impromptu massage. Her fingers are deceptively strong, and it is several moments before you can find the heart to call an end to this brief break.) */
IF ~~ EXIT
END

IF ~~ fl4.5
 SAY @2268 /* (She drops her pack to the ground for a moment to fix a broken strap on her armor, and you catch a brief glimpse of sheer red fabric in her bag... notoriously revealing Sunite ceremonial garb, most likely. She closes the bag a moment later, laughing softly in amusement.) */
 = @2269 /* You are welcome to see me in it later tonight, my love. */
IF ~Global("rh#IsraSex","GLOBAL",1)~ + fl4.5.1
IF ~!Global("rh#IsraSex","GLOBAL",1)~ EXIT
END

IF ~~ fl4.5.1
 SAY @2270 /* Or out of it, mayhap. */
IF ~~ EXIT
END

IF ~~ fl4.6.1
 SAY @2271 /* Sometimes... usually I think it a shame that there are so few men within the Sunite Church. One such as you, <CHARNAME>... */
 = @2272 /* (smile) Needless to say, I would be the envy of any number of our priestesses right now. */
IF ~~ EXIT
END

IF ~~ fl4.6.2
 SAY @2273 /* I have never considered myself overly conventional, you know, but it does seem in keeping with tradition that every knight must find some fair maiden to woo. */
 = @2274 /* (laugh) Of course, 'tis somewhat difficult at times to determine which of us is the warrior and which the fair maid. */
IF ~~ EXIT
END

IF ~~ fl4.7
 SAY @2275 /* (She has nothing to say for the moment, but her step is light and untroubled as she walks beside you. Her eyes linger upon you for a brief moment longer than necessary before she returns to scanning the surroundings for potential trouble.) */
IF ~~ EXIT
END

IF ~~ fl4.8
 SAY @2276 /* (She takes your hand in her own for a brief moment, silently pressing her lips against your knuckles. Reluctantly, she finally releases you, turning back to the task at hand.) */
IF ~~ EXIT
END

IF ~~ fl4.9
 SAY @2277 /* No... you needn't say anything, <CHARNAME>. Not right now. I only wanted to be close for a moment. */
IF ~~ EXIT
END

IF ~~ fl4.10
 SAY @2278 /* Sometimes I wonder what the occasional, unavoidable Athkatlan social event would be like with you by my side, my love. */
 = @2279 /* (smile) Somewhat more tolerable, at the least, though I would hate to expose you to the inevitable gossip. */
IF ~~ EXIT
END

IF ~~ fl4.11
 SAY @2280 /* (You have seen her curtsy before, if only when out of armor, but to<DAYNIGHT> Isra bows to you instead, the gesture perhaps slightly more flamboyant than it has to be.) */
IF ~Gender(Player1,MALE)~ + fl4.11.1
IF ~Gender(Player1,FEMALE)~ + fl4.11.2
END

IF ~~ fl4.11.1
 SAY @2281 /* (Her smile still somewhat lopsided, she suddenly offers you her hand, clearly content to let you play the role of the gallant gentleman instead.) */ 
IF ~~ EXIT
END

IF ~~ fl4.11.2
 SAY @2282 /* (She laughs, slipping easily out of the adopted role, and takes your hand, giving it an affectionate if somewhat more casual kiss.) */
IF ~~ EXIT
END

IF ~~ fl4.12
 SAY @2283 /* Shall I beg a lock of your hair to hold close to my heart, my love? Or shall I offer one instead? */
 = @2284 /* Mayhap 'twould be best to have an exchange of sorts, I think. */
IF ~~ EXIT
END

IF ~~ fl4.13
 SAY @2285 /* ("Sultry" is not a word one would normally use to describe Isra, but to<DAYNIGHT> it is surprisingly fitting. It may be the rich scent of Calishite perfume, or the gleam in her eyes as she regards you, but it is definitely there.) */
IF ~!Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ + fl4.13.1
IF ~OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ + fl4.13.2
END

IF ~~ fl4.13.1
 SAY @2286 /* (She brushes her fingers against the side of your face, and if not for the demands of propriety, you guess tell that she would already be kissing you. Or more.) */
	++ @2287 /* (Pull her close, kissing her deeply.) */ + fl4.13.3
	++ @2288 /* You don't exactly need to ask, you know. */ + fl4.13.4
	++ @2289 /* (Pull away from her.) */ EXIT
END

IF ~~ fl4.13.2
 SAY @2290 /* (Kneeling down, she brushes her fingers against the side of your face. If not for the demands of propriety, you guess tell that she would already be kissing you. Or more.) */
	++ @2287 /* (Pull her close, kissing her deeply.) */ + fl4.13.5
	++ @2288 /* You don't exactly need to ask, you know. */ + fl4.13.4
	++ @2289 /* (Pull away from her.) */ EXIT
END

IF ~~ fl4.13.3
 SAY @2291 /* (Isra doesn't quite melt into your arms, but comes as close as her armor allows, tangling a hand in your hair as she returns the kiss.) */
IF ~~ EXIT
END

IF ~~ fl4.13.4
 SAY @2292 /* (smile) Don't I? I shall have to keep that in mind, then. */
IF ~~ EXIT
END

IF ~~ fl4.13.5
 SAY @2293 /* (Isra barely keeps herself from overbalancing, but laughs off the near fall, tangling a hand in your hair as she returns the kiss.) */
IF ~~ EXIT
END

IF ~~ fl4.14
 SAY @2294 /* (After a moment, you see the handkerchief of pure white silk wrapped between her fingers... and the intricately designed scarlet rose embroidered upon it.) */
 = @2295 /* Take it, my love. I must be allowed the occasional concession to courtly romance... even if they are somewhat backwards by necessity. */
IF ~~ EXIT
END

IF ~~ fl4.15
 SAY @2296 /* Shall I beg a kiss of you, my love? Surely we have time enough to spare for such simple pleasures? */
IF ~~ EXIT
END

IF ~~ fl4.16.1
 SAY @2297 /* Some of my order are taken to writing courtly poetry, you know. I am no writer, to be sure, but a gallant young man such as yourself... */
 = @2298 /* (laugh) I may have it somewhat backwards, of course, and perhaps that is for the best. Were I to write a sonnet, I doubt it would even be worth listening to. */
IF ~~ EXIT
END

IF ~~ fl4.16.2
 SAY @2299 /* Some of my order are taken to writing courtly poetry, you know. I am no writer, to be sure, but your beauty, <CHARNAME>... */
 = @2300 /* It could inspire a sonnet or two even from my lips, I think. Perhaps they would even be worth listening to. */
IF ~~ EXIT
END

IF ~~ fl4.17
 SAY @2301 /* (A thoughtful, somewhat appraising gleam appears in her eyes, and her smile grows slightly rueful.) */ 
IF ~Gender(Player1,MALE)~ + fl4.17.1
IF ~Gender(Player1,FEMALE)~ + fl4.17.2
END

IF ~~ fl4.17.1
 SAY @2302 /* One day I shall need to see you in one of the latest courtly styles, my Lord. It may seem somewhat foppish to you, but there is no lady in Athkatla who would not appreciate the sight. Least of all myself. */
IF ~~ EXIT
END

IF ~~ fl4.17.2
 SAY @2303 /* One day I shall need to see you in Calishite silks and satins, <CHARNAME>... my own, perhaps, if I cannot convince you to buy something new. You would be beautiful in it regardless. */
IF ~~ EXIT
END

IF ~~ fl4.18.1
 SAY @2304 /* (Her smile soon fades into a slightly exasperated frown, and she pulls out a handkerchief, dabbing it gently across your cheek. The cloth comes back red, and she spends a moment inspecting your cheek, making certain that the blood is not yours.) */
IF ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ EXIT 
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + fl4.18.3
END

IF ~~ fl4.18.2
 SAY @2305 /* (Her smile soon fades into a slightly exasperated frown, however. She pulls out a handkerchief, and bending down, dabs it gently across your cheek. The cloth comes back red, and she spends a moment inspecting your cheek, making certain that the blood is not yours.) */
IF ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ EXIT 
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + fl4.18.3
END

IF ~~ fl4.18.3
 SAY @2306 /* One day soon, we shall need to visit a bathhouse, I think... preferably one with private facilities and no questions asked. */
IF ~~ EXIT
END

IF ~~ fl4.19
 SAY @2307 /* Take this, my love. 'Twas straight from an Ophal caravan. I hate to put gold into that family's coffers, but candies such as this... nobody in Amn makes them better. */
IF ~~ EXIT
END

IF ~~ fl4.20
 SAY @2308 /* (She does not say anything, content to merely admire you for a brief moment. It is only with a soft, somewhat regretful sigh that she turns away again.) */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Family Interjections
// ---------------------------------------------

// Alia

CHAIN IF ~GlobalLT("rh#IsraAliaTalks","GLOBAL",3) See("rh#Isra2") InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) Global("rh#IsraQuestTwo","GLOBAL",13)~ THEN RH#ALIA alia3
@2309 /* I did warn you not to get involved. */
DO ~SetGlobal("rh#IsraAliaTalks","GLOBAL",3)~
== RH#ISRJ @2310 /* Did you... did you know what was going on before? */
== RH#ALIA @2311 /* No. But I could guess. I know her better than you do now. */
== RH#ISRJ @2312 /* I can't deny that. */
== RH#ALIA @2313 /* (sigh) This is probably the best way it could have ended, Isra. I just wish it hadn't been you. */
== RH#ISRJ @2314 /* I know. Thank you. */
EXIT

CHAIN IF ~Global("rh#IsraAliaTalks","GLOBAL",3) InParty("rh#Isra2") See("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN RH#ALIA alia4
@2315 /* Well. Isn't this interesting. */
DO ~SetGlobal("rh#IsraAliaTalks","GLOBAL",4)~
== RH#ALIA IF ~Class(Player1,THIEF_ALL)~ THEN @2316 /* I never would have guessed that my little sister might develop a taste for rogues. */
== RH#ALIA @2317 /* I thought that you didn't believe in love on the road, Isra. */
== RH#ISRJ @2318 /* Clearly I was wrong. */
== RH#ALIA @2319 /* Hmm. Apparently so. Well, congratulations, <CHARNAME>. And good luck. And if you ever hurt her, you'll live to regret it, of course. */
= @2320 /* Or perhaps you won't. Isra's the one who likes to play with swords, after all. */
== RH#ISRJ @2321 /* Are you quite finished? */
== RH#ALIA @2322 /* If you absolutely insist. */
EXIT

CHAIN IF ~Global("rh#IsraAliaTalks","GLOBAL",0) InParty("rh#Isra2") See("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#ALIA alia1
@2323 /* Well, what a pleasant surprise. I almost thought it would be another five years before I saw you again. */
DO ~SetGlobal("rh#IsraAliaTalks","GLOBAL",1)~
== RH#ISRJ @2324 /* It wasn't nearly that long, Alia. */
== RH#ALIA @2325 /* You would be amazed at how time stretches out when you're wondering whether someone is dead or alive. */
== RH#ISRJ @2326 /* I... */
== RH#ALIA @2327 /* Don't, Isra. I don't want to hear it. */
EXIT

CHAIN IF ~Global("rh#IsraAliaTalks","GLOBAL",1) InParty("rh#Isra2") See("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) ~ THEN RH#ALIA alia2
@2328 /* We meet again. Do wonders never cease? Come to think of it, I don't think you've introduced me to your new friend... <CHARNAME>, is it? */
DO ~SetGlobal("rh#IsraAliaTalks","GLOBAL",2)~
== RH#ISRJ @2329 /* Alia-- */
== RH#ALIA @2330 /* Oh, come now. I don't bite. Not usually, at least. */
END
	++ @2331 /* Er... nice to meet you. I think. */ + alia2.1
	++ @2332 /* You're no barmaid. What exactly do you do around here? */ + alia2.2
	++ @2333 /* With such beautiful daughters, your family must consider itself blessed. */ + alia2.3
	++ @2334 /* As much as I hate to interrupt this... friendly sisterly reunion, we need to head off. */ + alia2.4

CHAIN RH#ALIA alia2.1
@2335 /* Enchanted, I'm sure. */
EXIT

CHAIN RH#ALIA alia2.2
@2336 /* No... I'm really not. I mean to open a festhall in the city at some point, and it just so happens that Patricia owes my little sister a favor or two. */
== RH#ISRJ @2337 /* She most certainly does not. */
== RH#ALIA @2338 /* She happens to disagree. And so do I. */
EXIT

CHAIN RH#ALIA alia2.3
@2339 /* Oh, my. It's no wonder you keep this one around, Isra. How very charming. */
== RH#ISRJ @2340 /* <CHARNAME>, please don't encourage her. */
== RH#ALIA @2341 /* I hardly need encouragement, I assure you. */
EXIT

CHAIN RH#ALIA alia2.4
@2342 /* I see. Don't be a stranger. */
EXIT

CHAIN IF ~RandomNum(4,1) See("rh#Isra2") InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#ALIA alia5.1
@2343 /* Well. I didn't expect to see you again quite so soon, little sister. Don't you have something gallant and heroic to do? */
== RH#ISRJ @2344 /* Must you, Alia? */
== RH#ALIA @2345 /* I'm afraid so. */
EXIT

CHAIN IF ~RandomNum(4,2) See("rh#Isra2") InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#ALIA alia5.2
@2346 /* Darling, I do hope you can find a free moment sometime soon. There's this new festhall in the Wave District that I visited just last tenday-- */
== RH#ISRJ @2347 /* Alia, can you truly find nothing more... worthwhile to do with your time? */
== RH#ALIA @2348 /* Oh, shall I go hunt monsters instead? I can just imagine father's reaction to that piece of news. */
== RH#ISRJ @2349 /* So can I. Quite easily. */
== RH#ALIA @2350 /* Yes... I suppose you can. */
EXIT

CHAIN IF ~RandomNum(4,3) See("rh#Isra2") InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#ALIA alia5.3
@2351 /* Really, Isra. You're making the clientele nervous with that shiny armor of yours. Is it so hard to change into something more appropriate for a tavern? */
== RH#ISRJ @2352 /* 'Twould depend on whether we mean to settle down for the night yet. */
== RH#ALIA @2353 /* Hmm. Or perhaps your new friend <CHARNAME> merely enjoys the occasional pub crawl. I can certainly say that I approve of that way of thinking. */
== RH#ISRJ @2354 /* (sigh) Yes, I suppose you do. */
EXIT

CHAIN IF ~RandomNum(4,4) See("rh#Isra2") InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#ALIA alia5.4
@2355 /* Mmm... this really isn't a good time, I'm afraid. */
EXIT

CHAIN IF ~OR(3) !See("rh#Isra2") !InParty("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID) !Dead("rh#Isra2")~ THEN RH#ALIA alia6
@2355 /* Mmm... this really isn't a good time, I'm afraid. */
EXIT

CHAIN IF ~Dead("rh#Isra2")~ THEN RH#ALIA alia7
@2356 /* You! You're the <PRO_MANWOMAN> who got my sister killed, aren't you? She'd have likely forgiven you for that, but don't expect the same from me. */
EXIT

// Rana & Quentin

CHAIN IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) GlobalGT("rh#IsraQuestOne","GLOBAL",13) Global("rh#IsraQuestTwo","GLOBAL",0)~ THEN RH#RANA rana1
@2357 /* Isra... please, you know that you're not exactly welcome by this family. */
EXIT

CHAIN IF ~OR(3) !InParty("rh#Isra2") !InMyArea("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID) GlobalGT("rh#IsraQuestOne","GLOBAL",13) Global("rh#IsraQuestTwo","GLOBAL",0)~ THEN RH#RANA rana2
@2358 /* I don't believe that we have any further business, <CHARNAME>. */
EXIT

CHAIN IF ~GlobalGT("rh#IsraQuestOne","GLOBAL",13)~ THEN RH#QUENT quentin
@2359 /* I have no further use for you, <PRO_SIRMAAM>. */
EXIT

// Corinna Ghadir

BEGIN RH#CORA

CHAIN IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#CORA corinna
@2360 /* Ahh, Isra. I was hoping I would have a chance to see you. */
== RH#ISRJ @2361 /* Hello, mother. Dare I ask how Eshpurta is? */
== RH#CORA @2362 /* About as dull as it normally is. But if we are going to engage in small talk, I would prefer it be about something interesting. */
== RH#CORA IF ~Gender(Player1,MALE) !Race(Player1,HALFORC) !Race(Player1,DWARF)~ THEN @2363 /* This handsome young man must be <CHARNAME>... Alia had some interesting things to say about him. */
== RH#CORA IF ~Gender(Player1,FEMALE) !Race(Player1,HALFORC) !Race(Player1,DWARF)~ THEN @2364 /* This lovely young lady must be <CHARNAME>... Alia had some interesting things to say about her. */
== RH#CORA IF ~OR(2) Race(Player1,HALFORC) Race(Player1,DWARF)~ THEN @2365 /* This must be <CHARNAME>... Alia had some interesting things to say about <PRO_HIMHER>. */
== RH#ISRJ @2366 /* (sigh) I can believe it. */
== RH#CORA @2367 /* I assure you, dear, she was relatively polite about it. */
= @2368 /* It's a pleasure to finally meet you, <CHARNAME>. I hope I can trust you to curb some of my daughter's more reckless tendencies? */
END
	++ @2369 /* I'm trying my hardest, my lady. */ + corinna1
	++ @2370 /* She isn't quite as bad as that. */ + corinna2
	++ @2371 /* A bit of recklessness is in the job description, I'm afraid. */ + corinna3

CHAIN RH#CORA corinna1
@2372 /* That is certainly encouraging. */
END
IF ~~ THEN EXTERN RH#ISRJ corinna4

CHAIN RH#CORA corinna2
@2373 /* Then you apparently do not know her like I do. */
END
IF ~~ THEN EXTERN RH#ISRJ corinna4

CHAIN RH#CORA corinna3
@2374 /* Yes... I'm afraid that may be the case. */
END
IF ~~ THEN EXTERN RH#ISRJ corinna4

CHAIN RH#ISRJ corinna4
@2375 /* Mother... is this truly necessary? */
== RH#CORA @2376 /* I'm sorry, Isra. I have too much to worry about right now as it is. */
== RH#ISRJ @2377 /* With Rana, I know. Do you have any news? */
== RH#CORA @2378 /* Not yet. I'm meeting with Lady Lamia in an hour to discuss the situation. I suggest you not worry about it overmuch, Isra. Or blame yourself for it. */
== RH#ISRJ @2379 /* I don't, I assure you. */
== RH#CORA @2380 /* Hmm. Very well. */
= @2381 /* I do wish you'd gotten here somewhat earlier, Isra. I really do have to run now, but it really has been lovely to see you. Both of you. */
== RH#ISRJ @2382 /* Aye, of course. Safe journeys, mother. */
== RH#CORA @2383 /* And to you as well. */
DO ~EscapeAreaDestroy(5)~
EXIT

CHAIN IF ~OR(3) !InParty("rh#Isra2") !InMyArea("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN RH#CORA corinna5
@2384 /* I have nothing to say to you, <SIRMAAM>. */
EXIT

// ---------------------------------------------
// Interjections
// ---------------------------------------------

// Slums

CHAIN IF WEIGHT #-1 ~InParty("rh#Isra2") IsGabber("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)   Global("rh#IsraSalvanas","GLOBAL",0)~ THEN SALVANAS rh#isra_salvanas
@2385 /* Ah, gentle lady, your beauty sets my very soul afire! */
DO ~SetGlobal("rh#IsraSalvanas","GLOBAL",1)~ 
== RH#ISRJ @2386 /* Does it, now? That does not sound terribly healthy. */
== SALVANAS @2387 /* But what is health next to such sublime loveliness, my sweet? I would give half the years of my life for even a night in your arms. */
== RH#ISRJ @2388 /* You should consider yourself fortunate that I'm no succubus to take advantage of that sentiment. */
== SALVANAS @2389 /* I shall count myself fortunate when you deign to take me to your bed, my dusky beauty, and not a moment before. */
== RH#ISRJ @2390 /* That may prove rather inconvenient for you. */
EXIT

I_C_T LEHTIN 17 rh#isra_lehtinan
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2391 /* And none of it pleasant, by the sound of it. */
END

I_C_T COPGREET 1 rh#isra_franky
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2392 /* Man and beast... I doubt that this is legal, <CHARNAME>. I can only hope that the participants are consenting. */
END

I_C_T HENDAK 7 rh#isra_hendak1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2393 /* You would allow this... this savagery to continue, <CHARNAME>? I didn't think you so cold. */
DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",10)~ 
END

I_C_T HENDAK 41 rh#isra_hendak2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2394 /* More of the beasts? That does not surprise me. Mayhap we can pay them a visit as well. */
== HENDAK @2395 /* That would be appreciated. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraGlad2","GLOBAL",0)~ THEN GLAD2 glad2
@2396 /* Help us, please! We beg you! */
DO ~SetGlobal("rh#IsraGlad2","GLOBAL",1)~ 
== RH#ISRJ @2397 /* This is... abominable, <CHARNAME>! We must help these people! */
EXIT

// Docks

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraCelvan","AR0300",0)~ THEN CELVAN rh#isra_celvan
@2398 /* There once was a lady so classy,
all thought her an elegant lassie.
Although she's tight-lipped,
if ever she slipped,
you'd learn that she's so very sassy. */
DO ~SetGlobal("rh#IsraCelvan","AR0300",1)~
== RH#ISRJ @2399 /* Really, must we listen to this? */
EXTERN CELVAN 1

I_C_T RENAL 26 rh#isra_renal1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2400 /* If we are quite done here, I have already heard far more than I might have liked. */
END

I_C_T RENAL 30 rh#isra_renal2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2401 /* <CHARNAME>, I suggest we do not make a habit of such... associations. */
END

I_C_T MAEVAR 16 rh#isra_maevar1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2402 /* Steal from the Lathandrites? Even were it not an allied faith, I would have no taste for such... work. Nor will I be involved. Mayhap we shall meet again, <CHARNAME>. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty() 
EscapeArea()~
END

I_C_T MAEVAR 17 rh#isra_maevar2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2403 /* As little love as I have for the church of Talos, I very much hope that we won't make a habit of this. */
END

I_C_T MAEVAR 31 rh#isra_maevar3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2404 /* I do not like this, <CHARNAME>. Even if the victim is a Shadow Thief as well, I have no wish to harm him without knowing his crime. */
END

I_C_T EDWIN 1 rh#isra_edwin1
== RH#ISRJ IF ~Global("rh#IsraWasInBGI","GLOBAL",1) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2405 /* By Sune, I had hoped that we had seen the last of this wretched man on the Sword Coast. I would almost rather be speaking with Mae'Var again instead. */
== EDWIN @2406 /* The sentiment is mutual, paladin, I assure you. */
END

I_C_T EDWIN 36 rh#isra_edwin2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2407 /* "Not necessarily", he says. */
END

I_C_T EMBARL 6 rh#isra_embarl
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2408 /* I can only hope that you've learned something from this unfortunate affair. */
== EMBARL @2409 /* More than I could say, milady. */
END

I_C_T ANOMENJ 209 rh#isra_embarl2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn") !IsValidForPartyDialog("Jaheira")~ THEN
@2410 /* Have you no appreciation for compassion whatsoever, Anomen? */
== ANOMENJ @2411 /* Pfeh! Compassion should not be wasted upon such filth, Sunite. */
END

I_C_T ARAN 2 rh#isra_aran1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2412 /* By the loss of your people or your contraband? */
== ARAN @2413 /* Your insinuation is unwarranted. I care about my people, whatever you might think on the matter. */
END

I_C_T ARAN 24 rh#isra_aran2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2414 /* A surprisingly worthwhile end to this alliance. */
END

I_C_T BEGGAR3 1 rh#isra_beggar3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2415 /* 'Twas a kind thing to do, <CHARNAME>. */
END

I_C_T ANOMENJ 158 rh#isra_anomenbeggar
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2416 /* Poverty does not make a soul barren, Anomen. You have lived in Athkatla long enough to understand that. */
== ANOMENJ @2417 /* I will not be lectured by the likes of you, woman. */
END

// Temples

I_C_T CSGAAL 3 rh#isra_gaal
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2418 /* What mad blasphemy is this!? */
END

I_C_T RIFTG03 7 rh#isra_avatar
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2419 /* 'Twas a god once, when the world was still young, mayhap. Strange, the things that can be lost to time. */
END

I_C_T ACOLYTE1 1 rh#isra_talossan
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2420 /* A hurricane has no mind, Talossan. The man who would relish such destruction is another matter entirely. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraAlvanna","GLOBAL",0)~ THEN ACOLYTE2 rh#isra_alvanna
@2421 /* Well met, Lady Isra! I have heard that congratulations are in order? */
DO ~SetGlobal("rh#IsraAlateto","GLOBAL",1)~
== RH#ISRJ @2422 /* (laugh) Word travels fast, I see. Thank you, Alvanna. */
== ACOLYTE2 @2423 /* The Ruby Rose should be proud to have you. And you are, of course, as welcome in the house of the Morninglord as you have ever been. */
== RH#ISRJ @2424 /* I would never have thought otherwise, my friend. */
EXIT

INTERJECT KELDOR 21 rh#isra_keldorn1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) OR(2) !Class(Player1,CLERIC_ALL) !Alignment(Player1,MASK_GOOD)~ THEN
@2425 /* <CHARNAME>, have you no use whatsoever for respect? We have been sent by the Church of Helm to investigate matters, sir. */
== KELDOR @2426 /* Then our quests are linked. I am a humble servant of the Most Noble Order of the Radiant Heart, and I believe I am to meet you here. */
DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~
EXTERN KELDOR 19

INTERJECT KELDOR 21 rh#isra_keldorn2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) Class(Player1,CLERIC_ALL) Alignment(Player1,MASK_GOOD)~ THEN
@2427 /* <CHARNAME>, have you no use whatsoever for respect? We have been sent by the Church of Lathander to investigate matters, sir. */
== KELDOR @2426 /* Then our quests are linked. I am a humble servant of the Most Noble Order of the Radiant Heart, and I believe I am to meet you here. */
DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",1)~
EXTERN KELDOR 19

I_C_T KAYL2 10 rh#isra_fallenpallies
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2428 /* As terrible a thought as any. */
END

I_C_T BORINALL 7 rh#isra_borinall
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2429 /* <CHARNAME>... don't speak these words. */
== BORINALL @2430 /* Decidedly strange company for a Talossan in any case, though odder things have happened. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraPostul6","GLOBAL",0)~ THEN POSTUL6 rh#isra_postul6
@2431 /* Why, if it isn't the Lady Isra. There's still no temple to Sune here, I'm afraid, though if you ask real nice, maybe they'll build you one. */
DO ~SetGlobal("rh#IsraPostul6","GLOBAL",1)~ 
== RH#ISRJ @2432 /* Your mockery is unappreciated, sir. */
EXIT

// Bridge

I_C_T INSPECT 46 rh#isra_inspect
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2433 /* Loath as I am to intrude upon an official investigation, Athkatla's forces have seemed rather... beleaguered as of late. Perhaps we should look into this, <CHARNAME>. */
END

I_C_T FFBIFF01 2 rh#isra_ffplay
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2434 /* By Sune, this is... not as I had remembered the playhouse. */
END

I_C_T RAELIS 43 rh#isra_raelis1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2435 /* I would lend these people aid, <CHARNAME>. Too few defend the cares of bards in this city as it is. */
== RAELIS @2436 /* 'Twould be a kinder city if they did, my child. */
END

I_C_T RAELIS 79 rh#isra_raelis2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2437 /* What madness is this, <CHARNAME>? You agreed to help these people! */
DO ~IncrementGlobal("rh#IsraOffense","GLOBAL",10)~ 
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraFFCust03","GLOBAL",0)~ THEN FFCUST03 rh#isra_ffcust03
@2438 /* Ain't ye a bit too old to be playing knight in shining armor, lassie? Ye ought to settle down nice and proper! */
DO ~SetGlobal("rh#IsraFFCust03","GLOBAL",1)~ 
== RH#ISRJ @2439 /* This is hardly a game to me, my lady, but I thank you for your advice... unsolicited though it may have been. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraFFCust05","GLOBAL",0)~ THEN FFCUST05 rh#isra_ffcust05
@2440 /* Lady Isra! Why, it is a pleasure to see you, as always. How fares your cousin Lamia? I haven't seen her in ages! */
DO ~SetGlobal("rh#IsraFFCust05","GLOBAL",1)~ 
== RH#ISRJ @2441 /* Lady Crytrapper is quite well, thank you, though I am beginning to understand why she avoids Athkatla. If you would please excuse me. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraBFishw1","GLOBAL",0)~ THEN BFISHW1 rh#isra_bfishw1
@2442 /* You there! Yer a Sunite, by the looks of ye. Ain't ye got nothing better to do than prance around with them actors and such? */
DO ~SetGlobal("rh#IsraBFishw1","GLOBAL",1)~
== RH#ISRJ @2443 /* More often than not, aye. */
== BFISHW1 @2444 /* Hmph. I'll believe it when I sees it. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraBProst2","GLOBAL",0)~ THEN BPROST2 rh#isra_bprost2
@2445 /* Looking like ye does, my dear, ye could make a nice penny on the streets yourself. Far better than getting yerself skewered in some dungeon, at least. */
DO ~SetGlobal("rh#IsraBProst2","GLOBAL",1)~ 
== RH#ISRJ @2446 /* (sigh) I am not sure whether to be flattered or offended. */
EXIT

I_C_T YUSUF 2 rh#isra_surayahcomment
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2447 /* Anomen, you... why would you do such a vile thing!? */
END

// Waukeen's Promenade

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) !Global("rh#IsraQuestOne","GLOBAL",5) Global("rh#IsraPatricia","GLOBAL",0)~ THEN SEVBAR01 rh#isra_sevbar1
@2448 /* Hullo, Miss Isra. I hadn't realized ye was still in Athkatla... never thought the place agreed with ye that much. */
DO ~SetGlobal("rh#IsraPatricia","GLOBAL",1)~
== RH#ISRJ @2449 /* I cannot say that it does, though I expect that business will keep me here for the foreseeable future. */
== SEVBAR01 @2450 /* Is that so? Well, ye should drop by more often, milady. Yer a far cry from me normal clientele. */
== RH#ISRJ @2451 /* (laugh) I'm afraid I tend to frighten that normal clientele away. */
== SEVBAR01 @2452 /* I ain't got no problem with that, I assure ye. */
EXIT

I_C_T SEVDRU01 0 rh#isra_alateto
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2453 /* Oh, not this again. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraNobleM2","GLOBAL",0)~ THEN NOBLEM2 rh#isra_noblem2
@2454 /* Why, if it isn't the lady Isra! I do hope your order is treating you well these days. */
DO ~SetGlobal("rh#IsraNobleM2","GLOBAL",2)~
== RH#ISRJ @2455 /* Quite well, thank you. */
== NOBLEM2 @2456 /* Very good, very good. Well, if that ever changes, don't ever think that you have nowhere else to go. */
== RH#ISRJ @2457 /* I see. I shall... keep that in mind, my lord. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraNobleW1","GLOBAL",0)~ THEN NOBLEW1 rh#isra_noblew1
@2458 /* Isra, darling, what a delight it is to see you. I hope I can expect your cousin Evendur at my next dinner party? */
DO ~SetGlobal("rh#IsraNobleW1","GLOBAL",1)~ 
== RH#ISRJ @2459 /* I think it... unlikely, my lady. He has not been well as of late. */
== NOBLEW1 @2460 /* Oh? That is a pity. We've so missed his handsome face. */
EXIT

// Government District

I_C_T VICG1 3 rh#isra_vicburning
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2461 /* This is not justice, <CHARNAME>. These men are no nobler than their victim... not if they are invoking Beshaba's name. */
END

I_C_T TOLGER 75 rh#isra_tolgerias
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2462 /* I would be reluctant to agree to any task blindly, <CHARNAME>... especially one proposed by a Cowled Wizard. */
END

I_C_T DELON 5 rh#isra_delon
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2463 /* Must you be so heartless, <CHARNAME>? */
END

I_C_T SCSARLES 4 rh#isra_sarles1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2464 /* The nobility's favor is fickler than a church's, sir. Your art will not be immortalized if you refuse such commissions. */
== SCSARLES @2465 /* Your prejudices are certainly plain enough to see, milady. */
END

I_C_T SCSARLES 5 rh#isra_sarles2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2464 /* The nobility's favor is fickler than a church's, sir. Your art will not be immortalized if you refuse such commissions. */
== SCSARLES @2465 /* Your prejudices are certainly plain enough to see, milady. */
END

I_C_T SCSARLES 6 rh#isra_sarles3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2464 /* The nobility's favor is fickler than a church's, sir. Your art will not be immortalized if you refuse such commissions. */
== SCSARLES @2465 /* Your prejudices are certainly plain enough to see, milady. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraCivil02","GLOBAL",0)~ THEN CIVIL02 rh#isra_civil02
@2466 /* One moment, my lady... you are related to the Jysstevs, are you not? There are some tax irregularities that I would like to have a word about. */
DO ~SetGlobal("rh#IsraCivil02","GLOBAL",1)~ 
== RH#ISRJ @2467 /* Then mayhap you should speak with the Jysstevs themselves. */
== CIVIL02 @2468 /* Well, I would... if they'd talk to me. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraGNobleF1","GLOBAL",0)~ THEN GNOBLEF1 rh#isra_gnoblef1
@2469 /* Why, if it isn't Miss Isra Ghadir... your father still hasn't managed to marry you off, has he? */
DO ~SetGlobal("rh#IsraGNobleF1","GLOBAL",1)~ 
== RH#ISRJ @2470 /* Ah... no, he has not. */
== GNOBLEF1 @2471 /* For shame. I do have a nephew who might make for an appropriate match-- */
== RH#ISRJ @2472 /* That is... kind of you, my lady, but truly unnecessary. */
EXIT

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraGNobleM1","GLOBAL",0)~ THEN GNOBLEM1 rh#isra_gnoblem1
@2473 /* Hmm... I remember you, girl. Didn't your mother run off with a commoner or some such nonsense? */
DO ~SetGlobal("rh#IsraGNobleM1","GLOBAL",1)~ 
== RH#ISRJ @2474 /* My mother's house is more impressed by success than by blood, my lord. Would that all of Amn's nobility was as sensible. */
EXIT

I_C_T GNOBLEM2 3 rh#isra_gnoblem2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2475 /* You do not know them as well as you think you do, if that is the case. */
END

CHAIN IF WEIGHT #-1 ~CombatCounter(0) See("rh#Isra2") InParty("rh#Isra2") !See([ENEMY]) !StateCheck("rh#Isra2",CD_STATE_NOTVALID) RandomNum(2,1) Global("rh#IsraOriana","GLOBAL",0)~ THEN ORIONA rh#isra_Oriana
@2476 /* Darling, a young thing like you... you could do quite well for yourself here if you learned to bend a little. */
DO ~SetGlobal("rh#IsraOriana","GLOBAL",1)~ 
== RH#ISRJ @2477 /* I would have thought that you didn't care for competition. */
== ORIONA @2478 /* Oh, there is more than enough favor to go around. */
== RH#ISRJ @2479 /* Of that I have no doubt. */
EXIT

// Graveyard

I_C_T TIRDIR 1 rh#isra_bodhi1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2480 /* Extortion and worse... what do you know of these people, friend? */
== TIRDIR @2481 /* N-not much, I'm afraid. */
END

// Bodhi Refusal
I_C_T BODHI 1 rh#isra_bodhi1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2482 /* I do not like this, <CHARNAME>. This... woman... positively reeks of evil. Don't make the mistake of treating with her! */
END

I_C_T BODHI 6 rh#isra_bodhi2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2483 /* You cannot possibly be considering this offer, <CHARNAME>. I certainly won't work with this creature. */
END

I_C_T SAFE BODHI 18 rh#isra_bodhi3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2484 /* This is madness, <CHARNAME>! I thought-- clearly I was wrong. I wish you luck; you will likely need it. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
EscapeArea()~
END

I_C_T WELLYN 5 rh#isra_wellyn1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2485 /* Surely we can do something for the child, <CHARNAME>. */
END

I_C_T WELLYN 6 rh#isra_wellyn2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2485 /* Surely we can do something for the child, <CHARNAME>. */
END

I_C_T WELLYN 7 rh#isra_wellyn3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2486 /* The Copper Coronet... 'tis little surprise that it counts even murderers amongst its patrons. */
END

// City Gates

I_C_T CROTHF02 5 rh#isra_tiiroaulava1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2487 /* Important? Love should not be about feeling important, my lady. */
== CROTHF02 @2488 /* Oh, don't be such a spoilsport. */
END

I_C_T CRODRU01 9 rh#isra_tiiroaulava2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2489 /* Crimes? Oh, <CHARNAME>... */
END

I_C_T CROBAR01 1 rh#isra_crookedcrane
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2490 /* Comfortable, mayhap, though I've spent enough time in stables to be wary of the smell. */
== CROBAR01 @2491 /* You'd get used to it quick enough. */
END

// ---------------------------------------------
// Trademeet
// ---------------------------------------------

// Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
    Name("rh#Isra2",LastTalkedToBy)~ THEN GOTO rh#isra_gypsy
END

CHAIN TRGYP02 rh#isra_gypsy
@2492 /* You are prouder than you realize, child, and more obstinate. Don't judge those closest to you more harshly than you would a stranger. They don't deserve it. */
== RH#ISRJ @2493 /* Words to take to heart. Thank you, my lady. */
EXIT 

I_C_T TRCUT07 4 rh#isra_trademeet
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2494 /* My, that should be a lovely sight. I do wonder what sculptor they commissioned for this. */
END

I_C_T TRSKIN01 10 rh#isra_raissa
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2495 /* We cannot leave her like this, <CHARNAME>. If there is a way to restore her, money is of little consequence. */
== TRSKIN01 @2496 /* Help me, please! */
END

I_C_T TRSKIN02 15 rh#isra_tiris
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2497 /* Rejiek...? There cannot possibly be *two* fiends in Amn with that name. */
END

I_C_T TRFUED01 3 rh#isra_lurraxol
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2498 /* I did not realize that one had to found a city to be considered nobility. */
== TRFUED01 @2499 /* Hmph. True nobility, I said. */
END

I_C_T TRFUED05 2 rh#isra_alibakkar
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2500 /* Commoner? I doubt the Lurraxols of Murann would appreciate their kinswoman being called common. */
== TRFUED05 @2501 /* What the fools in Murann think is of little consequence here. */
END

// ---------------------------------------------
// Umar Hills
// ---------------------------------------------

I_C_T UHKID03 2 rh#isra_umarkids
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2502 /* Swords and ale are hardly the markings of an adult. */
== UHKID02 @2503 /* But you've got one, lady! */
END

I_C_T UHMAY01 18 rh#isra_umarmayor
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2504 /* Loath as I am to credit old wives' tales, I have never heard of wolves or ogres doing such things... we should step carefully, <CHARNAME>. */
END

INTERJECT MAZZY 6 rh#isra_umarmazzy
== RH#ISRJ IF ~!IsValidForPartyDialog("Keldorn") InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) ~ THEN
@2505 /* I can sense no evil in this woman, <CHARNAME>. There is no need to leave her here. Come, I shall free her myself. */
DO ~SetGlobal("MazzyFreed","GLOBAL",1)~
EXTERN MAZZY 13

I_C_T VALYGAR 43 rh#isra_umarvalygar
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2506 /* I would trust this man far sooner than I would the wizards, <CHARNAME>. */
END

I_C_T VALYGAR 8 rh#isra_umarvalygar2
== RH#ISRJ IF ~Global("hiredbycowled","GLOBAL",1) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2507 /* The wizards have played us for fools, <CHARNAME>. I would not harm this man on their behalf. */
END

I_C_T VALYGAR 28 rh#isra_umarvalygar3
== RH#ISRJ IF ~Global("hiredbycowled","GLOBAL",1) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2508 /* If you mean to fight this ranger, <CHARNAME>, you shall do it without my aid. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
EscapeArea()~
== VALYGAR @2509 /* Have at you! */
END

// ---------------------------------------------
// Windspear Hills
// ---------------------------------------------

I_C_T GARREN 9 rh#isra_garren1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2510 /* Do reconsider, <CHARNAME>. I have no wish to come into conflict with the Radiant Heart. */
END

I_C_T GARREN 22 rh#isra_garren2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2511 /* I... see. I have no wish to come into conflict with the Radiant Heart. */
END

I_C_T GARREN 35 rh#isra_garren3a
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2512 /* We should make haste, <CHARNAME>. I would not trust his child's wellbeing in Lord Jierdan's hands for long. */
END

I_C_T GARREN 36 rh#isra_garren3b
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2512 /* We should make haste, <CHARNAME>. I would not trust his child's wellbeing in Lord Jierdan's hands for long. */
END

I_C_T GARREN 37 rh#isra_garren3c
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2512 /* We should make haste, <CHARNAME>. I would not trust his child's wellbeing in Lord Jierdan's hands for long. */
END

I_C_T FIRKRA02 21 rh#isra_firky1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2513 /* You would leave this creature unchallenged, <CHARNAME>? Garren's child is our priority at the moment, but I would be wary of giving this beast a chance to regroup. */
END

I_C_T FIRKRA02 23 rh#isra_firky2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2514 /* Dragons are seldom so indulgent, <CHARNAME>... if he wishes us to leave, it is likely because he is not as prepared as he thought he was. I would call his bluff. */
== FIRKRA02 @2515 /* And you are welcome to, paladin, if you are so eager to die. */
END

I_C_T FIRKRA02 32 rh#isra_firky3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2516 /* This is no time for such jests, <CHARNAME>. I, for one, will tolerate no deals with this beast. */
END

I_C_T FIRKRA02 32 rh#isra_firky4
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2517 /* This is madness, <CHARNAME>, and I shan't stand for it! */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
END

// ---------------------------------------------
// Brynnlaw
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("rh#IsraSanik","GLOBAL",1)~ THEN RH#ISRJ rh#isra_sanik
@2518 /* How needlessly tragic this <DAYNIGHT> has been... we must at least try to save his lady, <CHARNAME>, and I would have words with the one who ordered this in any case. */
= @2519 /* Justice will not be served until this Galvena has been brought low as well. */
DO ~SetGlobal("rh#IsraSanik","GLOBAL",2)~ 
EXIT

I_C_T PIRCOR02 12 rh#isra_ginia
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2520 /* By Sune, this tale grows darker with each passing moment. */
END

I_C_T PPIMOEN 1 rh#isra_ppimmy
== RH#ISRJ IF ~Global("rh#IsraWasInBGI","GLOBAL",1) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2521 /* By Sune, what has been done to her...? */
END

I_C_T PPDRADEE 3 rh#isra_dradeel
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2522 /* This truly is a place of madness. */
END

I_C_T PPAPHRIL 3 rh#isra_aphril
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2523 /* The line between a gift and a curse... 'tis terrible to behold. */
END

I_C_T PPSAEM2 4 rh#isra_saemon
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2524 /* You win little sympathy from me if all you can think to criticize is how poorly you have been paid! */
END

I_C_T IMOEN2 22 rh#isra_immy2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2525 /* <CHARNAME>! I would sooner leave myself than abandon her here. */
END

// ---------------------------------------------
// Slayer Changes
// ---------------------------------------------

INTERJECT PLAYER1 3 rh#isra_slayer1
== RH#ISRJ IF ~Global("rh#IsraRomanceActive","GLOBAL",2) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN 
@2526 /* <CHARNAME>? <CHARNAME>, are you well? You look faint. */
END
	++ @2527 /* I feel a bit faint too. Don't worry about it. */ EXTERN RH#ISRJ slayer1.1
	++ @2528 /* I wasn't fully in control for a moment, but... I'm okay now. */ EXTERN RH#ISRJ slayer1.1
	++ @2529 /* It's nothing, Isra. Let's move on. */ EXTERN RH#ISRJ slayer1.1

APPEND RH#ISRJ

IF ~~ slayer1.1
  SAY @2530 /* Very well, but... if you are hurt, you will let me know, I hope. */
COPY_TRANS PLAYER1 3 
END 
END

I_C_T PLAYER1 5 rh#isra_slayer2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN 
@2531 /* <CHARNAME>, you... that was an avatar of Bhaal! Whatever madness caused such a thing, you must guard against it happening again! */
END

INTERJECT PLAYER1 7 rh#isra_slayer3 
== RH#ISRJ IF ~Global("rh#IsraRomanceActive","GLOBAL",2) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN 
@2532 /* <CHARNAME>? <CHARNAME>, 'tis a nightmare, surely. You must-- */ 
END 
	++ @2533 /* I think it's happening again! Stay away! */ EXTERN RH#ISRJ slayer3.1
	++ @2534 /* Stand back, Isra! I cannot control this! */ EXTERN RH#ISRJ slayer3.1
	++ @2535 /* Don't touch me right now, woman! I... */ EXTERN RH#ISRJ slayer3.1

CHAIN RH#ISRJ slayer3.1
@2536 /* Your lips move, but I don't... <CHARNAME>? <CHARNAME>, do you hear-- no! */ 
DO ~SetGlobal("rh#IsraEndangerLovedOne","GLOBAL",1) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ 
EXIT

EXTEND_BOTTOM PLAYER1 10 
IF ~Global("rh#IsraEndangerLovedOne","GLOBAL",1) OR(3) !InParty("rh#Isra2") !InMyArea("rh#Isra2") StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ GOTO 12  
IF ~Global("rh#IsraEndangerLovedOne","GLOBAL",1) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN RH#ISRJ slayer3.2 
END 

CHAIN RH#ISRJ slayer3.2
@2537 /* <CHARNAME>, you would have killed me, had I let you. I... */
= @2538 /* 'Twould be wiser to sleep apart, I think... at least for a time. Though I rather doubt that I shall be sleeping well at all in the near future. */
EXIT

// ---------------------------------------------
// Underdark
// ---------------------------------------------

I_C_T SAHPR1 36 rh#isra_sahaugin
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2539 /* Saviors...? I can think of few things I would like to do less. */
END

I_C_T SAHBEH01 0 rh#isra_spectator
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2540 /* By the gods, it actually wants to talk? */
END

I_C_T UDDUER03 0 rh#isra_duergar
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2541 /* How... utterly charming a tone. */
END

I_C_T UDSVIR03 9 rh#isra_svirfneblin
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2542 /* Outside of dreaming? I do not care for the sound of this. */
END

I_C_T UDILSLA2 10 rh#isra_illithidslave
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2543 /* I cannot imagine that anyone would ask you to. */
END

I_C_T UDSILVER 9 rh#isra_adalon
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2544 /* What a majestic creature this is... 'tis a blessing even to lay eyes upon her. */
== UDSILVER IF ~!IsValidForPartyDialog("Imoen2") !IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Nalia")~ THEN @2545 /* Yes, yes, of course, but I have little time for your starry-eyed fawning. Listen well to what I say. */
END

I_C_T UDPHAE01 61 rh#isra_phaere1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2546 /* Massacring svirfneblin... surely there are more worthwhile uses of our time. */
== UDPHAE01 @2547 /* Your time will be spent as I deem fit, female. */
END

EXTEND_TOP UDPHAE01 106
+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2548 /* My companion, Isra. */ + phaere2
END

APPEND UDPHAE01

IF ~~ phaere2
 SAY @2549 /* (snort) The female who fights by your side? What do I care if you dally with her? But I shall have her executed before I allow you to choose her over me. */
++ @2550 /* Well, alright, it's not her... it's, uh, someone else you don't know... */ + 111
++ @2551 /* But I still can't do this, Phaere... */ + 101
++ @2552 /* Well, perhaps it's not someone... it's, ah, a more personal problem... */ + 105
++ @2553 /* Very well.  I suppose I have no choice, here. */ + 103
END
END

// ---------------------------------------------
// Bodhi Abduction
// ---------------------------------------------

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("rh#Isra2")
!Global("rh#IsraRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 rh#isra_bodhinap1
== BODHIAMB IF ~Global("rh#IsraRomanceActive","GLOBAL",2)
InParty("rh#Isra2")~ THEN @2554 /* You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose. */
END
IF ~OR(2)
!InPartyAllowDead("rh#Isra2")
Dead("rh#Isra2")~ THEN EXTERN BODHIAMB 6
IF ~InPartyAllowDead("rh#Isra2")
!Dead("rh#Isra2")~ THEN EXTERN BODHIAMB bodhinap2

CHAIN BODHIAMB bodhinap2
@2555 /* Consider the lovely Isra here. Some tales are too tragic even for a Sunite's tastes. */
== RH#ISRJ @2556 /* I don't fear you, vampire. */
== BODHIAMB @2557 /* Oh, but you should. Follow me further, <CHARNAME>, and you will lose more than you can imagine!  Starting now! */
END
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#isct2")~
UNSOLVED_JOURNAL @2558 /* The Final Battle with Bodhi.

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
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#isbdy")~ + @2559 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
	+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("rh#isbdy")~ + @2559 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ GOTO 10
END

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("rh#isbdy")~ + @2560 /* I lost a loved one in a battle with his sister, Bodhi.  I seek a means of curing her. */ GOTO 3
END

APPEND OGHMONK1
IF WEIGHT #-1
~Global("RevealUmar","GLOBAL",1)
PartyHasItem("rh#isbdy")~ THEN BEGIN rh#isra_OghmaMonk
 SAY @2561 /* Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready. */
	++ @2562 /* No, thank you, I have no need of help at the moment. */ EXTERN OGHMONK1 5
	++ @2559 /* A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that. */ EXTERN OGHMONK1 6
END
END

// Bodhi abduction: Elhan

EXTEND_BOTTOM C6ELHAN2 70
	+ ~PartyHasItem("rh#isbdy")~ + @2563 /* Elhan! I've the half vampire body of Isra here because of you! You'll tell me now! */ + 76
END

EXTEND_BOTTOM WARSAGE 0
	+ ~!Dead("c6bodhi") Global("rh#IsraVampire","GLOBAL",2)~ + @2564 /* A loved one was taken by a vampire. What can I expect when I find her? */ + 6
END

EXTEND_BOTTOM WARSAGE 0
	+ ~PartyHasItem("rh#isbdy")~ + @2565 /* Someone I care about has fallen to a vampire. Is there any way to save her? */ + 5
END

// Final battle

// Bodhi section 2
ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("rh#IsraVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 rh#isra_bodhinap3
  == C6BODHI IF ~Global("rh#IsraVampire","GLOBAL",2)~ THEN
  @2566 /* But... no, I have already prepared much for this meeting, <CHARNAME>. I did warn you that you would suffer great loss if you continued your push towards me.  I did not lie. */
END
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @2567 /* You have taken too much already!  You will return both Imoen's soul and Isra! */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @2568 /* And you have delivered on that promise. Return Isra and perhaps I will be merciful. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @2569 /* I would have hunted you for your theft of Isra alone. She is very important to me. */ EXTERN C6BODHI bodhinap4
	+ ~Global("rh#IsraVampire","GLOBAL",2)~ + @2570 /* You place too much confidence in sentiment.  The theft of Isra will not save you. */ EXTERN C6BODHI bodhinap5

APPEND C6BODHI

IF ~~ bodhinap4
 SAY @2571 /* Here she is, though she is lost to you. They say that nothing is more vile than a fallen paladin, and it may yet prove true. I doubt your fumbling could have inspired the loyalty I have taken with a bite and a gaze. */
IF ~~ UNSOLVED_JOURNAL @2572 /* The Final Battle with Bodhi.

Bodhi has turned Isra into a vampire!  Or... or very nearly.  The process may not have been completed in the short time Bodhi has had her. I will have lost her if something cannot be done.  Perhaps the elven war sage might know some way of restoration ... or Elhan... */
EXTERN RH#ISVMP bodhinap7
END

IF ~~ bodhinap5
SAY @2573 /* An interesting ploy, though I am sure her fate will still serve as an example, whether you wish her back or not. */
IF ~~ + bodhinap4
END

IF ~~ bodhinap6
SAY @2574 /* Do you see that, <CHARNAME>? She is not yet fully turned, and yet she is already mine to use against you. So much for true love. */
IF ~~ EXTERN C6BODHI 28
END
END

BEGIN RH#ISVMP

IF ~~ bodhinap7
SAY @2575 /* What... do you wish of me, mistress? */
IF ~~ EXTERN C6BODHI bodhinap6
END

// ---------------------------------------------
// Chapters 6 & 7
// ---------------------------------------------

I_C_T C6ELHAN2 28 rh#isra_elhan1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2576 /* Gone...? Destroyed? I thought... I had assumed that there would still be time. */
END

I_C_T C6ELHAN2 45 rh#isra_elhan2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2577 /* Aye, such an overture would be greeted with suspicion at best, though any aid would still be appreciated. */
END

I_C_T C6BODHI 0 rh#isra_c6bodhi
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2578 /* We shall prove more resourceful by far in destroying you, vampire! */
END

I_C_T SUDEMIN 32 rh#isra_demin1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2579 /* Aye, were it easy, the city would already be saved. */
END

I_C_T PLAYER1 16 rh#isra_irenicusdead
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN 
@2580 /* Oh, has victory ever been as glorious as this, or as dearly bought... */
END

// ---------------------------------------------
// Tree of Life
// ---------------------------------------------

INTERJECT PLAYER1 33 rh#isra_tree1
== PLAYER1 IF ~Global("rh#IsraRomanceActive","GLOBAL",2) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN 
@2581 /* Isra, the paladin of Sune who has worked her way into your own heart. Recent events have proven painful and difficult for both of you, but you can find no trace of regret in her eyes as she gazes at you now. */
END
	++ @2582 /* Isra... I --- */ EXTERN RH#ISRJ tree1.1

INTERJECT PLAYER1 33 rh#isra_tree2
== PLAYER1 IF ~!Global("rh#IsraRomanceActive","GLOBAL",2) InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2583 /* Isra, the paladin of Sune, has been a steadfast friend and companion thus far, but she has a life of her own outside of your struggles. */
END
	++ @2584 /* Isra... you have family to return to. You don't need to follow me; this isn't your fight. */ EXTERN RH#ISRJ tree2.1
	++ @2585 /* Irenicus is a dangerous enemy, Isra. Don't feel like you have to go through with this. */ EXTERN RH#ISRJ tree2.1
	++ @2586 /* I hope you're ready for what lies ahead, Isra. I need you at your best. */ EXTERN RH#ISRJ tree2.2
	
APPEND RH#ISRJ

IF ~~ tree1.1
 SAY @2587 /* Don't, <CHARNAME>. Please. If you were to start speaking now, I'm not sure I could ever bring myself to stop you. We haven't the time for that. */
 = @2588 /* You know that I would never turn back now, not when this entire city is depending upon us. But even if it were just you in danger, that would be enough. */
COPY_TRANS PLAYER1 33
END

IF ~~ tree2.1
 SAY @2589 /* Should I abandon you now, my friend, at the very end? I would never be able to live with myself. Come, let us meet your wizard one final time. */
COPY_TRANS PLAYER1 33
END

IF ~~ tree2.2
 SAY @2590 /* Aye, I know it. Come, let us meet your wizard one final time. */
COPY_TRANS PLAYER1 33
END
END

// ---------------------------------------------
// Hell
// ---------------------------------------------

I_C_T PLAYER1 25 rh#isra_hell1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2591 /* By all the gods, I did not think it would be finished quite so easily, though the Nine Hells... I can only pray that this is just temporary. */ 
END

I_C_T HELLJON 7 rh#isra_helljon1
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2592 /* In Sune's name, wizard, your depravities stop here! */ 
END

I_C_T HELLJON 8 rh#isra_helljon2
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2592 /* In Sune's name, wizard, your depravities stop here! */ 
END

I_C_T HELLJON 9 rh#isra_helljon3
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2592 /* In Sune's name, wizard, your depravities stop here! */ 
END

I_C_T HELLJON 10 rh#isra_helljon4
== RH#ISRJ IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@2592 /* In Sune's name, wizard, your depravities stop here! */ 
END

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND RH#ISRJ

IF ~IsGabber(Player1) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN BEGIN UDpid
 SAY @2593 /* I would hesitate to speak right now, <CHARNAME>. Too many distractions may well prove deadly. */
	++ @2594 /* There's something wrong with your voice, Isra. */ + stringfix
	++ @2595 /* Of course. */ EXIT
END

IF ~IsGabber(Player1)~ THEN BEGIN pid
 SAY @2596 /* Yes, what is it? */ 
	+ ~Global("rh#IsraQuestTwo","GLOBAL",7)~ + @2597 /* I'm ready to visit the Crytrapper estate now. */ + crytrapper
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + @2598 /* What do you think of our quest? */ + quest1
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) OR(2) Global("rh#IsraRomanceActive","GLOBAL",1)  Global("rh#IsraRomanceActive","GLOBAL",2) GlobalLT("rh#IsraTalks","GLOBAL",43)~ + @2598 /* What do you think of our quest? */ + quest2
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("rh#IsraRomanceActive","GLOBAL",1)  !Global("rh#IsraRomanceActive","GLOBAL",2) GlobalLT("rh#IsraTalks","GLOBAL",31)~ + @2598 /* What do you think of our quest? */ + quest2
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraTalks","GLOBAL",43)~ + @2598 /* What do you think of our quest? */ + quest3
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("rh#IsraRomanceActive","GLOBAL",1)  !Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraTalks","GLOBAL",31)~ + @2598 /* What do you think of our quest? */ + quest3
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + @2598 /* What do you think of our quest? */ + quest4
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + @2598 /* What do you think of our quest? */ + quest5
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%) !Dead("C6Bodhi")~ + @2598 /* What do you think of our quest? */ + quest6
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%) Dead("C6Bodhi") Global("rh#IsraVampire","GLOBAL",6) GlobalLT("rh#IsraPaladin","GLOBAL",6)~ + @2598 /* What do you think of our quest? */ + quest7
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%) Dead("C6Bodhi") OR(2) !Global("rh#IsraVampire","GLOBAL",6) GlobalGT("rh#IsraPaladin","GLOBAL",5)~ + @2598 /* What do you think of our quest? */ + quest8
	+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%) !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906")~ + @2598 /* What do you think of our quest? */ + quest9
	++ @2599 /* Could I ask you something personal? */ + personal
	++ @2600 /* Could you tell me about your religion? */ + religion
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2601 /* I'd like to talk to you for a moment, Isra. */ + romancemanagement
	+ ~	Global("rh#IsraRomanceActive","GLOBAL",1) Global("rh#IsraQuestTwo","GLOBAL",13)~ + @2601 /* I'd like to talk to you for a moment, Isra. */ + romancemanagement2
	++ @2602 /* Is there something wrong with your voice? */ + stringfix
	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",1) Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2603 /* (Flirt with Isra) */ + flirt
	++ @2604 /* Not at the moment. */ EXIT
END

IF ~~ crytrapper
 SAY @2605 /* Good. I'm relieved to hear it. */
IF ~~ DO ~SetGlobal("rh#IsraQuestTwo","GLOBAL",8)
StartCutSceneMode() 
StartCutScene("rh#isct7")~
EXIT
END

IF ~~ quest1
 SAY @2606 /* I must admit, I find the thought of asking the Shadow Thieves for aid repugnant, but I see little alternative at the moment. */
IF ~~ EXIT
END

IF ~~ quest2
 SAY @2607 /* Were the tasks we've been assigned not so important, I would be more troubled about the deal we have made. */
IF ~~ EXIT
END

IF ~~ quest3
 SAY @2608 /* I am beginning to worry that if we do not finish these tasks and find Imoen quickly, it may already be too late. */
IF ~~ EXIT
END

IF ~~ quest4
 SAY @2609 /* I think we need to find out way out of here as quickly as possible. */
IF ~~ EXIT
END

IF ~~ quest5
 SAY @2610 /* I cannot say that I am terribly fond of it right now. I only wonder what we will find at the end of it. */
IF ~~ EXIT
END

IF ~~ quest6
 SAY @2611 /* I think slaying a vampire is always a worthy goal... especially one as powerful and horrific as Bodhi. */
IF ~~ EXIT
END

IF ~~ quest7
 SAY @2612 /* I cannot say that I am terribly fond of it right now. */
IF ~~ EXIT
END

IF ~~ quest8
 SAY @2613 /* I think we ought to find Irenicus as quickly as possible. */
IF ~~ EXIT
END

IF ~~ quest9
 SAY @2614 /* I... truly, I wish we had had a chance to see Suldanessellar when it was still in its glory... not like this. */
IF ~~ EXIT
END
 
IF ~~ personal
 SAY @2615 /* You can certainly ask. I do not promise to answer, of course. */ 
	+ ~Global("rh#IsraQuestTwo","GLOBAL",0)~ + @2616 /* You don't have any other sisters I have to worry about, I hope. */ + sisters
	+ ~Global("rh#IsraQuestTwo","GLOBAL",0)~ + @2617 /* You and your sister's husband don't seem to get along very well. */ + quentin
	+ ~GlobalGT("rh#IsraQuestTwo","GLOBAL",0)~ + @2618 /* Why do you dislike the Jysstevs so much? */ + jysstevs
	++ @2619 /* Does your whole family worship Sune? */ + familyworship
	+ ~OR(2) Global("rh#IsraOphals","GLOBAL",3) Global("rh#IsraQuestTwo","GLOBAL",13)~ + @2620 /* You're affiliated with a major merchant family. What does your family trade in? */ + familytrade
	+ ~GlobalGT("rh#IsraPaladin","GLOBAL",1)~ + @2621 /* So that was your mentor. I'm not sure what I was expecting. */ + evendur
	++ @2622 /* Do you have any hobbies? Aside from slaying dragons, that is. */ + hobbies
	+ ~RandomNum(3,1) !Global("rh#IsraRomanceActive","GLOBAL",2) GlobalLT("rh#IsraTalks","GLOBAL",30)~ + @2623 /* You're a Sunite. Have you ever been in love before? */ + love1
	+ ~RandomNum(3,1) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalLT("rh#IsraTalks","GLOBAL",30)~ + @2623 /* You're a Sunite. Have you ever been in love before? */ + love2
	+ ~RandomNum(3,1) GlobalGT("rh#IsraTalks","GLOBAL",30)~ + @2624 /* I wanted to know more about your old flame in Crimmor. */ + mairen
	+ ~RandomNum(3,2)~ + @2625 /* Could you tell me what was your first kiss like? */ + firstkiss
	+ ~RandomNum(3,3)~ + @2626 /* Are all Sunite paladins so beautiful, or are you exceptionally blessed? */ + beauty
	++ @2627 /* What's your favorite color? */ + color
	++ @2628 /* What is Crimmor like? */ + crimmor
	+ ~RandomNum(4,1)~ + @2629 /* What were you like as a child? */ + childhood1
	+ ~RandomNum(4,2)~ + @2629 /* What were you like as a child? */ + childhood2
	+ ~RandomNum(4,3)~ + @2629 /* What were you like as a child? */ + childhood3
	+ ~RandomNum(4,4)~ + @2629 /* What were you like as a child? */ + childhood4
	+ ~RandomNum(3,1)~ + @2630 /* Do you have any favorite taverns? */ + taverns
	+ ~RandomNum(3,2)~ + @2631 /* I wouldn't have expected a paladin to be so comfortable in the Den of the Seven Vales. */ + sevenvales
	+ ~RandomNum(3,3)~ + @2632 /* I take it you could give me the tour of Athkatla's festhalls? */ + festhall
	++ @2633 /* What do you think about our companions? */ + companions
	++ @2634 /* Actually, never mind. */ EXIT 
END

IF ~~ sisters
 SAY @2635 /* No, just the two, though I have more cousins than I can count. */
IF ~~ EXIT
END

IF ~~ quentin
 SAY @2636 /* No, we never have. This recent madness with Rana hardly helps matters. */
	++ @2637 /* Do you blame him for it? */ + quentin1
	++ @2638 /* Do you have any idea what's going on? */ + quentin2
	++ @2639 /* I see. */ EXIT
END

IF ~~ quentin1
 SAY @2640 /* I have no evidence, <CHARNAME>, and I am loath to make accusations without it. But... I do have suspicions, aye. */
IF ~~ EXIT
END

IF ~~ quentin2
 SAY @2641 /* I have suspicions, but without actually evidence, I would sooner not share them. */
IF ~~ EXIT
END

IF ~~ jysstevs
 SAY @2642 /* (sigh) There are only a handful of truly powerful families in Amn, <CHARNAME>. Very few of them won their wealth legitimately. */
	++ @2643 /* You must hate half of Athkatla, in that case. */ + jysstevs1
	++ @2644 /* What sorts of things do the Jysstevs do? */ + jysstevs2
	+ ~Global("rh#IsraQuestTwo","GLOBAL",13)~ + @2645 /* Well, you would certainly know a thing or two about that. */ + jysstevs3
END

IF ~~ jysstevs1
 SAY @2646 /* That is a stronger word than I might use, though I will admit, I am seldom impressed. */
IF ~~ EXIT
END

IF ~~ jysstevs2
 SAY @2647 /* Aside from endorsing foreign tyrants? I... could not say, truly. All I know is rumor, and I am reluctant to spread such gossip further without actual evidence. */
IF ~~ EXIT
END

IF ~~ jysstevs3
 SAY @2648 /* ... I am not in the mood for recriminations, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

IF ~~ familyworship
 SAY @2649 /* No. My father has always worshipped the Red Knight. Mother is a Sunite, and my sisters and I were raised in her faith as well, though Alia recently entered the Sharessan clergy instead. */
 = @2650 /* Our relationship was complicated enough beforehand, but now... well, I'm sure that you've seen it for yourself. */
IF ~~ EXIT
END

IF ~~ familytrade
 SAY @2651 /* Traditionally we all but control the Amnian fur trade, though there are a handful of Crytrappers involved in other affairs. My own mother prefers collecting and selling antiques. Given her bardic sympathies, that is not terribly surprising. */
IF ~~ EXIT
END

IF ~~ evendur
 SAY @2652 /* (sigh) He is as recovered as I expect him to ever be, but... his moods can be somewhat unpredictable at times. I... think he was too concerned about me to worry about his own predicament, however. */
IF ~~ EXIT
END

IF ~~ hobbies
 SAY @2653 /* (laugh) Aye, I should certainly hope so. I was never as musically talented as I would have liked, unfortunately, though I obviously enjoy listening. My Lliiran friends forced me to learn how to dance as well... I should like to think that I am somewhat better at that. */
 	+ ~InParty("Haerdalis")~ + @2654 /* I've heard Haer'dalis coax a song out of you before. You're not bad at all. */ + hobbies1
 	+ ~!InParty("Haerdalis")~ + @2655 /* I'll need to coax a song out of you one day. I doubt you're as bad as that. */ + hobbies1 
	++ @2656 /* Do you have any hobbies that don't come with being a Sunite? */ + hobbies2
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2657 /* You can dance? I would like to see that someday. */ + hobbies3
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2657 /* You can dance? I would like to see that someday. */ + hobbies4
	++ @2658 /* No painting or poetry? That seems a bit like you also. */ + hobbies5
END

IF ~~ hobbies1
 SAY @2659 /* Mayhap not, but I am no bard. I don't like to pretend otherwise. */
IF ~~ EXIT
END 
 
IF ~~ hobbies2
 SAY @2660 /* Oh. Well... yes, actually. I used to spend some time in my family's stables in Crimmor also... my mentor thought there were valuable lessons to impart there. */
 = @2661 /* He was considerably less pleased with my passion for racing the poor steeds across the countryside, of course, but he never did break me of that entirely. */ 
IF ~~ EXIT
END 
 
IF ~~ hobbies3
 SAY @2662 /* Hopefully there will be time for it eventually. */
IF ~~ EXIT
END 
  
IF ~~ hobbies4
 SAY @2663 /* Mmm... tonight, mayhap. I would enjoy that as well. */ 
IF ~~ EXIT
END 
 
IF ~~ hobbies5
 SAY @2664 /* I'm afraid I haven't the patience for art. Or the time for it, truly. And poetry... I don't care as much for words without melody. */ 
IF ~~ EXIT
END 

IF ~~ love1
 SAY @2665 /* Twice, aye. I love easily enough, though this life does not make such things simple. */
IF ~~ EXIT
END

IF ~~ love2
 SAY @2666 /* (smile) You are not my first, <CHARNAME>. There have been others... two in particular, a priestess of Lliira and a... well, a mistake, as it so happens. I love easily enough, but this life does not make such things simple. */
IF ~~ EXIT
END

IF ~~ mairen
 SAY @2667 /* Mairen? What more would you know of her? */
	++ @2668 /* You said that she was engaged? */ + mairen1
	++ @2669 /* She's a Lliiran, not a Sunite? */ + mairen2
	++ @2670 /* How did you two meet? */ + mairen3
END

IF ~~ mairen1
 SAY @2671 /* She is, aye, to a merchant who came with the caravans and never quite left again afterward. I wish them only happiness. */
IF ~~ EXIT
END

IF ~~ mairen2
 SAY @2672 /* Aye, the heart seldom draws distinctions between faiths, and there is a great deal of overlap between ours anyway. */
IF ~~ EXIT
END
 
IF ~~ mairen3
 SAY @2673 /* 'Tis somewhat embarrassing, I'm afraid. At the end of each caravan season in Crimmor, our churches traditionally throw a party. An exceptionally wild party, at that. */
 = @2674 /* I had never been permitted to attend one before, but the summer after I turned fifteen, my mentor relented. I think he wished afterwards that he did not. */
 = @2675 /* I do not drink at all now if I can help it, but then... I didn't know what I was doing. I didn't realize precisely what effect it would have upon me. */
 = @2676 /* Mia found me before I could make a fool of myself, fortunately. Had she not, I would likely have woken in the bed of someone considerably less conscientious. */
 = @2677 /* Please don't share that story, <CHARNAME>. I trust you with it, but I would not wish to see it spread. */
	++ @2678 /* What's to spread? It doesn't sound like anything happened. */ + mairen4
	++ @2679 /* You needn't fear for your honor. I would never repeat it. */ + mairen5
	++ @2680 /* If that's what alcohol does to you, I'd love to see you drunk someday. */ + mairen6
END
 
IF ~~ mairen4
 SAY @2681 /* It did not, though truth matters little where gossip is concerned. */
IF ~~ EXIT
END
 
IF ~~ mairen5
 SAY @2682 /* Thank you. I did not think that you would. */
IF ~~ EXIT
END
 
IF ~~ mairen6
 SAY @2683 /* I am amorous enough without it, I assure you. */
IF ~~ EXIT
END

IF ~~ firstkiss
 SAY @2684 /* (laugh) He was the son of a merchant from Cormyr who passed through Crimmor the summer I was fourteen. There is little enough to say about it, though. I never did see him again. */
IF ~~ EXIT
END

IF ~~ beauty
 SAY @2685 /* (laugh) Truth be told, I think it a divine gift, as much as any of our more direct powers. Nobody is vulgar enough to ask, of course, but... well, I was no great beauty as a child. */
IF ~~ EXIT
END

IF ~~ color
 SAY @2686 /* (laugh) I am going to have to be terribly predictable and say red, I'm afraid. 'Twould have to be by now, even if it was not originally. */
IF ~~ EXIT
END

IF ~~ crimmor
 SAY @2687 /* Lovely, truly, though it can grow slightly loud during caravan season. It may well be that every caravan in Faerun passes through the city at some point... some people certainly claim as much. */
 = @2688 /* The mayor is a good man, supported by equally good people, and the faiths of Sune, Lliira, Milil, and Chauntea hold sway above others. Whether Crimmor's prosperity is due to good leadership or caring religions, I could not say. Mayhap some combination of the two. */
 = @2689 /* There is very little crime -- some say that the Shadow Thieves owe a favor to my mother's family and have forbidden thievery within the city. I... cannot say that I care for the implications, but the evidence is clear enough. */
 = @2690 /* Not everybody within Crimmor is pleasant, of course, and there have been Athkatlan powers who have tried to increase their influence within the city. The Ophals, for one. So far to relatively little success, and I pray it remains that way. */ 
IF ~~ EXIT
END

IF ~~ childhood1
 SAY @2691 /* I was quite mad, I'm afraid. Many would say that I'm still half mad, I am sure, but I've developed at least some sense of self-preservation in the intervening years. */
IF ~~ EXIT
END

IF ~~ childhood2
 SAY @2692 /* Unbelievably gullible at times. And very nearly uncontrollable, I'm afraid, before my father managed to instill a sense of discipline in me. I'm not certain how my tutors managed to keep me alive. */
IF ~~ EXIT
END

IF ~~ childhood3
 SAY @2693 /* After I first heard my calling, I used to have a terrible habit of slipping away from my tutors to follow soldiers around Eshpurta. Were I not a general's daughter, that would likely have ended... poorly. */
IF ~~ EXIT
END

IF ~~ childhood4
 SAY @2694 /* In Crimmor? I'm sure I took more for granted than I should have, being related to the family that all but ruled the city, but... exhausting, I think, is the way that I would describe those years. */
IF ~~ EXIT
END
 
IF ~~ taverns
 SAY @2695 /* In Athkatla? The Five Flagons, I think, though the Hamstrung Giant back in Eshpurta... my arguments with my father are sometimes so bad that I tend to live there instead whenever I visit home. */
 = @2696 /* 'Tis a lovely tavern, though, frequented mostly by soldiers, merchants, and artists. In Eshpurta, the combination works beautiful. In Athkatla, 'twould probably lead to a riot. */
IF ~~ EXIT
END

IF ~~ sevenvales
 SAY @2697 /* (laugh) I do not particularly care for the clientele, but I've known Patricia for quite some time. The Lathandrites recommended the Mithrest Inn to me once several years ago, and I... clearly I didn't follow their directions as well as I could have. */
 	++ @2698 /* You must have realized as soon as you stepped in. */ + sevenvales1
 	++ @2699 /* You really have absolutely no sense of direction, do you? */ + sevenvales2
	++ @2700 /* Does Patricia give you discounts for chasing away her clientele or something? */ + sevenvales3
END

IF ~~ sevenvales1
 SAY @2701 /* I did, though I also realized that some of their dancers were actually quite good. Untrained and wasting their talent on lechers who could never truly appreciate it, true, but talent like that... 'twould have been a crime not to introduce them to instructors in Crimmor. */
 = @2702 /* It took no small amount of effort to convince them, of course, but I can be patient when necessary. */
IF ~~ EXIT
END

IF ~~ sevenvales2
 SAY @2703 /* Not as much of one as I would like, unfortunately. */
IF ~~ EXIT
END

IF ~~ sevenvales3
 SAY @2704 /* Ah... no. I would never let her. I stayed at first because some of their dancers were actually quite good. Untrained and wasting their talent on lechers who could never truly appreciate it, but talent like that... 'twould have been a crime not to introduce them to instructors in Crimmor. */
 = @2702 /* It took no small amount of effort to convince them, of course, but I can be patient when necessary. */
IF ~~ EXIT
END

IF ~~ festhall
 SAY @2705 /* No. When I come to Athkatla, 'tis never in pursuit of pleasure. Mayhap you should ask my sister Alia instead... I am sure she has catalogued every establishment in the city by now. */
IF ~~ EXIT
END

IF ~~ companions
 SAY @2706 /* 'Twould depend upon the person in question. */
	+ ~InParty("Aerie")~ + @2707 /* Aerie? */ + Aerie
	+ ~InParty("Anomen")~ + @2708 /* Anomen? */ + Anomen
	+ ~InParty("Cernd")~ + @2709 /* Cernd? */ + Cernd
	+ ~InParty("Edwin")~ + @2710 /* Edwin? */ + Edwin
	+ ~InParty("Haerdalis")~ + @2711 /* Haer'dalis? */ + Haerdalis
	+ ~InParty("Imoen2")~ + @2712 /* Imoen? */ + Imoen
	+ ~InParty("Jaheira")~ + @2713 /* Jaheira? */ + Jaheira
	+ ~InParty("Jan")~ + @2714 /* Jan? */ + Jan
	+ ~InParty("Keldorn")~ + @2715 /* Keldorn? */ + Keldorn
	+ ~InParty("Korgan")~ + @2716 /* Korgan? */ + Korgan
	+ ~InParty("Mazzy")~ + @2717 /* Mazzy? */ + Mazzy
	+ ~InParty("Minsc")~ + @2718 /* Minsc? */ + Minsc
	+ ~InParty("Nalia")~ + @2719 /* Nalia? */ + Nalia
	+ ~InParty("Neera")~ + @2720 /* Neera? */ + Neera
	+ ~InParty("Rasaad")~ + @2721 /* Rasaad? */ + Rasaad
	+ ~InParty("Viconia")~ + @2722 /* Viconia? */ + Viconia
	+ ~InParty("Valygar")~ + @2723 /* Valygar? */ + Valygar
	+ ~InParty("Yoshimo")~ + @2724 /* Yoshimo? */ + Yoshimo
	++ @2634 /* Actually, never mind. */ EXIT 
END

IF ~~ Aerie
 SAY @2725 /* I wish she were more confident, but such things take time. I do enjoy her company. */
IF ~~ EXIT
END

IF ~~ Anomen
 SAY @2726 /* He... I'm sorry, <CHARNAME>, but he reminds me of someone I once knew. The comparison is not fair to him. */
IF ~~ EXIT
END

IF ~~ Cernd
 SAY @2727 /* I cannot say that I understand him. */
IF ~~ EXIT
END

IF ~~ Edwin
 SAY @2728 /* Anything I have to say concerning him, my <PRO_LADYLORD>, I shall say to his face. */
IF ~~ EXIT
END

IF ~~ Haerdalis
 SAY @2729 /* (laugh) He is far too charming for me to be impartial, I'm afraid, though his strange philosophy... I am not sure I care for it at all. */
IF ~~ EXIT
END

IF ~~ Imoen
 SAY @2730 /* I... hate to see her suffering so, though 'tis truly a wonder that she is still as sane as she is. */
IF ~~ EXIT
END

IF ~~ Jaheira
 SAY @2731 /* I have nothing but respect for her, though I suppose that may be difficult to tell at times. */
IF ~~ EXIT
END

IF ~~ Jan
 SAY @2732 /* I am still not sure what to make of him. */
IF ~~ EXIT
END

IF ~~ Keldorn
 SAY @2733 /* My father fought alongside him once, you know. That makes things... somewhat strange, though 'tis no less of an honor. */
IF ~~ EXIT
END

IF ~~ Korgan
 SAY @2734 /* I do not see why we need his company, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ Mazzy
 SAY @2735 /* She has a purer heart than many a paladin... and I dare say that probably includes myself. 'Twould be an understatement to say that I valued her company. */
IF ~~ EXIT
END

IF ~~ Minsc
 SAY @2736 /* His heart is truer than most. */
IF ~~ EXIT
END

IF ~~ Nalia
 SAY @2737 /* I never can tell whether she sees me as an ally or an enemy, but I sympathize with her regardless. I wish all of Amn's nobility were of like mind. */
IF ~~ EXIT
END

IF ~~ Neera
 SAY @2738 /* I have no great love for wild magic, though she herself is pleasant enough company. */
IF ~~ EXIT
END

IF ~~ Rasaad
 SAY @2739 /* I have nothing but respect for both him and his faith. I do appreciate his company. */
IF ~~ EXIT
END

IF ~~ Valygar
 SAY @2740 /* I think he is very lonely, <CHARNAME>. Lonelier than he will admit to. */
IF ~~ EXIT
END

IF ~~ Viconia
 SAY @2741 /* The Sharran? I prefer her where I can see her, but I must warn you never to trust a word that she says. */
IF ~~ EXIT
END

IF ~~ Yoshimo
 SAY @2742 /* I know his skillset is important, but... I must admit, I do not overly care for his familiarity with the Shadow Thieves. */
IF ~~ EXIT
END

IF ~~ religion
 SAY @2743 /* I would be happy to, of course. What would you care to know? */ 
	++ @2744 /* I don't know that much about Sune. */ + sune
	++ @2745 /* I didn't know there were paladin orders other than the Radiant Heart. */ + orders
	++ @2746 /* Could you tell me about your novitiate? */ + novice
	++ @2747 /* What is your church like? */ + church
	++ @2634 /* Actually, never mind. */ EXIT 
END 

IF ~~ sune
 SAY @2748 /* Aye, her worship is not nearly as widespread further north as it is here. Sune is the fairest of the gods: beautiful, passionate, and boundlessly loving. She cares for her followers on a level that is somewhat unusual for a deity, mayhap, and asks only the same in return. */
	++ @2749 /* Isn't she a strange choice for a paladin? */ + sune1
	++ @2750 /* Could you tell me her dogma? */ + sune2
	++ @2751 /* Do you need to be beautiful to worship her? */ + sune3
	++ @2752 /* Is she very popular in Amn? */ + sune4
END

IF ~~ sune1
 SAY @2753 /* I do not think so, though others might disagree. We define our devotions to our gods in so many different ways, but at heart... 'tis based either in love or fear, I believe. I have no use for the latter. */ 
IF ~~ EXIT
END

IF ~~ sune2
 SAY @2754 /* She asks us to encourage love and beauty, in ourselves, in others, and in the world at large. What exactly that means... there are as many interpretations of beauty as there are Sunites, I think. We all believe that beauty is more than skin deep, that the imprint of one's soul can be seen in one's features. Some take this to literal extremes, 'tis true, but I have always felt that external beauty is marred by a poor temper or evil intent. */
 = @2755 /* We cherish art and do whatever we can to sponsor and protect its creators, and we dislike it when people hide themselves, their skills, or their treasures away. Beauty that is concealed does little to enrich Faerun in its entirety, nor does it truly even benefit its possessor. Enriching one another's lives... aye, for me, that is the key to understanding the Firehair's dogma, though others, even amongst the faithful, may well interpret it differently. */
IF ~~ EXIT
END

IF ~~ sune3
 SAY @2756 /* Yes and no, I would say. There is more to beauty than mere flesh, though we are all expected to cultivate our appearances to the best of our abilities. But no, nobody with love in their heart would be turned from her worship. */
IF ~~ EXIT
END

IF ~~ sune4
 SAY @2757 /* Exceedingly so, yes, though... not entirely for the reasons I would like, I admit. */
IF ~~ EXIT
END

IF ~~ orders
 SAY @2758 /* A small handful, certainly. Sune, Lathander, and Milil each sponsor orders, though none are as large or well-organized as the Radiant Heart. */
	++ @2759 /* You never considered Torm or Tyr instead? */ + orders1
	++ @2760 /* Would the Radiant Heart turn people away on religious grounds? */ + orders2
	++ @2761 /* Milil? The god of poetry? */ + orders3
	++ @2762 /* Those are all allied churches, aren't they? */ + orders4
	++ @2763 /* The Ruby Rose won't be angry with you for wandering around unsupervised? */ + orders5
END

IF ~~ orders1
 SAY @2764 /* No. Their faiths do important work, but duty and justice, without anything else behind them... I could never serve that. */
IF ~~ EXIT
END

IF ~~ orders2
 SAY @2765 /* Not explicitly, I do not think, though 'twould be somewhat difficult for a member of a different faith to find patronage. */
IF ~~ EXIT
END 

IF ~~ orders3
 SAY @2766 /* Aye. Most songs concerning knights are inspired by those of his order... they tend to prefer to travel with bards, and seldom simply for the pleasure of their company. */ 
IF ~~ EXIT
END

IF ~~ orders4
 SAY @2767 /* Aye. 'Tis why I know more about them. Lathander, Milil, Lliira, Selûne, Sharess, and several deities amongst the elven pantheon as well, though I am somewhat less familiar with the Seldarine. */
IF ~~ EXIT
END 

IF ~~ orders5
 SAY @2768 /* Were I still a squire, they would be, but we are largely permitted a degree of freedom in choosing our missions. The tenets of our faith very nearly mandate such flexibility. */
IF ~~ EXIT
END 

IF ~~ novice
 SAY @2769 /* 'Twas... trying at times, mayhap, but ultimately rewarding. I was twelve when I was entrusted to the Order of the Ruby Rose, and I had already spent several years studying under Eshpurta's finest military instructors, so weapons training was nothing out of the ordinary for me. As for religious training... in the church of Sune, 'tis more an endeavor of love than a chore. */
	++ @2770 /* Was it different than it would have been in another order? */ + novice1 
	++ @2771 /* What was your actual squiredom like? */ + novice2
	++ @2772 /* Did they teach you to talk like that too? */ + novice3
	++ @2773 /* How cloistered was it? */ + novice4
END

IF ~~ novice1
 SAY @2774 /* I should think so, aye. Discipline, honor, courtesy, and the other virtues are as important to us as they are to any other order, but we are also expected to be able to coexist with the rest of our church, and Heartwarders can be some of the staunchest individualists in the Realms. 'Twas a difficult lesson at times, but one better learned as a child than as an adult. */
IF ~~ EXIT
END  
 
IF ~~ novice2
 SAY @2775 /* Not quite as eventful as you might expect. Sir Evendur took me on when I was a teenager, though I cannot say that I personally saw a great deal of battle. Unlike the Radiant Heart, we do not have a standing army, and tend to focus upon larger, more terrible evils in any case. Truly, a dragon's den is no place for a squire, though waiting outside with the horses has its own lessons on patience, bravery, and humility to impart. */ 
IF ~~ EXIT
END

IF ~~ novice3
 SAY @2776 /* (laugh) Not as such, no, but after eight years, one begins to pick up such habits. Friends and family have made jests about it in the past, but I can only manage to slip out of it for a few moments before reverting. */ 
IF ~~ EXIT
END

IF ~~ novice4
 SAY @2777 /* I... truly would not be the best judge of that. The Firehair expects us not to hide ourselves away, and we take that commandment very seriously. Whether we entirely succeed, I could not say. */ 
IF ~~ EXIT
END

IF ~~ church
 SAY @2778 /* (laugh) It very nearly changes from one tenday to the next, I must admit. Our clerics are... unpredictable, to say the least. */ 
	++ @2779 /* Does working with such a chaotic church ever get irritating? */ + church1
 	++ @2780 /* Who else worships her? */ + church2
 	++ @2781 /* The rumors of wild Sunite revelry aren't exaggerated, I take it. */ + church3
END
 
IF ~~ church1
 SAY @2782 /* It has its own trials and rewards, I should think. */
IF ~~ EXIT
END

IF ~~ church2
 SAY @2783 /* Lovers, artists, bards and minstrels, and far more adventurers than one might have expected. */
IF ~~ EXIT
END

IF ~~ church3
 SAY @2784 /* That would depend upon the rumor in question, I think. There is revelry, aye, and some of it is certainly too wild for my tastes, but the most sacred of our festivals are actually quite quiet affairs. */
IF ~~ EXIT
END

IF ~~ romancemanagement
 SAY @2595 /* Of course. */
	+ ~!Global("rh#IsraSunitePC","GLOBAL",1)~ + @2785 /* Are you ever tempted to pray for romantic advice? */ + romprayer1
	+ ~Global("rh#IsraSunitePC","GLOBAL",1)~ + @2786 /* Do you ever pray for romantic advice? */ + romprayer5
	++ @2787 /* Aren't you a bit casual about taking lovers? */ + lovers
	+ ~GlobalGT("rh#IsraTalks","GLOBAL",42)~ + @2788 /* Your ex, the Tyrran... do I need to worry about running into him in the Radiant Heart's headquarters? */ + tyrran
	+ ~GlobalGT("rh#IsraTalks","GLOBAL",42) OR(2) Class(Player1,PALADIN_ALL)  Class(Player1,CLERIC_ALL)~ + @2789 /* Isra, have you ever been involved with someone who *wasn't* extremely religious? */ + exes1	
	+ ~GlobalGT("rh#IsraTalks","GLOBAL",42) OR(2) Class(Player1,DRUID_ALL)  Class(Player1,RANGER_ALL) !Class(Player1,CLERIC_RANGER)~ + @2789 /* Isra, have you ever been involved with someone who *wasn't* extremely religious? */ + exes2 
	+ ~GlobalGT("rh#IsraTalks","GLOBAL",42) !Class(Player1,PALADIN_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL)  !Class(Player1,RANGER_ALL)~ + @2789 /* Isra, have you ever been involved with someone who *wasn't* extremely religious? */ + exes3
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",0)~ + @2790 /* As much as I appreciate the attention, I'd rather you didn't flirt with me in public. */ + disable
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",1)~ + @2791 /* I miss your attention, Isra. Could you flirt with me some more? */ + enable
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",0) OR(2) Global("rh#IsraWasInBGI","GLOBAL",1) GlobalGT("rh#IsraTalks","GLOBAL",36) OR(10) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR2010")~ + @2792 /* Would you like to spend the night together? */ DO ~SetGlobal("rh#IsraSex","GLOBAL",1)~ + flirt18.3
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,1) OR(10) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR2010")~ + @2793 /* Would you care for a bit more... privacy tonight? */ + flirt18.1
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,2) OR(10) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR2010")~ + @2793 /* Would you care for a bit more... privacy tonight? */ + flirt18.2
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,3) OR(101) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR2010")~ + @2793 /* Would you care for a bit more... privacy tonight? */ + flirt18.3
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,4) OR(10) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR2010")~ + @2793 /* Would you care for a bit more... privacy tonight? */ + flirt18.4	
	++ @2794 /* I'm sorry to say this, but I think we should go back to just being friends. */ + breakup
	++ @2634 /* Actually, never mind. */ EXIT 
END

IF ~~ romancemanagement2
 SAY @2595 /* Of course. */
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",0)~ + @2790 /* As much as I appreciate the attention, I'd rather you didn't flirt with me in public. */ + disable
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",1)~ + @2791 /* I miss your attention, Isra. Could you flirt with me some more? */ + enable
	++ @2634 /* Actually, never mind. */ EXIT 
END 

IF ~~ romprayer1
 SAY @2795 /* (laugh) More than merely tempted, I assure you. */
	++ @2796 /* I'm guessing the answer is always "go for it." */ + romprayer2
	++ @2797 /* Is that why you take so long to make up your mind? */ + romprayer3
	++ @2798 /* Somehow that doesn't surprise me. */ + romprayer4
END

IF ~~ romprayer2
 SAY @2799 /* The response is seldom quite as clear as that. Guidance is usually more rewarding than straight answers. */
IF ~~ EXIT
END

IF ~~ romprayer3
 SAY @2800 /* 'Twas a small part of it, mayhap. I do like to savor such things for at least a little while. */
IF ~~ EXIT
END

IF ~~ romprayer4
 SAY @2801 /* Nor should it. */
IF ~~ EXIT
END

IF ~~ romprayer5
 SAY @2802 /* (laugh) Don't you, my love? */
IF ~~ EXIT
END

IF ~~ lovers
 SAY @2803 /* Casual? I would not say that exactly. I am very selective, but love itself... marriage can be a beautiful thing, but there is more to love than that. */
IF ~~ EXIT
END

IF ~~ tyrran
 SAY @2804 /* No. He was squired with them, but he ultimately chose to return to Calimshan instead of taking his vows. I haven't heard from him in quite some time now, but I believe he is involved in helping slaves escape into Tethyr. */
IF ~~ EXIT
END

IF ~~ exes1
 SAY @2805 /* (laugh) Not to any significant degree, no. My enthusiasm can become somewhat... off-putting, I imagine, to someone who does not understand it. */
IF ~~ EXIT
END

IF ~~ exes2
 SAY @2806 /* (laugh) Not to any significant degree, no. I am sure you can understand why... your own devotion to nature is at least somewhat analogous, I imagine. */
IF ~~ EXIT
END

IF ~~ exes3
 SAY @2807 /* (laugh) Evidently so. But before you... no, not to any significant degree. I suppose that is not entirely surprising. */
IF ~~ EXIT
END

IF ~~ disable
 SAY @2808 /* Oh. Of course. Forgive me for the impertinence. */
IF ~~ DO ~SetGlobal("rh#IsraFlirtsDisabled","GLOBAL",1)~ EXIT
END

IF ~~ enable
 SAY @2809 /* (laugh) You certainly needn't ask me twice. */
IF ~~ DO ~SetGlobal("rh#IsraFlirtsDisabled","GLOBAL",0)~ EXIT
END

IF ~~ breakup
 SAY @2810 /* Oh. Oh, I... see. Is there nothing I can say to convince you to reconsider? */
	++ @2811 /* I'm afraid not. */ + breakup1
	++ @2812 /* Never mind. I didn't mean it. */ + breakup2
END

IF ~~ breakup1
 SAY @2813 /* Then... then I suppose that is all there is to it. I'm sorry. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ breakup2
 SAY @2814 /* Good. You shouldn't scare me like that, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ stringfix 
SAY @2815 /* I... don't believe so. */ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isstr")~ EXIT 
END

IF ~~ flirt
 SAY @2816 /* Yes? */
 	+ ~RandomNum(4,1)~ + @2817 /* (Watch her) */ + flirt1.1
 	+ ~RandomNum(4,2)~ + @2817 /* (Watch her) */ + flirt1.2
 	+ ~RandomNum(4,3)~ + @2817 /* (Watch her) */ + flirt1.3
 	+ ~RandomNum(4,4) !Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2817 /* (Watch her) */ + flirt1.4
 	+ ~RandomNum(4,4) Global("rh#IsraRomanceActive","GLOBAL",2)~ + @2817 /* (Watch her) */ + flirt1.5
 	+ ~RandomNum(4,1)~ + @2818 /* (Smile at her) */ + flirt2.1
 	+ ~RandomNum(4,2)~ + @2818 /* (Smile at her) */ + flirt2.2
 	+ ~RandomNum(4,3)~ + @2818 /* (Smile at her) */ + flirt2.3
 	+ ~RandomNum(4,4)~ + @2818 /* (Smile at her) */ + flirt2.4
 	+ ~RandomNum(4,1) Gender(Player1,MALE)~ + @2819 /* (Kiss her hand) */ + flirt3.1
 	+ ~RandomNum(4,1) Gender(Player1,FEMALE)~ + @2819 /* (Kiss her hand) */ + flirt3.2
 	+ ~RandomNum(4,2)~ + @2819 /* (Kiss her hand) */ + flirt3.3
 	+ ~RandomNum(4,3)~ + @2819 /* (Kiss her hand) */ + flirt3.4
 	+ ~RandomNum(4,4)~ + @2819 /* (Kiss her hand) */ + flirt3.5
 	+ ~RandomNum(4,1)~ + @2820 /* (Bow to her extravagantly) */ + flirt4.1
 	+ ~RandomNum(4,2)~ + @2820 /* (Bow to her extravagantly) */ + flirt4.2
 	+ ~RandomNum(4,3)~ + @2820 /* (Bow to her extravagantly) */ + flirt4.3
 	+ ~RandomNum(4,4)~ + @2820 /* (Bow to her extravagantly) */ + flirt4.4
 	+ ~RandomNum(4,1) AreaType([FOREST])~ + @2821 /* (Offer her a flower) */ + flirt5.1
 	+ ~RandomNum(4,2) AreaType([FOREST])~ + @2821 /* (Offer her a flower) */ + flirt5.2
 	+ ~RandomNum(4,3) AreaType([FOREST])~ + @2821 /* (Offer her a flower) */ + flirt5.3
 	+ ~RandomNum(4,4) AreaType([FOREST])~ + @2821 /* (Offer her a flower) */ + flirt5.4
 	+ ~RandomNum(4,1)~ + @2822 /* Would you like me to fix your hair? */ + flirt6.1
 	+ ~RandomNum(4,2) Gender(Player1,MALE)~ + @2822 /* Would you like me to fix your hair? */ + flirt6.2
  	+ ~RandomNum(4,2) Gender(Player1,FEMALE)~ + @2822 /* Would you like me to fix your hair? */ + flirt6.3
 	+ ~RandomNum(4,3)~ + @2822 /* Would you like me to fix your hair? */ + flirt6.4
 	+ ~RandomNum(4,4)~ + @2822 /* Would you like me to fix your hair? */ + flirt6.5
 	+ ~Global("rh#IsraArmorFlirt","GLOBAL",0)~ + @2823 /* (Knock on her armor) */ DO ~IncrementGlobal("rh#IsraArmorFlirt","GLOBAL",1)~ + flirt7.1
 	+ ~Global("rh#IsraArmorFlirt","GLOBAL",1)~ + @2823 /* (Knock on her armor) */ DO ~IncrementGlobal("rh#IsraArmorFlirt","GLOBAL",1)~ + flirt7.2
 	+ ~Global("rh#IsraArmorFlirt","GLOBAL",2)~ + @2823 /* (Knock on her armor) */ DO ~IncrementGlobal("rh#IsraArmorFlirt","GLOBAL",1)~ + flirt7.3
 	+ ~Global("rh#IsraArmorFlirt","GLOBAL",3)~ + @2823 /* (Knock on her armor) */ DO ~IncrementGlobal("rh#IsraArmorFlirt","GLOBAL",1)~ + flirt7.4
 	+ ~RandomNum(4,1)~ + @2824 /* (Wink at her) */ + flirt8.1
 	+ ~RandomNum(4,2)~ + @2824 /* (Wink at her) */ + flirt8.2
 	+ ~RandomNum(4,3)~ + @2824 /* (Wink at her) */ + flirt8.3
 	+ ~RandomNum(4,4)~ + @2824 /* (Wink at her) */ + flirt8.4
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,1)~ + @2825 /* (Hug her) */ + flirt9.1
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,2)~ + @2825 /* (Hug her) */ + flirt9.2
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,3)~ + @2825 /* (Hug her) */ + flirt9.3
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,4)~ + @2825 /* (Hug her) */ + flirt9.4
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,1) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2826 /* (Kiss her cheek) */ + flirt10.1
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,2) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2826 /* (Kiss her cheek) */ + flirt10.2
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,3) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2826 /* (Kiss her cheek) */ + flirt10.3
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,4) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2826 /* (Kiss her cheek) */ + flirt10.4
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,1) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @2827 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.1
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,2) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @2827 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.2
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,3) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @2827 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.3
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",28) RandomNum(4,4) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @2827 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.4	
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",18) RandomNum(4,1) 
 	OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2828 /* Would you care to dance? */ + flirt11.1
  	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",18) RandomNum(4,2) 
  	OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2828 /* Would you care to dance? */ + flirt11.2
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",18) RandomNum(4,3) 
 	OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2828 /* Would you care to dance? */ + flirt11.3
 	+ ~OR(2) Global("rh#IsraRomanceActive","GLOBAL",2) GlobalGT("rh#IsraTalks","GLOBAL",18) RandomNum(4,4) 
 	OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2828 /* Would you care to dance? */ + flirt11.4
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Class(Player1,BARD_ALL) RandomNum(4,1) Gender(Player1,MALE)~ + @2829 /* (Play a song for her.) */ + flirt12.1
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Class(Player1,BARD_ALL) RandomNum(4,1) Gender(Player1,FEMALE)~ + @2829 /* (Play a song for her.) */ + flirt12.2
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Class(Player1,BARD_ALL) RandomNum(4,2)~ + @2829 /* (Play a song for her.) */ + flirt12.3
   	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Class(Player1,BARD_ALL) RandomNum(4,3)~ + @2829 /* (Play a song for her.) */ + flirt12.4
    + ~Global("rh#IsraRomanceActive","GLOBAL",2) Class(Player1,BARD_ALL) RandomNum(4,4)~ + @2829 /* (Play a song for her.) */ + flirt12.5
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,1) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2830 /* (Stroke her cheek) */ + flirt13.1
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,2) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2830 /* (Stroke her cheek) */ + flirt13.2
   	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,3) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2830 /* (Stroke her cheek) */ + flirt13.3
    + ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,4) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @2830 /* (Stroke her cheek) */ + flirt13.4
    + ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,1)~ + @2831 /* (Kiss her lips) */ + flirt14.1
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,2)~ + @2831 /* (Kiss her lips) */ + flirt14.2
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,3)~ + @2831 /* (Kiss her lips) */ + flirt14.3	
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,4)~ + @2831 /* (Kiss her lips) */ + flirt14.4
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,1) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2832 /* (Pull her into your arms) */ + flirt15.1
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,2) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2832 /* (Pull her into your arms) */ + flirt15.2
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,3) Gender(Player1,MALE) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2832 /* (Pull her into your arms) */ + flirt15.3
    + ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,3) Gender(Player1,FEMALE) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2832 /* (Pull her into your arms) */ + flirt15.4
   	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,4) OR(11) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709") AreaCheck("AR1105") AreaCheck("AR1602") AreaCheck("AR2010")~ + @2832 /* (Pull her into your arms) */ + flirt15.5
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,1)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.1
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,MALE) RandomNum(4,2)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.2
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Gender(Player1,FEMALE) RandomNum(4,2)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.3
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) RandomNum(4,3)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.4
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,4)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.5
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING) RandomNum(4,4)~ + @2833 /* (Suggestively draw her hand towards your body) */ + flirt16.6 
  	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,1) OR(8) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709")~ + @2834 /* (Offer to help her bath) */ + flirt17.1
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,2) OR(8) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709")~ + @2835 /* (Offer to help her bathe) */ + flirt17.2
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) RandomNum(4,3) OR(8) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709")~ + @2835 /* (Offer to help her bathe) */ + flirt17.3
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) Gender(Player1,MALE) RandomNum(4,4) OR(8) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709")~ + @2835 /* (Offer to help her bathe) */ + flirt17.4
 	+ ~Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSex","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,4) OR(8) AreaCheck("AR0021") AreaCheck("AR0313") AreaCheck("AR0406") AreaCheck("AR0509") AreaCheck("AR0513") AreaCheck("AR0522") AreaCheck("AR0704") AreaCheck("AR0709")~ + @2835 /* (Offer to help her bathe) */ + flirt17.5 	
	++ @2634 /* Actually, never mind. */ EXIT 
END

IF ~~ flirt1.1
 SAY @2836 /* (There are people in the Realms who seem to demand attention simply by existing. They may do nothing in particular to draw such consideration, but every eye in a room would turn to them regardless.) */
 = @2837 /* (Isra is one of them. She is beautiful by any definition, but even more arresting is the utter conviction with which she approaches everything. It is a trait that all paladins share, certainly, but Isra has little use for false modesty. She is not exactly arrogant; she would be less striking, perhaps, if she were, but hers is the walk of a woman very accustomed to being noticed.) */
IF ~~ EXIT
END

IF ~~ flirt1.2
 SAY @2838 /* (Unsuprisingly, perhaps, you find your eye drawn once more to Isra. Where she finds the time to cultivate her appearance, you could not say, though the result is obvious. She does not use a great deal of cosmetics, though what she does wear, she wears to great effect... the Calishite kohl, evoking her family's ancestral homeland, the lip stain, just a shade too deep to be considered modest.) */
IF ~~ EXIT
END

IF ~~ flirt1.3
 SAY @2839 /* (You find that Isra has paused momentarily to adjust her pack, though she smiles and shakes her head when you take a step closer, as if to help her. As she struggles briefly with the straps, you cannot help but notice how relatively short and slight she is for a human... another legacy of her Calishite heritage, no doubt. The difference is not normally noticeable -- height is of no consequence when you are as fond of weapons as Isra is -- but it is there nonetheless.) */
IF ~~ EXIT
END

IF ~~ flirt1.4
 SAY @2840 /* (To<DAYNIGHT> when you turn to regard Isra, you find her already watching you. She blushes slightly -- a rarity for her -- before offering you a slightly playful smile.) */ 
IF ~~ EXIT
END

IF ~~ flirt1.5
 SAY @2841 /* (To<DAYNIGHT> when you turn to regard Isra, you find her already watching you, her expression thoughtful. She laughs when your eyes meet, offering you a slightly playful smile.) */ 
IF ~~ EXIT
END

IF ~~ flirt2.1
 SAY @2842 /* (Wordlessly, Isra smiles at you in return. Your good humor is apparently contagious, you realize, as her smile takes several long moments to fade.) */
IF ~~ EXIT
END

IF ~~ flirt2.2
 SAY @2843 /* (By the warm smile that graces her own lips in response, Isra clearly appreciates your attention.) */
 = @2844 /* You should do that more often, my <PRO_LADYLORD>. It becomes you. */
IF ~~ EXIT
END

IF ~~ flirt2.3
 SAY @2845 /* (Isra's own smile is slightly arched, though the mirth in her eyes is sincere.) */
 = @2846 /* Take care, my <PRO_LADYLORD>. You all but spoil me with such attention. */
IF ~~ EXIT
END

IF ~~ flirt2.4
 SAY @2847 /* (Your smile draws Isra's attention, and she watches you for a long moment, her expression one of obvious warm admiration.) */
IF ~~ EXIT
END

IF ~~ flirt3.1
 SAY @2848 /* (You drop to one knee with a gentlemanly flourish, taking Isra's hand in your own. She watches you, her manner appropriately dignified, though you can sense her restrained amusement as you press your lips to the back of her hand.) */
IF ~~ EXIT
END

IF ~~ flirt3.2
 SAY @2849 /* (There is little clear protocol concerning acts of chivalry between two women, though the incongruity of the gesture does not seem to bother Isra. She watches you, her manner appropriately dignified, though you can sense her restrained amusement as you press your lips to the back of her hand.) */
IF ~~ EXIT
END

IF ~~ flirt3.3
 SAY @2850 /* (Unsurprisingly, you find Isra's hand heavily callused, the hint of what can only be faded scars scattered across its back. She smiles when you bring it to your lips, clearly touched by the chivalrous gesture.) */
IF ~~ EXIT
END

IF ~~ flirt3.4
 SAY @2851 /* Oh, <CHARNAME>... you needn't play this game on my behalf. If I truly needed such gallantries, I would be dining with the aristocracy right now instead. */
IF ~~ EXIT
END

IF ~~ flirt3.5
 SAY @2852 /* (Isra bows her head to you in acknowledgement, the gesture almost as elegant as a full curtsy, and you sense that this is a position that she has found herself in many times before. Her expression is coolly thoughtful, but her small smile as you press your lips to the back of her hand is sincere.) */
IF ~~ EXIT
END

IF ~~ flirt4.1
 SAY @2853 /* (Isra shakes her head helplessly, not bothering to hide her laughter.) */
IF ~~ EXIT
END

IF ~~ flirt4.2
 SAY @2854 /* (laugh) If you wish me to curtsy in response, my <PRO_LADYLORD>, I'm afraid you are going to be sadly disappointed. */
IF ~~ EXIT
END

IF ~~ flirt4.3
 SAY @2855 /* Oh, dear. I shall have to teach you to be properly ridiculous one day, my <PRO_LADYLORD>. I'm afraid you're laying it on just a little bit too thickly. */
IF ~~ EXIT
END

IF ~~ flirt4.4
 SAY @2856 /* (Isra quirks an eyebrow at your antics, though you win an amused smile from her regardless.) */
IF ~~ EXIT
END

IF ~~ flirt5.1
 SAY @2857 /* (smile) I did not know that roses grew here... I must assume that you've kept this hidden away in your pack since we left Athkatla. Thank you, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ flirt5.2
 SAY @2858 /* Oh, <CHARNAME>... you shouldn't wander off alone like that, even in search of such lovely gifts. */
IF ~~ EXIT
END

IF ~~ flirt5.3
 SAY @2859 /* (smile) It has been some time since I last had flowers laid at my feet like that... mayhap I missed it more than I realized. */
IF ~~ EXIT
END

IF ~~ flirt5.4
 SAY @2860 /* (laugh) And what shall I do with it, pray tell? Regardless, you have my thanks. */
IF ~~ EXIT
END

IF ~~ flirt6.1
 SAY @2861 /* (laugh) I am sure we don't have the time for that, my <PRO_LADYLORD>. This plait would take some while to unravel, much less retwine. */
IF ~~ EXIT
END

IF ~~ flirt6.2
 SAY @2862 /* I appreciate the offer, my Lord, though I imagine I would have to teach you how to first. I doubt that women's grooming was much of a priority in Candlekeep. */
IF ~~ EXIT
END

IF ~~ flirt6.3
 SAY @2863 /* I would appreciate that, aye... though I would reserve the right to play with yours at least once in return. */
IF ~~ EXIT
END

IF ~~ flirt6.4
 SAY @2864 /* (Smiling gratefully, she carefully hands you the couple of strands that had been frustrating her. She doesn't seem to expect you to do anything with it, but a simple extra hand lets her fix matters that much more quickly.) */
 = @2865 /* (She clasps your hand after she has finished, pressing it to her lips in a silent gesture of gratitude.) */
IF ~~ EXIT
END

IF ~~ flirt6.5
 SAY @2866 /* (Isra looks slightly panicked at your offer, but a quick glance at a mirror reassures her that her hair remains in at least halfway decent shape. She shakes her head, eyeing you with cool bemusement.) */
 = @2867 /* That is quite alright, my <PRO_LADYLORD>. */
IF ~~ EXIT
END

IF ~~ flirt7.1
 SAY @2868 /* Are you quite alright, <CHARNAME>? If you are... addled in some way, mayhap we should visit the Ilmatari. */
IF ~~ EXIT
END

IF ~~ flirt7.2
 SAY @2869 /* (laugh) Mayhap this strange creature is trying to communicate! Alas, it does not seem to be capable of human speech, though its features certainly are those of a typical <PRO_RACE>. 'Tis most odd, truly. */
IF ~~ EXIT
END

IF ~~ flirt7.3
 SAY @2870 /* If you are quite finished, I thought there were significantly more important matters that demanded our attention. */
IF ~~ EXIT
END

IF ~~ flirt7.4
 SAY @2871 /* (sigh) Truly, <CHARNAME>, this... childishness is hardly warranted. Please stop. */
IF ~~ EXIT
END

IF ~~ flirt8.1
 SAY @2872 /* (Isra half smiles in return, shaking her head in mild bemusement.) */
IF ~~ EXIT
END

IF ~~ flirt8.2
 SAY @2873 /* (Isra is somewhat too dignified to roll her eyes at you, but the sudden slight tilt of her eyebrows tells you that she would like to.) */
IF ~~ EXIT
END

IF ~~ flirt8.3
 SAY @2874 /* If you have something in your eye, my <PRO_LADYLORD>, I would be quite happy to remove it for you. */
IF ~~ EXIT
END

IF ~~ flirt8.4
 SAY @2875 /* (Quirking an eyebrow at you, Isra responds with quick and ironic flourish.) */
IF ~~ EXIT
END

IF ~~ flirt9.1
 SAY @2876 /* (Isra tenses when you embrace her, pulling away as if she is afraid you might accidentally damage her armor... or perhaps be damaged by it.) */
IF ~~ EXIT
END

IF ~~ flirt9.2
 SAY @2877 /* (Isra shakes her head in mild annoyance but does not bother to complain.) */
IF ~~ EXIT
END

IF ~~ flirt9.3
 SAY @2878 /* Come now, <CHARNAME>. We haven't the time for this right now. */
IF ~~ EXIT
END

IF ~~ flirt9.4
 SAY @2879 /* (sigh) 'Twould be awkward, were an enemy to stumble upon us like this. */
IF ~~ EXIT
END

IF ~~ flirt10.1
 SAY @2880 /* (Isra smiles, lightly brushing her fingers across her cheek afterward.) */
IF ~~ EXIT
END

IF ~~ flirt10.2
 SAY @2881 /* (Isra rests her hand upon your shoulder, holding you close for a brief moment afterward before letting you go.) */
IF ~~ EXIT
END

IF ~~ flirt10.3
 SAY @2882 /* (Her fingers resting on your jaw, Isra tilts your head gently, brushing her lips against your own in a kiss that is somehow simultaneously chaste and intimate.) */
 = @2883 /* There now, my <PRO_LADYLORD>. That is how it is done within the Church of Sune. */
IF ~~ EXIT
END

IF ~~ flirt10.4
 SAY @2884 /* (You can almost feel the smile that spreads across her face at your kiss.) */
 = @2885 /* 'Tis the sort of greeting I could become used to, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ flirt11.1
 SAY @2886 /* (She eyes you skeptically for a moment, and it is little wonder, given the exceptionally bawdy tune that the tavern's minstrel is playing. She shakes her head at you, her lips pursed tightly as if she is trying not to laugh.) */
 = @2887 /* You will need to give me a chance to speak with the bard first, I think. */
IF ~~ EXIT
END

IF ~~ flirt11.2
 SAY @2888 /* With the floor as crowded as this? I appreciate the offer, <CHARNAME>, but I don't relish the thought of spending the rest of the evening apologizing to everybody we accidentally knock over. */
IF ~~ EXIT
END

IF ~~ flirt11.3
 SAY @2889 /* (Isra's eyes brighten considerably at the request, and she offers you her hand, the gesture unconsciously courtly. It hardly seems to bother her that the music itself is rustic, and she knows the steps to the simple country dance at least as well as anybody else on the dance floor.) */
IF ~~ EXIT
END

IF ~~ flirt11.4
 SAY @2890 /* While wearing armor? You'll have to let me change into something more appropriate first, I'm afraid. */
 = @2891 /* (This she does quickly, emerging from the inn's private rooms several moments later clad in a wine red dress she is particularly fond of. By the covert glances that several of the tavern's patrons toss her way, she is not the only one that approves of it.) */
 = @2892 /* (She saunters over to you, and with a slightly ironic smile, sinks into a deep, well-practiced curtsy that is utterly at odds with her expression.) */
 = @2893 /* Shall we, my <PRO_LADYLORD>? */
IF ~~ EXIT
END

IF ~~ flirt12.1
 SAY @2894 /* (smile) Sometimes I think I am far too easily charmed by a handsome man with a harp in his hands. */
IF ~~ EXIT
END

IF ~~ flirt12.2
 SAY @2895 /* (smile) Sometimes I think I am far too easily charmed by a beautiful woman with a harp in her hands. */
IF ~~ EXIT
END

IF ~~ flirt12.3
 SAY @2896 /* (Isra listens quietly, watching you with a surprisingly tender expression.) */ 
IF ~~ EXIT
END

IF ~~ flirt12.4
 SAY @2897 /* Mmm, you had best be careful, my <PRO_LADYLORD>. I may yet come to expect such performances from you. */
IF ~~ EXIT
END

IF ~~ flirt12.5
 SAY @2898 /* (That Isra recognizes the song is unsurprising; her knowledge of music is very nearly encyclopedic. She draws closer, quietly beginning to sing alongside you. Her voice is not perfect by any means, but its warmth is unmistakable.) */
 = @2899 /* (She smiles at you once the last notes have played, stealing a quick kiss before reluctantly return to her place in hand.) */
IF ~~ EXIT
END

IF ~~ flirt13.1
 SAY @2900 /* (Isra smiles, catching your fingers in her own and pressing them gently against her lips.) */
IF ~~ EXIT
END

IF ~~ flirt13.2
 SAY @2901 /* (Isra raises her own hand instinctively to touch her face, though her smile fades when her fingers come back smudged with dirt. She tosses you a reproachful look before wiping away the grime.) */
IF ~~ EXIT
END

IF ~~ flirt13.3
 SAY @2902 /* (She pulls you closer for a brief moment, pressing a kiss against your own cheek in response.) */
IF ~~ EXIT
END

IF ~~ flirt13.4
 SAY @2903 /* (She sighs quietly, and her smile takes several moments to fade.) */
IF ~~ EXIT
END

IF ~~ flirt14.1
 SAY @2904 /* (She tangles a hand in your hair, holding you close for a long moment. When she finally releases you, her cheeks are slightly flushed.) */
IF ~~ EXIT
END

IF ~~ flirt14.2
 SAY @2905 /* (Isra sighs, nipping playfully at your lower lip.) */
 = @2906 /* Oh, <CHARNAME>... you are such a sweet distraction at times. */
IF ~~ EXIT
END

IF ~~ flirt14.3
 SAY @2907 /* (She catches your chin in her hand, savoring the kiss for a long moment.) */
IF ~~ EXIT
END

IF ~~ flirt14.4
 SAY @2908 /* (Isra murmurs happily, trailing her fingertips gently across the back of your neck as she returns your kiss.) */
IF ~~ EXIT
END

IF ~~ flirt15.1
 SAY @2909 /* (In the relative safety of the tavern, Isra has stripped down to her gambeson, though the padded material is still too bulky for you to get much of a feel for what lies beneath it.) */
 = @2910 /* (Isra smiles at you, her eyes drifting from your face to your hands.) */
 = @2911 /* Alas for the demands of propriety, my love. I don't think that I'm ready for the entire tavern to see my corset just yet. */
IF ~~ EXIT
END

IF ~~ flirt15.2
 SAY @2912 /* (With a peal of laughter, Isra bats your hands away.) */
IF ~~ EXIT
END

IF ~~ flirt15.3
 SAY @2913 /* (Isra squirms momentarily in your embrace, the flimsy red garments she favors on particularly warm evenings shifting in interesting ways. She finally settles down, trailing her fingers somewhat suggestively across your chest.) */
IF ~~ EXIT
END

IF ~~ flirt15.4
 SAY @2914 /* (Isra squirms momentarily in your embrace, the flimsy red garments she favors on particularly warm evenings shifting in interesting ways. She finally settles down, trailing her fingers somewhat suggestively across your hip.) */
IF ~~ EXIT
END

IF ~~ flirt15.5
 SAY @2915 /* (She twists in your arms, pressing kisses along the length of your jaw.) */
IF ~~ EXIT
END

IF ~~ flirt16.1
 SAY @2916 /* Why, <CHARNAME>, I did not realize that you so enjoyed the touch of cold metal. I shall have to remember that. */
IF ~~ EXIT
END

IF ~~ flirt16.2
 SAY @2917 /* (smile) And to think, my Lord, I would have almost taken you for a properly gallant gentleman. This is, however, far more interesting... */
IF ~~ EXIT
END

IF ~~ flirt16.3
 SAY @2918 /* (smile) And to think, <CHARNAME>, I would have almost taken you for a respectable young lady. This is, however, far more interesting... */
IF ~~ EXIT
END

IF ~~ flirt16.4
 SAY @2919 /* (Isra raises an eyebrow at you. As soon as her fingers brush the fabric of your clothing, she pulls her hand away, her lips twitching in silent laughter.) */
IF ~~ EXIT
END

IF ~~ flirt16.5
 SAY @2920 /* (Shamelessly tracing the outline of your body with her fingertips, Isra takes a step forward, drawing you closer for an unsurprisingly ardent kiss.) */
IF ~~ EXIT
END

IF ~~ flirt16.6
 SAY @2921 /* (Shamelessly tracing the outline of your body with her fingertips, Isra drops to one knee, drawing you closer for an unsurprisingly ardent kiss.) */
IF ~~ EXIT
END

IF ~~ flirt17.1
 SAY @2922 /* I did not realize that such a simple thing required two people, my <PRO_LADYLORD>. */
IF ~~ EXIT
END
 	
IF ~~ flirt17.2
 SAY @2923 /* (laugh) You wish to help, my <PRO_LADYLORD>? Or to watch? */
 = @2924 /* No matter. I would appreciate the company either way. */
IF ~~ EXIT
END
 	
IF ~~ flirt17.3
 SAY @2925 /* Well, I do seem to have run out of rose oil. I believe there is a merchant in the Bridge District who sells the stuff-- */
 = @2926 /* (laugh) I'm jesting, <CHARNAME>. You needn't look so disappointed. Of course you can help. */
IF ~~ EXIT
END
 	
IF ~~ flirt17.4
 SAY @2927 /* (Isra kisses you in response, her fingers trailing suggestively down your chest.) */
 = @2928 /* There is a bathhouse nearby that comes particularly well recommended. If we are going to do this, we might as well do it properly. */
IF ~~ EXIT
END

IF ~~ flirt17.5
 SAY @2929 /* (Isra kisses you in response, her fingertips trailing gently across your jaw.) */
 = @2928 /* There is a bathhouse nearby that comes particularly well recommended. If we are going to do this, we might as well do it properly. */
IF ~~ EXIT
END

IF ~~ flirt18.1
 SAY @2930 /* Ohh... I do think that can be very easily arranged. */
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isct3")~ EXIT
END

IF ~~ flirt18.2
 SAY @2931 /* (sigh) I'm afraid I'm somewhat weary, <CHARNAME>. Tomorrow, mayhap. */
IF ~~ EXIT
END

IF ~~ flirt18.3
 SAY @2932 /* Mmm... I can think of nothing I would like to do more, my love. */
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isct3")~ EXIT
END

IF ~~ flirt18.4
 SAY @2933 /* (She pulls you close in response, trailing her fingers absently through your hair. A brief kiss later, she tosses you a lopsided smile and gestures towards the tavern's private rooms.) */
 = @2893 /* Shall we, my <PRO_LADYLORD>? */
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isct3")~ EXIT
END
END