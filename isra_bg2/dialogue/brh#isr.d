BEGIN BRH#ISR

// Aerie

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAerie1","GLOBAL",0)~ THEN BAERIE rh#IsraAerie1
@0 /* Isra, could I ask you something? */
DO ~SetGlobal("rh#IsraAerie1","GLOBAL",1)~
== BRH#ISR @1 /* Of course, my lady. */
== BAERIE @2 /* Tee-hee! I'm not a lady, Isra. I'm just... I'm just, well, me. */
== BRH#ISR @3 /* Be that as it may, you deserve the courtesy as much as anyone. You are nobler than many a noblewoman I've encountered in the past, I assure you. */
== BAERIE @4 /* That's nice of you to say, really, but... they're still just words, aren't they? It seems... it just seems like a silly thing to insist upon. */
== BRH#ISR @5 /* Mayhap, though the way we speak to each other often colors the way we think about each other. And I like to see your smiles. They're altogether too rare. */
== BAERIE @6 /* I--I guess I just don't have much to smile for. Not anymore. */
== BRH#ISR @7 /* I wish you wouldn't say that, Aerie. It isn't true. */
== BAERIE @8 /* It still feels like it is. */
== BRH#ISR @9 /* Aye, I know. */
EXIT

// 2.
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAerie2","GLOBAL",0)~ THEN BRH#ISR rh#IsraAerie2
@10 /* And... there. All finished. */
DO ~SetGlobal("rh#IsraAerie2","GLOBAL",1)~
== BAERIE @11 /* Thank you, Isra. Can I... do you have a mirror? */
== BRH#ISR @12 /* (laugh) More than one, certainly. */
== BAERIE @13 /* It looks nicer than it did before, doesn't it? I know I shouldn't have let it get messed up so, but I like it better like this. */
== BRH#ISR @14 /* I would happily do it for you in the mornings, if you wish it. */
== BAERIE @15 /* I think I'd like that. But if only... if only you could fix more than just hair. The scars on my back-- */
== BRH#ISR @16 /* Could not hope to eclipse your beauty, my lady. */
== BAERIE @17 /* You really think so? They're not--they're not ugly to you? */
== BRH#ISR @18 /* There are many different types of beauty, Aerie. When I look at them, I see strength... I see suffering blossoming into compassion. That is nothing to recoil away from. */
= @19 /* Mourn them, but please... don't let their loss consume you. */
== BAERIE @20 /* That's easy enough for you to say, Isra. You've never suffered a loss like this! */
== BRH#ISR @21 /* No... no, I haven't, thank Sune, but I... I know someone else who has. A cousin and close friend. */
== BAERIE @22 /* Oh. I--I didn't know. Are they--are they alright? */
== BRH#ISR @23 /* No. No, not really. */
= @24 /* Forgive me. I didn't mean to depress you further. */
== BAERIE @25 /* It's okay. Sometimes I think I forget that I'm not the only one who's ever... lost something. */
== BRH#ISR @26 /* You remember when it matters. */
== BAERIE @27 /* I--I guess so. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([CITY])
Global("rh#IsraAerie3","GLOBAL",0)~ THEN BAERIE rh#IsraAerie3
@28 /* I--I don't understand how you can like places like this so much, Isra. */
DO ~SetGlobal("rh#IsraAerie3","GLOBAL",1)~
== BRH#ISR @29 /* What do you mean? */
== BAERIE @30 /* I meant... cities. In general. All the ones I saw with the circus... they all seemed so dirty and ugly and--and lonely. */
== BRH#ISR @31 /* A city is only as good as its leadership, my lady. When that fails... aye, the results are usually less than attractive. */
== BAERIE @32 /* It's hard to imagine one whose leaders aren't concerned only with themselves. */
== BRH#ISR @33 /* Not all are as corrupt as Athkatla. */
== BAERIE @34 /* Maybe, though I don't think I'd like a nice city very much either. */
EXIT

// 4.
CHAIN IF WEIGHT #-1 ~Global("rh#IsraAerie4","GLOBAL",2)~ THEN AERIEJ rh#IsraAerie4
@35 /* Isra, are you--are you alright? */
DO ~SetGlobal("rh#IsraAerie4","GLOBAL",3)~
== RH#ISRJ @36 /* As well as can be expected. */
== AERIEJ @37 /* That's not an answer. */
== RH#ISRJ @38 /* No, I suppose it isn't. */
== AERIEJ @39 /* I know you've been talking about things with <CHARNAME>, and I understand that, but... but you know you can talk to me also, right? */
== RH#ISRJ @40 /* I... never thought otherwise. */
== AERIEJ @41 /* But you haven't. */
== RH#ISRJ @42 /* No. */
== AERIEJ @43 /* I may not be the strongest of people, but I--I can still handle other people's problems. Really, I can. */
== RH#ISRJ @44 /* I never said that you couldn't. */
== AERIEJ @45 /* Not in as many words. But friendship... it's supposed to be mutual, isn't it? Not just you helping me. */
== RH#ISRJ @46 /* I... no, you're right. I'm sorry. */
== AERIEJ @47 /* Oh. Okay. So you'll talk now? */
== RH#ISRJ @48 /* (smile) Aye. */
EXIT

// 5.
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("AerieRomanceActive","GLOBAL",2)
Global("rh#IsraAerie5","GLOBAL",0)~ THEN BRH#ISR rh#IsraAerie5
@49 /* Aerie, might I have a word with you for a moment? */
DO ~SetGlobal("rh#IsraAerie5","GLOBAL",1)~
== BAERIE @50 /* Of course! Though... is something the matter? You look a little serious. */
== BRH#ISR @51 /* (smile) Nothing is wrong. You and <CHARNAME>... I wanted to tell you that you look lovely together. */
== BAERIE @52 /* Oh! Well, I--I... thank you, I suppose. */
== BRH#ISR @53 /* Loath as I am to raise such a topic, I... have been wondering precisely how much Quayle taught you about... certain delicate matters. */
== BAERIE @54 /* What types of things? */
== BRH#ISR @55 /* Children, and... how to keep from having them. There are specific herbs that can be purchased from nearly any Sharessan cleric-- */
== BAERIE @56 /* I... no, Isra, we're not-- I mean, I don't think I want to hear this! */
== BRH#ISR @57 /* I do not mean to make you uncomfortable, Aerie, but ignorance can be a dangerous thing. */
== BAERIE @58 /* I... please, can we just... can we just not talk about this? */
== BRH#ISR @59 /* (sigh) As you wish. */
EXIT

// Anomen

// 1.
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("rh#IsraAnomen1","GLOBAL",0)~ THEN BRH#ISR rh#IsraAnomen1
@60 /* Anomen, might I speak with you a moment? */
DO ~SetGlobal("rh#IsraAnomen1","GLOBAL",1)~
== BANOMEN @61 /* My lady, I am always willing to speak to a woman as fair as yourself. */ 
== BRH#ISR @62 /* (smile) The Radiant Heart has not been entirely remiss in teaching you manners, I see. */
== BANOMEN @63 /* Indeed, the Order ever strives to ensure that its members demonstrate the proper decorum and respect when in the company of the fairer sex. 'Tis a lesson I have taken to heart. */
== BRH#ISR @64 /* Are women truly so rare within your ranks? */
== BANOMEN @65 /* Women are by no means barred entry, though few enough find the Order's work to their liking. 'Tis not the most delicate of callings. */
== BRH#ISR @66 /* I have noticed that, yes. */
== BANOMEN @67 /* I was not implying that you did not, my lady, though I understand that you might have taken it as such. Perhaps we should move on. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("rh#IsraAnomen2","GLOBAL",0)~ THEN BANOMEN rh#IsraAnomen2
@68 /* May I ask what drew you from the luxury of your temples, my lady? 'Tis always an unexpected treat when one of your faith takes up the life of the adventurer. */
DO ~SetGlobal("rh#IsraAnomen2","GLOBAL",1)~
== BRH#ISR @69 /* My motives are likely not dissimilar from your own, Anomen. */
== BANOMEN @70 /* Hmph. I find that unlikely. */
== BRH#ISR @71 /* Have I given you reason to question my commitments? */
== BANOMEN @72 /* I do not doubt your virtue, Lady Isra, and I apologize if you took it as such. However, I fear that we have little in common. */
== BRH#ISR @73 /* Mayhap not. Helm and Sune have very different faiths. */
== BANOMEN @74 /* Heh. That is true. */
= @75 /* Would I be correct in assuming that you are recently knighted yourself, my lady? You are... how old? Eighteen? Nineteen? */
== BRH#ISR @76 /* One and twenty. And yes, I was ordained shortly before coming to Athkatla. */
== BANOMEN @77 /* I see. That is very interesting. But the hour grows late, and there is much to be done. Perhaps we can speak of this again at another time. */
EXIT

// 3.
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",LAWFUL_GOOD)
Global("rh#IsraAnomen3","GLOBAL",0)~ THEN BRH#ISR rh#IsraAnomen3a
@78 /* I should congratulate you, Anomen. 'Tis no minor feat, what you have accomplished. */
DO ~SetGlobal("rh#IsraAnomen3","GLOBAL",1)~
== BANOMEN @79 /* My thanks. I am sure that you are more than familiar with the feeling yourself. */
== BRH#ISR @80 /* Aye, sir. I most certainly am. */
== BANOMEN @81 /* Sir... by Helm, it feels good to hear that. */
== BRH#ISR @82 /* 'Twill become commonplace soon enough, I assure you. */
== BANOMEN @83 /* Perhaps, though I doubt I shall ever grow tired of it. */
== BRH#ISR @84 /* Nor should you. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",LAWFUL_GOOD)
Global("rh#IsraAnomen3","GLOBAL",1)
Global("rh#IsraAnomen4","GLOBAL",0)~ THEN BANOMEN rh#IsraAnomen4
@85 /* My lady, would I be correct in assuming that your order is very different than my own? */
DO ~SetGlobal("rh#IsraAnomen4","GLOBAL",1)~
== BRH#ISR @86 /* I couldn't say for certain. My experience with the Radiant Heart has been limited in nature, ere now. */
== BANOMEN @87 /* Aye, our presence is sadly limited in Crimmor. */
== BRH#ISR @88 /* The city doesn't suffer because of it, I assure you. */
== BANOMEN @89 /* Hmph. Perhaps not. Given the prevalence of Sunites and Lliirans, the citizenry is no doubt too engrossed in endless revelry to commit any significant crime. */
== BRH#ISR @90 /* (laugh) Would that it were as simple as that. */
== BANOMEN @91 /* You would defend such debauchery? */
== BRH#ISR @92 /* Not all revelry is debauchery, though there is an admittedly thin line at times. My own church doesn't cross it as often as you might think. */
== BANOMEN @93 /* Even so, I have heard... stories... about Sunite festivities. */
== BRH#ISR @94 /* Most people have, I am sure. */
== BANOMEN @95 /* Ahem. Be that as it may, 'tis no fitting subject for polite conversation. Shall we continue on our way? */
EXIT

// Surayah conflict
CHAIN IF WEIGHT #-1 ~Global("rh#IsraSurayah","GLOBAL",1)~ THEN RH#ISRJ surayah
@96 /* I was leery enough of this mad plan before, but cold-blooded murder-- */
DO ~IncrementGlobal("rh#IsraSurayah","GLOBAL",1)~
== ANOMENJ @97 /* Pfeh! It was no murder, girl. Saerk was the villain, and received only his just deserts! */
== RH#ISRJ @98 /* I cannot speak as to Saerk's guilt or innocence, but yours, Anomen... I would avenge that girl's death myself if I had the authority. */
= @99 /* <CHARNAME>, I won't harbor a murderer. If you mean to keep this man in your company, I will have to take my leave of you. */
END
	++ @100 /* Then I suppose this is the end of our association, Isra. */ + surayah1
	++ @101 /* You crossed a line, Anomen. I won't let the rest of the party disintegrate over your actions. */ EXTERN ANOMENJ surayah2

CHAIN RH#ISRJ surayah1
@102 /* So it would seem. */
DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
LeaveParty()
EscapeArea()~
EXIT

CHAIN ANOMENJ surayah2
@103 /* You would cast me aside at the command of this Sunite harlot? Bah! I should have expected nothing better of you. */
DO ~LeaveParty()
EscapeArea()~
EXIT

// Cernd

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCernd1","GLOBAL",0)~ THEN BCERND rh#IsraCernd1
@104 /* Is that beetle not the most majestic of creatures? What astounding beauty, in such minute form. */
DO ~SetGlobal("rh#IsraCernd1","GLOBAL",1)~
== BRH#ISR @105 /* Forgive me, Cernd but... 'tis an insect. */
== BCERND @106 /* Your disdain is misplaced, child! See the patterns on its exterior, the detailed markings and colors? There are none like it; this beetle is entirely unique in the world. Is that not a type of majesty? */
== BRH#ISR @107 /* Everything is unique in the world. That alone... I don't know. */
= @108 /* I don't wish to seem impolite, but... there is a question that has bothered me for some time now. */
== BCERND @109 /* What knowledge can I impart, dear gazelle? */
== BRH#ISR @110 /* My knowledge of nature is... not what it should be, mayhap, but I've often wondered why druids feel that it would even need protection. */
== BCERND @111 /* Even the most ancient and wise of trees will fall under the woodsman's axe, Isra. We exist to serve and protect the great Mother... more often than not, from ourselves. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCernd2","GLOBAL",0)~ THEN BCERND rh#IsraCernd2
@112 /* Is something the matter? You have been picking apart your pack for nigh on an hour. Any more and I fear it will begin to wear. */
DO ~SetGlobal("rh#IsraCernd2","GLOBAL",1)~
== BRH#ISR @113 /* 'Tis nothing. Pay me no mind, truly. */
== BCERND @114 /* Were it nothing, my dear, you would have long given up on your search. */
== BRH#ISR @115 /* 'Tis... slightly embarrassing. Don't worry about it, Cernd. */
== BCERND @116 /* We have adventured together for some time, and there should be few secrets in a good pack. You need not fear embarrassment from me. */
== BRH#ISR @117 /* I cannot find my lip stain. By Sune, I had it this morning, but now... */
= @118 /* I've yet to find it available here in Athkatla. 'Tis the only one that works well with my complexion. */
== BCERND @119 /* Ah. */
= @120 /* Perhaps I can be of some assistance, then. I have some experience with herbal remedies, poultices and the like... I should be able to find you a natural alternative with little fuss. */
== BRH#ISR @121 /* A... natural alternative? */
== BCERND @122 /* Hmm, give me a few days and I shall see what I can come up with. */
== BRH#ISR @123 /* Thank you. I think. */
EXIT

// 3.
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCernd2","GLOBAL",1)
Global("rh#IsraCernd3","GLOBAL",0)~ THEN BRH#ISR rh#IsraCernd3
@124 /* As grateful as I am for your assistance, Cernd, is there no way to... mask the smell? This... lip stain... has a rather pungent scent. */
DO ~SetGlobal("rh#IsraCernd3","GLOBAL",1)~
== BCERND @125 /* Is it not delightfully earthy? */
== BRH#ISR @126 /* That is part of the issue. 'Tis a little too earthy for my tastes. */
== BCERND @127 /* I see. */
== BRH#ISR @128 /* I do not mean to offend, of course, I-- */
== BCERND @129 /* Nay, my dear, I take no offense, I simply failed to take into account the colors of your plumage. */
= @130 /* I shall endeavor to create something more appropriate next time! */
== BRH#ISR @131 /* No, Cernd, thank you for your efforts, but that is entirely unnecessary. I shall buy something suitable next time we pass by the markets. */
== BCERND @132 /* The baby sparrow may not fly on its first venture from the nest, but with subsequent attempts, it will eventually soar. We shall remedy this issue in time, and create something both suitable and functional, I assure you. */
== BRH#ISR @133 /* Wonderful. */
EXIT

// Edwin

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Gender("Edwin",FEMALE)
Global("rh#IsraEdwin1","GLOBAL",0)~ THEN BEDWIN rh#IsraEdwin1
@134 /* Isra, I would like your input on a favorite theory of mine. Tell me, is a paladin's normal predilection for large weapons compensation for a deficiency merely of the brain, or of his nether regions as well? */
DO ~SetGlobal("rh#IsraEdwin1","GLOBAL",1)~
== BRH#ISR @135 /* Whatever game you hope to play with me now, wizard-- */
== BEDWIN @136 /* You are a temple whore, are you not? I cannot see what other use a goddess such as your Sune would have to anyone, much less to an order of repressed knights. */
== BKELDOR IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @137 /* Wizard, you are within a hair's breadth of meeting whatever deity would have you! */
== BEDWIN @138 /* You-- ow! (Blasted woman! I shall no doubt be seeing double for days!) */
== BRH#ISR @139 /* You will NEVER blaspheme against my goddess again, Edwin, do you understand me? Do NOT test my patience in this. */
== BEDWIN @140 /* Bah! Not only am I forced to work with a brainless zealot, but I see that I am so fortunate as to get a short tempered one as well! */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Gender("Edwin",FEMALE)
Global("rh#IsraEdwin2","GLOBAL",0)~ THEN BEDWIN rh#IsraEdwin2
@141 /* Surely even you have better things to do than stare at me, woman. (Though if it is lust that moves her...) */
DO ~SetGlobal("rh#IsraEdwin2","GLOBAL",1)~
== BRH#ISR @142 /* Oh, shut up. You revolt me, and your escapades of the other night haven't improved my opinion of you any. */
== BEDWIN @143 /* If you think that I can read your primitive little mind-- oh, you must be referring to that harlot. Bah! I have more important things to consider. */
== BRH#ISR @144 /* Apparently so. */
== BEDWIN @145 /* How very telling that you would put so much more thought into it than I have. Tell me, paladin, what was she to you? A sister in the one true faith? */
== BRH#ISR @146 /* I would not be ashamed if she were. If faith in the Firehair could help to wash away the memory of nights endured with filth like you, 'twould be a beautiful thing indeed. */
EXIT

// 3.
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Gender("Edwin",FEMALE)
Global("rh#IsraEdwin3","GLOBAL",0)~ THEN BRH#ISR rh#IsraEdwin3
@147 /* Hmm. 'Tis a slight improvement, I think, though I'm hard pressed to pinpoint exactly why. */
DO ~SetGlobal("rh#IsraEdwin3","GLOBAL",1)~
== BEDWIN @148 /* What are you on about now, wench? */
== BRH#ISR @149 /* It may be only the impression of lessons well learned, but I find you marginally more attractive in this form than you were in your original one. */
== BEDWIN @150 /* Bah! Even the blasted paladin has to have something clever to say! */
== BRH#ISR @151 /* Oh, no. My comments at least are completely sincere, I assure you. */
== BEDWIN @152 /* And I'm being equally sincere when I say that if you don't silence yourself right now, you'll soon have a fireball to contend with! */
== BRH#ISR @153 /* Very well, though if you find yourself troubled by certain feminine concerns, I am not so petty as to refuse you aid or advice. */
== BEDWIN @154 /* Gah! Shut up, woman! */
EXIT

// Haer'dalis

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraHaerdalis1","GLOBAL",0)~ THEN BHAERDA rh#IsraHaerdalis1
@155 /* What a welcome paradox you are, my wild rose. Being in your company, 'tis almost as if I never left Sigil at all! */
DO ~SetGlobal("rh#IsraHaerdalis1","GLOBAL",1)~
== BRH#ISR @156 /* Wild, am I? I think I would almost prefer to be yet another hound. */
== BHAERDA @157 /* You are no hound, dear lady, for all of that ponderous armor of yours. No gruff and grim, dutiful deity for you... nay, far from it. */
= @158 /* There is nothing half so tedious as listening to a holy warrior's condemnations of chaos... as if he truly even understood what it was! But you, Isra... you know better, I think. */
== BRH#ISR @159 /* You win no favor with me by insulting other orders, Haer'dalis. */
== BHAERDA @160 /* Loyal to the last, I see... though it would surprise me if those holy sermons did not sting you as well, if even just a bit. */
= @161 /* Can you truly tell me that they do not? */
== BRH#ISR @162 /* ... No, I cannot. */ 
== BHAERDA @163 /* Aye, I thought not. You worship chaos as surely as I do... even if you reject it as well. 'Tis too pleasing a paradox to untangle just yet, I think. */
== BRH#ISR @164 /* I don't worship chaos, bard. There is far more to the Firehair than that. I have no quarrel with the creative aspects of it, certainly, but the rest I find maddening, at best. */
== BHAERDA @165 /* Hah! Including this sparrow? */
== BRH#ISR @166 /* If you must know... aye, often enough. */
EXIT

// 2.
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraHaerdalis2","GLOBAL",0)~ THEN BRH#ISR rh#IsraHaerdalis2
@167 /* That one... Turmishan, I should think, if my ears do not very much deceive me. */
DO ~SetGlobal("rh#IsraHaerdalis2","GLOBAL",1)~
== BHAERDA @168 /* You are disturbingly good at this game, my dear; I am very nearly out of folk songs to regale you with! Now, if I were to play this exquisite series of notes... */
== BRH#ISR @169 /* Ah... yes. Calishite, most certainly. That one I could almost play myself. */
== BHAERDA @170 /* Aye, if I wished my harp returned with half of its strings broken! */
== BRH#ISR @171 /* I am not quite so bad as that. */
== BHAERDA @172 /* Hah, a veritable lie from a paladin's tongue... sweeter music by far than anything I could ever hope to play! */
== BRH#ISR @173 /* 'Twas only one string, Haer'dalis. One very poorly tuned string, I might add. */
== BHAERDA @174 /* And perhaps I should have seen to that before offering it to you... but back to the game! Tell me, what land would this charming tune call its home, had it the tongue to say anything at all? */
== BRH#ISR @175 /* I... do not recognize it. Loath as I am to accuse you of cheating, I would have to guess Sigil. */
== BHAERDA @176 /* Aye. Strange, I admit, that it indeed does not have a tongue of its own... no small number of Sigilian songs actually do. */
== BRH#ISR @177 /* (laugh) Sometimes I think you are really quite mad, Haer'dalis. */
== BHAERDA @178 /* Sanity and madness... the strangest of all of your peculiar Prime notions. */
= @179 /* But unless you would next care for music from Baator--and I can see that you would not!--mayhap this game has now been played out to its utter end. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraHaerdalis3","GLOBAL",0)~ THEN BHAERDA rh#IsraHaerdalis3
@180 /* If this sparrow were to write a song for you, dear lady, tell me... would you rather it be a song of valor or one of love instead? */
DO ~SetGlobal("rh#IsraHaerdalis3","GLOBAL",1)~
== BRH#ISR @181 /* Must I truly differentiate between the two? */
== BHAERDA @182 /* Ah, but you are a greedy one! 'Tis a welcome quality to find in one of your noble calling. */
== BRH#ISR @183 /* It has little to do with greed, Haer'dalis. The tales we tell within the Ruby Rose almost always intertwine love and valor... as I am sure you already knew. */
== BHAERDA @184 /* Aye, the dashing prince and the fair maid to be rescued and wooed... though I cannot decide which role is more fitting for you. */
== BRH#ISR @185 /* If I've any say in the matter, I would greatly prefer the former. */
== BHAERDA @186 /* I thought you would. And this sparrow has played the latter far too often as it is, but to perform it once more, this time opposite you-- */
= @187 /* 'Twould not bruise my ego overmuch, I think. */
== BRH#ISR @188 /* What am I to do with you, Haer'dalis? */
== BHAERDA @189 /* I am sure that you could conceive of any number of delightful ideas, my lady... and if not, you will find me most willing to suggest a few. */
== BRH#ISR @190 /* (smile) I am not quite so easy to seduce as that. */
== BHAERDA @191 /* Hah! You would accuse this poor bard of such base and ugly motives? */
== BRH#ISR @192 /* Aye, most certainly. */
== BHAERDA @193 /* Yon Ruby Rose is thorny indeed, I see! I shall have to remember that, lest I prick myself anew. */
== BRH#ISR @194 /* That would likely be wise. */
EXIT

// 4.
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([CITY])
Global("rh#IsraHaerdalis4","GLOBAL",0)~ THEN BRH#ISR rh#IsraHaerdalis4
@195 /* You're grinning like a small child, my dear bard. Might I ask what so amuses? */
DO ~SetGlobal("rh#IsraHaerdalis4","GLOBAL",1)~
== BHAERDA @196 /* Your bard, am I? Why, 'tis like music to my ears! I would ask when this sweet change occurred, but why shatter the mystery? */
== BRH#ISR @197 /* 'Twas a figure of speech, Haer'dalis. */
== BHAERDA @198 /* A pity, truly. But in answer to your question... that couple over yonder. Did you not mark them yourself? Your eye is as finely tuned to such things as mine. */
== BRH#ISR @199 /* Aye, I did. Newlyweds, if I would hazard a guess. */
== BHAERDA @200 /* And one can only wonder how long they will have together. A month, perchance, a year? Several or more, if they are very lucky. Or very unlucky. */
== BRH#ISR @201 /* That is a rather ungracious thought, Haer'dalis. */
== BHAERDA @202 /* 'Tis a rather ungracious truth. */
== BRH#ISR @203 /* For some of us, mayhap. For others... I do not believe it. */
== BHAERDA @204 /* Sometimes I wonder if you truly know what you believe, my rose... you are ever pulled this way and that. */
= @205 /* Love... love is a strange and wonderful thing. So complex and yet so utterly simple. */
== BRH#ISR @206 /* If I did not know better, I would almost think you a Sunite as well. */
== BHAERDA @207 /* And you would not be entirely wrong, dear lady... though you would not be entirely correct either. */
== BRH#ISR @208 /* Aye, that much is clear enough to anybody. */
EXIT

// Imoen

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoen1","GLOBAL",0)~ THEN BIMOEN2 rh#IsraImoen1
@209 /* ...and let me guess. They all lived happily ever after? */
DO ~SetGlobal("rh#IsraImoen1","GLOBAL",1)~ 
== BRH#ISR @210 /* (laugh) I'm becoming somewhat repetitive, 'twould seem. */
== BIMOEN2 @211 /* Yeah, well... it's kind of nice that your stories have such good endings. It makes me think that maybe we can still get through this. */
== BRH#ISR @212 /* Of course we can still get through this. */
== BIMOEN2 @213 /* It's hard to remember that sometimes. */
== BRH#ISR @214 /* I know. */
== BIMOEN2 @215 /* It's weird, I always used to think that Sunites went for those really tragic love stories, not just the nice ones. */
== BRH#ISR @216 /* We do. But I don't think that I could do one of the tragedies justice, and even if I could... this is hardly the time for it. */
== BIMOEN2 @217 /* No... I guess not. And thank you. */
EXIT

// 2.
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(6)
   AreaCheck("AR0300")
   AreaCheck("AR0400")
   AreaCheck("AR0500")
   AreaCheck("AR0700")
   AreaCheck("AR0900")
   AreaCheck("AR1000")
Global("rh#IsraImoen2","GLOBAL",0)~ THEN BRH#ISR rh#IsraImoen2
@218 /* Imoen, are you quite alright? You look somewhat preoccupied. */
DO ~SetGlobal("rh#IsraImoen2","GLOBAL",1)~ 
== BIMOEN2 @219 /* Hmm? Oh, no, I'm fine. It's just... Athkatla is a lot bigger than I had realized. */
== BRH#ISR @220 /* Yes, I know. I still have some difficulty navigating it myself, and I visit fairly frequently these days. */
== BIMOEN2 @221 /* No offense, Izzy, but I'm pretty sure you could get lost trying to find your way out of a jeweler's shop. */
== BRH#ISR @222 /* (laugh) Or distracted, at the very least. */
== BIMOEN2 @223 /* You know, I always wanted to see Athkatla, but... I never thought it would happen like this. What with the evil wizard and... everything else. */
== BRH#ISR @224 /* Fate isn't exactly something we can choose. */
== BIMOEN2 @225 /* Yeah, I guess not. */
= @226 /* Hey, have you got any favorite inns or taverns around here? I'd kind of like to see more of Athkatla than just its streets and alleys. */
== BRH#ISR @227 /* Several, aye. I shall need to point them out to you, should the opportunity present itself. */
EXIT

// 3.
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoen3","GLOBAL",0)~ THEN BRH#ISR rh#IsraImoen3
@228 /* First <CHARNAME>, and now you as well. 'Tis... baffling, to say the least. */
DO ~SetGlobal("rh#IsraImoen3","GLOBAL",1)~ 
== BIMOEN2 @229 /* Yeah. I'm not too happy about it either. I guess it's a good thing I'm not a theologian. */
== BRH#ISR @230 /* Yes, probably. */
== BIMOEN2 @231 /* Well, aren't you the cheerful one to<DAYNIGHT>? */
== BRH#ISR @232 /* Forgive me, Imoen. I know that you have enough concerns right now as it is. I have no wish to add to them. */
== BIMOEN2 @233 /* You're not. I mean, it's not like I can just pretend I don't know, right? */ 
== BRH#ISR @234 /* You probably would not care for the result. */
== BIMOEN2 @235 /* Yeah, probably not. Hey, let's just move on, okay? */
EXIT

// 4.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraWasInBGI","GLOBAL",1)
Global("rh#IsraRomanceActive","GLOBAL",2)
Global("rh#IsraImoen4","GLOBAL",0)~ THEN BIMOEN2 rh#IsraImoen4
@236 /* So. You and <CHARNAME>... that's pretty interesting. */
DO ~SetGlobal("rh#IsraImoen4","GLOBAL",1)~
== BRH#ISR @237 /* You needn't sound so surprised. */
== BIMOEN2 @238 /* Oh, I'm not. Well, maybe a little bit. I was beginning to think that you found it more romantic to deny you felt anything at all. */
== BRH#ISR @239 /* Imoen, that is... well, not quite as ridiculous as I wish it were. */
== BIMOEN2 @240 /* Heh. Well, good on you for finally coming to your senses. Were the Sunites back home yelling at you too or something? */
== BRH#ISR @241 /* Some of them, aye. */
== BIMOEN2 @242 /* Hah! At least it finally worked out, though. You two... you'll be good for each other, I think. */
== BRH#ISR @243 /* Then I take it that you approve? */
== BIMOEN2 @244 /* Sure, as long as you don't do something tragically noble, that is. */
== BRH#ISR @245 /* (smile) I shall try to keep that in mind. */
EXIT

// Jaheira

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#IsraTalks","GLOBAL",2)
Global("rh#IsraJaheira1","GLOBAL",0)~ THEN BJAHEIR rh#IsraJaheira1
@246 /* Your eyes would be best kept upon the road, Isra. I have no use for your worried glances. */
DO ~SetGlobal("rh#IsraJaheira1","GLOBAL",1)~
== BRH#ISR @247 /* Jaheira, I... I don't know what to say. */
== BJAHEIR @248 /* There is nothing to be said. */
== BRH#ISR IF ~Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN @249 /* They were my friends as well. Khalid-- */
== BRH#ISR IF ~!Global("rh#IsraWasInBGI","GLOBAL",1)~ THEN @250 /* Your husband-- */
== BJAHEIR @251 /* Mere words will not bring him back, child, and there is no time for grief. I would honor his memory, not drown it in tears. */
== BRH#ISR @252 /* Aye. Still... I'm sorry, Jaheira. */
== BJAHEIR @214 /* I know. */
EXIT

// 2.
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("rh#IsraJaheira2","GLOBAL",0)~ THEN BRH#ISR rh#IsraJaheira2
@253 /* 'Tis quite beautiful here, truly. */
DO ~SetGlobal("rh#IsraJaheira2","GLOBAL",1)~ 
== BJAHEIR @254 /* Hmph. For a child of the city, you show a surprising amount of sense. */
== BRH#ISR @255 /* (laugh) I am no stranger to the forest, Jaheira. Far from. When I was still a child, my sister once convinced me that there were fay dancing in the Snakewood. 'Twas all my tutors could do to keep me from running off to watch them. */
= @256 /* I... actually reached the city gates once before they stopped me. */
== BJAHEIR @257 /* You are lucky that they did. Amn is a dangerous place for an adult, let alone a child. */
== BRH#ISR @258 /* Aye, and don't I know it. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(6)
   AreaCheck("AR0300")
   AreaCheck("AR0400")
   AreaCheck("AR0500")
   AreaCheck("AR0700")
   AreaCheck("AR0900")
   AreaCheck("AR1000")
Global("rh#IsraJaheira3","GLOBAL",0)~ THEN BJAHEIR rh#IsraJaheira3
@259 /* Amn may be your home, Isra, but I should not have to remind you that this is not Crimmor. */
DO ~SetGlobal("rh#IsraJaheira3","GLOBAL",1)~ 
== BRH#ISR @260 /* Excuse me? */
== BJAHEIR IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN @261 /* Our group attracts enough attention as it is, and your conduct is not helping matters. I grow tired of worrying about you every time we rest in one of these Athkatlan taverns. */
== BRH#ISR IF ~!Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN @262 /* I am well within the bounds of propriety, Jaheira, and I don't care for your insinuations otherwise. */
== BJAHEIR IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN @263 /* Our group attracts enough attention as it is, and your conduct with <CHARNAME> is not helping matters. I grow tired of worrying about you every time we rest in one of these Athkatlan taverns. */
== BRH#ISR IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ THEN @264 /* We are well within the bounds of propriety, Jaheira, and I don't care for your insinuations otherwise. */
== BJAHEIR @265 /* Calm yourself, child. I am not accusing you of wanton behavior. However, harmless though your flirtations may be, they draw the eye of every thug in the vicinity. */
== BRH#ISR @266 /* None has ever been foolish enough to do more than simply watch. */
== BJAHEIR @267 /* Not yet, perhaps. */
EXIT

// 4.
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("JaheiraTraitor","GLOBAL",1)
Global("ElminsterForgives","GLOBAL",0)
Global("rh#IsraJaheira4","GLOBAL",0)~ THEN BRH#ISR rh#IsraJaheira4
@268 /* 'Tis little comfort, I know, but... truly, Jaheira, I think you made the correct decision. */
DO ~SetGlobal("rh#IsraJaheira4","GLOBAL",1)~ 
== BJAHEIR @269 /* What would you know of it, child? */
== BRH#ISR @270 /* I know that corruption can strike at the heart of any organization, no matter how noble. I have never experienced it myself, true, but when loyalty is set against loyalty... 'tis a prospect that I do consider from time to time. */
== BRH#ISR IF ~Global("JaheiraRomanceActive","GLOBAL",1)~ THEN @271 /* And I know that you care for him. */
== BRH#ISR IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @272 /* And I know that you love him. */
== BJAHEIR @273 /* Hmph. You make it sound simpler than it is. */
== BRH#ISR @274 /* There is nothing simple about it. But you may yet find that you do them a service even by challenging them. */
== BJAHEIR @275 /* Perhaps, though I will not take refuge in false hopes and fanciful dreams. In time, all acts will be judged appropriately. */
== BRH#ISR @276 /* Aye, as you wish. */
EXIT

// Jan

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJan1","GLOBAL",0)~ THEN BJAN rh#IsraJan1
@277 /* Your last name wouldn't happen to be Ghadir, would it, Izzy? */
DO ~SetGlobal("rh#IsraJan1","GLOBAL",1)~
== BRH#ISR @278 /* What of it? */
== BJAN @279 /* I only ask because I seem to recall that a Ghadir once fought alongside my grand-niece Tilly in the Battle of Kuczulla. It was quite the affair, from what I understand, some sort of disagreement about the price of shoe-heels? In all honesty, my dear Izzy, the details are a little fuzzy, but I do recall that it *was* a Ghadir. */
== BRH#ISR @280 /* I don't recall my father ever mentioning fighting alongside a Jansen. */
== BJAN @281 /* Well, of course he wouldn't, would he? */
== BRH#ISR @282 /* I'm not sure what you mean by that. */
== BJAN @283 /* During wartime, all Jansens discard their usual identities and take up carefully crafted personas. I thought that was fairly common knowledge! Really, Izzy, I'm disappointed. */
== BRH#ISR @284 /* I... why would that even be necessary? */
== BJAN @285 /* Of course you wouldn't understand, how stupid of me, you are no merchant. My dear, we Jansens must remain strictly neutral in all political disputes! A whiff of bias turns all but the most hardy of turnips moldy in the marketplace. Again, common knowledge. */
== BRH#ISR @286 /* I... see. Be that as it may, I cannot say that I have ever paid much attention to your... familial peculiarities. */
== BJAN @287 /* Jansen history is taught in schools across the Sword Coast. It's simply vital to understanding the contemporary zeitgeist, Izzy! */
= @288 /* Shameful. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJan1","GLOBAL",1)
Global("rh#IsraJan2","GLOBAL",0)~ THEN BJAN rh#IsraJan2
@289 /* Have I ever told you about how the great Esmerelda Jansen helped found the Ruby Rose, Izzy? */
DO ~SetGlobal("rh#IsraJan2","GLOBAL",1)~
== BRH#ISR @290 /* No. Though I am certain you are about to rectify that particular failing. */
== BJAN @291 /* From what I understand, it all began many years ago with dear Emmy's pet duck, Sandrigal, who was having a conniption of some kind. He kept frothing at the beak and uttering the most piercing of squawks, and that was only at the beginning of these fits. He would soon move into strange avian chanting and ritual dance, and somehow conjured forth a genie of some description, who promised dear Esmerelda a griffin if she would sell the duck to him. */
= @292 /* Knowing, of course, just how conniving genies can be, she agreed with one condition: that Sandrigal would not be harmed in any way, and the griffin would be the most vibrant shade of pink. He agreed, and soon Esme was sailing to the Spine of the World on a much needed vacation... */
= @293 /* ... and that's how she became Sune's most beloved consort, and with Griffie at her side, began the cult that would eventually become the Order of the Ruby Rose. Amazing woman. */
== BRH#ISR @294 /* ... I assure you, nowhere in our histories is there any mention of this Esmerelda of yours. */
== BJAN @295 /* Ah, but what did I tell you about Jansens in wartime? */
= @296 /* Izzy, dear Izzy, have I taught you nothing at all? */
== BRH#ISR @297 /* Apparently not, Jan. Apparently not. */
EXIT

// Keldorn

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKeldorn","GLOBAL",0)~ THEN BKELDOR rh#IsraKeldorn1
@298 /* I am always surprised how few of the Ruby Rose we see in Athkatla. */
DO ~SetGlobal("rh#IsraKeldorn","GLOBAL",1)~
== BRH#ISR @299 /* Aye, we try not to impose upon Lathandrite hospitality too often. Were we to get too comfortable in their temple, we'd likely never leave again. */
== BKELDOR @300 /* From the little I know of them, they might welcome the addition. Although I imagine that knights of the Ruby Rose, like paladins everywhere, call few places home for long. */
== BRH#ISR @301 /* Even were it otherwise, given the Radiant Heart's presence in Athkatla, we would no doubt be redundant anyway. */
== BKELDOR @302 /* That is not so. Lady Firehair has as much work to do among the cold and uncaring as any more martially-minded divinity. */
== BRH#ISR @303 /* I... must admit, that is not a sentiment I would have expected from a Tormite. */
== BKELDOR @304 /* Duty takes many forms, Isra. I would be a poor Tormite indeed if I failed to recognize the need for love in a land filled with despair. Vows alone will not inspire selflessness in an unfeeling heart. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([OUTDOOR]) 
Global("rh#IsraKeldorn","GLOBAL",1)~ THEN BKELDOR rh#IsraKeldorn2
@305 /* Do you mark those clouds on the horizon, my friend? We'll have rain soon, if I'm any judge. I trust you oiled your gear. */
DO ~SetGlobal("rh#IsraKeldorn","GLOBAL",2)~
== BRH#ISR @306 /* I did, yes. Really, sir, you needn't feel responsible for my things as well as your own. */
== BKELDOR @307 /* I was a squire many years before I became a knight, and old habits are the hardest to dismiss. I consider it my duty to keep us all in a state of readiness. */
== BRH#ISR @308 /* Odd as it might sound, I cannot say that I have ever truly understood your faith's enthusiasm for duty. I have never had the opportunity--or nerve, I admit--to question a Tormite scholar on it, though. */
== BKELDOR @309 /* We are not the most approachable of faiths, it is true. We are sometimes perceived as aloof, pursuing goals incomprehensible to mortal men. In truth, we are not so different from you. We serve because we find fulfillment in it, even if some might think it drudgery. */
== BRH#ISR @310 /* Ah. Somehow I never realized that you faced such perceptions as well. How very ironic is that? */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKeldorn","GLOBAL",2)~ THEN BKELDOR rh#IsraKeldorn3
@311 /* When last we spoke, you were musing on the ways different faiths find satisfaction in their calling. */
= @312 /* Have you reached any conclusions? */
DO ~SetGlobal("rh#IsraKeldorn","GLOBAL",3)~
== BRH#ISR @313 /* Several, aye. Most involve my own hypocrisy. */
= @314 /* I'm not sure that I will ever truly understand you, I admit, though I suspect that the sentiment is mutual enough. */
== BKELDOR @315 /* We all question ourselves, or we should. The questions are as telling as the answers. We ask ourselves whether we serve in the way that is best, whether our actions advance our faith as they ought. */
== BRH#ISR @316 /* Given our focus on introspection, 'tis no wonder that some marvel at how we get anything done at all. Though I suspect that your relationship with the rest of your church isn't one of mutual bemusement. */
== BKELDOR @317 /* There have been times, my friend, when I have been most bemused by my squires' antics, it is true. Perhaps you can sympathize. */
== BRH#ISR @318 /* My own mentor certainly could. */
== BKELDOR @319 /* I find that hard to believe. */
== BRH#ISR @320 /* Oh, I recall more than one lecture on poor choice in men... and "You drank how much?" was the question of choice on one particularly memorable morning. */
== BKELDOR @321 /* And I recall my mentor saying the same thing, on more mornings than one. We are young but once, and we are more alike than you know. */
== BRH#ISR @322 /* Aye. Truly, sir, that no longer surprises me as it once might have. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKeldorn4","GLOBAL",0)~ THEN BKELDOR rh#IsraKeldorn4
@323 /* I trust that your father is well? */
DO ~SetGlobal("rh#IsraKeldorn4","GLOBAL",1)~
== BRH#ISR @324 /* Aye, my lord, when last I spoke to him. */
== BKELDOR @325 /* I am glad to hear it. I do not know the general well, but he does not seem the sort who would bear retirement well. */
== BRH#ISR @326 /* He entered the Red Knight's clergy mayhap a year ago. We seldom speak of such things, but I believe his clerical duties have given him a renewed sense of purpose. */
== BKELDOR @327 /* You do not speak of religious matters? */
== BRH#ISR @328 /* Our goddesses are not on the best of terms, my lord. 'Tis seldom a comfortable--or quiet--topic of conversation. */
== BKELDOR @329 /* I see. It can become difficult when family members follow different faiths, especially amongst the very devout. */
== BRH#ISR @330 /* Indeed. Does the rest of your family worship Torm as well? */
== BKELDOR @331 /* They do, though my daughters may yet be too young to know where their hearts truly lie. */
== BRH#ISR @332 /* Whatever their ultimate choice is, I am sure it will be a wise one. */
== BKELDOR @333 /* Aye, I trust as much. Even in my absence, they are surrounded by pious men and women, and their education should not suffer as a result. It will be enough. */
EXIT

// 5.
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("rh#IsraKeldorn","GLOBAL",2)
Global("rh#IsraKeldorn5","GLOBAL",0)~ THEN BRH#ISR rh#IsraKeldorn5
@334 /* Sir Keldorn, if you have found my performance lacking in some way, I trust that you would tell me? */
DO ~SetGlobal("rh#IsraKeldorn5","GLOBAL",1)~
== BKELDOR @335 /* I would, though I have found no such thing. The Ruby Rose has done an admirable job with your training. */
== BRH#ISR @336 /* Thank you, sir. Might I ask, then, why it is that you so often guard me during battle? 'Tis becoming... somewhat alarming. */
== BKELDOR @337 /* I guard you no more than I would any other companion, Isra. */
== BRH#ISR @338 /* With all due respect, my lord, you do. I thought it simply my imagination at first, but I have been paying attention, and it is a very real tendency, I assure you. */
== BKELDOR @339 /* I see. It was not done deliberately, and I did not mean to offend. */
== BRH#ISR @340 /* I wasn't offended, sir. Simply perplexed. */
== BKELDOR @341 /* I can give you no firm explanation, and would not burden you with conjecture. But I thank you for bringing this to my attention. You are a knight, and I do you little honor by treating you in such a manner. */
== BRH#ISR @342 /* Truly, sir, I don't feel slighted by it. */
== BKELDOR @343 /* That is beside the point. */
EXIT

// Korgan

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKorgan1","GLOBAL",0)~ THEN BKORGAN rh#IsraKorgan1
@344 /* If ye weren't so sad and ugly, lass, I might think ye had some dwarven blood in ye. Yer a right fine sight with that blade o' yers. */
DO ~SetGlobal("rh#IsraKorgan1","GLOBAL",1)~
== BRH#ISR @345 /* I see that your compliments are as vulgar and barbed as the rest of you. */
== BKORGAN @346 /* I almost think ye'd prefer it if I said ye was a blossom of a girl an' ignored yer worthier talents altogether. */
== BRH#ISR @347 /* Truly, I would prefer it if you said nothing to me at all. */
== BKORGAN @348 /* Aye, yer a cold one, alright. Ye might as well already be dead, I reckon. */
EXIT

// 2.
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKorgan2","GLOBAL",0)~ THEN BRH#ISR rh#IsraKorgan2
@349 /* <CHARNAME>, must we keep the company of this... this vile creature? His crudeness is becoming nigh on insufferable! */
DO ~SetGlobal("rh#IsraKorgan2","GLOBAL",1)~
== BKORGAN @350 /* Har har har... I be botherin' ye that much, lassie? */
== BRH#ISR @351 /* ... You're doing it deliberately. */
== BKORGAN @352 /* So ye finally noticed that, did ye? */
= @353 /* Yer lucky yer as amusin' as ye are, longlimb. I wouldnae keep ye around were it otherwise. */
== BRH#ISR @354 /* You have very little say in the matter. */
== BKORGAN @355 /* Aye, fer the moment, mayhaps. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKorgan3","GLOBAL",0)~ THEN BKORGAN rh#IsraKorgan3
@356 /* Quit yer preenin', Isra. Yer beginnin' to make me ill. */
DO ~SetGlobal("rh#IsraKorgan3","GLOBAL",1)~
== BRH#ISR @357 /* Your lack of grooming is having the same effect on me, I assure you. */
== BKORGAN @358 /* Bah! Keep yer weaklin' goddess and her witless ways to yerself, wench. What use such nonsense could have fer a warrior is surely beyond me ken. */
== BRH#ISR @359 /* You'll find yourself more than simply ill if you insult my faith again, dwarf. */
== BKORGAN @360 /* Aye, and that might yet prove interestin', though I've better things to kill fer now than ye. */
EXIT

// Mazzy

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMazzy1","GLOBAL",0)~ THEN BMAZZY rh#IsraMazzy1
@361 /* I remember coming across several members of your order while visiting Crimmor perhaps a year back, Isra. I must say, they left quite the impression. */
DO ~SetGlobal("rh#IsraMazzy1","GLOBAL",1)~
== BRH#ISR @362 /* A favorable one, I hope. Some of us can be... slightly overwhelming at times. */
== BMAZZY @363 /* No, they were very pleasant company, I assure you. */
= @364 /* I admit, I had not realized before that your goddess had paladins... or even that it would have been permitted for her, given her own chaotic nature. */
== BRH#ISR @365 /* I think it a matter of desire rather than permission. Chivalry, gallantry, and so forth... Sune finds them appealing, I believe. Few other chaotic deities care for such things. */
== BMAZZY @366 /* It still seems somewhat strange to me, though 'tis a strangeness that I find myself welcoming. If one deity could see fit to discard the more traditional rules... */
== BRH#ISR @367 /* Mayhap Arvoreen will do so as well? */
== BMAZZY @368 /* It is merely a passing fancy. */
== BRH#ISR @369 /* I... am not entirely convinced that the analogy is pertinent. I know little of your gods, my lady, but Arvoreen strikes me as somewhat less willing to ignore convention than Sune is. */
== BMAZZY @370 /* That may be true, though where the convention is unjust, I would reserve the right to hope. */
== BRH#ISR @371 /* And I would not wish to take it from you. Truly, Mazzy, you would make as fine a paladin as any who holds the accolade. */
== BMAZZY @372 /* Thank you, Isra. I do appreciate the sentiment. */
EXIT

// 2.
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMazzy1","GLOBAL",1)
Global("rh#IsraMazzy2","GLOBAL",0)~ THEN BRH#ISR rh#IsraMazzy2
@373 /* My lady, you mentioned that you had been to Crimmor recently? Might I ask if you have family in the region? */
DO ~SetGlobal("rh#IsraMazzy2","GLOBAL",1)~
== BMAZZY @374 /* None that I know of, though Patrick-- */
== BRH#ISR @375 /* Ahh. Of course. I am sorry to bring up painful memories, Mazzy. 'Twas not my intent. */
== BMAZZY @376 /* No, it helps to speak about him. About all of them. */
= @377 /* But you must be no stranger to loss yourself. */
== BRH#ISR @378 /* No... not anymore. */
= @379 /* Does it truly help you to speak of them? I... I always, thought it would, but... */
== BMAZZY @380 /* Sometimes silence is the best tribute. */
== BRH#ISR @381 /* Aye. */
= @382 /* Forgive me, I did not mean for this conversation to turn so morbid. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMazzy3","GLOBAL",0)~ THEN BMAZZY rh#IsraMazzy3
@383 /* Ghadir... my lady, might I ask if you are any relation to the former general of that name? */
DO ~SetGlobal("rh#IsraMazzy3","GLOBAL",1)~
== BRH#ISR @384 /* Aye. His youngest daughter. */
== BMAZZY @385 /* He must be extremely proud of you. */
== BRH#ISR @386 /* Usually he is not very pleased with me at all, I must admit. */
== BMAZZY @387 /* But whyever not? I would think that as a military man himself, he would have a heightened appreciation for the work that we do. */
== BRH#ISR @388 /* A heightened appreciation for the danger involved, mayhap. */
== BMAZZY @389 /* I see. For all of its greater ambition, your family sounds far more like my own than I had realized. I... I am not sure why that surprises me so. */
= @390 /* Do you ever feel guilt, causing them such worry? */
== BRH#ISR @391 /* Always. */
== BMAZZY @392 /* As do I, and yet... we cannot hide ourselves away from the troubles of the world on their behalf, safeguarding our own lives at the cost of so many others. It would not be honorable. */
== BRH#ISR @393 /* And 'twould only breed resentment in the end. Aye, they understand that much, though 'tis little comfort to anyone. */
== BMAZZY @394 /* No... no, I suppose it is not. */
EXIT

// 4.
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMazzy4","GLOBAL",0)~ THEN BRH#ISR rh#IsraMazzy4
@395 /* Mazzy, you should have let me look at that wound earlier. 'Twould be a minor miracle now if we managed to keep it from scarring. */
DO ~SetGlobal("rh#IsraMazzy4","GLOBAL",1)~
== BMAZZY @396 /* Save your spells, Isra. The injury does not trouble me, nor does the notion of another well-earned scar. */
== BRH#ISR @397 /* Well-earned? Truly, I've never known a knight who did not keep his armor and weapons immaculate... it baffles me that so few extend that degree of care to their own flesh as well. */
== BMAZZY @398 /* Every scar is a badge of honor, some would say. Most, perhaps. I needn't lecture you on the importance of tradition, I am sure. */
== BRH#ISR @399 /* That would be the case amongst the Ilmatari, mayhap. Otherwise, 'tis more a matter of misplaced pride than any legitimate tradition. */
== BMAZZY @400 /* Even so... I don't think you entirely understand, Isra. */
= @401 /* You have nothing to prove to anyone. You are a fully ordained knight in your own right. Nobody would ever look at you and insist that you were something less. */
== BRH#ISR @402 /* Nobody whose opinion was worthwhile, certainly. */
== BMAZZY @403 /* I suppose... I suppose your faith does raise the occasional eyebrow, but given the way you... erm, conduct yourself sometimes, that cannot bother you overly much. */
== BRH#ISR @404 /* My conduct? */
== BMAZZY @405 /* Well, I mean no criticism by it, but not everyone is as comfortable being an object of intrigue and curiosity as you sometimes are. */
== BRH#ISR @406 /* I still don't see what this has to do with the proper dressing of wounds. */
== BMAZZY @407 /* I... oh, never mind. Perhaps we should simply continue on. */
EXIT

// Minsc

// 1.
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraWasInBGI","GLOBAL",1)
GlobalGT("rh#IsraTalks","GLOBAL",2)
Global("rh#IsraMinsc1","GLOBAL",0)~ THEN BRH#ISR rh#IsraMinsc1
@408 /* I... was sorry to hear about Dynaheir, Minsc. More so than I can put into words. */
DO ~SetGlobal("rh#IsraMinsc1","GLOBAL",1)~
== BMINSC @409 /* Yes, she... she was under my protection and I failed her! I failed her, my friend! */
== BRH#ISR @410 /* No more than any of us did. */
== BMINSC @411 /* Far more! She was my charge, and I... I allowed them to kill her! You did not see what happened, Isra. You were not there. */
== BRH#ISR @412 /* No, I wasn't. */
== BMINSC @413 /* Oh, my friend... you are not harmed in any way, are you? Boo says he is worried for you, but I can see no wound! */
== BRH#ISR @414 /* Tell Boo... tell Boo that I am quite alright. Or at least that I will be. */
= @415 /* She was a beautiful person, Minsc. I'm grateful to have known her, if only for a time. */
== BMINSC @416 /* Ohh, yes! She was all that and much more, Minsc agrees! And now that she is gone, we will need to fight evil for her as well as for ourselves! */
== BRH#ISR @417 /* Aye, 'twould be as fine a way as any to remember her. */
== BMINSC @418 /* Enough talk, pretty Isra! Evil awaits! */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMinsc2","GLOBAL",0)~ THEN BMINSC rh#IsraMinsc2
@419 /* Your village must be very nice, Isra. It must smell very good too, if it is covered with roses. */
DO ~SetGlobal("rh#IsraMinsc2","GLOBAL",1)~
== BRH#ISR @420 /* I beg your pardon? */
== BMINSC @421 /* Lodges in Rashemen are often named after local animals. Boo has been wondering if perhaps Amnian lodges are named after flowers instead. */ 
== BRH#ISR @422 /* Oh, I see. No, the rose is a religious symbol for us. */ 
== BMINSC @423 /* So... no flowers everywhere? */
== BRH#ISR @424 /* Only within our temples themselves, I'm afraid. */
== BMINSC @425 /* That is sad, though these temples... Boo says he would like to visit one someday if they are so full of flowers. */
== BRH#ISR @426 /* Aye, to feast upon the blossoms, I suspect. */
== BMINSC @427 /* Boo would never do that! Well, he might try, but I would not let him out of my sight! Not with such beauty at stake! */
== BRH#ISR @428 /* (smile) It heartens me to hear you say such things. */
== BMINSC @429 /* And Boo says that he is heartened to see the pretty lady smile so... it makes her even nicer to look at, doesn't it, Boo? */ 
== BRH#ISR @430 /* Thank you, Minsc. Truly. */
EXIT

// 3.
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMinsc3","GLOBAL",0)~ THEN BRH#ISR rh#IsraMinsc3
@431 /* Minsc, you... seem to have misplaced that hamster of yours. */
DO ~SetGlobal("rh#IsraMinsc3","GLOBAL",1)~
== BMINSC @432 /* No, my friend! Boo does not like to be held like that! The tail is very sensitive! Very sensitive indeed! */
== BRH#ISR @433 /* Of course, I'm sorry. Here, take him... he was nigh on impossible to catch as it was, hiding amongst my things. */
== BMINSC @434 /* Oh, yes. You have some tasty treats in there, Boo says. And some less tasty ones. Poor, poor Boo... miniature space hamsters are not meant to smell like roses. */
== BRH#ISR @435 /* I think it something of an improvement, I'm afraid. Do you... ever actually wash him, Minsc? He's becoming somewhat... rank. */ 
== BMINSC @436 /* Do you hear the nice lady, Boo? I know you do not like water, but seeing her scrunch her nose like that is no better! */
== BRH#ISR @437 /* (laugh) 'Twould seem that he disagrees. Good luck, my friend. I fear that you may need it. */
EXIT

// Nalia

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNalia1","GLOBAL",0)~ THEN BNALIA rh#IsraNalia1
@438 /* Must you look like you just stepped out of a children's fairytale, Isra? The only thing that your excessive grooming does is showcase how much money you have behind you. */
DO ~SetGlobal("rh#IsraNalia1","GLOBAL",1)~
== BRH#ISR @439 /* I'm hardly bedecked in jewelry, my lady. */
== BNALIA @440 /* Only because it isn't practical on the road. I know what Sunites are like. */
= @441 /* Really, Isra, does your church actually do anything worthwhile? Anything at all besides catering to the whims of the rich and the bored? */
== BRH#ISR @442 /* Love isn't solely a concern for the wealthy, Nalia. If you think otherwise, mayhap you should reconsider exactly how you perceive the poor. */
== BNALIA @443 /* Don't be ridiculous. Of course I didn't mean that, but some nicely worded advice won't buy a beggar a loaf of bread. */
== BRH#ISR @444 /* Aye, but if even the poorest of beggars displayed a talent for art, no cleric of the Firehair would refuse to instruct him in his chosen trade. */
== BNALIA @445 /* That must be wonderful for the few lucky enough to have the skill. */
== BRH#ISR @446 /* With all due respect, my lady, the Church of Sune is not the Church of Ilmater, and cannot be expected to act as such. Mayhap your ire would be better focused upon those who do not care at all. */
== BNALIA @447 /* I will focus my ire upon whomever I deem appropriate, Isra, if that is quite alright with you. Pretend that your church caters to more than just the rich, if you wish, but your customs and excesses are plain for anyone to see. */
EXIT

// 2.
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNalia1","GLOBAL",1)
Global("rh#IsraNalia2","GLOBAL",0)~ THEN BRH#ISR rh#IsraNalia2
@448 /* I must confess, my lady, I am somewhat surprised that an Amnian duke would allow his daughter to study magecraft. */
DO ~SetGlobal("rh#IsraNalia2","GLOBAL",1)~
== BNALIA @449 /* Much less sneak out of the keep to help people? */
== BRH#ISR @450 /* I imagine that he had rather less of a choice in that matter. */
== BNALIA @451 /* Hmph. Not everyone chooses to spend their adolescence playing at knight in tournaments, Isra. */
== BRH#ISR @452 /* I wasn't criticizing you, Nalia. */
== BNALIA @453 /* I'm sorry. It's just... you're somewhat highly born yourself, and I've never received anything but criticism from noblewomen. And you're a Sunite on top of that. */
== BRH#ISR @454 /* What does that have to do with anything? */
== BNALIA @455 /* Auntie is always telling me that I should get married, as if that's the only important thing I could contribute to society. */
== BRH#ISR @456 /* And you expected the same from me? I am not that much of a hypocrite. */
== BNALIA @457 /* Hypocrite? You mean you've been pressured as well? */
== BRH#ISR @458 /* Aye. 'Twas assumed that I would quickly find myself a young knight and be content to simply settle down and wed. Obviously that did not happen. */
== BNALIA @459 /* At least your prospective husband would have had some measure of moral integrity. */
== BRH#ISR @460 /* (laugh) That much is certainly true. */
== BNALIA @461 /* I... I should thank you for sharing that. I do appreciate it. */
= @462 /* And as for your initial question... father hoped that by indulging my interest in magic, he would be able to curb some of my... less desirable hobbies. */
= @463 /* A sentiment that you would no doubt sympathize with, so please, you needn't feel honor-bound to tell me as much. */
== BRH#ISR @464 /* As you wish. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNalia2","GLOBAL",1)
Global("rh#IsraNalia3","GLOBAL",0)~ THEN BNALIA rh#IsraNalia3
@465 /* Isra, your mother is a Crytrapper, is she not? */
DO ~SetGlobal("rh#IsraNalia3","GLOBAL",1)~
== BRH#ISR @466 /* Aye, my lady. What of it? */
== BNALIA @467 /* Amn has hardly any decent noble families as it is. I really can't understand why one of the few that do exist would all but abandon Athkatla to the nest of vipers that rules it. */
== BRH#ISR @468 /* People seldom wish to fight what they consider a losing battle, especially at the expense of one they could otherwise win. */
= @469 /* Crimmor is pleasant enough for now, but there are other personalities that would gladly take over, given the chance. */
== BNALIA @470 /* That may be so, but I'm not sure that I would call Athkatla a hopeless cause. */
== BRH#ISR @471 /* I don't much care for the concept of hopeless causes at all, the context notwithstanding, but then I am not the head of a merchant house. */
== BNALIA @472 /* Given your inclination towards frivolous spending, that is probably fortunate for all involved. */
== BRH#ISR @473 /* (smile) On the contrary, I would consider my habits too frugal by far for such lofty company. */
== BNALIA @474 /* Hah! No, you're right. The nobility's lavishness can be absolutely sickening at times. */
== BRH#ISR @475 /* I don't think that I would judge them quite so harshly for it. If they did hoard their money away, there would be yet more people starving in the streets, I imagine. */
== BNALIA @476 /* That may be true, but it's still not enough. */
== BRH#ISR @477 /* No... no, in that, I would agree. */
EXIT

// 4.
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNalia2","GLOBAL",1)
Global("rh#IsraNalia4","GLOBAL",0)~ THEN BRH#ISR rh#IsraNalia4
@478 /* Lady Nalia, when you decide to borrow something, I do expect you to return it, at least eventually. */
DO ~SetGlobal("rh#IsraNalia4","GLOBAL",1)~
== BNALIA @479 /* What? Oh. Oh, of course. I'm sorry, it must have completely slipped my mind. Here you go. */
== BRH#ISR @480 /* Thank you. I hope you found it to your liking? */
== BNALIA @481 /* I... to be honest, Isra, I was somewhat surprised that your code of conduct permitted you to keep something so... so... */
== BRH#ISR @482 /* Ahh. I'm quite certain that I warned you when you grabbed it that the author had a tendency towards the... somewhat lurid. */
== BNALIA @483 /* No... no, you did. Perhaps I should have taken your advice and chosen one of the other ones instead, but even so... */
= @484 /* Are all of your romance novels... quite like that? */
== BRH#ISR @485 /* (laugh) Heavens, no. A Lliiran priestess gave it to me as a jest, and I've kept it more out of sentimentality than anything else. */
== BNALIA @486 /* Oh... ohh. I see. That makes considerably more sense. Now, if you'll excuse me, I think I would prefer to pretend that this conversation never happened at all. */
EXIT

// Valygar

// 1.
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValygar1","GLOBAL",0)~ THEN BRH#ISR rh#IsraValygar1
@487 /* A moment, my lord. One of the straps on your bag is beginning to slip. Would you like me to fix it? */
DO ~SetGlobal("rh#IsraValygar1","GLOBAL",1)~
== BVALYGA @488 /* I'd appreciate it, Isra, though I'd rather you didn't call me that. */
== BRH#ISR @489 /* Oh? I had thought that the Corthalas were a noble family. */
== BVALYGA @490 /* Aye, by blood maybe, though by deed... if you know the name, you likely know the stories yourself. */
== BRH#ISR @491 /* 'Twould be a rare family indeed that had no notorious members, Valygar. You shouldn't let it consume you so. */
== BVALYGA @492 /* When your own parents fall to the family curse and become maddened undead, it's hard to take such an enlightened view. */
== BRH#ISR @493 /* I... forgive me. I didn't know. */
== BVALYGA @494 /* It's fine. Just let it drop. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValygar2","GLOBAL",0)~ THEN BVALYGA rh#IsraValygar2
@495 /* Is something wrong, Isra? */
DO ~SetGlobal("rh#IsraValygar2","GLOBAL",1)~
== BRH#ISR @496 /* No, not at all. I was just admiring the leatherwork of that scabbard. Might I ask where you got it? */
== BVALYGA @497 /* I don't remember. The one that came with the sword must have fallen apart when I was still with the army. */
== BRH#ISR @498 /* The Council Army, I assume? I can't quite imagine you with one of the houses' private armies. */
== BVALYGA @499 /* No, you're right. The main one. */
== BRH#ISR @500 /* Then that would explain it. That sheath reminded me of the work of an old weaponsmith in Eshpurta. If you bought it there, it may well be one of hers. */
== BVALYGA @501 /* I was stationed there for a few months, so I suppose it's possible. */
== BRH#ISR @502 /* Did you like it? */
== BVALYGA @503 /* More than Athkatla, though that doesn't say much. */
== BRH#ISR @504 /* Not very much at all, no. I imagine you seldom had the opportunity to see a great deal of the city, though. */
== BVALYGA @505 /* Probably not. */
== BRH#ISR @506 /* That is a pity. But if you ever have the chance to return, mayhap I could point out some of the nicer sites for you. */
== BVALYGA @507 /* Maybe. */
EXIT

// 3.
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#IsraValygar1","GLOBAL",1)
Global("rh#IsraValygar3","GLOBAL",0)~ THEN BRH#ISR rh#IsraValygar3
@508 /* You seem rather quiet to<DAYNIGHT>. Might I ask if something is wrong? */
DO ~SetGlobal("rh#IsraValygar3","GLOBAL",1)~
== BVALYGA @509 /* Nothing I'd care to speak about. */
== BRH#ISR @510 /* Valygar... I know that you've lived a lonely and difficult life, but you needn't suffer in silence. */
== BVALYGA @511 /* And would talking make my problems go away? */
== BRH#ISR @512 /* One of them, aye. */
= @513 /* Your necromancer is dead, but your family curse... as long as you let the specter of the Corthala curse isolate you from the people around you, Valygar, you'll never truly be free of it. */
== BVALYGA @514 /* Maybe I just like being alone. */
== BRH#ISR @515 /* If that were so, you would have long since returned to your cabin in the woods. */
== BVALYGA @516 /* Hmm. There may be some truth to that. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValygar3","GLOBAL",1)
Global("rh#IsraValygar4","GLOBAL",0)~ THEN BVALYGA rh#IsraValygar4
@517 /* Whatever is on your mind, Isra, you might as well just say it. You're going to eventually anyway. */
DO ~SetGlobal("rh#IsraValygar4","GLOBAL",1)~
== BRH#ISR @518 /* Forgive me. I have been thinking about your religious beliefs. */
== BVALYGA @519 /* I should have expected this eventually. */
== BRH#ISR @520 /* You know me very well. If I may be so bold... sometimes I wonder which you lost first, your faith in mortals or your faith in the gods. */
== BVALYGA @521 /* Hmm. */
== BRH#ISR @522 /* I can't tell you what to believe in, but if you do not open your heart to something... you will eventually regret it, I think. */
== BVALYGA @523 /* I'll worry about that when it happens. */
== BRH#ISR @524 /* Not all of the gods are remote, and not all are uncaring. Could you not at least consider the possibility? */
== BVALYGA @525 /* If it'll keep you happy, fine. */
== BRH#ISR @526 /* 'Tis hardly my own happiness that concerns me, Valygar. */
== BVALYGA @527 /* (sigh) It never is, is it? */
EXIT

// Viconia

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraViconia1","GLOBAL",0)~ THEN BVICONI rh#IsraViconia1
@528 /* Interesting. You are marginally more impressive than your brethren, jalil. Perhaps female superiority is a feature upon the surface as well as in the Underdark. */
DO ~SetGlobal("rh#IsraViconia1","GLOBAL",1)~
== BRH#ISR @529 /* If I have managed to impress you in some way, Sharran, 'tis a failing I shall have to correct. */
== BVICONI @530 /* Heh. I may soon regret pointing this out to you, girl, but you haven't yet demanded that <CHARNAME> turn me away. Why is that? */
== BRH#ISR @531 /* If you have never considered who else would likely accept you, I have no wish to give you ideas. */
== BVICONI @532 /* Pfeh! Nobody else on this wretched surface would take me in. */
= @533 /* Hmm. But you are silent... ahh, I see. Poor little Isra, do you fear me so much that the mere thought of me with other Sharrans troubles you so? */
== BRH#ISR @534 /* The thought of any cult of Shar troubles me. The individual identities are of little importance. */
== BVICONI @535 /* Hmm, it is an interesting idea... but no. I have no wish to return to the games and struggles I left behind just yet. */
== BRH#ISR @536 /* Shar is no kinder a goddess than Lolth. You will learn that eventually, either in this life or the next. */
== BVICONI @537 /* Will I? (chuckle) Kindness is no virtue in as cruel a world as this one, little girl. Perhaps you will learn that truth eventually yourself. */
== BRH#ISR @538 /* The cruelty you see everywhere only makes it more precious, Viconia. But I see little point in debating theology with you. */
== BVICONI @539 /* No? How very odd. I would almost think it an argument that you were afraid of losing. */
EXIT

// 2.
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraViconia2","GLOBAL",0)~ THEN BRH#ISR rh#IsraViconia2
@540 /* Stand away from me, Viconia. */
DO ~SetGlobal("rh#IsraViconia2","GLOBAL",1)~
== BVICONI @541 /* I'm sorry, Isra... was the mere psychic echo of my thoughts too much for your delicate feelings? Shall I toss myself back upon the pyre to satisfy your sense of moral superiority? */
== BRH#ISR @542 /* You need do very little to satisfy that. */
== BVICONI @543 /* How delightful it must be to have so easy a conscience, untroubled by misdeeds or misfortune... or even reality itself. */
== BRH#ISR @544 /* Cast your barbs elsewhere, Sharran. I truly couldn't care less. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraViconia3","GLOBAL",0)~ THEN BVICONI rh#IsraViconia3
@545 /* What ugly shadows you have under your eyes to<DAYNIGHT>, jalil. Did you spend half of the morning trying to tame that wiry mane again? */
DO ~SetGlobal("rh#IsraViconia3","GLOBAL",1)~
== BRH#ISR @546 /* If you have something worthwhile to say, I suggest you get to it. */
== BVICONI @547 /* (chuckle) Your hard work was in vain. I should warn you that something... most foul has dripped into that tidy braid of yours. */
= @548 /* Oh, don't panic, girl. Humans are so primitive, they can only be expected to possess the most basic concept of hygiene. */
== BRH#ISR @549 /* I won't indulge you in your petty games, Viconia. */
== BVICONI @550 /* As long as you take care of that unsightly mess before it starts to smell, you are quite welcome to do as you please. */
EXIT

// Yoshimo
	
// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraYoshimo1","GLOBAL",0)~ THEN BYOSHIM rh#IsraYoshimo1
@551 /* My lady, come, tell me something of your travels. Surely you have a tale or two to share of your own. */
DO ~SetGlobal("rh#IsraYoshimo1","GLOBAL",1)~
== BRH#ISR @552 /* More than one, though this hardly seems an appropriate time for a story. */
== BYOSHIM @553 /* Nonsense! What time could be better? You were until recently a squire, were you not? Did you partake in any tournaments yourself? */
== BRH#ISR @554 /* Once, when I was sixteen. My opponent's sense of chivalry proved... inopportune, to say the least. */
== BYOSHIM @555 /* Hah! He refused to fight you, did he? */
== BRH#ISR @556 /* Of course not, but he panicked as soon as he hit me, and... never fully regained his composure, I'm afraid. */ 
== BYOSHIM @557 /* My lady, you should have taught him to never be so foolish again! A foe who refuses to fight back is a convenient mark indeed. */
== BRH#ISR @558 /* You know full well that I would never do something so dishonorable. No, 'twas called a draw, and we spent the evening apologizing to each other. */
== BYOSHIM @559 /* Apologizing, you say. */
== BRH#ISR @560 /* Aye. Whatever sordid thoughts are running through your mind, Yoshimo, I would appreciate it if you didn't share them with me. */
== BYOSHIM @561 /* Ah... yes. Of course, ma'am. */
EXIT

// 2.
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraYoshimo2","GLOBAL",0)~ THEN BRH#ISR rh#IsraYoshimo2
@562 /* By Sune, and I had always thought that the spirits we favored in Amn smelled foul! What are you drinking, Yoshimo? */
DO ~SetGlobal("rh#IsraYoshimo2","GLOBAL",1)~
== BYOSHIM @563 /* Sake, my lady. If you do not care for western wines, perhaps you will find this more to your liking. */
== BRH#ISR @564 /* I find that very unlikely. */
= @565 /* But truly, does it not impair your abilities at all? Your skillset seems very... particular. */
== BYOSHIM @566 /* Ahh, but my skills have saved your toes from the mousetrap far too often for you to sneer at them so, Isra. */
== BRH#ISR @567 /* Mayhap, but you haven't answered the question. */
== BYOSHIM @568 /* Ah, yes. I would never drink to excess, my lady. At least, not during the day. */
== BRH#ISR @569 /* Forgive me--and my toes, for that matter--if I don't find that overly reassuring. */
EXIT

// 3.
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraYoshimo3","GLOBAL",0)~ THEN BRH#ISR rh#IsraYoshimo3
@570 /* For one so far from his native land, Yoshimo, you seem much more at home in Athkatla than I do. That never ceases to amaze me. */
DO ~SetGlobal("rh#IsraYoshimo3","GLOBAL",1)~
== BYOSHIM @571 /* It should be no surprise, my lady. Athkatla is a den of thieves, and you stand out amidst such rubbish like a very, very shiny diamond. */
== BRH#ISR @572 /* You refer to the armor, I take it. */
== BYOSHIM @573 /* Ah... yes. Are you certain that it would offend your goddess if you darkened it just a bit? */
== BRH#ISR @574 /* ... Probably not, but 'twould offend me. */
== BYOSHIM @575 /* I would say that you paladins were strange, my lady, but that is not so. We have many like you in Kara-Tur as well: glorious samurai bound by their complicated codes of honor. */
== BRH#ISR @576 /* Oh? I don't believe that you've spoken of them before. */
== BYOSHIM @577 /* I could share any number of folktales, if you wish it. */ 
== BRH#ISR @578 /* I would appreciate that, yes, though perhaps at a better time. */
== BYOSHIM @579 /* With danger lurking around every corner... yes, that would be best. */
EXIT