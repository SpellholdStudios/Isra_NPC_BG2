BEGIN RH#IS25

IF ~NumTimesTalkedTo(0)~ j1
 SAY @2 /* <CHARNAME>? This is... unexpected. All things considered, however, perhaps it should not have been. */
	++ @3 /* You can look around later. I need your help. */ + j2
	++ @4 /* I hope you don't have anything better to do right now. */ + j3
	++ @5 /* It's nice to see you too, Isra. */ + j4
END

IF ~~ j2
 SAY @6 /* And I would be happy to help you, of course. What would you have of me? */
	++ @7 /* I'd like you to join me. */ + j5
	++ @8 /* Wait here for now. I'll be back later. */ + j6
END

IF ~~ j3
 SAY @9 /* Better? That is a matter of opinion, I should think. What would you have of me? */
	++ @7 /* I'd like you to join me. */ + j5
	++ @8 /* Wait here for now. I'll be back later. */ + j6
END

IF ~~ j4
 SAY @10 /* That goes without saying, my <PRO_LADYLORD>. What would you have of me? */
	++ @7 /* I'd like you to join me. */ + j5
	++ @8 /* Wait here for now. I'll be back later. */ + j6
END

IF ~~ j5
 SAY @11 /* Aye, certainly. */
IF ~~ DO ~SetGlobal("rh#IsraJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ j6
 SAY @12 /* I... see. 'Twould seem that I have little enough choice in the matter. */
IF ~~ EXIT
END
 
IF ~NumTimesTalkedToGT(0)~ j7
 SAY @13 /* You've returned, I see. And hopefully with more favorable news than the last time... have you any need of me yet? */
  	++ @14 /* I do. I'd like you to join me. */ + j5
	++ @15 /* Not yet, I'm afraid. I'll be back soon. */ + j8
END

IF ~~ j8
 SAY @16 /* I certainly hope so. Don't take too much longer. */
IF ~~ EXIT
END