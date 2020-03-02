// SoA

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.DaceIsraBanter1","GLOBAL",0)~ THEN BT#DACE DaceIsraBanter#1.1
@65 /* Izzy, darlin', d'ya ever think that maybe you go just a little bit overboard with these groomin' habits of yours? I'm half expectin' to find you with jewels woven into those braids one mornin'. */
DO ~SetGlobal("G#XB.DaceIsraBanter1","GLOBAL",1)~ 
== BRH#ISR @66 /* Jewels? That would hardly be practical on a battlefield. */
== BT#DACE @67 /* Well, that's never seemed to stop you before--come on, honey... no need to go glowerin' like that. It's pretty enough, I'll admit. It justs seems an awful lot of effort for such a small thing. */
== BRH#ISR @68 /* Even complicated braids are not nearly as difficult as they seem. At least with enough practice. */
== BT#DACE @69 /* It's not the braids I worry 'bout; if anythin', it's the length. How long does it take you to wash all of that anyway? The whole thing should be a snarled mess by now-- */
== BRH#ISR @70 /* Miss Linton, must I truly remind you to keep your hands to yourself? */
== BT#DACE @71 /* Often enough--an' there's that glower again. You've been practicin' at that look, haven't you, Dolly? */
== BRH#ISR @72 /* You give me more than enough cause to. */
== BT#DACE @73 /* That's gotta be worth somethin', then. Glad to be useful. */
EXIT

// 2.
CHAIN IF ~InParty("T#Dace")
See("T#Dace")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.DaceIsraBanter2","GLOBAL",0)~ THEN BRH#ISR DaceIsraBanter#2.1
@74 /* Dacian, that is *quite* enough. */
DO ~SetGlobal("G#XB.DaceIsraBanter2","GLOBAL",1)~
== BT#DACE @75 /* Come on, hon... I saw you glancin' at her too, an' no wonder. You've got a more discernin' eye than I'd have guessed. */
== BRH#ISR @76 /* That surprises you? */
== BT#DACE @77 /* Well... no, maybe it shouldn't. It's just that you nobles tend not to know a damn thing 'bout breedin'... or least not half as much as you'd like to think. A sad truth, but when you've got servants doin' everythin' else for you, I guess that's what happens. */
== BRH#ISR @78 /* I have heard that sentiment before... from a horse trader attempting to cheat my mentor on a deal. 'Twas a memorable experience, if nothing else. */
== BT#DACE @79 /* Now don't you go lookin' at me like that, Dolly. I'm hardly the most honest woman about, sure, but where horses are concerned, I reckon you couldn't find someone more plain-speakin' than me. */
== BRH#ISR @80 /* Oddly enough, I am actually inclined to believe you. */
== BT#DACE @81 /* There you go, now, darlin'. I knew you had it in ya. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.DaceIsraBanter3","GLOBAL",0)~ THEN BT#DACE DaceIsraBanter#3.1
@82 /* Sometimes I get the feelin' that you don't really approve of me, darlin'. */
DO ~SetGlobal("G#XB.DaceIsraBanter3","GLOBAL",1)~
== BRH#ISR @83 /* Only sometimes? */
== BT#DACE @84 /* There you go, being all sarcastic again. But I guess I'd have been more surprised if you actually did approve. You may well be the weirdest paladin I ever did meet, but even you've gotta toe the line eventually. */
== BRH#ISR @85 /* You really do take some perverse pleasure in irritating me, don't you? */
== BT#DACE @86 /* You're only gettin' that now, honey? */
== BRH#ISR @87 /* I just don't understand the allure. */
== BT#DACE @88 /* I could try to explain it to you, but somehow I suspect that'd be a waste of both your time an' mine. An' we both know you don't leave yourself nearly enough free time as it is, Dolly. */
== BRH#ISR @89 /* (sigh) */
EXIT

// ToB

CHAIN IF ~InParty("T#Dace")
See("T#Dace")
!StateCheck("T#Dace",CD_STATE_NOTVALID)
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.DaceIsraToBBanter1","GLOBAL",0)~ THEN BRH#IS25 DaceIsraToBBanter#1.1
@90 /* Dacian, this horse farm of yours... */
DO ~SetGlobal("G#XB.DaceIsraToBBanter1","GLOBAL",1)~
== BT#DAC25 @91 /* What about it, Dolly? */
== BRH#IS25 @92 /* *Must* you persist in calling me by that ridiculous name? */
== BT#DAC25 @93 /* Well--no, I guess not, but it's pretty much habit by now. You were sayin' somethin', hon? */
== BRH#IS25 @94 /* I... had been considering purchasing a horse at some point. I've made do with my family's steeds so far, but... well, it isn't quite the same thing. */
== BT#DAC25 @95 /* I'd be happy to set one aside for you, darlin', soon as I get back to the far. Can't say anyone in the family's ever done much business with paladins, though. Isn't there some sorta weird mystical mumbo jumbo that goes on between you an' your horses? */
== BRH#IS25 @96 /* So I have been told, though I've not yet experienced it for myself. I imagine I might be better off speaking with someone more versed in handling our needs-- */
== BT#DAC25 @97 /* No, no, no, darlin'--no snatchin' back the olive branch once it's already been offered. That'd be all kinds of rude, after all. You and I'll just have to head back to the farm once this is all over an' muddle through it best we can. */
EXIT