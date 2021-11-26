EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("L#WEASE4") Global("L#WEASE4Csp","GLOBAL",0)~ THEN GOTO L#WEASE4.00
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN L#WEASE4.00
 SAY @0
= @1
= @2
    IF ~Global("L#WEASE4Csp","GLOBAL",0)
      PartyGoldGT(4999)
      PartyHasItem("L#WEASE4")
      PartyHasItem("POTN11")
      ~ THEN REPLY @3 DO ~SetGlobal("ItemMaker","GLOBAL",971)
                                 SetGlobal("L#WEASE4Csp","GLOBAL",1)
                                 TakePartyItem("L#WEASE4")
                                 TakePartyItemNum("POTN11",1)
                                 DestroyItem("L#WEASE4")
                                 DestroyItem("POTN11")
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ GOTO 11
    // 11 starts "cutsmith" cutscene, which sets ImpForgeStuff, which triggers BOTSMITH.baf, which gives L#FGLVF item and reenters Caspenar dialogue, which triggers talk 4 below

 
    IF ~~ THEN REPLY @4 GOTO L#FALSW1.01
    END

    IF ~~ THEN BEGIN L#FALSW1.01 SAY @5
      COPY_TRANS BOTSMITH 4
    END
  END