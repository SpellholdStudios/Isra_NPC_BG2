BEGIN BRH#IS25

// Aerie

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([OUTDOOR])
Global("rh#IsraAerieTOB","GLOBAL",0)~ THEN BAERIE25 rh#IsraAerieTOB
@0 /* Isra, are you sure you're okay? You're beginning to look a bit faint. */
DO ~SetGlobal("rh#IsraAerieTOB","GLOBAL",1)~
== BRH#IS25 @1 /* I'm fine, thank you... though somewhat unaccustomed to Tethyrian weather, I admit. */
== BAERIE25 @2 /* Oh! I wouldn't have guessed that. You are part Calishite, after all. */
== BRH#IS25 @3 /* Aye, though Calishites tend not to wear heavy armor. I am beginning to understand why. */
== BAERIE25 @4 /* Hee-hee. You are drinking enough, right? Whenever we were in the southern cities, Quayle would always tell me that drinking was important... though it was hard advice to follow sometimes. */
== BRH#IS25 @5 /* I ran out of water several hours ago, I'm afraid. */
== BAERIE25 @6 /* You should have said something, silly. Here, take some of mine. */
== BRH#IS25 @7 /* Aerie-- */
== BAERIE25 @8 /* You need it more than I do right now, Isra, and don't try to pretend otherwise. */
== BRH#IS25 @9 /* (sigh) Thank you. */
EXIT 

// Anomen

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",MASK_LAWFUL)
Global("rh#IsraAnomenTOB","GLOBAL",0)~ THEN BANOME25 rh#IsraAnomenTOB
@10 /* My lady, it occurs to me that I might have once seen you at a tournament several years ago. */
DO ~SetGlobal("rh#IsraAnomenTOB","GLOBAL",1)~
== BRH#IS25 @11 /* That is certainly possible. I only ever fought in one, though I did attend a number of others. */
== BANOME25 @12 /* You did not care for the honor of victory in glorious combat? */
== BRH#IS25 @13 /* I preferred... other honors at the time, I admit. */
== BANOME25 @14 /* Hah! Shall I assume that you played the fair maiden instead, her scarf tied around a champion's lance? */
== BRH#IS25 @15 /* Something of the sort. */
== BANOME25 @16 /* Your champion must have been a very fortunate-- he was a man, I assume? */
== BRH#IS25 @17 /* (laugh) Aye. */
== BANOME25 @18 /* Heh. Perhaps I should not be surprised that a Sunite would find as much satisfaction at a tourney in courtship as in glory. */
== BRH#IS25 @19 /* We are hardly the only ones for whom that is true, my lord. */
== BANOME25 @20 /* No, I imagine you are not. */
EXIT

// Cernd

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraCerndTOB","GLOBAL",0)~ THEN BCERND25 rh#IsraCerndTOB
@21 /* The fawn is becoming a proud deer, free from the uncertainty and ignorance of childhood. It has been a pleasure to see you grow into the woman you have become, Isra. */
DO ~SetGlobal("rh#IsraCerndTOB","GLOBAL",1)~
== BRH#IS25 @22 /* Deer? You think me a deer, Cernd? */
== BCERND25 @23 /* A deer is a beautiful, majestic beast! */
== BRH#IS25 @24 /* I see. And are you implying that I was not mature before? */
== BCERND25 @25 /* As the grub goes through chrysalis and becomes the butterfly, so you have aged and grown into the powerful woman you are today. It is natural maturity comes with age. */
== BRH#IS25 @26 /* I am honestly not sure how to respond to that. */
== BCERND25 @27 /* Then take it as the compliment it is meant, my deer friend. 'Tis entirely justified. */
== BRH#IS25 @28 /* (sigh) */
EXIT

// Edwin

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraEdwinTOB","GLOBAL",0)~ THEN BEDWIN25 rh#IsraEdwinTOB
@29 /* Well, paladin, I confess myself unexpectedly impressed. I had not expected one of your pitiful intelligence to possess such refined taste in attire. */
DO ~SetGlobal("rh#IsraEdwinTOB","GLOBAL",1)~ 
== BRH#IS25 @30 /* What in the Realms are you babbling about, wizard? */
== BEDWIN25 @31 /* The scarlet garb that you prefer outside of battle, girl. Whatever else can be said of your feeble goddess, she has chosen an immensely respectable color for her clergy. */
== BRH#IS25 @32 /* I assure you, we do not wear red to be associated with your ilk. */
== BEDWIN25 @33 /* And nobody would be foolish enough to make that mistake anyway, wench. */
= @34 /* But even more pleasing to my eye than the color is the... ahem, *cut*. My only complaint is that it does not leave even less to the imagination. (Though if it did, I might find myself neglecting my spellbooks in the evening.) */
== BRH#IS25 @35 /* You're revolting, Edwin. Had I known you were so... distracted when we were still in Amn, I would have visited a tailor. */
== BEDWIN25 @36 /* Well, why do you think I didn't say anything? */
EXIT

// Haer'dalis

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraHaerdalisTOB","GLOBAL",0)~ THEN BHAERD25 rh#IsraHaerdalisTOB
@37 /* My darling rose, your heart seems heavy as of late. Mayhap some rousing music would make it fly more freely again. */
DO ~SetGlobal("rh#IsraHaerdalisTOB","GLOBAL",1)~
== BRH#IS25 @38 /* I would certainly not refuse it at this point. */
== BHAERD25 @39 /* Set that grim tone aside, my dear. Things are not quite so dire as that. Why, a month or two spent upon the Planes and even tribulation such as this would become unpeculiar... nay, commonplace! */
== BRH#IS25 @40 /* ... I don't think that I would like your home very much at all. */
== BHAERD25 @41 /* Aye, but you would adapt in time. Most people are far better at that than they would ever have dreamt beforehand. */
== BRH#IS25 @42 /* You are a frustratingly difficult man to understand, Haer'dalis. */
== BHAERD25 @43 /* Truthfully, I do not know why you would even try. What is life without a sweet mystery to savor every so often? There are few enough of those upon the Prime as it is. */
== BRH#IS25 @44 /* Is that what you are, my dear bard? A mystery? */
= @45 /* It may well be so. I think sometimes that I err in trying to judge you in human terms. You are... not exactly human, after all. */
== BHAERD25 @46 /* Hah! Very much not so, my sweet, though some would think it discourteous of you to point it out, nay? */
= @47 /* But come, I shall play the song you desired, and we will set such thoughts aside for the time being. */
EXIT

// Imoen

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraImoenTOB","GLOBAL",0)~ THEN BIMOEN25 rh#IsraImoen2
@48 /* Come on, Izzy. Please? */
DO ~SetGlobal("rh#IsraImoenTOB","GLOBAL",1)~ 
== BRH#IS25 @49 /* Absolutely not. */
== BIMOEN25 @50 /* But you said-- */
== BRH#IS25 @51 /* I said no such thing! */
== BIMOEN25 @52 /* You totally said you'd considered it before. What about it being touched by the goddess and everything? */
== BRH#IS25 @53 /* That was red hair, Imoen, not pink! */
== BIMOEN25 @54 /* Oh. Well, it's only a slight difference. With hair as dark as yours, maybe it'll even turn out reddish instead. */
== BRH#IS25 @55 /* How many times do I have to say 'no'? */
== BIMOEN25 @56 /* Oh, fine. Be like that, then. */
EXIT

// Jaheira

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJaheiraTOB","GLOBAL",0)~ THEN BRH#IS25 rh#IsraJaheiraTOB
@57 /* I trust that there is some reason that you are staring at me, Jaheira. */
DO ~SetGlobal("rh#IsraJaheiraTOB","GLOBAL",1)~ 
== BJAHEI25 @58 /* I did not realize I was, child. It only just occurred to me that you have finally run out of cosmetics. */
== BRH#IS25 @59 /* Aye. I thought it somewhat inappropriate to ask the elves of Suldanessellar if they had anything to spare. */
== BJAHEI25 @60 /* I never understood why you insisted upon wearing that dross anyway. You are more attractive without it. */
== BRH#IS25 @61 /* (laugh) That may well be the nicest thing you have ever said to me. */
== BJAHEI25 @62 /* Hmph. I begin to think that your hearing is selective. */
== BRH#IS25 @63 /* I was jesting, Jaheira. */
== BJAHEI25 @64 /* I see. Perhaps it is fortunate that you are still capable of such good cheer. Many would have long since succumbed to despair. */
== BRH#IS25 @65 /* Aye, and I would not blame them. */
== BJAHEI25 @66 /* Nor would I. */
EXIT

// Jan

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraJanTOB","GLOBAL",0)~ THEN BRH#IS25 rh#IsraJanToB
@67 /* Jan, that expression ill-suits you. What weighs on your mind so? */
DO ~SetGlobal("rh#IsraJanTOB","GLOBAL",1)~ 
== BJAN25 @68 /* Ahh, my dear Izzy, I hardly know where to begin. */
== BRH#IS25 @69 /* And that is unusual indeed. Has something come over you? */
== BJAN25 @70 /* An affliction, incurable, untreatable by all but the most talented of clerics and priests... */
== BRH#IS25 @71 /* Is there nothing I can do? */
== BJAN25 @72 /* I am afraid not, my dear. No, this is something I shall have to suffer with quite alone. */
== BRH#IS25 @73 /* Perhaps if you were to disclose the symptoms of your, ah, affliction? */
== BJAN25 @74 /* Melancholy. Shortness of breath. Soreness and distension of the stomach. An aching head. Nausea. Fits of unimaginable pain and torment. */
== BRH#IS25 @75 /* Mayhap a cleric-- */
== BJAN25 @76 /* Wait, wait... something is happening... prepare yourself, girl! */
= @77 /* AAUUUUUUGHHHHH. UGH. ARGH. AGHHHHHHHHH. */
= @78 /* Ahhhhh. Much better. */
== BRH#IS25 @79 /* ... */
= @80 /* You are an extremely offensive man at times, Jan. */
== BJAN25 @81 /* Aren't I just? */
EXIT

// Keldorn

CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKeldornTOB","GLOBAL",0)~ THEN BRH#IS25 rh#IsraKeldornToB
@82 /* Sir Keldorn-- */
DO ~SetGlobal("rh#IsraKeldornTOB","GLOBAL",1)~ 
== BKELDO25 @83 /* Enough, my friend. We have been through too much together for that kind of formality. */
== BRH#IS25 @84 /* Forgive me, 'tis an old habit. My mentor would be displeased if I were to address a senior paladin with anything less than the full respect of his station. */
== BKELDO25 @85 /* You are no longer a squire. */
== BRH#IS25 @86 /* Aye, though that does not mean that I have forgotten my lessons. */
== BKELDO25 @87 /* I am glad to hear it. In that case, carry on. */
EXIT

// Korgan

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraKorganTOB","GLOBAL",0)~ THEN BKORGA25 rh#IsraKorganToB
@88 /* I reckon ye'd be a right wild one with a couple o' ales in ye, Isra. */
DO ~SetGlobal("rh#IsraKorganTOB","GLOBAL",1)~
== BRH#IS25 @89 /* Dare I even ask where this... observation came from? */
== BKORGA25 @90 /* Ach, I be thinkin' it fer a while. If ye ever wants the chance to prove me wrong-- */
== BRH#IS25 @91 /* No. */
== BKORGA25 @92 /* Har har har! Aye, such vehemence! Mayhaps I've hit th' mark even better than I'd thought. */
== BRH#IS25 @93 /* You are quite welcome to think whatever you wish, Korgan. I don't care. */
== BKORGA25 @94 /* If that's the way ye wants it, lassie. But I be guessin' yer not quite as proper as ye'd like us all to believe. */
EXIT

// Mazzy

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMazzyTOB","GLOBAL",0)~ THEN BMAZZY25 rh#IsraMazzyToB
@95 /* Isra, are you alright? I apologize if I am being too forward, but I begin to wonder if you are getting enough sleep. */
DO ~SetGlobal("rh#IsraMazzyTOB","GLOBAL",1)~ 
== BRH#IS25 @96 /* What do you mean? */
== BMAZZY25 @97 /* Well, there are only so many hours in the day, and you spend an inordinate amount of them grooming. That cannot be healthy. */
== BRH#IS25 @98 /* No, it probably isn't. */
== BMAZZY25 @99 /* Have you truly never considered cutting off at least some of that hair? It seems a terrible inconvenience on the road. */
== BRH#IS25 @100 /* 'Tis something of a tradition within my church, Mazzy. */
== BMAZZY25 @101 /* Even so, Sune cannot possibly expect you to kill yourself over it. Not that you even need to do so, as far as I am concerned. */
== BRH#IS25 @102 /* (laugh) I suppose I am taking things to extremes. 'Tis a common enough reaction to stress for me, and a habit I really ought to break. */
== BMAZZY25 @103 /* I thought that might have been the case. Do try to take care of yourself, Isra. */
== BRH#IS25 @104 /* Aye, I will. Thank you. */
EXIT

// Minsc

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraMinscTOB","GLOBAL",0)~ THEN BMINSC25 rh#IsraMinscToB
@105 /* MEAD! Mead for all! Never have the backsides of evil been as sore as they are right now, Boo says! */
DO ~SetGlobal("rh#IsraMinscTOB","GLOBAL",1)~
== BRH#IS25 @106 /* By Sune, Minsc, don't let the hamster drink that! */
== BMINSC25 @107 /* Hmm. Perhaps you are right. He is not looking very... very... */
== BRH#IS25 @108 /* Sober? */
== BMINSC25 @109 /* Yes, very sober. */
= @110 /* Are you sure that you do not want some yourself, my friend? Boo has been worrying that we have not been properly... properly... accomodating. That was the word. Properly accomodating. */
== BRH#IS25 @111 /* I'm quite alright, thank you. */
== BMINSC25 @112 /* You are different from the women in the Ice Dragon Lodge, pretty Isra. Very different. Oh, Minsc remembers how easily they could drink almost any man under the table! */
== BRH#IS25 @113 /* I can certainly believe it, though 'tis a skill I very much lack. */
== BMINSC25 @114 /* Like any other skill, it must be earned! With sweat and tears! */
== BRH#IS25 @115 /* Aye, and more than simply that in my case, I'm afraid. */
EXIT

// Nalia

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraNaliaTOB","GLOBAL",0)~ THEN BRH#IS25 rh#IsraNaliaTOB
@116 /* Nalia, you've been rather grim as of late. Might I ask if something is troubling you? */
DO ~SetGlobal("rh#IsraNaliaTOB","GLOBAL",1)~
== BNALIA25 @117 /* Of course something is troubling me. Given the state of affairs, I would be surprised if nothing were troubling you. */
== BRH#IS25 @118 /* That does not explain your grimness. */
== BNALIA25 @119 /* Not everyone can maintain your constant good cheer, Isra... and even you aren't always that good at it. */
== BRH#IS25 @120 /* Aye, especially as of late. */
== BNALIA25 @121 /* I'm sorry if I've been a bit distant recently, but I do have a lot on my mind these days. */
== BRH#IS25 @122 /* We all do, I should think. */
== BNALIA25 @123 /* Well, yes, but not all of us are working with extremely dangerous spells. If I were to make a mistake, the consequences could be catastrophic. */
== BRH#IS25 @124 /* 'Tis wise of you to consider such things, I agree, though I fear sometimes that you are becoming too enamored of your own power. */
== BNALIA25 @125 /* Really, Isra, I don't need a lecture on humility right now. Not that you're a paragon of modesty yourself, by any means. Now, if we could please just move on? */
EXIT

// Sarevok

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Sarevok",MASK_EVIL)
Global("rh#IsraSarevokTOB","GLOBAL",0)~ THEN BSAREV25 rh#IsraSarevokToB
@126 /* Do you have something to say to me, little girl? Your eyes drift in my direction often enough. */
DO ~SetGlobal("rh#IsraSarevokTOB","GLOBAL",1)~
== BRH#IS25 @127 /* Surely you are accustomed to that much by now. */
== BSAREV25 @128 /* Heh. So I am. Then have you no self-righteous drivel to throw at me? You are a paladin... or so I have been told. */
== BRH#IS25 @129 /* I have no wish to soothe your ego with words of condemnation. You are no longer who you once were, and I won't help you pretend otherwise. */
== BSAREV25 @130 /* That is very naive of you, girl. Do you truly believe that my ambition, my thirst for power, has suddenly dried up? */
== BRH#IS25 @91 /* No. */
== BSAREV25 @131 /* But you will not be drawn into an argument, I see. Does merely speaking with me trouble you that much? */
== BRH#IS25 @132 /* Aye. */
== BSAREV25 @133 /* Bah! This is quite the collection of cowards, weaklings, and fools that my dear <PRO_BROTHERSISTER> has gathered. I have no further use for you, wench. */
EXIT

// Valygar

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraValygarTOB","GLOBAL",0)~ THEN BVALYG25 rh#IsraValygarToB
@134 /* Isra, you might as well have this book back. I'm not interested. */
DO ~SetGlobal("rh#IsraValygarTOB","GLOBAL",1)~
== BRH#IS25 @135 /* No? I had hoped that Kelemvor of all gods-- */
== BVALYG25 @136 /* Would suit my personal values? Aye, he probably would, but I am not Faithless merely because I haven't yet found an appropriate god. */
== BRH#IS25 @137 /* Would that it were that easy. */
== BVALYG25 @138 /* You should be focusing on things beside picking out the right god for me, Isra. */
== BRH#IS25 @139 /* Matchmaking is something of a favorite Sunite pastime, I'm afraid. I can't help but indulge from time to time. */
== BVALYG25 @140 /* You really just made that analogy, didn't you? */
== BRH#IS25 @141 /* It seemed reasonably apt. */
== BVALYG25 @142 /* (sigh) Whatever the... nature of your relationship with your goddess may be, Isra, it isn't something I need. I'd appreciate it if you could respect that. */
== BRH#IS25 @143 /* I... very well. I shan't trouble you with this again. */
== BVALYG25 @144 /* Thank you. */
EXIT

// Viconia

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraViconiaTOB","GLOBAL",0)~ THEN BVICON25 rh#IsraViconiaTOB
@145 /* What an unsightly frown, elg'caress. Has the effort required to make yourself attractive finally proven too much for you? */
DO ~SetGlobal("rh#IsraViconiaTOB","GLOBAL",1)~ 
== BRH#IS25 @146 /* I was thinking of Ust Natha again. That... happens from time to time. More than I would wish, mayhap. */
== BVICON25 @147 /* (chuckle) Do you finally regret not taking advantage of the... various delicacies that a drow city offers? You are a sensuous enough woman... perhaps you would have found our males to your liking. */
== BRH#IS25 @148 /* You are absolutely disgusting, Viconia. */
== BVICON25 @149 /* And you are becoming far too predictable. A pity, as you would otherwise have made an amusing adversary. */
EXIT