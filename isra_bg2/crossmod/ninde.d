// SoA

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraNindeBanter1","GLOBAL",0)~ THEN BLK#NIND IsraNindeBanter#1.1
@117 /* Isra, darling. I must say, it is nice to be traveling with someone with a touch of class once more--even if she is somewhat overly pious. Still, Sune... hmm. I can almost sympathize. */
DO ~SetGlobal("G#XB.IsraNindeBanter1","GLOBAL",1)~
== BRH#ISR @118 /* Can you? I have seen precious little evidence of that. */
== BLK#NIND @119 /* And here I thought my high regard for beauty had become all but legendary. As for you, my dear... I've never been terribly interested in bedding women before, but perhaps just this once-- */
= @120 /* Really, Isra. By that expression, I would almost think you didn't like me at all. (pouts) You're no fun at all. */
== BRH#ISR @121 /* Providing you with entertainment is hardly a priority, Ninde. */
== BLK#NIND @122 /* No, apparently not. And teaching the rest of these cretins proper hygiene doesn't seem to be either... a pity. I'd have liked to have seen that self-righteous disapproval turned to something useful for a change. */
== BRH#ISR @17 /* Are you quite finished? */
== BLK#NIND @123 /* For now, yes, I believe so. What a night this could have been... pity. */
== BRH#ISR @124 /* Forgive me my disbelief. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraNindeBanter1","GLOBAL",1)
Global("G#XB.IsraNindeBanter2","GLOBAL",0)~ THEN BLK#NIND IsraNindeBanter#2.1
@125 /* Really, if you're not careful, your face may well freeze that way. My story can't have been as terrible as all that. */
DO ~SetGlobal("G#XB.IsraNindeBanter2","GLOBAL",1)~ 
== BRH#ISR @126 /* I have no interest in your tales of conquest, Ninde. That you would even speak of such things... that tells me everything about your character that I would ever need to know. */
== BLK#NIND @127 /* Oh, dear me. Is this where you lecture me on what a naughty little girl I've been? */
== BRH#ISR @128 /* Do you truly think so little of me? */
== BLK#NIND @129 /* Oh, but Isra... I have been *such* a bad girl. And it's so much fun. */
= @130 /* Shall I bend over and receive my spanking now, or would later suffice? I see we are a little busy right now. */
== BRH#ISR @131 /* Your jibes are best directed elsewhere, Ninde. I've little patience for your needles to<DAYNIGHT>. */
== BLK#NIND @132 /* Or ever, it seems. */
== BRH#ISR @133 /* Or ever. */
EXIT

// 3.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#Ninde_Encounter","GLOBAL",0)
Global("G#XB.IsraNindeBanter1","GLOBAL",1)
Global("G#XB.IsraNindeBanter2","GLOBAL",1)
Global("G#XB.IsraNindeBanter3","GLOBAL",0)~ THEN BRH#ISR IsraNindeBanter#3.1
@134 /* Must you, Ninde? Have you some inability to keep your mouth closed? */
DO ~SetGlobal("G#XB.IsraNindeBanter3","GLOBAL",1)~ 
== BLK#NIND @135 /* For a Sunite, pumpkin, you are incredibly dull. That story was tame by anyone's standards. Except yours, apparently. */
== BRH#ISR @136 /* If a basic appreciation for respect makes one dull, then I've no wish to be otherwise. */
== BLK#NIND @137 /* At least you won't be disappointed, then. Still, I expected better of you. Sunites usually have a tale or two to tell. */
== BRH#ISR @138 /* Whatever you think of my faith, you obviously have no understanding of its true nature. */
== BLK#NIND @139 /* Oh, I don't know. I've slept with enough of you to know that your 'religion' is little more than an excuse for drunken revelry, Isra. You need not hide your secret around me, truly! */
== BRH#ISR @140 /* If not for the dictates of honor, I would be sore pressed not to strike you for that blasphemy. */
== BLK#NIND @141 /* Funny, I've known many a paladin who would use honor as an excuse to do just that. */
== BRH#ISR @142 /* You know as little about honor as you do about my faith if you truly believe that, Ninde. Loath as I am to make assumptions about your past exploits, if you have fallen afoul of paladins before, I cannot help but think that the fault was with you, not them. */
== BLK#NIND @143 /* I think I've more experience with 'honor' than most. 'Honor' has killed many of my friends, Isra, who did not deserve to be hunted down as if they were rabid dogs. Honor is blind, it is black and white, and it does not appreciate any of the countless shades of grey. We do not live in a world of black and white, but your honor dictates that it be treated as such. Do not talk to me of honor. */
== BRH#ISR @144 /* And do not speak to me of shades of grey, Ninde. There is as little room for that in a Sharran's world as there is in mine. Blame others, if you haven't the strength to face your own failings, but don't expect me to listen. */
EXIT

// ToB

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRestored","GLOBAL",1)
Global("G#XB.IsraNindeToBBanter1","GLOBAL",0)~ THEN BLK#NI25 IsraNindeToBBanter#1.1
@145 /* Why, Isra... I was beginning to think that you would never come around! Oh, don't go looking so sour all of a sudden. Nobody could blame you for admiring the goods, darling. */
DO ~SetGlobal("G#XB.IsraNindeToBBanter1","GLOBAL",1)~
== BRH#IS25 @146 /* Must you, Ninde? */
== BLK#NI25 @147 /* Must I what, blossom? You disapprove of oh, so many things, it can be somewhat difficult to keep track of them at times. */
== BRH#IS25 @148 /* I... had hoped that <CHARNAME>'s sacrifice would change you more. */
END
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ THEN EXTERN BLK#NI25 IsraNindeToBBanter#1.2
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ THEN EXTERN BLK#NI25 IsraNindeToBBanter#1.3

CHAIN BLK#NI25 IsraNindeToBBanter#1.2
@149 /* Oh, I see. You had hoped that so sweet an expression of selfless love would be enough to cleanse the darkness from even my blackened heart... how delightfully naive of you. */
== BRH#IS25 @150 /* I never said that. */
== BLK#NI25 @151 /* No, I suppose not. And truth be known-- no. I have no wish to confide in you of all people, paladin. */
== BRH#IS25 @152 /* I would never betray you, Ninde. */
== BLK#NI25 @153 /* Perhaps not, but I have no need for your help regardless. */
== BRH#IS25 @154 /* Very well, but should you change your mind, I will still be here. */
EXIT

CHAIN BLK#NI25 IsraNindeToBBanter#1.3
@155 /* Oh, I see. You had hoped that so sweet an expression of selfless love would be enough to cleanse the darkness from even my blackened heart... but then again, there was never anything terribly selfless about <CHARNAME>'s so-called sacrifice. */
== BRH#IS25 @156 /* No... no, I suppose not. */
EXIT

// 2.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("G#XB.IsraNindeToBBanter2","GLOBAL",0)~ THEN BRH#IS25 IsraNindeToBBanter#2.1
@157 /* Ninde, I am beginning to worry about you. */
DO ~SetGlobal("G#XB.IsraNindeToBBanter2","GLOBAL",1)~ 
== BLK#NI25 @158 /* Why, how utterly marvellous for me! Whatever might have prompted this delightful change of mood, hmm? */
== BRH#IS25 @159 /* This new obsession with death and decay-- */
== BLK#NI25 @160 /* New, you say? Darling, you really haven't been paying attention at all, have you? I would have thought the necromancy more obvious than that. */
== BRH#IS25 @161 /* Say what you will, it has grown worse. */
== BLK#NI25 @162 /* And so now, after weeks of silence and recriminations, you are suddenly concerned about my state of mind? Dear, sweet Isra, how very compassionate you must feel right now! */
== BRH#IS25 @163 /* I have never considered you a threat before, Ninde. That is beginning to change. */
== BLK#NI25 @164 /* Do you expect me to fear you, girl? Do you think that I would even still care how such a contest would play out? I don't. Not anymore. If you truly wish to challenge me, paladin, I would almost welcome it. */
== BRH#IS25 @165 /* I do not believe you, Ninde. Not yet, at least. */
== BLK#NI25 @166 /* Then I suggest you not trouble me again until you're prepared to do more than simply talk, hmm? I assure you, Isra... I will be waiting. */
EXIT