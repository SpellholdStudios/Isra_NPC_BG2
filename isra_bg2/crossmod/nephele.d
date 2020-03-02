// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraNepheleBanter1","GLOBAL",0)~ THEN BLK#NEP IsraNepheleBanter#1.1
@98 /* Isra, dear, have you ever thought about perhaps settling down and finding a husband for yourself? At your age, I had a husband and a few children running around! */
DO ~SetGlobal("G#XB.IsraNepheleBanter1","GLOBAL",1)~
== BRH#ISR @99 /* No... no, I have not, and I've no intention of doing otherwise. */
== BLK#NEP @100 /* But you would make such a lovely mother! */
== BRH#ISR @101 /* Is this conversation really necessary, Nephele? */
== BLK#NEP @102 /* Yondalla's jerkin, girl, but you need not snap. Hmph! */
EXIT

// 2.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.IsraNepheleBanter2","GLOBAL",0)~ THEN BLK#NEP IsraNepheleBanter#2.1 
@103 /* Dear, your makeup is always so immaculate. It's a girlish conceit, I know, but might you be able to help me with these crowsfeet? I can never conceal them properly! */
DO ~SetGlobal("G#XB.IsraNepheleBanter2","GLOBAL",1)~
== BRH#ISR @104 /* You needn't call it a conceit with me, Nephele. Hmm... 'twould be somewhat more difficult whilst on the road, but I think I can manage it. */
== BLK#NEP @105 /* It's been many years since I've had my makeup done properly. I've never been all that good with it, myself, in all truth. */
== BRH#ISR @106 /* Oh? */
== BLK#NEP @107 /* I was spending a few nights with a Sharessan group, had quite the time of it. The lead priestess had the most careful hands! */
== BRH#ISR @108 /* Is that so? */
== BLK#NEP @109 /* Oh yes, she was very skilled. */
== BRH#ISR @110 /* Skilled? I see. */
== BLK#NEP @111 /* ... oh my, I didn't mean-- */
== BRH#ISR @112 /* I knew what you meant, worry not. */
== BLK#NEP @113 /* Good! Because I never-- */
== BRH#ISR @114 /* I'm sure. */
== BLK#NEP @115 /* Excuse me. */
== BRH#ISR @116 /* Of course. */
EXIT