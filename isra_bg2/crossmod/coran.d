// SoA

// 1.
CHAIN
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalLT("Chapter","GLOBAL",%bg2_chapter_7%)
GlobalGT("rh#IsraWasInBGI","GLOBAL",0)
Global("G#XB.IsraCoranSoABanter1","GLOBAL",0)~ THEN BO#CORAN IsraCoranSoABanter#1.1
@44 /* And I am out of Elverquisst again. Just when an another old face shows by. But apologies, my lady: yours is a beautiful face, and when I say "old", by no means do I imply any wrinkles or anything of the sort. ...By Hanali, I'm digging my own grave here, am I? */
DO ~SetGlobal("G#XB.IsraCoranSoABanter1","GLOBAL",1)~
== BRH#ISR @45 /* A little bit, mayhap, but do go on. I am curious as how you are going to wriggle out of it again. */
== BO#CORAN @46 /* Believe me, I'm hanging by the skin of my teeth here. A bottle of Elverquisst *would* come handy, only I am out of coin, and naturally, you, a glorious paladin of Sune, would object to the more... shadowy means of getting the said coin. And my grave just got another two feet deeper. */
== BRH#ISR @47 /* You could always just stop digging. */
== BO#CORAN @48 /* And shut up? Please, lady, who are you taking me for? Were we at Suldanessellar, the green and wild city of my birth, I'd keep you awake from dusk till dawn with the most tantalizing stories, and perhaps more than that! In fact... should we ever return, consider it a promise. */
== BRH#ISR @49 /* And that is quite enough of that, I think. */
EXIT

// 2.
CHAIN
IF ~InParty("O#Coran")
See("O#Coran")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#IsraQuestTwo","GLOBAL",10)
Global("G#XB.IsraCoranSoABanter2","GLOBAL",0)~ THEN BRH#ISR IsraCoranSoABanter#2.1
@50 /* Coran, why did you come back to the Sword Coast? */
DO ~SetGlobal("G#XB.IsraCoranSoABanter2","GLOBAL",1)~
== BO#CORAN @51 /* From my Tethyrian journeys with Safana, you mean? Oh, that's an old and tried story: a woman traded me for another. Traded up, most likely: gold was always dear Safana's first love. */
== BO#CORAN @52 /* But isn't the tale quite familiar to you? Your own sister, Rana, and her unfortunate husband, wasn't it? Pwent, or whatshisname? */
== BRH#ISR @53 /* Quentin, and 'twas a cruel trick that my sister pulled on him. When we learnt the truth, I had to act. */
== BO#CORAN @54 /* But you didn't hang the poor fellow out to dry. I respect that. */
== BRH#ISR @55 /* Would you have done otherwise? */
== BO#CORAN @56 /* I won't lie. Were it my blood, I'd be tempted to protect my own. I have strength, but... seems like you're much stronger. What do you paladins call it? Faith? Conviction? Will? */
== BRH#ISR @57 /* Conscience. */
== BO#CORAN @58 /* And that, I fear, is something I'll never truly have. */
EXIT

// ToB

CHAIN 
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Coran",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraCoranToBBanter1","GLOBAL",0)~ THEN BO#COR25 IsraCoranToBBanter#1.1
@59 /* Isra, my good and dear friend, 'tis high time we prayed together, you and I. Sune and Hanali at work - a pairing that can never be beaten! */
DO ~SetGlobal("G#XB.IsraCoranToBBanter1","GLOBAL",1)~
== BRH#IS25 @60 /* Do you even pray on your own, Coran? */
== BO#COR25 @61 /* Daily! Hourly! Monthly... erm, all right, yearly would be closer to the truth. But Hanali is no hypocrite with tithes and fat priests. She accepts the language of love, and that is a specialty of mine: a living poem, a symphony of sighs, and a golden tribute which she accepts with a gracious smile. */
== BRH#IS25 @62 /* I do not think Hanali looks kindly on abandoned children, Coran. What about Namara? */
== BO#COR25 @63 /* A low blow, my dear. But one day Hanali would bless Namara's first love, and her children, and hers. Sometimes this is enough, you know. And fathers are... overrated. */
== BRH#IS25 @64 /* Your daughter still needs you. If you need to pray to Hanali tonight, Coran, pray to her for guidance. Mayhap you will hear at last what she has been trying to tell you all this time. */
EXIT