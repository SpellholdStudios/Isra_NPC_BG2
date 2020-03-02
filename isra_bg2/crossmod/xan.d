// SoA

// 1.
CHAIN
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Xan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraXanSoABanter1","GLOBAL",0)~ THEN BO#XAN IsraXanSoABanter#1.1
@177 /* Seventeen seconds. */
DO ~SetGlobal("G#XB.IsraXanSoABanter1","GLOBAL",1)~
== BRH#ISR @178 /* I beg your pardon? */
== BO#XAN @179 /* The braid that you spent half the morning on. It lasted exactly seventeen seconds in our latest skirmish. A new record, I believe. */
== BRH#ISR @180 /* 'Twas time well-spent, then, if it caused even you to pay attention. Dare I ask why you would even bother? */
== BO#XAN @181 /* Curiosity. Though why the alien feeling would suddenly visit me as I was about to die for the hundredth time, I can't imagine. Moreover, I can't fathom why you'd waste your hours on something so ephemeral. */
== BRH#ISR @182 /* Beauty is lasting, Xan. In the eye of the beholder, in the love that springs from a single look... even in memory. Surely an elf from the majestic city of Evereska can see this? */
== BO#XAN @183 /* (sigh) Evereska's temples and towers would, too, burn one day. And even millennia of peace would seem like seconds then. What use are empty memories? There is no use. And no hope. */
== BRH#ISR @184 /* Hope is in the eye of the beholder as well, Xan. */
== BO#XAN @185 /* Unless it is an Elder Orb. */
EXIT

// 2.
CHAIN
IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Xan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraXanSoABanter2","GLOBAL",0)~ THEN BRH#ISR IsraXanSoABanter#2.1
@186 /* Some of our brethren say that Hanali, the elven goddess of love, is one of the many visages of Sune Firehair. What do the elves think, Xan? */
DO ~SetGlobal("G#XB.IsraXanSoABanter2","GLOBAL",1)~
== BO#XAN @187 /* It may well be. Though we believe Hanali to be elven and only elven, a part of the Triune Goddess, together with Sehanine Moonbow and Aerdrie Faenya. */
== BRH#ISR @188 /* Would it hurt your pride, do you think, to know that the elves had worshipped a human goddess all this time? */
== BO#XAN @189 /* I... do not know. Perhaps. But it is not a question of race: it is a matter of trust. If Corellon suddenly turned out to be human, I'd still turn to him. I would not worship him any less: I simply do not know how. But I would feel betrayed by the lie. */
== BRH#ISR @190 /* Is it a dark lie, though? That young elven lovers know joy during Hanali's holy days? That objects of great beauty are created in her name? And human and elven clerics of Sune come closer together? */
== BO#XAN @191 /* (sigh) But when the truth comes out, won't it all be tainted? */
== BRH#ISR @192 /* Not if your heart has known love. True love wins over all, and forgiveness is a part of it. */
EXIT

// 3.
CHAIN
IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Xan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#IsraWasInBGI","GLOBAL",0)
!Global("O#XanNeverMet","GLOBAL",1)
Global("G#XB.IsraXanSoABanter3","GLOBAL",0)~ THEN BRH#ISR IsraXanSoABanter#3.1
@193 /* Xan... are those furtive glances truly necessary? I do not think that anybody else is interested in those leftover cookies anyway. */
DO ~SetGlobal("G#XB.IsraXanSoABanter3","GLOBAL",1)~
== BO#XAN @194 /* Because last time I didn't look, a certain Bhaalspawn ate my entire share. Or it might've been Duke Belt: my memory's fuzzy on that point. */
== BRH#ISR @195 /* Ah... it might have been me. */
== BO#XAN @196 /* Oatmeal raisin cookies? I wouldn't peg you for the type. */
== BRH#ISR @197 /* They are nutritious and good for the figure. In any case, <CHARNAME> had said that you complained about them quite loudly. */
== BO#XAN @198 /* (sigh) It was a diversion tactic, and <CHARNAME> had known it perfectly. No doubt it was payback for that time with the disappearing socks in the Cloakwood. No matter. */
== BRH#ISR @199 /* You were behind the disappearing socks? I had assumed that was Imoen. */
== BO#XAN @200 /* Oh, it was. And the wretched girl started with *mine*, turning them the most horrible shade of pink. When I attempted a counterspell, to her utter delight, ALL socks disappeared, starting with <CHARNAME>'s, and rumor went some other items were affected, as well. Our leader was not pleased. */
== BRH#ISR @201 /* 'Tis strange to remember what petty concerns once ruled our thoughts. */
== BO#XAN @202 /* We still have cookies. Together with the Shadow Thieves, Cowled Wizards, blown-up buildings, impossible sums of gold and general chaos all around. And we have <CHARNAME>. */
== BRH#ISR @203 /* And is that better or worse than cookies? */
== BO#XAN @204 /* (sigh) Don't ask. */
EXIT

// ToB

CHAIN 
IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("O#Xan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("TalkedToSolar","GLOBAL",1)
Global("G#XB.IsraXanToBBanter1","GLOBAL",0)~ THEN BO#XAN25 IsraXanToBBanter#1.1
@205 /* Something tells me that <CHARNAME> won't be a very successful <PRO_LADYLORD> of Murder. */
DO ~SetGlobal("G#XB.IsraXanToBBanter1","GLOBAL",1)~
== BRH#IS25 @206 /* <CHARNAME> has a good heart. You know this as well as I do. No matter what happens, <PRO_HESHE> will never take Bhaal's place. */
== BO#XAN25 @207 /* Won't <PRO_HESHE>? Yes, <CHARNAME> is charming, and loyal, and a great listener. One of the best friends and companions I have ever had... my only true friend, perhaps. */
== BO#XAN25 @208 /* But <CHARNAME> is also a divine being who makes choices behind closed doors, when it is just <PRO_HIMHER> and Solar - and we mercifully lie unconscious. Which questions are asked? Which choices are made? We will only know when the curtain rises and <CHARNAME> takes <PRO_HISHER> father's place. Or not. */
== BRH#IS25 @209 /* I trust <CHARNAME>, and I trust <PRO_HISHER> heart. And I am surprised at you. Do you not believe in <PRO_HIMHER>? */
== BO#XAN25 @210 /* It's... not a question of faith, or trust. Not anymore. Alaundo's prophecies are at work. And one <PRO_RACE>, however bright and brave, can't stand against them. */
== BO#XAN25 @211 /* Or can <PRO_HESHE>? */
== BRH#IS25 @212 /* Prophecies are seldom written in stone, Xan, and never fully understood until after the fact. I would hesitate to make assumptions so soon. */
EXIT