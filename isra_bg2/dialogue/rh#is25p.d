BEGIN RH#IS25P

IF ~Global("rh#IsraJoined","GLOBAL",1)~ p1
 SAY @0 /* You truly wish to part company, <CHARNAME>? */
  + ~!AreaCheck("AR4500") GlobalLT("chapter","GLOBAL",%bg2_chapter_9%)~ + @1 /* For the moment, yes. */ + p2
  + ~!AreaCheck("AR4500") GlobalGT("chapter","GLOBAL",%bg2_chapter_8%)~ + @1 /* For the moment, yes. */ + p3
  + ~AreaCheck("AR4500")~ + @1 /* For the moment, yes. */ + p4
 	++ @2 /* Sorry, no. I'd rather not. */ + p5
END
 
IF ~~ p2
 SAY @3 /* I see. Should you change your mind, I expect you will be able to find me somewhere within Saradush. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) 
EscapeAreaMove("AR5003",870,550,3)~ EXIT
END
 
IF ~~ p3
 SAY @4 /* I see. Should you change your mind, I expect you will be able to find me somewhere within Amkethran. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0) EscapeAreaMove("AR5501",650,248,9)~ EXIT
END
 
IF ~~ p4
 SAY @5 /* I see. Do not be gone too long, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",0)~ EXIT
END

IF ~~ p5
 SAY @6 /* Very well. I am pleased to hear it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("rh#IsraJoined","GLOBAL",0)~ p6
 SAY @7 /* Hello, <CHARNAME>. 'Tis a pleasure to see you again. */
	++ @8 /* Would you care to join up with me again? */ + p7
	++ @9 /* Hello, Isra. I was just checking to see how you were. */ + p8
END

IF ~~ p7
 SAY @10 /* Certainly, my <PRO_LADYLORD>. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p8
 SAY @11 /* I could certainly be better. */
IF ~~ EXIT
END