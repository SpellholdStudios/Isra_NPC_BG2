BEGIN RH#IS25J

// ---------------------------------------------
// Dialogue Track
// ---------------------------------------------

// 1. (upon rest)
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",1)~ THEN RH#IS25J t1
@0 /* You look... weary, <CHARNAME>. I had hoped that our time in Suldanessellar would refresh you, but that does not appear to be the case. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @1 /* You don't look that much better yourself. */ + t1.1
	++ @2 /* I doubt rest will make a difference until this is finished. */ + t1.2
	++ @3 /* It's this place, Isra. It's not the most pleasant of locales. */ + t1.3
	++ @4 /* What? No, I'm perfectly fine. I was just thinking. */ + t1.4
	++ @5 /* I am tired. And I'm not interested in talking right now. */ + t1.exit

APPEND RH#IS25J

IF ~~ t1.1
 SAY @6 /* (smile) Terrible words for any Sunite to hear, though recent days have been far harsher upon you than upon me. */
IF ~~ + t1.5
END

IF ~~ t1.2
 SAY @7 /* I am beginning to agree with that, I'm afraid. */
IF ~~ + t1.5
END

IF ~~ t1.3
 SAY @8 /* Aye, to put it mildly, though 'tis more than the location that worries me. */
IF ~~ + t1.5
END

IF ~~ t1.4
 SAY @9 /* Your thoughts must weigh more heavily upon you than you realize, though I can't blame you for that. */
IF ~~ + t1.5
END

IF ~~ t1.exit
 SAY @10 /* I see. I shan't trouble you further, then. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.5
 SAY @11 /* How are you feeling now? Now that your soul is returned at last... obviously your restoration was not the simple matter we might have wished for. */
	++ @12 /* Simple or not, what is done is done. */ + t1.6
 	++ @13 /* I'm as well as can be expected, given the circumstances. */ + t1.7
 	++ @14 /* The future troubles me more than the past right now, honestly. */ + t1.8
 	++ @15 /* I'm not made out of glass, Isra. I'll be alright. */ + t1.9
END

IF ~~ t1.6
 SAY @16 /* That is true enough. And if it is not one thing, 'tis apparently another, and this new threat... */
IF ~~ + t1.10
END

IF ~~ t1.7
 SAY @17 /* That is encouraging, at least. If it is not one thing, 'tis apparently another, and this new threat... */
IF ~~ + t1.10
END

IF ~~ t1.8
 SAY @18 /* That is certainly understandable. If it is not one thing, 'tis apparently another, and this new threat... */
IF ~~ + t1.10
END

IF ~~ t1.9
 SAY @19 /* I am glad to hear it. If it is not one thing, 'tis apparently another, and this new threat... */
IF ~~ + t1.10
END

IF ~~ t1.10
 SAY @20 /* I can't help but wish that your destiny would pause even a moment, <CHARNAME>. Long enough for us to finally catch up to it, if nothing else. */
 = @21 /* 'Tis a wish I doubt will be granted, though. */
	++ @22 /* I learned long ago not to expect a moment's rest. */ + t1.11
	++ @23 /* Nor do I. The prophecies are all but upon us now. */ + t1.12
	++ @24 /* Do you think we're ready for what happens next? */ + t1.13
	++ @25 /* Any moment we have to prepare is one our foes have as well. */ + t1.14
END

IF ~~ t1.11
 SAY @26 /* The lesson has served you well, I think. */
IF ~~ + t1.15
END

IF ~~ t1.12
 SAY @27 /* Aye, all that is left to be seen is how they might play out. */
IF ~~ + t1.15
END

IF ~~ t1.13
 SAY @28 /* I think we have little choice except to be ready. */
IF ~~ + t1.15
END

IF ~~ t1.14
 SAY @29 /* And they may well have more resources to draw upon than we do. */
IF ~~ + t1.15
END
END

CHAIN RH#IS25J t1.15
@30 /* There's little point in making predictions just yet, of course. This evening, at least... had I known we'd be spending it like this, I would have cherished our last night in Suldanessellar that much more. */
== RH#IS25J IF ~AreaCheck("AR5003")~ THEN @31 /* The terror in this inn is beyond words. How many of these people can hope to survive this... 'tis almost a blessing not to know. */
== RH#IS25J IF ~AreaCheck("AR4500")~ THEN @32 /* Your... butler... is hardly the company I might have hoped for, and that is the best thing that can be said about this terrible place. */
END
	+ ~AreaCheck("AR5003")~ + @33 /* There's only so much we can do for them, I'm afraid. */ + t1.16
	+ ~AreaCheck("AR4500")~ + @34 /* Cespenar isn't the only company to be found here, you know. */ + t1.17
	++ @35 /* Still, we've certainly slept in worse places before. */ + t1.18
	++ @36 /* A glass of wine might take your mind off such things. */ + t1.19
	+ ~AreaCheck("AR5003")~ + @37 /* I doubt we could hope to sleep any better in the Pocket Plane. */ + t1.20
	+ ~AreaCheck("AR4500")~ + @38 /* I doubt we could hope to sleep any better in Saradush. */ + t1.20

APPEND RH#IS25J

IF ~~ t1.16
 SAY @39 /* I know. I wish it were otherwise, but... I am not so naive. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.21
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.25
END

IF ~~ t1.17
 SAY @40 /* And thank Sune for that much. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.21
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.25
END

IF ~~ t1.18
 SAY @41 /* Yes... yes, I suppose we have. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.21
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.25
END

IF ~~ t1.19
 SAY @42 /* I do not care for that type of distraction. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.21
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.25
END

IF ~~ t1.20
 SAY @43 /* No... no, I suppose not. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.21
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t1.25
END

IF ~~ t1.21
 SAY @44 /* But 'tis growing late now, and I can't imagine that sleep will come very easily tonight for any of us. I know it won't for me. */
	++ @45 /* Good night, Isra. */ + t1.22
	++ @46 /* We'll get used to it eventually. */ + t1.23
	++ @47 /* Drinking myself into oblivion has always worked for me. */ + t1.24
END

IF ~~ t1.22
 SAY @48 /* Sleep well, my friend. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.23
 SAY @49 /* I can only hope so. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.24
 SAY @50 /* As you say. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.25
 SAY @51 /* Stay with me awhile, would you? I cannot imagine that sleep will come very easily tonight for any of us. I know it won't for me. */
	++ @52 /* Let me distract you, then, at least for a time. */ + t1.26
	++ @53 /* I would happily stay with you all night, Isra. */ + t1.27
	++ @54 /* Nor for me, though staying up longer won't help any. */ + t1.28
END
 
IF ~~ t1.26
 SAY @55 /* (smile) Your company would be distraction enough tonight, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.27
 SAY @56 /* (smile) I had hoped that you would. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t1.28
 SAY @57 /* No, I suppose not. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 2.
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",3) Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#IS25J t2a
@58 /* Do you recall the day we met, <CHARNAME>? The artist Prism, hiding outside of Nashkel, his final masterpiece... you must still remember it. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @59 /* The bust of Ellesime... I definitely do. */ + t2.1
	++ @60 /* I suppose. What of it? */ + t2.1
	++ @61 /* I cannot say that I do. */ + t2.2
	++ @62 /* Not right now, Isra. I'm busy. */ + t2.exit

CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",3) !Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN RH#IS25J t2b
@63 /* I was sent to Nashkel shortly before we met, you know, to aid a local artist called Prism. I arrived too late to save more than his final masterpiece, but even that... it haunts me now, <CHARNAME>. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @64 /* That bust of Ellesime? I once saw it also. */ + t2.1
	++ @65 /* Prism? I did run into him once. You met him as well? */ + t2.3
	++ @66 /* What in the Realms are you talking about? */ + t2.4
	++ @62 /* Not right now, Isra. I'm busy. */ + t2.exit

APPEND RH#IS25J

IF ~~ t2.1
 SAY @67 /* 'Tis a difficult thing to forget. He gave his life for his art. For his love of her. */
IF ~~ + t2.5
END

IF ~~ t2.2
 SAY @68 /* Much has happened in the time since, I suppose. We rescued him from a bounty hunter outside of Nashkel, but we could not save him from himself. He gave his life to capture the likeness of Ellesime. */
IF ~~ + t2.5
END

IF ~~ t2.3
 SAY @69 /* I did not, though I heard the story afterward when I collected his work for the church... he labored like a man possessed, they said. He gave his life to capture the likeness of Ellesime. */
IF ~~ + t2.5
END

IF ~~ t2.4
 SAY @70 /* There was an artist outside of Nashkel, a man named Prism, and his work... he labored like a man possessed, they said. He gave his life to capture the likeness of Ellesime. */
IF ~~ + t2.5
END

IF ~~ t2.exit
 SAY @71 /* So I see. */
IF ~~ EXIT
END

IF ~~ t2.5
 SAY @72 /* I had not thought of him in some time, but that sculpture... his impossible, anonymous love... I can only wonder how many other tragic tales she has inspired. */
	++ @73 /* She seems like a dangerous person to love. */ + t2.6
	++ @74 /* She wasn't the inspiration this time. She was the victim. */ + t2.6
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @75 /* At least the bards didn't get two tragic love stories out of this. */ + t2.7
	++ @76 /* Don't call what happened to Irenicus tragic. He was a monster. */ + t2.8
	++ @77 /* They say she's truly immortal. I doubt her tragedies are countable. */ + t2.9
END

IF ~~ t2.6
 SAY @78 /* Aye, that may be so. Irenicus... */
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY @79 /* That is something to be very grateful for. Irenicus... */
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY @80 /* He was, aye, though I do not think it was as simple as that. Irenicus... */
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY @81 /* If that is the case, then I do not envy her her elven lifespan. Irenicus... */
IF ~~ + t2.10
END

IF ~~ t2.10
 SAY @82 /* I am sure you never wish to think of him again, but I can think of little else right now. They loved each other once. For centuries, mayhap. */
 = @83 /* That she would damn him at the end, strip him of his soul, of his love, of the very means to seek redemption, all in an attempt to save him... I think it a cruel jest, <CHARNAME>. */
	++ @84 /* Do you pity them because of it? */ + t2.11
	++ @85 /* Giving him a clean death would have been kinder. */ + t2.12
	++ @86 /* Loving him as she did, how could she not try to save him? */ + t2.13
	++ @87 /* They both got what they deserved, if you ask me. */ + t2.14
END

IF ~~ t2.11
 SAY @88 /* Him, no. Her... yes, I think I do. */
IF ~~ + t2.15
END

IF ~~ t2.12
 SAY @89 /* For everyone involved, I cannot help but agree. */
IF ~~ + t2.15
END

IF ~~ t2.13
 SAY @90 /* (sigh) The things we do for love sometimes. */
IF ~~ + t2.15
END

IF ~~ t2.14
 SAY @91 /* He did, I would agree. But Ellesime... I do not think so. */
IF ~~ + t2.15
END

IF ~~ t2.15
 SAY @92 /* When Prism destroyed himself for love of her, I thought it madness, you know. Obession. Something utterly removed from love. */
 = @93 /* Now I am not so sure. */
	++ @94 /* Love can be an unsettling thing at times. */ + t2.16
	++ @95 /* Just because it doesn't end well, doesn't mean it's not real. */ + t2.17
	++ @96 /* Sometimes I think that all love is madness of a sort. */ + t2.18
	++ @97 /* Should you really be questioning things like this? */ + t2.19
END

IF ~~ t2.16
 SAY @98 /* Most things of true significance are, I think. */
IF ~~ + t2.20
END

IF ~~ t2.17
 SAY @99 /* No... I know that as well as any, I think. */
IF ~~ + t2.20
END

IF ~~ t2.18
 SAY @100 /* The most wondrous madness conceivable... no, <CHARNAME>, I do not believe that at all. */
IF ~~ + t2.20
END

IF ~~ t2.19
 SAY @101 /* I should be, aye. 'Twould be arrogance to assume that I already understand my faith as well as I possibly can. */
IF ~~ + t2.20
END

IF ~~ t2.20
 SAY @102 /* The heart is a bewildering thing, and we follow it as best as we can. When its path leads to ruin, however... */
 = @103 /* Mayhap regret is the only thing that distinguishes the true love from the false. */
	++ @104 /* Do you think Ellesime regrets anything? */ + t2.21
	++ @105 /* Unfortunately, we can't ask Prism if he would take it back. */ + t2.22
	++ @106 /* Is there even such a thing as false love? */ + t2.23
	++ @107 /* That's a very subjective definition of truth. */ + t2.24
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @108 /* And if ours ended in ruin? Would you regret it? */ + t2.25
END

IF ~~ t2.21
 SAY @109 /* Would that I could say. I did not know her well enough to ask. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.26
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.27
END

IF ~~ t2.22
 SAY @110 /* Truth be told, I do not think he would. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.26
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.27
END

IF ~~ t2.23
 SAY @111 /* Aye. That which doesn't inspire, or redeem, or even simply warm... there are reasons I focus upon Ellesime rather than Irenicus. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.26
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.27
END

IF ~~ t2.24
 SAY @112 /* I think perhaps it has to be. */
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.26
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t2.27
END

IF ~~ t2.25
 SAY @113 /* I would regret the ruin. The rest... no, I do not think so. */
IF ~~ + t2.27
END

IF ~~ t2.26
 SAY @114 /* (sigh) But we should not speak so casually of others' tragedies... not when they are not present to tell their own tales. */
 = @115 /* Come, mayhap 'twould be best to let the ghosts of the past lie. */
IF ~~ EXIT
END

IF ~~ t2.27
 SAY @116 /* (sigh) 'Tis odd, I think, to speak of others' unhappy tales so calmly... especially when we have so barely avoided tragedy ourselves. */
 = @117 /* Mayhap that is why Ellesime's story intrigues me so much right now. You and I... we have had enough trials of our own. */
	++ @118 /* Trials that we've passed. That's the difference. */ + t2.28
	++ @119 /* I suspect her story would've caught your attention regardless. */ + t2.29
	++ @120 /* It's a bit too soon to use the past tense, I'm afraid. */ + t2.30
	++ @121 /* Neither of us has orchestrated massacres, as far as I'm aware. */ + t2.31
END

IF ~~ t2.28
 SAY @122 /* That is an encouraging thing to note. */
IF ~~ EXIT
END

IF ~~ t2.29
 SAY @123 /* You may well be right. */
IF ~~ EXIT
END

IF ~~ t2.30
 SAY @124 /* I dare say it is always too soon for that. */
IF ~~ EXIT
END

IF ~~ t2.31
 SAY @125 /* Ahh... no. No, that is a distinct difference. */
IF ~~ EXIT
END
END

// 3.
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",5)~ THEN RH#IS25J t3
@126 /* I am beginning to fear that I have been a fool. A fool and a poor servant as well, mayhap. Sometimes, my love, I cannot help but think that you are both punishment and reward. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @127 /* I would hardly consider you a poor servant. */ + t3.1
	++ @128 /* Punishment? That isn't very flattering, Isra. */ + t3.2
	++ @129 /* What exactly are you going on about? */ + t3.3
	++ @130 /* Isra, this is really a terrible time. */ + t3.4

APPEND RH#IS25J

IF ~~ t3.1
 SAY @131 /* I appreciate your confidence, but for one who worships love, I fear I leave much to be desired. */
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY @132 /* 'Tis not always a terrible thing to be corrected, and... I fear I require it. For one who worships love, I leave much to be desired. */
IF ~~ + t3.5
END

IF ~~ t3.3
 SAY @133 /* My own foolish presumptions. For one who worships love, I fear I leave much to be desired. */
IF ~~ + t3.5
END

IF ~~ t3.4
 SAY @134 /* Oh. Of course. Later, then. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",-2)~ EXIT
END

IF ~~ t3.5
 SAY @135 /* You and I... I thought I wanted something simple, you know. Something safe. Something comfortable and uncomplicated. Something utterly in the moment. */
 = @136 /* I told you as much when we were still in Amn. But after everything that happened in Spellhold, the madness that followed... */
 = @137 /* I should have realized that I would not be permitted to simply follow my heart as far as I desired and not a step further. */
	++ @138 /* Sune is a dangerous goddess to tempt with that sort of willfulness. */ + t3.6
	++ @139 /* You told me once that you had little to offer me... has that changed? */ + t3.7
	++ @140 /* And here I thought you had always believed in romance. */ + t3.8
	++ @141 /* Love is always all or nothing, Isra. */ + t3.9
END

IF ~~ t3.6
 SAY @142 /* Aye, I would not deny that for a moment. */
IF ~~ + t3.10
END

IF ~~ t3.7
 SAY @143 /* I... I do not know. I wish that I did. */
IF ~~ + t3.10
END

IF ~~ t3.8
 SAY @144 /* I do, though I do not always believe in happily ever after. */
IF ~~ + t3.10
END

IF ~~ t3.9
 SAY @145 /* Aye, I would not deny that, though what that actually means... */
IF ~~ + t3.10
END

IF ~~ t3.10
 SAY @146 /* I must admit, <CHARNAME>, I seldom think much about the future. I tend to assume that I won't have much of one. My life expectancy is... not exactly promising. */
 = @147 /* I do not mean to alarm you. I only want you to understand why this is so strange to me. */
	++ @148 /* Must you be quite so calm about it, Isra? */ + t3.11
	++ @149 /* I do understand. I feel very much the same. */ + t3.12
	++ @150 /* I won't let you die. I haven't yet and I'm not going to start now. */ + t3.13
	++ @151 /* Why what is so strange to you? */ + t3.14
END

IF ~~ t3.11
 SAY @152 /* There is little point in denying it. It is what it is. */
IF ~~ + t3.15
END

IF ~~ t3.12
 SAY @153 /* I thought that you would. */
IF ~~ + t3.15
END

IF ~~ t3.13
 SAY @154 /* Truly, I appreciate the thought, but there is little point in denying the reality of the situation. */
IF ~~ + t3.15
END

IF ~~ t3.14
 SAY @155 /* The questions that are beginning to plague me now. */
IF ~~ + t3.15
END

IF ~~ t3.15
 SAY @156 /* I have never wanted much out of life, you know. I have never expected much, but now... I love you, <CHARNAME>. I have for some time. */
 = @157 /* (sigh) I like to think that I can walk away should circumstances demand it, but this time... I am not sure that I can. That frightens me more than I would care to admit. */
	++ @158 /* Don't be afraid to have your world shaken up a bit, Isra. */ + t3.16
	++ @159 /* This doesn't mean that things have to change between us, does it? */ + t3.17
	++ @160 /* You're allowed to want a future, Isra. A real future. */ + t3.18
	++ @161 /* You mean you would have been able to before? */ + t3.19
END

IF ~~ t3.16
 SAY @162 /* 'Twould be blasphemy to fear it too much, I think. */
IF ~~ + t3.20
END

IF ~~ t3.17
 SAY @163 /* I do not know, <CHARNAME>. I wish that I did. */
IF ~~ + t3.20
END

IF ~~ t3.18
 SAY @164 /* To want one, aye. But to expect one... */
IF ~~ + t3.20
END

IF ~~ t3.19
 SAY @165 /* Not gladly, but... there are reasons my romances fall apart. */
IF ~~ + t3.20
END

IF ~~ t3.20
 SAY @166 /* Mayhap I am simply more closely wedded to the concept of sacrifice than I had realized. Where that leaves us, however... would that I knew. */
	++ @167 /* You should know by now that I'll take whatever you can offer. */ + t3.21
	+ ~!Global("rh#IsraTormitePC","GLOBAL",1)~ + @168 /* You are beginning to sound like a Tormite, my love. */ + t3.22
	+ ~Global("rh#IsraTormitePC","GLOBAL",1)~ + @168 /* You are beginning to sound like a Tormite, my love. */ + t3.23
	++ @169 /* We have the goddess of love on our side. I think we'll be fine. */ + t3.24
	++ @170 /* If that's all you can say after this much time, I doubt it leaves us much of anywhere at all. */ + t3.25
END

IF ~~ t3.21
 SAY @171 /* (smile) I do. And I shall offer whatever I can. */
IF ~~ EXIT
END

IF ~~ t3.22
 SAY @172 /* (laugh) That is not necessarily a bad thing. */
IF ~~ EXIT
END

IF ~~ t3.23
 SAY @173 /* (laugh) I wonder where I might have picked that tendency up. */
IF ~~ EXIT
END

IF ~~ t3.24
 SAY @174 /* (smile) I hope so, though I would never presume. */
IF ~~ EXIT
END

IF ~~ t3.25
 SAY @175 /* I... I see. If that is how you feel, my <PRO_LADYLORD>, then I shall trouble you no more. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END
END

// 4.
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",7)~ THEN RH#IS25J t4
@176 /* I do not normally speak in riddles, but just this once... tell me, <CHARNAME>, if you knew a battle was lost before it was even begun, would you be willing to fight it anyway? */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @177 /* I would, yes. You shouldn't even need to ask. */ + t4.1
	++ @178 /* You won't get angry if I say 'no', will you? */ + t4.2
	++ @179 /* You sound like a genie I once met in Irenicus's dungeon. */ + t4.3
	++ @180 /* I don't believe that any battle is truly unwinnable. */ + t4.4
	++ @181 /* Isra, can't this wait until a better time? */ + t4.exit

APPEND RH#IS25J

IF ~~ t4.1
 SAY @182 /* Mayhap not, but... I have been thinking. */
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY @183 /* No. I would never want you to tell me simply what you thought I wanted to hear. But... I have been thinking. */
IF ~~ + t4.5
END

IF ~~ t4.3
 SAY @184 /* (laugh) I am not quite as inscrutable as that. But I have been thinking. */
IF ~~ + t4.5
END

IF ~~ t4.4
 SAY @185 /* An admirable belief, though... I am not sure that I agree. */
IF ~~ + t4.5
END

IF ~~ t4.exit
 SAY @186 /* Aye, I suppose it can. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",-2)~ EXIT
END

IF ~~ t4.5
 SAY @187 /* I have been watching this unfold, plot within plot, scheme after scheme to unravel, our enemies seemingly as numberless as the layers of the Abyss. */
 = @188 /* And that is a frightening thought itself when one stops to consider it. A legion of demons, each clamoring over the others, countless as the grains of sand in the Calim Desert... */
 = @189 /* Sometimes I wonder if this is a war that can even be won at all. */
	++ @190 /* I take it you're not still talking about the Bhaalspawn crisis. */ + t4.6
	++ @191 /* And if it isn't? What then? */ + t4.7
	++ @192 /* Nobody's planning on conquering the Abyss, Isra. */ + t4.8
	++ @193 /* It shouldn't surprise me to find you thinking holy war. */ + t4.9
END

IF ~~ t4.6
 SAY @194 /* No... no, I am speaking more generally. */
IF ~~ + t4.10
END

IF ~~ t4.7
 SAY @195 /* What then, indeed. */
IF ~~ + t4.10
END

IF ~~ t4.8
 SAY @196 /* Aye, nobody save the devils of Baator, but it is still worth more than a passing thought. */
IF ~~ + t4.10
END

IF ~~ t4.9
 SAY @197 /* Given the challenges we have faced as of late, perhaps it should not. */
IF ~~ + t4.10
END

IF ~~ t4.10
 SAY @198 /* For every problem that we solve, it seems that another two rise to take its place. Literally, in the case of Sendai and Abazigal. */
 = @199 /* I try to focus upon the small victories, the people saved along the way, but... sometimes I wonder if this is not merely a long defeat. */
 = @200 /* It makes little difference in the long run, of course. The only alternative is submission, and that... that is no alternative at all. */
	++ @201 /* Are you beginning to doubt that we might triumph here? */ + t4.11
	++ @202 /* Don't talk like this, Isra. I'd hate to see you grow jaded. */ + t4.12
	++ @203 /* The smaller victories mean as much as the large ones. */ + t4.13
	++ @204 /* Indeed. I, for one, don't mean to give in without a fight. */ + t4.14
END

IF ~~ t4.11
 SAY @205 /* Against the Bhaalspawn? I believe that we can, though I am no diviner to say that we will. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.15
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.20
END

IF ~~ t4.12
 SAY @206 /* Oh, <CHARNAME>. I am no stranger to thoughts like this. They do not rule me, but that does not mean I never have them. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.15
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.20
END

IF ~~ t4.13
 SAY @207 /* Aye, they do. I would never say otherwise, though the larger battles... those are the ones that weigh more heavily. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.15
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.20
END

IF ~~ t4.14
 SAY @208 /* I did not think that you would, though I am sure that you know as well as I precisely what that means. */
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.15
IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + t4.20
END

IF ~~ t4.15
 SAY @209 /* This struggle... you know, I have spent more than a few of my quietest moments hoping for a glorious death rather than a forgettable one. A beautiful tale to leave behind once I was gone. Preferably not today or tomorrow, of course, but... eventually. */
 = @210 /* It seems such a petty desire at times, but I am not sure it actually is. */
	++ @211 /* Nor am I. We all need to believe our deaths mean something. */ + t4.16
	++ @212 /* I think you should focus more on living well, not dying well. */ + t4.17
	++ @213 /* Gods, Isra, can't you think like a normal person for once? */ + t4.18
	++ @214 /* You wouldn't rather die peacefully, surrounded by grandchildren? */ + t4.19
END

IF ~~ t4.16
 SAY @215 /* It does make facing it that much easier. */
IF ~~ + t4.21
END

IF ~~ t4.17
 SAY @216 /* I would agree, though death is too constant a companion not to give it a second thought. */
IF ~~ + t4.21
END

IF ~~ t4.18
 SAY @217 /* I... suppose I should have expected that. */
IF ~~ + t4.21
END

IF ~~ t4.19
 SAY @218 /* The chances of that are slim, <CHARNAME>. For any number of reasons. */
IF ~~ + t4.21
END

IF ~~ t4.20
 SAY @219 /* (sigh) But listen to me... what dreary company I am to<DAYNIGHT>. You've more than enough cause for concern without my input. */
 = @220 /* Your heritage... I cannot say that I envy you the complications right now. */
	++ @221 /* Trust me, even these morbid thoughts are a pleasant change. */ + t4.22
	++ @222 /* You mean you envied them before? */ + t4.23
	++ @223 /* The complications apply to everyone around me also, you know. */ + t4.24
END

IF ~~ t4.21
 SAY @224 /* (sigh) But listen to me... what dreary company I am to<DAYNIGHT>. You've more than enough cause to think about death and dying without me adding to your list of concerns. */
 = @220 /* Your heritage... I cannot say that I envy you the complications right now. */
	++ @221 /* Trust me, even these morbid thoughts are a pleasant change. */ + t4.22
	++ @222 /* You mean you envied them before? */ + t4.23
	++ @223 /* The complications apply to everyone around me also, you know. */ + t4.24
	++ @225 /* Well, now I know my fixation on death isn't entirely due to Bhaal's taint. */ + t4.25
END

IF ~~ t4.22
 SAY @226 /* I can easily believe that. But come, we ought to catch up to the others lest we be left even farther behind. */
IF ~~ EXIT
END

IF ~~ t4.23
 SAY @227 /* 'Twas a mere figure of speech, <CHARNAME>. But come, we ought to catch up to the others lest we be left even farther behind. */
IF ~~ EXIT
END

IF ~~ t4.24
 SAY @228 /* Aye, at least to a significant extent, that is true enough. But come, we ought to catch up to the others lest we be left even farther behind. */
IF ~~ EXIT
END

IF ~~ t4.25
 SAY @229 /* Entirely... no, though I would be wary of such thoughts all the same. But come, we ought to catch up to the others lest we be left even farther behind. */
IF ~~ EXIT
END
END

// 5.
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",9)~ THEN RH#IS25J t5
@230 /* I thought this quest near its end once before, prior to leaving for Spellhold. Now, however... I cannot imagine it continuing much longer. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",2700)~
END
	++ @231 /* You don't sound like you're looking forward to the end. */ + t5.1
	++ @232 /* If it does, it'll leave half of Tethyr in ruins. */ + t5.2
	++ @233 /* I've stopped trying to determine how close we are to an end. */ + t5.3
	++ @234 /* We'll have to run out of other Bhaalspawn sooner or later. */ + t5.4
	++ @235 /* We don't have time to talk about it right now. */ + t5.exit

APPEND RH#IS25J

IF ~~ t5.1
 SAY @236 /* No, perhaps not. I want this conflict resolved as quickly as possible, but I am beginning to worry about what might come next. */
IF ~~ + t5.5
END

IF ~~ t5.2
 SAY @237 /* ...aye. 'Tis somewhat selfish of me to be considering our own situation with such stakes, but I cannot help but wonder what might come next. */
IF ~~ + t5.5
END

IF ~~ t5.3
 SAY @238 /* That is likely wise of you, though... I am beginning to wonder what might come next. */
IF ~~ + t5.5
END

IF ~~ t5.4
 SAY @239 /* One would assume so, though... I am beginning to wonder what might come next. */
IF ~~ + t5.5
END

IF ~~ t5.exit
 SAY @240 /* Perhaps later, then. */
IF ~~DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",-2)~ EXIT
END

IF ~~ t5.5
 SAY @241 /* What do you see in your future, <CHARNAME>? After this is over? Or rather, what would you wish to see, if the choice were entirely yours? */
	++ @242 /* I see you, Isra. The rest doesn't matter. */ + t5.6
	++ @243 /* More of the same, most likely. I enjoy a traveling life. */ + t5.7
	++ @244 /* A normal, settled life. I'm growing tired of the road. */ + t5.8
	++ @245 /* The Solar's offer of godhood is... somewhat tempting. */ + t5.9
	+ ~Class(Player1,PALADIN_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @246 /* I am as devoted to my deity as you are to yours. That choice will never be mine. */ + t5.10
	+ ~Class(Player1,PALADIN_ALL) Global("rh#IsraSunitePC","GLOBAL",1)~ + @247 /* I am as devoted to Sune as you are. That choice will never be mine. */ + t5.11
	+ ~Class(Player1,CLERIC_ALL) !Global("rh#IsraSunitePC","GLOBAL",1)~ + @248 /* I do have a place at the temple in Athkatla to return to. */ + t5.11
	+ ~Class(Player1,CLERIC_ALL) Global("rh#IsraSunitePC","GLOBAL",1)~ + @248 /* I do have a place at the temple in Athkatla to return to. */ + t5.12
	+ ~Class(Player1,RANGER_ALL)~ + @249 /* I'd probably return to the Umar Hills. They need a ranger there. */ + t5.13
END

IF ~~ t5.6
 SAY @250 /* (smile) As flattering as that may be... you are still your own person. I would not wish to take that away from you. */
IF ~~ + t5.14
END

IF ~~ t5.7
 SAY @251 /* 'Tis a strange life to commit oneself to, though I can certainly sympathize. Where that leaves us, however... */
IF ~~ + t5.14
END

IF ~~ t5.8
 SAY @252 /* I... thought that might have been the case. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",1)~ + t5.15
END

IF ~~ t5.9
 SAY @253 /* Oh. I... I had not actually considered that, I must admit. */
 = @254 /* What might become of us is probably the last thing on your mind. */
	++ @255 /* With a choice like this, I need to decide what's right for me. */ + t5.31
	++ @256 /* I didn't think we had much of a future to consider. */ + t5.32
	++ @257 /* My dreams of divinity are probably just that, Isra. Dreams. */ + t5.33
	++ @258 /* It kind of is a lower priority, yes. */ + t5.34
END

IF ~~ t5.10
 SAY @259 /* And with both of us with such obligations... sometimes I think it little wonder many paladins like the reliability of a home and family to return to, even if they seldom find the time for it. */
 = @260 /* I cannot be that for you, <CHARNAME>. Anymore than you could be it for me. */
IF ~~ + t5.14
END

IF ~~ t5.11
 SAY @261 /* I cannot fault you for wanting to return to the Lathandrites, even if it means I might not see you as much as I would like. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",1)~ + t5.15
END
 
IF ~~ t5.12
 SAY @262 /* (smile) You would have a place at our temple in Crimmor as well, even if it meant I would not see you as much as I might like. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",1)~ + t5.15
END

IF ~~ t5.13
 SAY @263 /* That is as worthwhile a desire as any, even if it means I might not see you as much as I would like. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",1)~ + t5.15
END

IF ~~ t5.14
 SAY @264 /* I have said more than once that I've little in the way of stability or permanence to offer you, and that remains as true now as it did before. */
 = @265 /* Once this quest is finished, I couldn't begin to predict where I might go next. Hopefully our paths will stay entwined for at least a while longer, but... I can promise very little. */
 = @266 /* Only that I do not fall out of love very easily, even if circumstances were to keep us apart. */
	++ @267 /* Can't we wait to worry about that until it happens? */ + t5.16
	++ @268 /* Wherever you end up, I fully intend to follow you. */ + t5.17
	++ @269 /* Stop being so melodramatic. Your life isn't quite that insane. */ + t5.18
	++ @270 /* If you can't commit to staying beside me, this isn't worth it. */ + t5.19
	++ @271 /* This was never meant to be permanent. Let's just enjoy what time we do have. */ + t5.20
END
 
IF ~~ t5.15
 SAY @272 /* You know that I do not mean to settle myself... not in Athkatla, not even in Crimmor, as much as I love it there. I've said before that I've little in the way of stability or permanence to offer you, and that remains as true now as it did then. */
 = @273 /* I would like to be able to say that our love can survive the strain of that, but... I don't know. All I know is that I can't make myself walk away from you. Not unless you tell me to. */
	++ @274 /* I can wait to settle. You're bound to retire eventually. */ + t5.21
	++ @275 /* If things fall apart, so be it, but we should at least try. */ + t5.22
	++ @276 /* That sounds like a lonely arrangement. Too lonely. */ + t5.23
	++ @277 /* If you can't actually commit to me, this isn't worth it. */ + t5.19
	++ @271 /* This was never meant to be permanent. Let's just enjoy what time we do have. */ + t5.20	
END

IF ~~ t5.16
 SAY @278 /* We can, aye, though the possibility is something I would rather discuss sooner than later. */
IF ~~ + t5.25
END

IF ~~ t5.17
 SAY @279 /* (laugh) Were I in any other order, I doubt that would be quite so simple, but no member of the Ruby Rose is likely to comment upon it. */
IF ~~ + t5.25
END

IF ~~ t5.18
 SAY @280 /* Mayhap I am simply borrowing trouble, but I would rather not pretend that potential problems do not exist. */
IF ~~ + t5.25
END

IF ~~ t5.19
 SAY @281 /* I... see. If that is the way you view matters, then... then I suppose that is all there is to it. I'm sorry, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t5.20
 SAY @282 /* (sigh) I suppose that is all we can do. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",2)~ EXIT
END

IF ~~ t5.21
 SAY @283 /* I've no wish to tie you to a life you do not want, <CHARNAME>... and a dangerous one, at that. Especially when the future you hope for may or may not ever come to pass. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",0)~ + t5.25
END

IF ~~ t5.22
 SAY @284 /* We should, aye. I would like nothing better, though... I do not expect it to be easy. */
IF ~~ + t5.25
END

IF ~~ t5.23
 SAY @285 /* I... cannot blame you for feeling that way, <CHARNAME>. As much as I might wish you did not. Once this is over... if you wish me to leave, I will. */
	++ @286 /* No! That would be even worse. We can at least try. */ + t5.24
	++ @287 /* That might be best. Let's just enjoy what time we do have. */ + t5.20
	++ @288 /* If you can't commit to me, this isn't worth it at all. */ + t5.19
END

IF ~~ t5.24
 SAY @289 /* (smile) I would like to, though I do not expect it to be easy. */
IF ~~ + t5.25
END

IF ~~ t5.25
 SAY @290 /* I... you know that I have not been blessed with much good fortune in the past. For someone who is supposed to believe in true love winning out over all, I... I tend to fall short in the end. */
 = @291 /* Many believe us to be better at balancing life and love than knights of other orders, but I am not so sure. Neglecting a romance until it withers and dies... when that is the likely outcome, 'tis no wonder that so many commit themselves to the ideal of love instead of the reality. */
 = @292 /* I... I don't want to fail you, <CHARNAME>. This may sound like madness to you, but I cannot say that it doesn't frighten me. */ 
	++ @293 /* You won't fail me, Isra. I don't think you even know how to. */ + t5.26
	++ @294 /* I would end up with the one crazy Sunite, wouldn't I? */ + t5.27 
	++ @295 /* You're allowed to make mistakes. Don't idealize love to the point that you're afraid of it. */ + t5.28
	++ @296 /* I don't want to fail you either, and there's far more chance of that. */ + t5.29
	++ @297 /* Isra, you're too young to already worry about things like this. */ + t5.30
END

IF ~~ t5.26
 SAY @298 /* (smile) Then I shall have to trust to your judgment in this. That much, my love... that much I think I can manage. */
IF ~~ EXIT
END
 
IF ~~ t5.27
 SAY @299 /* Make light of it, if you wish. Mayhap that truly is the only answer. */
IF ~~ EXIT
END
 
IF ~~ t5.28
 SAY @300 /* Aye, there may be some truth to what you say, my love. There usually is. I shall need to keep your words in mind. */
IF ~~ EXIT
END
 
IF ~~ t5.29
 SAY @301 /* I do not believe that, though mayhap we are both somewhat more doubtful than we should be. 'Tis something to consider, at least. */
IF ~~ EXIT
END

IF ~~ t5.30
 SAY @302 /* I... am not sure if there is such a thing as too young, my love. But if I must trust your judgment in this... that much I think I can manage. */
IF ~~ EXIT
END

IF ~~ t5.31
 SAY @303 /* No... no, I would agree with that. */
IF ~~ + t5.35
END

IF ~~ t5.32
 SAY @304 /* If the thought of godhood tempts you, perhaps we do not. */
IF ~~ + t5.35
END

IF ~~ t5.33
 SAY @305 /* I would not be so certain of that. If we survive this, I dare say anything is possible. */
IF ~~ + t5.35
END

IF ~~ t5.34
 SAY @306 /* I... I see. I shall leave you be, then. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t5.35
 SAY @307 /* I would not be the first Sunite to lose someone she loved to godhood. During the Time of Troubles... all tales speak of Mystra, Cyric, and now Kelemvor, who became deities in the aftermath. */
 = @308 /* Of Adon, the fourth of their number... we do not think very highly of him within the Church of Sune anymore. He left us, taking up the worship of Mystra instead. */
 = @309 /* I... could not do the same, <CHARNAME>. As much as I love you, I simply could not. */
	++ @310 /* I understand. I would not ask you to. */ + t5.36
	++ @311 /* Well, nobody's saying you should go worship Mystra... */ + t5.37
	++ @312 /* I've never heard of a paladin of a deity of murder anyway. */ + t5.38
	++ @313 /* If you can't choose me, how do you expect me to be able to choose you? */ + t5.39
END

IF ~~ t5.36
 SAY @314 /* Thank you. I... */
IF ~~ + t5.40
END

IF ~~ t5.37
 SAY @315 /* You know full well that is not what I meant. I... */
IF ~~ + t5.40
END

IF ~~ t5.38
 SAY @316 /* By the gods, with such a portfolio, it astounds me that you would consider the possibility at all. I... */
IF ~~ + t5.40
END

IF ~~ t5.39
 SAY @317 /* Perhaps I should not. I... */
IF ~~ + t5.40
END

IF ~~ t5.40
 SAY @318 /* I am sorry, <CHARNAME>. This is your decision to make, and if all we have is the present... 'twill have to be enough. */
IF ~~ DO ~SetGlobal("rh#IsraSettled","GLOBAL",3)~ EXIT
END
END

// 6.
CHAIN IF ~Global("rh#IsraTalksToB","GLOBAL",11)~ THEN RH#IS25J t6
@319 /* After this, whatever might come next... I expect to at least have the chance to show you around my home. A short time to rest is now long overdue. */ 
DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",1)~ 
END
	++ @320 /* Are you speaking of Crimmor? Or Eshpurta? */ + t6.1
	++ @321 /* I think a longer vacation than that is warranted. */ + t6.2
	++ @322 /* There's really nothing I would like more right now. */ + t6.3
	++ @323 /* Isra, can we talk later instead? */ + t6.4

APPEND RH#IS25J

IF ~~ t6.1
 SAY @324 /* Crimmor, preferably. At least for the moment. */
IF ~~ + t6.5
END

IF ~~ t6.2
 SAY @325 /* I would grow restless, I fear. I don't care for taking more time than I need... though I will need some soon, I think. */
IF ~~ + t6.5
END

IF ~~ t6.3
 SAY @326 /* I can certainly believe it. */
IF ~~ + t6.5
END

IF ~~ t6.4
 SAY @327 /* Aye, if you would prefer it. */
IF ~~ DO ~IncrementGlobal("rh#IsraTalksToB","GLOBAL",-2)~ EXIT
END
END

CHAIN RH#IS25J t6.5
@328 /* I would have expected to be eager to show you our temple, but oddly enough, 'tis the Crytrapper estate that captures my imagination instead. Particularly its stables. */
== RH#IS25J IF ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL)~ THEN @329 /* (smile) I should like to see just how well you ride, my <PRO_LADYLORD>. You are a <PRO_MANWOMAN> of the woods, so I don't envision being terribly disappointed, but I must warn you that I have never actually been outraced before. */
== RH#IS25J IF ~!Class(Player1,RANGER_ALL) !Class(Player1,DRUID_ALL)~ THEN @330 /* (smile) I should like to see just how well you ride, my <PRO_LADYLORD>. I don't envision being terribly disappointed, but I must warn you that I have never actually been outraced before. */
== RH#IS25J @331 /* Of course, I no longer ride as recklessly as I once did, so mayhap there is some room for competition. */
END
	++ @332 /* You're in a bright and optimistic mood to<DAYNIGHT>. */ + t6.6
	++ @333 /* Oh, there's more than *some* room for competition, I assure you. */ + t6.7
	++ @334 /* I must admit, my idea of a vacation doesn't involve leaving bed. */ + t6.8
	++ @335 /* You'll need to teach me. Riding a horse through Candlekeep would not have been appreciated. */ + t6.9

APPEND RH#IS25J

IF ~~ t6.6
 SAY @336 /* Aye, I suppose I am. */
IF ~~ + t6.10
END

IF ~~ t6.7
 SAY @337 /* Good. That makes matters far more interesting. */
IF ~~ + t6.10
END

IF ~~ t6.8
 SAY @338 /* Is that so? Well, you are rather more singleminded than I am, my love. */
IF ~~ + t6.10
END

IF ~~ t6.9
 SAY @339 /* No, I imagine that would not have been a welcome sight at all. */
IF ~~ + t6.10
END

IF ~~ t6.10
 SAY @340 /* 'Tis a poor time, mayhap, to be planning such diversions, but... well. Should it come to pass that stolen moments are all we can afford, I would have each of them be as beautiful as possible. */
	++ @341 /* We'll have more than that, Isra. Considerably more. */ + t6.11
	++ @342 /* What is life but a sequence of stolen moments anyway? */ + t6.12
	++ @343 /* I really don't see how they could be anything else. */ + t6.13
	++ @344 /* Really, Isra. We have more important things to worry about now. */ + t6.14
END

IF ~~ t6.11
 SAY @345 /* (smile) I hope so as well, though even if we do not... 'twould be enough, I think. */
IF ~~ + t6.15
END

IF ~~ t6.12
 SAY @346 /* (smile) Especially lives such as ours, <CHARNAME>. */
IF ~~ + t6.15
END

IF ~~ t6.13
 SAY @347 /* (smile) Nor do I, truly. And even if that is all there is... 'twould be enough, I think. */
IF ~~ + t6.15
END

IF ~~ t6.14
 SAY @348 /* You are right, of course. Forgive me. */
IF ~~ EXIT
END

IF ~~ t6.15
 SAY @349 /* The poets always sing of lovers who can't bear ever to be parted... of love that endures throughout the ages. And as beautiful as those songs are, the alternative... I've always found that more romantic by far. The couple so committed that they can part and reunite time and again without rancor or regret. */
 = @350 /* I hope... I am not sure what exactly I am hoping for, <CHARNAME>, but I am glad to be here. With you. No matter what might come next. I wanted you to know that. */
	++ @351 /* And I'm glad to have you here. More than I could say. */ + t6.16
	++ @352 /* You have strange ideals sometimes, Isra. I could love you for that alone. */ + t6.17
	++ @353 /* What comes next will be good. I promise that. */ + t6.18
	++ @354 /* Such flights of romanticism... this is what I get for falling for a Sunite. */ + t6.19
END

IF ~~ t6.16
 SAY @355 /* Thank you, my love. Truly. */
IF ~~ EXIT
END

IF ~~ t6.17
 SAY @356 /* (smile) Strange, are they? Well, perhaps a bit. */
IF ~~ EXIT
END

IF ~~ t6.18
 SAY @357 /* Then I shall hold you to that. */
IF ~~ EXIT
END

IF ~~ t6.19
 SAY @358 /* (laugh) Humor me, my love, every so often. That is all that I ask. */
IF ~~ EXIT
END
END

// 7.
CHAIN IF ~Global("rh#IsraFinalTalk","GLOBAL",2)~ THEN RH#IS25J t7
@359 /* I have never been so reluctant to accept a challenge as I am right now. After this, assuming there will even be an afterward... */ 
= @360 /* Give me your hand, <CHARNAME>, if only for a moment. */
DO ~IncrementGlobal("rh#IsraFinalTalk","GLOBAL",1)~
END
	++ @361 /* I would be happy to, Isra. */ + t7.1
	++ @362 /* Don't give me an excuse to postpone this further. */ + t7.2
	++ @363 /* You're not losing your nerve now, are you? */ + t7.3
	++ @364 /* I don't think we have the time to spare for this. */ + t7.4

APPEND RH#IS25J

IF ~~ t7.1
 SAY @365 /* Strange... that such a simple gesture could still mean so much. */
IF ~~ + t7.5
IF ~Global("rh#IsraSettled","GLOBAL",2)~ + t7.6
IF ~Global("rh#IsraSettled","GLOBAL",3)~ + t7.7
END

IF ~~ t7.2
 SAY @366 /* A brief moment, nothing more. */
IF ~~ + t7.5
IF ~Global("rh#IsraSettled","GLOBAL",2)~ + t7.6
IF ~Global("rh#IsraSettled","GLOBAL",3)~ + t7.7
END

IF ~~ t7.3
 SAY @367 /* No. 'Tis hardly the prospect of battle that gives me pause. */
IF ~~ + t7.5
IF ~Global("rh#IsraSettled","GLOBAL",2)~ + t7.6
IF ~Global("rh#IsraSettled","GLOBAL",3)~ + t7.7
END

IF ~~ t7.4
 SAY @368 /* There may not be time to spare for it later either. */
IF ~~ + t7.5
IF ~Global("rh#IsraSettled","GLOBAL",2)~ + t7.6
IF ~Global("rh#IsraSettled","GLOBAL",3)~ + t7.7
END

IF ~~ t7.5
 SAY @369 /* I know that I have been rather anxious as of late, but now... I can scarce remember why. At moments such as this, where everything hangs in the balance... */
 = @370 /* There is something strangely liberating about it. */
	++ @371 /* If we can defeat a goddess, I think we can manage anything. */ + t7.8
	++ @372 /* Sometimes it's easier to just surrender to what must happen next. */ + t7.9
	++ @373 /* The gravity of the situation may just be going to your head. */ + t7.10
END

IF ~~ t7.6
 SAY @374 /* I know that you want more than I can offer you, and I cannot blame you for that. Whatever I might like, whatever I might want... */
 = @375 /* I will never forget you, <CHARNAME>. The memory of this... it will not be darkened by the fact that it had to end. */
	++ @376 /* Whatever I said, forget it. I don't want to leave you. */ DO ~SetGlobal("rh#IsraSettled","GLOBAL",0)~ + t7.11
	++ @377 /* I won't forget either. I can promise that. */ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ + t7.12
	++ @378 /* I don't need your guilt trips now, Isra. */ + t7.13
END

IF ~~ t7.7
 SAY @379 /* I know that the thought of godhood tempts you, and despite what that would mean for us... whether we stay together for a mere moment or a lifetime, whether we even survive at all... */
 = @375 /* I will never forget you, <CHARNAME>. The memory of this... it will not be darkened by the fact that it had to end. */
	++ @376 /* Whatever I said, forget it. I don't want to leave you. */ DO ~SetGlobal("rh#IsraSettled","GLOBAL",0)~ + t7.11
	++ @377 /* I won't forget either. I can promise that. */ + t7.12
	++ @378 /* I don't need your guilt trips now, Isra. */ + t7.13
END

IF ~~ t7.8
 SAY @380 /* There may be some truth to that, and even if there is not... kiss me once more, <CHARNAME>, in case things do not play out in our favor. */
IF ~Gender(Player1,MALE)~ + t7.14
IF ~Gender(Player1,FEMALE)~ + t7.15
END

IF ~~ t7.9
 SAY @381 /* Aye, I suppose that is true, though regardless... kiss me once more, <CHARNAME>, in case things do not play out in our favor. */
IF ~Gender(Player1,MALE)~ + t7.14
IF ~Gender(Player1,FEMALE)~ + t7.15
END

IF ~~ t7.10
 SAY @382 /* Oh, I wouldn't say that, though regardless... kiss me once more, <CHARNAME>, in case things do not play out in our favor. */
IF ~Gender(Player1,MALE)~ + t7.14
IF ~Gender(Player1,FEMALE)~ + t7.15
END

IF ~~ t7.11
 SAY @383 /* Oh! 'Tis a far more welcome answer than any I had hoped to hear. But kiss me once more anyway, <CHARNAME>... in case things do not play out in our favor. */
IF ~Gender(Player1,MALE)~ + t7.14
IF ~Gender(Player1,FEMALE)~ + t7.15
END

IF ~~ t7.12
 SAY @384 /* Then that will have to be enough. */
IF ~~ EXIT
END

IF ~~ t7.13
 SAY @385 /* I didn't-- very well, we will speak no more of it. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t7.14
 SAY @386 /* (smile) Your lips are stained red now, my love... mayhap I should wipe that away before the others find reason to comment. */
	++ @387 /* Leave it. If they comment, it will only be out of envy. */ + t7.16
	++ @388 /* A fearsome sight I'd be for Melissan indeed. */ + t7.17
	++ @389 /* Come back here, my dear. I might as well kiss you again first. */ + t7.18
END

IF ~~ t7.15
 SAY @390 /* (smile) The sweetest of nectars, my love... though the others may now suspect that you have taken a liking to my lip stains. */
	++ @391 /* If they comment, I'm sure it will be out of envy. */ + t7.16
	++ @392 /* I took a liking to your lip stains long ago... and everything else about you. */ + t7.19
	++ @393 /* As long as you didn't get it all over my face, I could care less. */ + t7.20
END

IF ~~ t7.16
 SAY @394 /* Aye, I would have to agree. But come, we have tarried almost too long as it is. There will be time to speak later, I am sure. */
IF ~~ EXIT
END

IF ~~ t7.17
 SAY @395 /* Oh, <CHARNAME>... you would be fearsome regardless of that. But come, we have tarried almost too long as it is. There will be time to speak later, I am sure. */
IF ~~ EXIT
END

IF ~~ t7.18
 SAY @396 /* Oh, <CHARNAME>... we have tarried almost too long as it is. Briefly, my Lord, and then we must be off. There will be time to speak later, I am sure. */
IF ~~ EXIT
END

IF ~~ t7.19
 SAY @397 /* Oh, <CHARNAME>... I don't have the words to tell you how magnificent you are. Or the time. */
 = @398 /* Come, we have tarried almost too long as it is. There will be a chance to speak later, I am sure. */
IF ~~ EXIT
END

IF ~~ t7.20
 SAY @399 /* Mmm, not yet... though you do tempt me. But come, we have tarried almost too long as it is. There will be time to speak later, I am sure. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Plot Related Dialogue
// ---------------------------------------------

// Master Wraith
EXTEND_BOTTOM HGWRA01 18
IF ~Global("rh#IsraRomanceActive","GLOBAL",2) InParty("rh#Isra2") 
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ DO ~SetGlobal("rh#IsraWraith","GLOBAL",1)~ EXTERN HGWRA01 wraith1
END

CHAIN HGWRA01 wraith1
@400 /* What of the inevitable pain you must give to the one you love? The woman you name Isra? */
== RH#IS25J @401 /* Even if there is pain, 'tis my choice to make. */
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#iswr1")~ EXIT
END

BEGIN RH#RANA2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN RH#RANA2 wraith2
@402 /* Isra? Is that really you, sister? I can... I can barely see anymore. */
== RH#IS25J @403 /* Rana? This... what game is this!? You cannot possibly be here. */
== RH#RANA2 @404 /* How would you know? You abandoned me. You left me to die. You might as well have killed me yourself. */
== RH#IS25J @405 /* But... this can't be real. You're not dead. You may even be out of prison by now... */
== RH#RANA2 @406 /* Poor, naive little Izzy, with so much faith in her own family's influence. I betrayed the Jysstevs. Did you not think that they would take vengeance themselves? */
== RH#IS25J @407 /* No... no, they can't have... */
== RH#RANA2 @408 /* They are dangerous people to cross. You knew that when I married one. You should have tried harder to talk me out of it. I would still be alive if you had succeeded. */
== RH#IS25J @409 /* But... what more could I have said? */
== RH#RANA2 @410 /* We will never know, will we? I told you that I would never forgive you for betraying me, Isra. And I didn't. I died hating you. */
= @411 /* Perhaps that is why I am still here... what goddess of love would accept one consumed by such hatred? Murdering me wasn't enough, little sister. You had to damn me as well. */
== RH#IS25J @412 /* No... no, this-- <CHARNAME>, make this stop! */
DO ~SetGlobal("rh#IsraWraith","GLOBAL",2)~
END
	++ @413 /* Stop, Rana! She isn't responsible for what happened to you! */ EXTERN HGWRA01 25
	++ @414 /* Stop this, Gorion! She doesn't deserve this! */ EXTERN HGWRA01 25
	++ @415 /* Enough! I won't allow this to continue! */ EXTERN HGWRA01 25
	+ ~CheckStatGT(Player1,16,WIS)~ + @416 /* Don't listen to her, Isra! This isn't real! */ EXTERN HGWRA01 25

CHAIN IF ~Global("rh#IsraWraith","GLOBAL",3)~ THEN RH#IS25J p1
@417 /* <CHARNAME>, I... I don't know what to say. */ 
DO ~SetGlobal("rh#IsraWraith","GLOBAL",4)~
END
	++ @418 /* You look about as shaken as I feel right now. */ + p1.1
	++ @419 /* I didn't know what happened with Rana still bothered you. */ + p1.1
	++ @420 /* There's nothing to be said, Isra. It was a wraith. */ + p1.2
	++ @421 /* That thing wasn't your sister. You have to realize that. */ + p1.2

APPEND RH#IS25J

IF ~~ p1.1
 SAY @422 /* She was... is... my sister, <CHARNAME>. How could I not be upset? The things that creature said... */
IF ~~ + p1.3
END

IF ~~ p1.2
 SAY @423 /* I know, <CHARNAME>, but the things it said... */
IF ~~ + p1.3
END

IF ~~ p1.3
 SAY @424 /* It may have been lying, but the words were real enough. It said nothing that I cannot imagine her actually saying... nothing that I haven't already considered a thousand times myself. */
	++ @425 /* You've considered the possibility of her being murdered? */ + p1.4
	++ @426 /* That must have been like a waking nightmare, then. */ + p1.5
	++ @427 /* Your sister will come around in time. I'm sure of it. */ + p1.6
	++ @428 /* Stop worrying about her so, Isra. It makes it easier for our enemies. */ + p1.7
END

IF ~~ p1.4
 SAY @429 /* I... have, aye. Once or twice. 'Tis the remotest of possibilities, though it should not surprise me that the wraith latched upon it. */
IF ~~ + p1.8
END

IF ~~ p1.5
 SAY @430 /* That is as accurate a description as any. */
IF ~~ + p1.8
END

IF ~~ p1.6
 SAY @431 /* I... can only hope so. The possibility that she might not... it should not surprise me that the wraith latched upon it. */
IF ~~ + p1.8
END

IF ~~ p1.7
 SAY @432 /* I know. That much is clear. */
IF ~~ + p1.8
END

IF ~~ p1.8
 SAY @433 /* I was like an open book to that creature. How it could look at me and simply know those things... my mind is apparently not as guarded as I had thought. */
 = @434 /* Mayhap that is to be expected. I am not normally as confused as I am right now either. */
	++ @435 /* Don't sound so tired, Isra. This <DAYNIGHT> is far from over. */ + p1.9
	+ ~Global("rh#IsraTalksToB","GLOBAL",6)~ + @436 /* You're still confused because of me? Because of us? */ + p1.10
	++ @437 /* No amount of mental training can guard against some things. */ + p1.11
	++ @438 /* If that's the case, I can't help but envy your composure. */ + p1.12
	+ ~GlobalLT("rh#IsraTalksToB","GLOBAL",6)~ + @439 /* What do you have to be confused about? */ + p1.13
END

IF ~~ p1.9
 SAY @440 /* And unlikely to become more pleasant... come, this horrid temple is no place for an extended conversation anyway. */
IF ~~ EXIT
END

IF ~~ p1.10
 SAY @441 /* Somewhat, aye, though... there are worse things to be confused over. But come, this horrid temple is no place for an extended conversation. */
IF ~~ EXIT
END

IF ~~ p1.11
 SAY @442 /* No, that is certainly true enough. But come, this horrid temple is no place for an extended conversation. */
IF ~~ EXIT
END

IF ~~ p1.12
 SAY @443 /* (smile) I have had long years of practice, my love. But come, this horrid temple is no place for an extended conversation. */
IF ~~ EXIT
END

IF ~~ p1.13
 SAY @444 /* I... another time, <CHARNAME>. This horrid temple is no place for an extended conversation. */
IF ~~ EXIT
END
END

// Saradush
CHAIN IF ~Global("rh#IsraSaradush","GLOBAL",1)~ THEN RH#IS25J p2
@445 /* I imagine that the Time of Troubles must have felt very much like this... desperate, haunted nights, and a morning drenched in blood. */ 
DO ~SetGlobal("rh#IsraSaradush","GLOBAL",2)~
END
	++ @446 /* Are you alright, Isra? You sound a bit strange. */ + p2.1
	++ @447 /* I take it you can't sleep either? */ + p2.1
	++ @448 /* That's a darkly poetic way to put it. */ + p2.1
	++ @449 /* Isra, I need to sleep tonight, even if you don't. */ + p2.exit

APPEND RH#IS25J

IF ~~ p2.exit
 SAY @450 /* Then stay close, at least. I would have you near tonight... to dull the memory if not to ward it off entirely. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ p2.1
 SAY @451 /* My thoughts have been... elusive... this evening. Why they keep returning to the Time of Troubles, I couldn't say. Mayhap 'tis simply an easier thing to think about than the present. */
 = @452 /* I was a child... too young to remember anything more than frightened whispers. My sister Alia, somber and subdued for once... why I remember that part so clearly, I do not know. */
 = @453 /* I... can't help but wonder how many of Tethyr's children will survive to have such vague memories of this, ten years hence. */
	++ @454 /* If any survived Saradush, their memories won't be so pleasant. */ + p2.2
	++ @455 /* We saved as many as we could, Isra. */ + p2.3
	++ @456 /* Saradush... this isn't how it was supposed to happen. */ + p2.4
	++ @457 /* You need to try to put what happened out of your head. */ + p2.5
END

IF ~~ p2.2
 SAY @458 /* No... no, they won't be. */
IF ~~ + p2.6
END

IF ~~ p2.3
 SAY @459 /* If only that meant anything to the ones we failed. */
IF ~~ + p2.6
END

IF ~~ p2.4
 SAY @460 /* There is little point in denying it, <CHARNAME>. */
IF ~~ + p2.6
END

IF ~~ p2.5
 SAY @461 /* To do so would be a disservice to the victims, I think. */
IF ~~ + p2.6
END

IF ~~ p2.6
 SAY @462 /* My father... his old lessons on strategy keep on running through my mind also. Would that Melissan had been privy to them as well. */
 = @463 /* 'Tis easy enough to condemn after the fact, but... she should have known. She should at least have guessed that filling a city with Bhaalspawn could only lead to tragedy. */
	++ @464 /* This was Yaga-Shura's fault. Nobody else's. */ + p2.7
	++ @465 /* Sometimes we're blind to the most obvious of problems. */ + p2.7
	++ @466 /* I agree. Good intentions alone aren't enough to win a war. */ + p2.8
	++ @467 /* How she won so much influence at all, I'll never know. */ + p2.9
END

IF ~~ p2.7
 SAY @468 /* I know. I do not blame her, but all war seems senseless after the fact. Especially one like this. */
IF ~~ + p2.10
END

IF ~~ p2.8
 SAY @469 /* Would that they were. */
IF ~~ + p2.10
END

IF ~~ p2.9
 SAY @470 /* Through being one of the very few willing to do anything at all, I suspect. */
IF ~~ + p2.10
END

IF ~~ p2.10
 SAY @471 /* (sigh) I'm sorry, <CHARNAME>. I should not keep you awake so. I intend to stand vigil tonight, but there is no reason for you to do the same. */
	++ @472 /* If you mean to stay up all night, I'd rather stay with you. */ + p2.11
	++ @473 /* Very well. At least stay close, then. */ + p2.12
	++ @474 /* There's every reason for me to do the same. */ + p2.11
	++ @475 /* Get some rest, Isra. You can't change the past with a gesture. */ + p2.13
END
 
IF ~~ p2.11
 SAY @476 /* Then come closer. I would have you near tonight... to dull the memory if not to ward it off entirely. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ p2.12
 SAY @477 /* I intend to. My arms are as comfortable a bed as any we are likely to find. I would have you near tonight anyway... to dull the memory if not to ward it off entirely. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ p2.13
 SAY @478 /* Nor would I expect to. But come, my arms are as comfortable a bed as any we are likely to find. I would have you near tonight... to dull the memory if not to ward it off entirely. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// Oasis
CHAIN IF ~Global("rh#IsraOasis","GLOBAL",1)~ THEN RH#IS25J p3
@479 /* Jamis Tombelthen... I recall hearing the name more than once in Eshpurta when matters in Tethyr were at their worst. */
= @480 /* I... never imagined that I might meet him like this, though. */
DO ~IncrementGlobal("rh#IsraOasis","GLOBAL",1)
RealSetGlobalTimer("rh#IsraTalksToBTimer","GLOBAL",3600)~
END
	++ @481 /* You sound less shaken than I would have expected. */ + p3.1
	++ @482 /* They didn't give us any choice! */ + p3.2
	++ @483 /* Yet more unnecessary deaths on my hands. */ + p3.3
	++ @484 /* Not now, Isra. There might be more. */ + p3.4

APPEND RH#IS25J

IF ~~ p3.1
 SAY @485 /* I wish I were more so. */
IF ~~ + p3.5
END

IF ~~ p3.2
 SAY @486 /* No, they did not, though I cannot say I am surprised. */
IF ~~ + p3.5
END

IF ~~ p3.3
 SAY @487 /* This was not your fault, <CHARNAME>. Not truly. */
IF ~~ + p3.5
END

IF ~~ p3.4
 SAY @488 /* Aye, you may well be right. */
IF ~~ EXIT
END

IF ~~ p3.5
 SAY @489 /* Recent years have been... unkind to Tethyr. After decades of civil war, 'tis little wonder that the Crown would react so forcefully to the threat of further violence. The new government is still too young to risk doing anything else. */
 = @490 /* Paranoia is a... difficult habit to unlearn. I wish that it were not. */
	++ @491 /* That's no excuse for the way they refused to listen. */ + p3.6
	++ @492 /* Do you expect them to continue to hunt us? */ + p3.7
	++ @493 /* This conflict *would* unfold in a land that couldn't afford it. */ + p3.8
	++ @494 /* Context doesn't make their deaths any less pointless. */ + p3.9
END

IF ~~ p3.6
 SAY @495 /* No... no, it is not. */
IF ~~ + p3.10
END

IF ~~ p3.7
 SAY @496 /* I fear that they might. */
IF ~~ + p3.10
END

IF ~~ p3.8
 SAY @497 /* I am not sure that any nation could afford chaos of this magnitude. */
IF ~~ + p3.10
END

IF ~~ p3.9
 SAY @498 /* No... no, it does not. */
IF ~~ + p3.10
END

IF ~~ p3.10
 SAY @499 /* We shouldn't tarry any longer. I would make haste for Amkethran before we're forced into another confrontation such as this one. */
IF ~~ EXIT
END
END

// After Third Challenge
CHAIN IF ~Global("rh#IsraChallengesTalk","GLOBAL",2)~ THEN RH#IS25J p4
@500 /* These challenges, <CHARNAME>... 'tis becoming increasingly obvious what they are meant to test. */ 
DO ~IncrementGlobal("rh#IsraChallengesTalk","GLOBAL",1)~
END
	++ @501 /* Indeed. That Solar doesn't have much of a sense of subtlety. */ + p4.1
	++ @502 /* Enlighten me, then, because I don't have a clue. */ + p4.2
	++ @503 /* Are you at all worried about what all of this might mean? */ + p4.3
	++ @504 /* I'm not interested in discussing it. Now or ever. */ + p4.4

APPEND RH#IS25J

IF ~~ p4.1
 SAY @505 /* The time for subtlety has almost certainly passed. */ 
IF ~~ + p4.5
END

IF ~~ p4.2
 SAY @506 /* Truly? Perhaps you have been somewhat too overwhelmed by matters to consider it. */
IF ~~ + p4.5
END

IF ~~ p4.3
 SAY @507 /* I am, aye. This entire experience has been... unnerving, to say the least. */
IF ~~ + p4.5
END

IF ~~ p4.4
 SAY @508 /* I see. Very well, then, I shan't try to change your mind on this. */
IF ~~ EXIT
END

IF ~~ p4.5
 SAY @509 /* Self-knowledge is vital enough for those of us who merely serve the gods. For one who may yet hope to become a deity <PRO_HIMHER>self... I think we are beginning to find out how much more they would demand of you. */
	++ @510 /* I don't know. The Solar implied I was being judged by myself. */ + p4.6
	++ @511 /* I doubt Sarevok and Irenicus had to put up with these tests. */ + p4.7
	++ @512 /* Becoming a deity... the thought is somewhat tempting. */ + p4.8
	++ @513 /* These pointless challenges aren't exactly enlightening. */ + p4.9
END

IF ~~ p4.6
 SAY @514 /* That may be the case, but I do not believe that you simply wished that angel into existence. Even in a place as uncanny as the Pocket Plane. */
IF ~~ + p4.10
END

IF ~~ p4.7
 SAY @515 /* Mayhap not, though neither is as appealing an option as you are, <CHARNAME>. These tests may well be in your best interests. */
IF ~~ + p4.10
END

IF ~~ p4.8
 SAY @516 /* Would that your potential portfolio were more pleasant. */
IF ~~ + p4.10
END

IF ~~ p4.9
 SAY @517 /* I think they say more than you might realize. */
IF ~~ + p4.10
END

IF ~~ p4.10
 SAY @518 /* It may well be that the other Bhaalspawn are being tested in like manner, but somehow I do not think that to be the case. That a Solar would be sent to aid you instead of something less righteous... that in itself is intriguing. */
 = @519 /* Be careful, <CHARNAME>. I think more than ever, you cannot afford to falter right now. */
	++ @520 /* Thank you, Isra. I don't intend to. */ + p4.11
	++ @521 /* I am being very careful around that Solar, I assure you. */ + p4.11
	++ @522 /* Faltering has always meant death. That hasn't changed. */ + p4.12
	++ @523 /* I never asked for your counsel, Isra. */ + p4.13
END

IF ~~ p4.11
 SAY @524 /* I am glad to hear it. Whatever might come... I can only pray that destiny will treat you kindly. */
IF ~~ EXIT
END

IF ~~ p4.12
 SAY @525 /* Aye, though now it may mean damnation as well. Whatever might come... I can only pray that destiny will treat you kindly. */
IF ~~ EXIT
END

IF ~~ p4.13
 SAY @526 /* I see. Then forgive me for being so forward. */
IF ~~ EXIT
END
END

// Draconis
CHAIN IF ~Global("rh#IsraDraconis","GLOBAL",1)~ THEN RH#IS25J p5
@527 /* Half a lifetime spent preparing to battle these creatures... you would think that I would actually be able to recognize one by now. */
DO ~SetGlobal("rh#IsraDraconis","GLOBAL",2)~
END
	++ @528 /* Should I reintroduce you to our dear friend Lord Jierdan? */ + p5.1
	++ @529 /* All by himself like that... we should have guessed as much. */ + p5.2
	++ @530 /* At least now we know what we're dealing with here. */ + p5.3
	++ @531 /* You would think that someone would have mentioned it. */ + p5.4

APPEND RH#IS25J

IF ~~ p5.1
 SAY @532 /* Ah... point taken, <CHARNAME>. */
IF ~~ + p5.5
END

IF ~~ p5.2
 SAY @533 /* He could have been any number of other terrible things. */
IF ~~ + p5.5
END

IF ~~ p5.3
 SAY @534 /* I would have to agree. */
IF ~~ + p5.5
END

IF ~~ p5.4
 SAY @535 /* To know the name but not the race... it has happened before. */
IF ~~ + p5.5
END

IF ~~ p5.5
 SAY @536 /* But come, we should find Abazigal before he discovers what has passed here... assuming he would even care. */
IF ~~ EXIT
END
END

// Reputational & Alignment Issues

CHAIN IF ~Global("rh#IsraLowReputation","GLOBAL",1)~ THEN RH#IS25J rep1
@537 /* <CHARNAME>, I should like to warn you that I don't care for some of the decisions that you have been making. I trust that you will rectify matters as quickly as possible? */
DO ~SetGlobal("rh#IsraLowReputation","GLOBAL",2)~
END
	+ ~InParty("Viconia")~ + @538 /* If people look at us poorly, it's only because of Viconia. */ + rep2
	++ @539 /* I'm afraid this is how I operate. */ + rep3
	++ @540 /* Don't worry, I intend to. */ + rep4

CHAIN RH#IS25J rep2
@541 /* Then see to it that we compensate properly for the Sharran's presence. */
EXIT

CHAIN RH#IS25J rep3
@542 /* I see. Then I'm afraid I have little choice but to take my leave of your company. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN RH#IS25J rep4
@543 /* I certainly hope so. */
EXIT

CHAIN IF ~Global("rh#IsraReputationBreak","GLOBAL",1)~ THEN RH#IS25J rep5
@544 /* I had thought you better than this, <CHARNAME>, but I see that I was mistaken. In honor of our former friendship, I won't take action against you now, but I pray our paths don't meet again. */
DO ~SetGlobal("rh#IsraReputationBreak","GLOBAL",2) SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

CHAIN IF ~Global("rh#IsraPCEvil","GLOBAL",1)~ THEN RH#IS25J evilpc
@545 /* <CHARNAME>, I... after what happened in that hell... I do not know you any longer, my <PRO_LADYLORD>. */
= @546 /* I was loath to abandon you in Suldanessellar, but... I cannot stay. I'm sorry. I hope... I pray that you find your way back to the <PRO_MANWOMAN> you were before. */
DO ~SetGlobal("rh#IsraPCEvil","GLOBAL",2)
SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

CHAIN IF ~Global("rh#IsraFallenPally","GLOBAL",1)~ THEN RH#IS25J fallenpally
@547 /* <CHARNAME>, I told you that I needed to speak with my elders while we were still in Amn. I stayed with you regardless, but now... */
= @548 /* I am sorry, but I am no use to you like this anyway. */
DO ~SetGlobal("rh#IsraFallenPally","GLOBAL",2)
SetGlobal("rh#IsraJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

APPEND RH#IS25J

// ---------------------------------------------
// Flirts
// ---------------------------------------------

IF ~Global("rh#IsraTimeForFlirt","GLOBAL",1)~ THEN BEGIN fl1
 SAY @549 /* (A small smile playing across her lips, Isra approaches you, each step radiating quiet, unconscious confidence.) */
 	IF ~RandomNum(15,1)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.1
  	IF ~RandomNum(15,2)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.2
  	IF ~RandomNum(15,3) Gender(Player1,MALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.3.1
  	IF ~RandomNum(15,3) Gender(Player1,FEMALE) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.3.2
  	IF ~RandomNum(15,3) Gender(Player1,MALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.3.3
  	IF ~RandomNum(15,3) Gender(Player1,FEMALE) OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.3.4 	
  	IF ~RandomNum(15,4) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.4.1
   	IF ~RandomNum(15,4) OR(2) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.4.2
  	IF ~RandomNum(15,5)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.5
  	IF ~RandomNum(15,6) Gender(Player1,MALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.6.1
  	IF ~RandomNum(15,6) Gender(Player1,FEMALE)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.6.2  	
  	IF ~RandomNum(15,7) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.7.1
   	IF ~RandomNum(15,7) OR(2) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.7.2
  	IF ~RandomNum(15,8)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.8
    IF ~RandomNum(15,9)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.9
  	IF ~RandomNum(15,10)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.10	
  	IF ~RandomNum(15,11)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.11  	
  	IF ~RandomNum(15,12)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.12  	
  	IF ~RandomNum(15,13)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.13
  	IF ~RandomNum(15,14)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.14
  	IF ~RandomNum(15,15)~ DO ~SetGlobal("rh#IsraTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("rh#IsraFlirtTimer","GLOBAL",1800)~ + fl1.15
END

IF ~~ fl1.1
 SAY @550 /* (She has taken advantage of a rare peaceful moment to rebraid a portion of her plaited hair. Noticing your attention, her smile widens.) */
IF ~Gender(Player1,MALE)~ + fl1.1.1
IF ~Gender(Player1,FEMALE)~ + fl1.1.2
END

IF ~~ fl1.1.1
 SAY @551 /* I would leave it down for you, my Lord, but I cannot imagine that is the safest of options. */
IF ~~ EXIT
END

IF ~~ fl1.1.2
 SAY @552 /* You are more than welcome to help, my Lady, if you wish it. */
IF ~~ EXIT
END

IF ~~ fl1.2
 SAY @553 /* (She looks somewhat more tired than she normally does, but brightens as she reaches your side. She reaches out, resting her hand upon your arm for a moment longer before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl1.3.1
 SAY @554 /* (She reaches up, the back of her hand brushing against your cheek as she runs her fingers through your hair. With a soft sigh, she presses a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl1.3.2
 SAY @555 /* (She reaches up, the back of her hand brushing against your cheek as she runs her fingers through your hair. She examines one lock thoughtfully, and you get the distinct impression that had you more than a moment to spare, she would start braiding it.) */
 = @556 /* (With a soft sigh, Isra presses a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl1.3.3
 SAY @557 /* (She kneels down, the back of her hand brushing against your cheek as she runs her fingers through your hair. With a soft sigh, she bends down to press a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl1.3.4
 SAY @558 /* (She kneels down, the back of her hand brushing against your cheek as she runs her fingers through your hair. She examines one lock thoughtfully, and you get the distinct impression that had you more than a moment to spare, she would start braiding it.) */
 = @559 /* (With a soft sigh, Isra bends down to press a kiss against the corner of your mouth before moving away again.) */
IF ~~ EXIT
END

IF ~~ fl1.4.1
 SAY @560 /* (Her hands find their way to your shoulders, and with a self-satisfied sigh, she begins to give you an impromptu massage. Her fingers are deceptively strong, and it is several moments before you can find the heart to call an end to this brief break.) */
IF ~~ EXIT
END

IF ~~ fl1.4.2
 SAY @561 /* (She kneels down, her hands unexpectedly finding their way to your shoulders. With a self-satisfied sigh, Isra begins to give you an impromptu massage. Her fingers are deceptively strong, and it is several moments before you can find the heart to call an end to this brief break.) */
IF ~~ EXIT
END

IF ~~ fl1.5
 SAY @562 /* (She drops her pack to the ground for a moment to fix a broken strap on her armor, and you catch a brief glimpse of sheer red fabric in her bag... notoriously revealing Sunite ceremonial garb, most likely. She closes the bag a moment later, laughing softly in amusement.) */
 = @563 /* You are welcome to see me in it later tonight, my love. */
IF ~Global("rh#IsraSex","GLOBAL",1)~ + fl1.5.1
IF ~!Global("rh#IsraSex","GLOBAL",1)~ EXIT
END

IF ~~ fl1.5.1
 SAY @564 /* Or out of it, mayhap. */
IF ~~ EXIT
END

IF ~~ fl1.6.1
 SAY @565 /* Sometimes... usually, rather... I think it a shame that there are so few men within the Sunite Church. One such as you, <CHARNAME>... */
 = @566 /* (smile) Needless to say, I would be the envy of any number of our priestesses right now. */
IF ~~ EXIT
END

IF ~~ fl1.6.2
 SAY @567 /* I have never considered myself overly conventional, you know, but it does seem in keeping with tradition that every knight must find some fair maiden to woo. */
 = @568 /* (laugh) Of course, 'tis somewhat difficult at times to determine which of us is the warrior and which the fair maid. */
IF ~~ EXIT
END

IF ~~ fl1.7.1
 SAY @569 /* (She brushes her fingers lightly against your cheek, the gesture strangely nostalgic. Sighing, she presses a kiss against the side of your neck before returning to her place in line.) */
IF ~~ EXIT
END

IF ~~ fl1.7.2
 SAY @570 /* (Leaning down, she brushes her fingers lightly against your cheek, the gesture strangely nostalgic. She presses a kiss against the side of your neck before finally returning to her place in line.) */
IF ~~ EXIT
END

IF ~~ fl1.8
 SAY @571 /* (She says nothing, but her eyes follow you for a long moment, her concern obvious. She finally nods to herself, as if she has come to some decision, and turns back to the task at hand.) */ 
IF ~~ EXIT
END

IF ~~ fl1.9
 SAY @572 /* (She rests a hand lightly upon your shoulder, the gesture one of comfort... though it is impossible to tell whether she is seeking or giving it. Perhaps it does not matter.) */
IF ~~ EXIT
END

IF ~~ fl1.10
 SAY @573 /* (Wordlessly, she falls into step beside you, clearly enjoying the moment of companionable silence. You catch her studying you every so often, and when you catch her eye, she gives you a slightly rueful smile.) */ 
IF ~~ EXIT
END

IF ~~ fl1.11
 SAY @574 /* (You have seen her curtsy before, if only when out of armor, but to<DAYNIGHT> Isra bows to you instead, the gesture perhaps slightly more flamboyant than it has to be.) */
IF ~Gender(Player1,MALE)~ + fl1.11.1
IF ~Gender(Player1,FEMALE)~ + fl1.11.2
END

IF ~~ fl1.11.1
 SAY @575 /* (Her smile still somewhat lopsided, she suddenly offers you her hand, clearly content to let you play the role of the gallant gentleman instead.) */ 
IF ~~ EXIT
END

IF ~~ fl1.11.2
 SAY @576 /* (She laughs, slipping easily out of the adopted role, and takes your hand, giving it an affectionate if somewhat more casual kiss.) */
IF ~~ EXIT
END

IF ~~ fl1.12
 SAY @577 /* (She does not say anything, content to merely admire you for a brief moment. It is only with a soft, somewhat regretful sigh that she turns away again.) */
IF ~~ EXIT
END

IF ~~ fl1.13
 SAY @578 /* ("Sultry" is not a word one would normally use to describe Isra, but to<DAYNIGHT> it is surprisingly fitting. It may be the rich scent of Calishite perfume, or the gleam in her eyes as she regards you, but it is definitely there.) */
IF ~!Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ + fl1.13.1
IF ~OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ + fl1.13.2
END

IF ~~ fl1.13.1
 SAY @579 /* (She brushes her fingers against the side of your face, and if not for the demands of propriety, you guess tell that she would already be kissing you. Or more.) */
	++ @580 /* (Pull her close, kissing her deeply.) */ + fl1.13.3
	++ @581 /* You don't exactly need to ask, you know. */ + fl1.13.4
	++ @582 /* (Pull away from her.) */ EXIT
END

IF ~~ fl1.13.2
 SAY @583 /* (Kneeling down, she brushes her fingers against the side of your face. If not for the demands of propriety, you guess tell that she would already be kissing you. Or more.) */
	++ @580 /* (Pull her close, kissing her deeply.) */ + fl1.13.5
	++ @581 /* You don't exactly need to ask, you know. */ + fl1.13.4
	++ @582 /* (Pull away from her.) */ EXIT
END

IF ~~ fl1.13.3
 SAY @584 /* (Isra doesn't quite melt into your arms, but comes as close as her armor allows, tangling a hand in your hair as she returns the kiss.) */
IF ~~ EXIT
END

IF ~~ fl1.13.4
 SAY @585 /* (smile) Don't I? I shall have to keep that in mind, then. */
IF ~~ EXIT
END

IF ~~ fl1.13.5
 SAY @586 /* (Isra barely keeps herself from overbalancing, but laughs off the near fall, tangling a hand in your hair as she returns the kiss.) */
IF ~~ EXIT
END

IF ~~ fl1.14
 SAY @587 /* (After a moment, you see the handkerchief of pure white silk wrapped between her fingers... and the intricately designed scarlet rose embroidered upon it.) */
 = @588 /* Take it, my love. I must be allowed the occasional concession to courtly romance... even if they are somewhat backwards by necessity. */
IF ~~ EXIT
END

IF ~~ fl1.15
 SAY @589 /* Shall I beg a kiss of you, my love? Surely we have time enough to spare for such simple pleasures? */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Interjections
// ---------------------------------------------

I_C_T AMLICH01 10 vongoethe
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@590 /* Folly compounded by cowardice... this story grows uglier by the moment. */
END

I_C_T AMMONK02 3 ammonk02
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@591 /* I do not care for how famous you are becoming, <CHARNAME>. */
END

I_C_T AMMERC03 2 asana
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@592 /* A life for a handful of coin? I can't believe that such is truly the law of this place. */
END

I_C_T AMSAEMON 11 ToBsaemon
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@593 /* Your treacheries have never seemed terribly frivolous before. */
== AMSAEMON @594 /* Yes, well... */
END

I_C_T BAZEYE01 4 iycanth
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@595 /* I wish I did not. */
END

I_C_T HGNYA01 13 nyalee1
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@596 /* Removed his-- by Sune, only a Bhaalist could relish such a mutilation. */
END

I_C_T HGNYA01 29 nyalee2
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@597 /* Even her heart is not entirely barren... I'd almost regret what is sure to follow now. */
END

I_C_T MARLOWE 20 marlowe1
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@598 /* That does not surprise me nearly as much as I wish it did. */
END

I_C_T MARLOWE 15 marlowe2
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@599 /* What in the Realms has happened to you, <CHARNAME>!? I shan't stand for this! */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
== MARLOWE @600 /* Help! Help! */
END

I_C_T SARBAR01 21 pyrgam
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@601 /* Your relationship may grow colder if the sister learns that you're discussing it so brazenly. */
END

I_C_T SAFE SARBUL05 2 elfbully
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@599 /* What in the Realms has happened to you, <CHARNAME>!? I shan't stand for this! */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
END

I_C_T SARCNT01 14 countess
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@599 /* What in the Realms has happened to you, <CHARNAME>!? I shan't stand for this! */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
Enemy()~
== SARCNT01 @602 /* Help! */
END

I_C_T SARCPT01 21 captain
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@603 /* I can sympathize with her easily enough. */
END

I_C_T SAREV25A 10 sarevok1
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@604 /* Deal? I would discuss nothing with this creature, <CHARNAME>. */
== SAREV25A @605 /* Then it is fortunate that the choice is not yours. */
END

I_C_T SAREV25A 38 sarevok2
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@606 /* This is... there may have been no choice, but this is truly blasphemous. */
END

I_C_T SARKIS01 30 kiser
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@607 /* Aye, the victim's card, 'twould seem. Many merchants are trustworthy people, Kiser. Your... eternal curse, as you say, has nothing to do with your wealth. */
== SARKIS01 @608 /* If you are quite done with your moralizing, my lady... */
END

I_C_T SARMEL01 48 sarmel1
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@609 /* That is hardly a skill that one simply... develops. */
== SARMEL01 @610 /* No, it is not. */
END

I_C_T SARPRO01 0 sarpro1
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@611 /* (sigh) Another forced out onto the street in the wake of this? */
END

I_C_T SARPRO01 1 sarpro2
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@611 /* (sigh) Another forced out onto the street in the wake of this? */
END

I_C_T SARTEM01 10 farielle
== RH#IS25J IF ~InParty("rh#Isra2") InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ THEN
@612 /* Powerful undead? I would wish to eliminate them even if this passage did not lead into the castle. */
END

EXTEND_BOTTOM SARVOLO 9 #2
+ ~InParty("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ + @613 /* Tell me about Isra. */ + volo1
+ ~InParty("rh#Isra2") !Global("rh#IsraRomanceActive","GLOBAL",2) InMyArea("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID)~ + @613 /* Tell me about Isra. */ + volo2
END

CHAIN SARVOLO volo1
@614 /* Ah, yes... stories about <CHARNAME> and the Lady Isra are already beginning to spread, courtesy of the bards within her own church. Her name will long be cherished within the Church of Sune, and likely by the rest of the Realms as well. */
== RH#IS25J @615 /* You are too kind, sir. */
EXTERN SARVOLO 9

CHAIN SARVOLO volo2
@616 /* The youngest daughter of the Amnian General Ghadir, Isra has finally eclipsed her father in both fame and valor. Her name will long be cherished within the Church of Sune, and likely by the rest of the Realms as well. */
== RH#IS25J @615 /* You are too kind, sir. */
EXTERN SARVOLO 9

// Watcher's Keep

I_C_T GORAPP1 10 rh#gorapp1
== RH#IS25J IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@617 /* I have no objection to challenging the fiend, though sealing the prison may indeed prove the wiser course of action. */
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@617 /* I have no objection to challenging the fiend, though sealing the prison may indeed prove the wiser course of action. */
END

I_C_T GORCAMB 20 cambion
== RH#IS25J IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@618 /* Must we play *games* with this creature, <CHARNAME>? 'Tis a demon! Whatever pleasant face it puts forward is merely that -- a face! 'Twould be better to simply slay it and be done with it! */
== GORCAMB @619 /* Do try to control your more prejudiced companions, <CHARNAME>. */
END

I_C_T GORCAMB 20 cambion
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@618 /* Must we play *games* with this creature, <CHARNAME>? 'Tis a demon! Whatever pleasant face it puts forward is merely that -- a face! 'Twould be better to simply slay it and be done with it! */
== GORCAMB @619 /* Do try to control your more prejudiced companions, <CHARNAME>. */
END

I_C_T GORDEMO 1 demo
== RH#IS25J IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN 
@620 /* Be careful, <CHARNAME>. There is... something... here, something almost too ancient to be named... */
== RH#ISRJ IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN 
@620 /* Be careful, <CHARNAME>. There is... something... here, something almost too ancient to be named... */
END

// Solar

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSolarChoice","GLOBAL",0)~ DO ~SetGlobal("rh#IsraSolarChoice","GLOBAL",1)~ EXTERN RH#IS25J solar1
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") !Global("rh#IsraRomanceActive","GLOBAL",2) GlobalLT("PPEvilChoices","GLOBAL",2) Alignment(Player1,MASK_GOOD) Global("rh#IsraSolarChoice","GLOBAL",0)~ DO ~SetGlobal("rh#IsraSolarChoice","GLOBAL",1)~ EXTERN RH#IS25J solar2
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") !Global("rh#IsraRomanceActive","GLOBAL",2) OR(2) !GlobalLT("PPEvilChoices","GLOBAL",2) !Alignment(Player1,MASK_GOOD) Global("rh#IsraSolarChoice","GLOBAL",0)~ DO ~SetGlobal("rh#IsraSolarChoice","GLOBAL",1)~ EXTERN RH#IS25J solar3
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#IsraSolarLeave","GLOBAL",1)~ EXTERN RH#IS25J solar4
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#IsraSolarLeave","GLOBAL",1)~ EXTERN RH#IS25J solar4
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSolarLeave","GLOBAL",0) ~ DO ~SetGlobal("rh#IsraSolarLeave","GLOBAL",1)~ EXTERN RH#IS25J solar4
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("rh#Isra2") !StateCheck("rh#Isra2",CD_STATE_NOTVALID) InMyArea("rh#Isra2") Global("rh#IsraRomanceActive","GLOBAL",2) Global("rh#IsraSolarStay","GLOBAL",0) ~ DO ~SetGlobal("rh#IsraSolarStay","GLOBAL",1)~ EXTERN RH#IS25J solar5
END

CHAIN RH#IS25J solar1
@621 /* So we have come to it at last... though mayhap it was always inevitable. Have you... have you come to a decision, <CHARNAME>? */ 
END
	++ @622 /* What do you think I should do? */ + solar1.1
	++ @623 /* I don't want to leave you behind, Isra. */ + solar1.1
	+ ~!Global("rh#IsraSettled","GLOBAL",3)~ + @624 /* I'm sorry, Isra. I have to see this through. */ + solar1.1
	+ ~Global("rh#IsraSettled","GLOBAL",3)~ + @624 /* I'm sorry, Isra. I have to see this through. */ + solar1.2

CHAIN RH#IS25J solar1.1
@625 /* The thought of losing you forever... 'tis almost more than I can bear. But if I were to view the matter dispassionately, you... if anyone were worthy of godhood, if anyone could turn the evil of Bhaal's essence to goodness at last, it would be you. */
= @626 /* And yet... and yet I would have you stay instead. Whatever might become of us... I would have you here, <CHARNAME>. Perhaps that is selfish of me, but I will not pretend to I feel differently. */
END
COPY_TRANS FINSOL01 27

CHAIN RH#IS25J solar1.2
@627 /* I... know. I expected that you would still feel that way. */
END
IF ~~ + solar1.1

CHAIN RH#IS25J solar2
@628 /* Oh, <CHARNAME>... I cannot counsel you. I can't predict what affect the taint might have upon you in the future, and yet... if anyone could turn the evil of Bhaal's essence to goodness at last, it would be you. */ 
END
COPY_TRANS FINSOL01 27

CHAIN RH#IS25J solar3
@629 /* If this power were less insidious, I would be more comfortable with the choice. But the thought of it destroying you in the end... I do not like to consider it, <CHARNAME>. */ 
END
COPY_TRANS FINSOL01 27

CHAIN RH#IS25J solar4
@630 /* Then... then this is goodbye. I wish you only the best, <CHARNAME>, though... I do not expect that we will meet again. */ 
END
COPY_TRANS FINSOL01 29

CHAIN RH#IS25J solar5
@631 /* You... oh, <CHARNAME>, my love... I can scarce believe it. */ 
= @632 /* (smile) I would kiss you right now, but I cannot imagine that the Solar would approve. */
END
COPY_TRANS FINSOL01 32

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND RH#IS25J

IF ~IsGabber(Player1)~ THEN BEGIN pid
 SAY @633 /* Yes, what is it? */ 
	++ @634 /* What do you think of our quest? */ + quest
	++ @635 /* Could I ask you something personal? */ + personal
	++ @636 /* Could you tell me about your religion? */ + religion
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @637 /* I'd like to talk to you for a moment, Isra. */ + romancemanagement
	++ @638 /* What do you think about our companions? */ + companions
	++ @639 /* Is there something wrong with your voice? */ + stringfix
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @640 /* (Flirt with Isra) */ + flirt
	++ @641 /* Not at the moment. */ EXIT
END

IF ~~ quest
 SAY @642 /* I think it grows more disturbing almost every day. */
IF ~~ EXIT
END	

IF ~~ personal
 SAY @643 /* You can certainly ask. I do not promise to answer, of course. */ 
	++ @644 /* Have you ever been to Tethyr before? */ + tethyr
	++ @645 /* You don't like war, do you? This can't be much fun for you. */ + war
	++ @646 /* How exactly do you still smell like roses? I haven't seen a perfume merchant in ages. */ + perfume
	+ ~GlobalGT("TalkedSarMel01","GLOBAL",0) GlobalLT("TalkedToSolar","GLOBAL",6)~ + @647 /* What do you think of Melissan? */ + melissan
	+ ~GlobalGT("METBAL","GLOBAL",0)~ + @648 /* What do you think of Balthazar? */ + balthazar
	+ ~Dead("bazdra02")~ + @649 /* Have you been enjoying the dragonslaying? */ + dragonslay
	+ ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ + @650 /* What are you planning on doing after this? */ + after1
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @650 /* What are you planning on doing after this? */ + after2
	++ @638 /* What do you think about our companions? */ + companions
	++ @651 /* Actually, never mind. */ EXIT 
END

IF ~~ tethyr
 SAY @652 /* I have not. Tethyrians... well, many of them are not terribly fond of my faith. Whether that means the Ruby Rose should spend more or less time there, I could not say. */
IF ~~ EXIT
END

IF ~~ war
 SAY @653 /* I cannot imagine this is much fun for anybody. */
IF ~~ EXIT
END	

IF ~~ perfume
 SAY @654 /* (laugh) My bottles are enchanted to never run dry, I must admit. I am beginning to wish I had thought to do the same with my other cosmetics, though those are considerably less crucial. */
IF ~~ EXIT
END 
	
IF ~~ melissan
 SAY @655 /* I quite like her. 'Tis a minor miracle to find anybody willing to help. */
IF ~~ EXIT
END	

IF ~~ balthazar
 SAY @656 /* I... whatever obligations he has to Amkethran, he is utterly neglecting them. That speaks more to his character than anything else, I'm afraid. */
IF ~~ EXIT
END	

IF ~~ dragonslay
 SAY @657 /* Very funny, <CHARNAME>. A normal dragon is bad enough, a Bhaalspawn one... I can only wonder what might be next. */
IF ~~ EXIT
END	
	
IF ~~ after1
 SAY @658 /* Returning to my order, most likely, assuming that something pressing does not come up in the meanwhile. */
IF ~~ EXIT
END	
	
IF ~~ after2
 SAY @659 /* You know that I mean to return to the Ruby Rose eventually, <CHARNAME>. What might happen after that... I cannot begin to guess. */
IF ~~ EXIT
END	

IF ~~ companions
 SAY @660 /* 'Twould depend upon the person in question. */
	+ ~InParty("Aerie")~ + @661 /* Aerie? */ + Aerie
	+ ~InParty("Anomen")~ + @662 /* Anomen? */ + Anomen
	+ ~InParty("Cernd")~ + @663 /* Cernd? */ + Cernd
	+ ~InParty("Edwin")~ + @664 /* Edwin? */ + Edwin
	+ ~InParty("Haerdalis")~ + @665 /* Haer'dalis? */ + Haerdalis
	+ ~InParty("Imoen2")~ + @666 /* Imoen? */ + Imoen
	+ ~InParty("Jaheira")~ + @667 /* Jaheira? */ + Jaheira
	+ ~InParty("Jan")~ + @668 /* Jan? */ + Jan
	+ ~InParty("Keldorn")~ + @669 /* Keldorn? */ + Keldorn
	+ ~InParty("Korgan")~ + @670 /* Korgan? */ + Korgan
	+ ~InParty("Mazzy")~ + @671 /* Mazzy? */ + Mazzy
	+ ~InParty("Minsc")~ + @672 /* Minsc? */ + Minsc
	+ ~InParty("Nalia")~ + @673 /* Nalia? */ + Nalia
	+ ~InParty("Neera")~ + @674 /* Neera? */ + Neera
	+ ~InParty("Rasaad")~ + @675 /* Rasaad? */ + Rasaad
	+ ~InParty("Sarevok")~ + @676 /* Sarevok? */ + Edwin
	+ ~InParty("Viconia")~ + @677 /* Viconia? */ + Viconia
	+ ~InParty("Valygar")~ + @678 /* Valygar? */ + Valygar
	++ @651 /* Actually, never mind. */ EXIT 
END

IF ~~ Aerie
 SAY @679 /* I think she has come a long way in the time I have known her. I'm happy to see her so at ease with herself now. */
IF ~~ EXIT
END

IF ~~ Anomen
 SAY @680 /* He is certainly a valuable companion. */
IF ~~ EXIT
END

IF ~~ Cernd
 SAY @681 /* I cannot say that I understand him. */
IF ~~ EXIT
END

IF ~~ Edwin
 SAY @682 /* Anything I have to say concerning him, my <PRO_LADYLORD>, I shall say to his face. */
IF ~~ EXIT
END

IF ~~ Haerdalis
 SAY @683 /* (laugh) He is far too charming for me to be impartial, I'm afraid, though his strange philosophy... I am not sure I care for it at all. */
IF ~~ EXIT
END

IF ~~ Imoen
 SAY @684 /* After everything that has happened to her, she hasn't lost her good nature... that says more about her strength than some might realize. */
IF ~~ EXIT
END

IF ~~ Jaheira
 SAY @685 /* I have nothing but respect for her, though I suppose that may be difficult to tell at times. */
IF ~~ EXIT
END

IF ~~ Jan
 SAY @686 /* I am still not sure what to make of him. */
IF ~~ EXIT
END

IF ~~ Keldorn
 SAY @687 /* My father fought alongside him once, you know. That makes things... somewhat strange, though 'tis no less of an honor. */
IF ~~ EXIT
END

IF ~~ Korgan
 SAY @688 /* I do not see why we need his company, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ Mazzy
 SAY @689 /* She has a purer heart than many a paladin... and I dare say that probably includes myself. 'Twould be an understatement to say that I valued her company. */
IF ~~ EXIT
END

IF ~~ Minsc
 SAY @690 /* His heart is truer than most. */
IF ~~ EXIT
END

IF ~~ Nalia
 SAY @691 /* I never can tell whether she sees me as an ally or an enemy, but I sympathize with her regardless. I wish all of Amn's nobility were of like mind. */
IF ~~ EXIT
END

IF ~~ Neera
 SAY @692 /* I have no great love for wild magic, though she herself is pleasant enough company. */
IF ~~ EXIT
END

IF ~~ Rasaad
 SAY @693 /* I have nothing but respect for both him and his faith. I do appreciate his company. */
IF ~~ EXIT
END

IF ~~ Valygar
 SAY @694 /* I think he is very lonely, <CHARNAME>. Lonelier than he will admit to. */
IF ~~ EXIT
END

IF ~~ Viconia
 SAY @695 /* The Sharran? I prefer her where I can see her, but I must warn you never to trust a word that she says. */
IF ~~ EXIT
END

IF ~~ religion
 SAY @696 /* I would be happy to, of course. What would you care to know? */ 
	++ @697 /* I don't know that much about Sune. */ + sune
	++ @698 /* I didn't know there were paladin orders other than the Radiant Heart. */ + orders
	++ @699 /* Could you tell me about your novitiate? */ + novice
	++ @700 /* What is your church like? */ + church
	++ @651 /* Actually, never mind. */ EXIT 
END 

IF ~~ sune
 SAY @701 /* Aye, her worship is not nearly as widespread further north as it is here. Sune is the fairest of the gods: beautiful, passionate, and boundlessly loving. She cares for her followers on a level that is somewhat unusual for a deity, mayhap, and asks only the same in return. */
	++ @702 /* Isn't she a strange choice for a paladin? */ + sune1
	++ @703 /* Could you tell me her dogma? */ + sune2
	++ @704 /* Do you need to be beautiful to worship her? */ + sune3
	++ @705 /* Is she very popular in Amn? */ + sune4
END

IF ~~ sune1
 SAY @706 /* I do not think so, though others might disagree. We define our devotions to our gods in so many different ways, but at heart... 'tis based either in love or fear, I believe. I have no use for the latter. */ 
IF ~~ EXIT
END

IF ~~ sune2
 SAY @707 /* She asks us to encourage love and beauty, in ourselves, in others, and in the world at large. What exactly that means... there are as many interpretations of beauty as there are Sunites, I think. We all believe that beauty is more than skin deep, that the imprint of one's soul can be seen in one's features. Some take this to literal extremes, 'tis true, but I have always felt that external beauty is marred by a poor temper or evil intent. */
 = @708 /* We cherish art and do whatever we can to sponsor and protect its creators, and we dislike it when people hide themselves, their skills, or their treasures away. Beauty that is concealed does little to enrich Faerun in its entirety, nor does it truly even benefit its possessor. Enriching one another's lives... aye, for me, that is the key to understanding the Firehair's dogma, though others, even amongst the faithful, may well interpret it differently. */
IF ~~ EXIT
END

IF ~~ sune3
 SAY @709 /* Yes and no, I would say. There is more to beauty than mere flesh, though we are all expected to cultivate our appearances to the best of our abilities. But no, nobody with love in their heart would be turned from her worship. */
IF ~~ EXIT
END

IF ~~ sune4
 SAY @710 /* Exceedingly so, yes, though... not entirely for the reasons I would like, I admit. */
IF ~~ EXIT
END

IF ~~ orders
 SAY @711 /* A small handful, certainly. Sune, Lathander, and Milil each sponsor orders, though none are as large or well-organized as the Radiant Heart. */
	++ @712 /* You never considered Torm or Tyr instead? */ + orders1
	++ @713 /* Would the Radiant Heart turn people away on religious grounds? */ + orders2
	++ @714 /* Milil? The god of poetry? */ + orders3
	++ @715 /* Those are all allied churches, aren't they? */ + orders4
	++ @716 /* The Ruby Rose won't be angry with you for wandering around unsupervised? */ + orders5
END

IF ~~ orders1
 SAY @717 /* No. Their faiths do important work, but duty and justice, without anything else behind them... I could never serve that. */
IF ~~ EXIT
END

IF ~~ orders2
 SAY @718 /* Not explicitly, I do not think, though 'twould be somewhat difficult for a member of a different faith to find patronage. */
IF ~~ EXIT
END 

IF ~~ orders3
 SAY @719 /* Aye. Most songs concerning knights are inspired by those of his order... they tend to prefer to travel with bards, and seldom simply for the pleasure of their company. */ 
IF ~~ EXIT
END

IF ~~ orders4
 SAY @720 /* Aye. 'Tis why I know more about them. Lathander, Milil, Lliira, Selûne, Sharess, and several deities amongst the elven pantheon as well, though I am somewhat less familiar with the Seldarine. */
IF ~~ EXIT
END 

IF ~~ orders5
 SAY @721 /* Were I still a squire, they would be, but we are largely permitted a degree of freedom in choosing our missions. The tenets of our faith very nearly mandate such flexibility. */
IF ~~ EXIT
END 

IF ~~ novice
 SAY @722 /* 'Twas... trying at times, mayhap, but ultimately rewarding. I was twelve when I was entrusted to the Order of the Ruby Rose, and I had already spent several years studying under Eshpurta's finest military instructors, so weapons training was nothing out of the ordinary for me. As for religious training... in the church of Sune, 'tis more an endeavor of love than a chore. */
	++ @723 /* Was it different than it would have been in another order? */ + novice1 
	++ @724 /* What was your actual squiredom like? */ + novice2
	++ @725 /* Did they teach you to talk like that too? */ + novice3
	++ @726 /* How cloistered was it? */ + novice4
END

IF ~~ novice1
 SAY @727 /* I should think so, aye. Discipline, honor, courtesy, and the other virtues are as important to us as they are to any other order, but we are also expected to be able to coexist with the rest of our church, and Heartwarders can be some of the staunchest individualists in the Realms. 'Twas a difficult lesson at times, but one better learned as a child than as an adult. */
IF ~~ EXIT
END  
 
IF ~~ novice2
 SAY @728 /* Not quite as eventful as you might expect. Sir Evendur took me on when I was a teenager, though I cannot say that I personally saw a great deal of battle. Unlike the Radiant Heart, we do not have a standing army, and tend to focus upon larger, more terrible evils in any case. Truly, a dragon's den is no place for a squire, though waiting outside with the horses has its own lessons on patience, bravery, and humility to impart. */ 
IF ~~ EXIT
END

IF ~~ novice3
 SAY @729 /* (laugh) Not as such, no, but after eight years, one begins to pick up such habits. Friends and family have made jests about it in the past, but I can only manage to slip out of it for a few moments before reverting. */ 
IF ~~ EXIT
END

IF ~~ novice4
 SAY @730 /* I... truly would not be the best judge of that. The Firehair expects us not to hide ourselves away, and we take that commandment very seriously. Whether we entirely succeed, I could not say. */ 
IF ~~ EXIT
END

IF ~~ church
 SAY @731 /* (laugh) It very nearly changes from one tenday to the next, I must admit. Our clerics are... unpredictable, to say the least. In Crimmor, 'tis even more evident, as we share our temple with the faithful of Lliira and Milil as well. */ 
	++ @732 /* Does working with such a chaotic church ever get irritating? */ + church1
 	++ @733 /* Who else worships her? */ + church2
 	++ @734 /* The rumors of wild Sunite revelry aren't exaggerated, I take it. */ + church3
	++ @735 /* That sounds like an odd set-up. */ + church4
END
 
IF ~~ church1
 SAY @736 /* It has its own trials and rewards, I should think. */
IF ~~ EXIT
END

IF ~~ church2
 SAY @737 /* Lovers, artists, bards and minstrels, and far more adventurers than one might have expected. */
IF ~~ EXIT
END

IF ~~ church3
 SAY @738 /* That would depend upon the rumor in question, I think. There is revelry, aye, and some of it is certainly too wild for my tastes, but the most sacred of our festivals are actually quite quiet affairs. */
IF ~~ EXIT
END

IF ~~ church4
 SAY @739 /* Sune holds sway in the morn, Milil in the afternoon, and Lliira in the evening. The arrangement is... strangely casual, aye, though it does seem to work out well enough. */
IF ~~ EXIT
END

IF ~~ romancemanagement
 SAY @740 /* Of course. */
	+ ~GlobalLT("rh#IsraTalksToB","GLOBAL",5)~ + @741 /* You said once not to expect longterm commitment, but after everything that has happened... where is this going, Isra? */ + romance1
	+ ~GlobalGT("rh#IsraTalksToB","GLOBAL",4) GlobalLT("rh#IsraTalksToB","GLOBAL",9)~ + @742 /* I love you, Isra. Despite whatever mad insecurities you might have. I wanted you to know that. */ + romance2
	+ ~GlobalGT("rh#IsraTalksToB","GLOBAL",9)~ + @743 /* Have you really never entertained the possibility of marriage someday? */ + romance3
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",0)~ + @744 /* As much as I appreciate the attention, I'd rather you didn't flirt with me in public. */ + disable
	+ ~Global("rh#IsraFlirtsDisabled","GLOBAL",1)~ + @745 /* I miss your attention, Isra. Could you flirt with me some more? */ + enable
  	+ ~RandomNum(2,1) OR(3) AreaCheck("AR4500") AreaCheck("AR5003") AreaCheck("AR5501")~ + @746 /* Would you care for a bit more... privacy tonight? */ + flirt18.1  	
  	+ ~RandomNum(2,2) OR(3) AreaCheck("AR4500") AreaCheck("AR5003") AreaCheck("AR5501")~ + @746 /* Would you care for a bit more... privacy tonight? */ + flirt18.2
	+ ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + @747 /* I'm sorry to say this, but I think we should go back to just being friends. */ + breakup
	++ @651 /* Actually, never mind. */ EXIT 
END

IF ~~ romance1
 SAY @748 /* I wish I knew. I do not want to be parted from you, <CHARNAME>, but... well, mayhap 'tis too soon to be worried about such things now. */
IF ~~ EXIT
END	
	
IF ~~ romance2
 SAY @749 /* (smile) And I, you, my <PRO_LADYLORD>. Do not doubt that for a moment. */
IF ~~ EXIT
END

IF ~~ romance3
 SAY @750 /* Someday, aye. I do not expect to stay tethered to this lifestyle forever, though until my heart bids me do otherwise... I am sorry, but I cannot swear vows I am not certain I will be permitted to keep. */
 = @751 /* 'Tis a long time to ask someone to wait, I know. I am sorry for that as well. */
IF ~~ EXIT
END

IF ~~ disable
 SAY @752 /* Oh. Of course. Forgive me for the impertinence. */
IF ~~ DO ~SetGlobal("rh#IsraFlirtsDisabled","GLOBAL",1)~ EXIT
END

IF ~~ enable
 SAY @753 /* (laugh) You certainly needn't ask me twice. */
IF ~~ DO ~SetGlobal("rh#IsraFlirtsDisabled","GLOBAL",0)~ EXIT
END

IF ~~ breakup
 SAY @754 /* Oh. Oh, I... see. Is there nothing I can say to convince you to reconsider? */
	++ @755 /* I'm afraid not. */ + breakup1
	++ @756 /* Never mind. I didn't mean it. */ + breakup2
END

IF ~~ breakup1
 SAY @757 /* Then... then I suppose that is all there is to it. I'm sorry. */
IF ~~ DO ~SetGlobal("rh#IsraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ breakup2
 SAY @758 /* Good. You shouldn't scare me like that, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ stringfix 
SAY @759 /* I... don't believe so. */ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isstr")~ EXIT 
END

IF ~~ flirt
 SAY @760 /* Yes? */
 	+ ~RandomNum(4,1)~ + @761 /* (Watch her) */ + flirt1.1
 	+ ~RandomNum(4,2)~ + @761 /* (Watch her) */ + flirt1.2
 	+ ~RandomNum(4,3)~ + @761 /* (Watch her) */ + flirt1.3
 	+ ~RandomNum(4,4)~ + @761 /* (Watch her) */ + flirt1.4
 	+ ~RandomNum(4,1)~ + @762 /* (Smile at her) */ + flirt2.1
 	+ ~RandomNum(4,2)~ + @762 /* (Smile at her) */ + flirt2.2
 	+ ~RandomNum(4,3)~ + @762 /* (Smile at her) */ + flirt2.3
 	+ ~RandomNum(4,4)~ + @762 /* (Smile at her) */ + flirt2.4
 	+ ~RandomNum(4,1) Gender(Player1,MALE)~ + @763 /* (Kiss her hand) */ + flirt3.1
 	+ ~RandomNum(4,1) Gender(Player1,FEMALE)~ + @763 /* (Kiss her hand) */ + flirt3.2
 	+ ~RandomNum(4,2)~ + @763 /* (Kiss her hand) */ + flirt3.3
 	+ ~RandomNum(4,3)~ + @763 /* (Kiss her hand) */ + flirt3.4
 	+ ~RandomNum(4,4)~ + @763 /* (Kiss her hand) */ + flirt3.5
 	+ ~RandomNum(4,1)~ + @764 /* (Bow to her extravagantly) */ + flirt4.1
 	+ ~RandomNum(4,2)~ + @764 /* (Bow to her extravagantly) */ + flirt4.2
 	+ ~RandomNum(4,3)~ + @764 /* (Bow to her extravagantly) */ + flirt4.3
 	+ ~RandomNum(4,4)~ + @764 /* (Bow to her extravagantly) */ + flirt4.4
 	+ ~RandomNum(2,1) AreaType([FOREST])~ + @765 /* (Offer her a flower) */ + flirt5.1
 	+ ~RandomNum(2,2) AreaType([FOREST])~ + @765 /* (Offer her a flower) */ + flirt5.2
 	+ ~RandomNum(4,1)~ + @766 /* (Play with her hair) */ + flirt6.1
 	+ ~RandomNum(4,2)~ + @766 /* (Play with her hair) */ + flirt6.2
 	+ ~RandomNum(4,3)~ + @766 /* (Play with her hair) */ + flirt6.3
 	+ ~RandomNum(4,4)~ + @766 /* (Play with her hair) */ + flirt6.4
 	+ ~RandomNum(4,1)~ + @767 /* (Wink at her) */ + flirt8.1
 	+ ~RandomNum(4,2)~ + @767 /* (Wink at her) */ + flirt8.2
 	+ ~RandomNum(4,3)~ + @767 /* (Wink at her) */ + flirt8.3
 	+ ~RandomNum(4,4)~ + @767 /* (Wink at her) */ + flirt8.4
 	+ ~RandomNum(4,1)~ + @768 /* (Hug her) */ + flirt9.1
 	+ ~RandomNum(4,2)~ + @768 /* (Hug her) */ + flirt9.2
 	+ ~RandomNum(4,3)~ + @768 /* (Hug her) */ + flirt9.3
 	+ ~RandomNum(4,4)~ + @768 /* (Hug her) */ + flirt9.4
 	+ ~RandomNum(4,1) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @769 /* (Kiss her cheek) */ + flirt10.1
 	+ ~RandomNum(4,2) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @769 /* (Kiss her cheek) */ + flirt10.2
 	+ ~RandomNum(4,3) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @769 /* (Kiss her cheek) */ + flirt10.3
 	+ ~RandomNum(4,4) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @769 /* (Kiss her cheek) */ + flirt10.4
 	+ ~RandomNum(4,1) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @770 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.1
 	+ ~RandomNum(4,2) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @770 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.2
 	+ ~RandomNum(4,3) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @770 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.3
 	+ ~RandomNum(4,4) OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING)~ + @770 /* (Gesture for her to drop to one knee and then kiss her cheek) */ + flirt10.4
 	+ ~RandomNum(4,1) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @771 /* (Stroke her cheek) */ + flirt13.1
  	+ ~RandomNum(4,2) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @771 /* (Stroke her cheek) */ + flirt13.2
   	+ ~RandomNum(4,3) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @771 /* (Stroke her cheek) */ + flirt13.3
    + ~RandomNum(4,4) !Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING)~ + @771 /* (Stroke her cheek) */ + flirt13.4
    + ~RandomNum(4,1)~ + @772 /* (Kiss her lips) */ + flirt14.1
 	+ ~RandomNum(4,2)~ + @772 /* (Kiss her lips) */ + flirt14.2
 	+ ~RandomNum(4,3)~ + @772 /* (Kiss her lips) */ + flirt14.3	
 	+ ~RandomNum(4,4)~ + @772 /* (Kiss her lips) */ + flirt14.4
  	+ ~RandomNum(4,1)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.1
  	+ ~Gender(Player1,MALE) RandomNum(4,2)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.2
  	+ ~Gender(Player1,FEMALE) RandomNum(4,2)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.3
  	+ ~RandomNum(4,3)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.4
  	+ ~!Race(Player1,GNOME) !Race(Player1,DWARF) !Race(Player1,HALFLING) RandomNum(4,4)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.5
  	+ ~OR(3) Race(Player1,GNOME) Race(Player1,DWARF) Race(Player1,HALFLING) RandomNum(4,4)~ + @773 /* (Suggestively draw her hand towards your body) */ + flirt16.6 
  	+ ~RandomNum(2,1) AreaCheck("AR5003")~ + @774 /* (Offer to help her bathe) */ + flirt17.1
 	+ ~RandomNum(2,1) AreaCheck("AR5501")~ + @774 /* (Offer to help her bathe) */ + flirt17.2
	+ ~RandomNum(2,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501")~ + @774 /* (Offer to help her bathe) */ + flirt17.3	
	++ @651 /* Actually, never mind. */ EXIT 
END

IF ~~ flirt1.1
 SAY @775 /* (If Isra notices your attention, she makes no sign of it. Her eyes are fixed upon the surroundings, her lips pressed together as if she is worried about something.) */
IF ~~ EXIT
END

IF ~~ flirt1.2
 SAY @776 /* (The kohl around Isra's eyes -- one of the few cosmetic items she still seems to have access to -- is smudging slightly in the Tethyrian heat. She doesn't appear to have noticed it so far, and even if she did, there is little time at present to fix it.) */
IF ~~ EXIT
END

IF ~~ flirt1.3
 SAY @777 /* (You find Isra watching you, her expression both tender and concerned. She smiles when your eyes meet, and then quickly turns to examine her weapons instead.) */
IF ~~ EXIT
END

IF ~~ flirt1.4
 SAY @778 /* (Despite Isra's Calishite heritage, you can tell that the arid Tethyrian climate is taking its toll on her. She hasn't complained yet and likely never will, but you find her looking somewhat more tired than usual.) */ 
IF ~~ EXIT
END

IF ~~ flirt2.1
 SAY @779 /* Oh, my <PRO_LADYLORD>, I would almost take that smile as an open invitation. */
IF ~~ EXIT
END

IF ~~ flirt2.2
 SAY @780 /* (Isra returns your smile easily, drawing near you to rest her hand upon your shoulder for a brief moment.) */
IF ~~ EXIT
END

IF ~~ flirt2.3
 SAY @781 /* (Isra smiles back readily enough, though the expression fades from her face almost immediately afterwards, replaced by the worry that has so often characterized it as of late.) */
IF ~~ EXIT
END

IF ~~ flirt2.4
 SAY @782 /* (Your smile draws Isra's attention, and she watches you for a long moment, her expression one of obvious warm admiration.) */
IF ~~ EXIT
END

IF ~~ flirt3.1
 SAY @783 /* (You drop to one knee with a gentlemanly flourish, taking Isra's hand in your own. She watches you, her manner appropriately dignified, though you can sense her restrained amusement as you press your lips to the back of her hand.) */
IF ~~ EXIT
END

IF ~~ flirt3.2
 SAY @784 /* (There is little clear protocol concerning acts of chivalry between two women, though the incongruity of the gesture does not seem to bother Isra. She watches you, her manner appropriately dignified, though you can sense her restrained amusement as you press your lips to the back of her hand.) */
IF ~~ EXIT
END

IF ~~ flirt3.3
 SAY @785 /* (Unsurprisingly, you find Isra's hand heavily callused, the hint of what can only be faded scars scattered across its back. She smiles when you bring it to your lips, clearly touched by the chivalrous gesture.) */
IF ~~ EXIT
END

IF ~~ flirt3.4
 SAY @786 /* Oh, <CHARNAME>... really, this is hardly the time or place for such games. */
IF ~~ EXIT
END

IF ~~ flirt3.5
 SAY @787 /* (Isra bows her head to you in acknowledgement, the gesture almost as elegant as a full curtsy, and you sense that this is a position that she has found herself in many times before. Her expression is coolly thoughtful, but her small smile as you press your lips to the back of her hand is sincere.) */
IF ~~ EXIT
END

IF ~~ flirt4.1
 SAY @788 /* (Isra shakes her head helplessly, not bothering to hide her laughter.) */
IF ~~ EXIT
END

IF ~~ flirt4.2
 SAY @789 /* (laugh) If you wish me to curtsy in response, my <PRO_LADYLORD>, I'm afraid you are going to be sadly disappointed. */
IF ~~ EXIT
END

IF ~~ flirt4.3
 SAY @790 /* Oh, dear. I shall have to teach you to be properly ridiculous one day, my <PRO_LADYLORD>. I'm afraid you're laying it on just a little bit too thickly. */
IF ~~ EXIT
END

IF ~~ flirt4.4
 SAY @791 /* (Isra quirks an eyebrow at your antics, though you win an amused smile from her regardless.) */
IF ~~ EXIT
END

IF ~~ flirt5.1
 SAY @792 /* Oh, <CHARNAME>... you shouldn't wander off alone like that, even in search of such lovely gifts. */
IF ~~ EXIT
END

IF ~~ flirt5.2
 SAY @793 /* (sigh) Sometimes it amazes me that such things still grow in Tethyr. */
IF ~~ EXIT
END

IF ~~ flirt6.1
 SAY @794 /* Careful now, my <PRO_LADYLORD>. These braids are difficult enough in decent shape as it is. */
IF ~~ EXIT
END

IF ~~ flirt6.2
 SAY @795 /* (As you twine several loose strands of her hair around your fingers, Isra brings her hand up to cup your own. She holds it for a brief moment before pulling her hair free of your grasp.) */
IF ~~ EXIT
END

IF ~~ flirt6.3
 SAY @796 /* (As your fingers brush against her braid, Isra sweeps it from your grasp, fixing you with a slightly stern look.) */ 
IF ~~ EXIT
END

IF ~~ flirt6.4
 SAY @797 /* I will never understand why you are so fond of doing that, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ flirt8.1
 SAY @798 /* (Isra half smiles in return, shaking her head in mild bemusement.) */
IF ~~ EXIT
END

IF ~~ flirt8.2
 SAY @799 /* (Isra is somewhat too dignified to roll her eyes at you, but the sudden slight tilt of her eyebrows tells you that she would like to.) */
IF ~~ EXIT
END

IF ~~ flirt8.3
 SAY @800 /* If you have something in your eye, my <PRO_LADYLORD>, I would be quite happy to remove it for you. */
IF ~~ EXIT
END

IF ~~ flirt8.4
 SAY @801 /* (Quirking an eyebrow at you, Isra responds with quick and ironic flourish.) */
IF ~~ EXIT
END

IF ~~ flirt9.1
 SAY @802 /* (Isra tenses when you embrace her, pulling away as if she is afraid you might accidentally damage her armor... or perhaps be damaged by it.) */
IF ~~ EXIT
END

IF ~~ flirt9.2
 SAY @803 /* (Isra shakes her head in mild annoyance but does not bother to complain.) */
IF ~~ EXIT
END

IF ~~ flirt9.3
 SAY @804 /* Come now, <CHARNAME>. We haven't the time for this right now. */
IF ~~ EXIT
END

IF ~~ flirt9.4
 SAY @805 /* (sigh) 'Twould be awkward, were an enemy to stumble upon us like this. */
IF ~~ EXIT
END

IF ~~ flirt10.1
 SAY @806 /* (Isra smiles, lightly brushing her fingers across her cheek afterward.) */
IF ~~ EXIT
END

IF ~~ flirt10.2
 SAY @807 /* (Isra rests her hand upon your shoulder, holding you close for a brief moment afterward before letting you go.) */
IF ~~ EXIT
END

IF ~~ flirt10.3
 SAY @808 /* (Her fingers resting on your jaw, Isra tilts your head gently, brushing her lips against your own in a kiss that is somehow simultaneously chaste and intimate.) */
 = @809 /* There now, my <PRO_LADYLORD>. That is how it is done within the Church of Sune. */
IF ~~ EXIT
END

IF ~~ flirt10.4
 SAY @810 /* (You can almost feel the smile that spreads across her face at your kiss.) */
 = @811 /* 'Tis the sort of greeting I could become used to, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ flirt13.1
 SAY @812 /* (Isra smiles, catching your fingers in her own and pressing them gently against her lips.) */
IF ~~ EXIT
END

IF ~~ flirt13.2
 SAY @813 /* (Isra raises her own hand instinctively to touch her face, though her smile fades when her fingers come back smudged with dirt. She tosses you a reproachful look before wiping away the grime.) */
IF ~~ EXIT
END

IF ~~ flirt13.3
 SAY @814 /* (She pulls you closer for a brief moment, pressing a kiss against your own cheek in response.) */
IF ~~ EXIT
END

IF ~~ flirt13.4
 SAY @815 /* (She sighs quietly, and her smile takes several moments to fade.) */
IF ~~ EXIT
END

IF ~~ flirt14.1
 SAY @816 /* (She tangles a hand in your hair, holding you close for a long moment. When she finally releases you, her cheeks are slightly flushed.) */
IF ~~ EXIT
END

IF ~~ flirt14.2
 SAY @817 /* (Isra sighs, nipping playfully at your lower lip.) */
 = @818 /* Oh, <CHARNAME>... you are such a sweet distraction at times. */
IF ~~ EXIT
END

IF ~~ flirt14.3
 SAY @819 /* (She catches your chin in her hand, savoring the kiss for a long moment.) */
IF ~~ EXIT
END

IF ~~ flirt14.4
 SAY @820 /* (Isra murmurs happily, trailing her fingertips gently across the back of your neck as she returns your kiss.) */
IF ~~ EXIT
END

IF ~~ flirt16.1
 SAY @821 /* Why, <CHARNAME>, I did not realize that you so enjoyed the touch of cold metal. I shall have to remember that. */
IF ~~ EXIT
END

IF ~~ flirt16.2
 SAY @822 /* (smile) And to think, my Lord, I would have almost taken you for a properly gallant gentleman. This is, however, far more interesting... */
IF ~~ EXIT
END

IF ~~ flirt16.3
 SAY @823 /* (smile) And to think, <CHARNAME>, I would have almost taken you for a respectable young lady. This is, however, far more interesting... */
IF ~~ EXIT
END

IF ~~ flirt16.4
 SAY @824 /* (Isra raises an eyebrow at you. As soon as her fingers brush the fabric of your clothing, she pulls her hand away, her lips twitching in silent laughter.) */
IF ~~ EXIT
END

IF ~~ flirt16.5
 SAY @825 /* (Shamelessly tracing the outline of your body with her fingertips, Isra takes a step forward, drawing you closer for an unsurprisingly ardent kiss.) */
IF ~~ EXIT
END

IF ~~ flirt16.6
 SAY @826 /* (Shamelessly tracing the outline of your body with her fingertips, Isra drops to one knee, drawing you closer for an unsurprisingly ardent kiss.) */
IF ~~ EXIT
END

IF ~~ flirt17.1
 SAY @827 /* Right now? With the army at the walls... I am not sure that this is the appropriate time for such pleasures. */
IF ~~ EXIT
END
 	
IF ~~ flirt17.2
 SAY @828 /* I wonder if Amkethran can afford such a generous use of water. */
IF ~~ EXIT
END
 	
IF ~~ flirt17.3
 SAY @829 /* (laugh) You wish to help, my <PRO_LADYLORD>? Or to watch? */
 = @830 /* No matter. I would appreciate the company either way. */
IF ~~ EXIT
END

IF ~~ flirt18.1
 SAY @831 /* Mmm... I can think of nothing I would like to do more, my love. */
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("rh#isct3")~ EXIT
END

IF ~~ flirt18.2
 SAY @832 /* (sigh) I'm afraid I'm somewhat weary, <CHARNAME>. Tomorrow, mayhap. */
IF ~~ EXIT
END
END