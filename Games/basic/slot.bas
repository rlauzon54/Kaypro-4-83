100 REM * Slot/Bas * Written for CodeWorks magazine110 REM * 3838 S Warner St. Tacoma, WA 98409 (206) 475-2219120 REM * placed in public domain 1987 (C)1987 80-NW Publishing Inc130 '140 ' General purpose locate/print@ routine. Unremark as needed.150 width 100:GOTO 230160 'LOCATE X,Y:RETURN ' GW BASIC170 'PRINT@((X-1)*64)+(Y-1),;:RETURN ' Tandy Models I/III180 'PRINT@((X-1),(Y-1)),;:RETURN ' Tandy Model IV190 'PRINT@(X,Y),;:RETURN ' Some MBASIC machines200 PRINT CHR$(27)+"="+CHR$(32+X)+CHR$(32+Y);:RETURN ' CP/M adjust to suit210 '220 'do some initialization of variables230 'CLEAR 5000 ' use only if you need to clear string space240 DIM L$(16)250 A$="##########  ##########  ##########"260 B$="  XXXXXX  "270 BL$=CHR$(7) ' BELL, make BL$="" if you don't like the noise280 '290 'Stuff the lever symbols into L$(3) to L$(15)300 L$(3)=STRING$(6,79)          'L$(3) to L$(8) are the310 FOR I=4 TO 7                 'knurled handle320   L$(I)=" "+STRING$(4,79)330 NEXT I340 L$(8)=STRING$(6,79)350 FOR I=9 TO 14                'L$(9) to L$(14) are the360   L$(I)=" "+STRING$(4,159)   'base of lever370 NEXT I380 L$(15)=STRING$(5,159)        'L$(15) is the pivot390 '400 'clear the screen and print the heading410 print chr$(26);420 PRINT TAB(9)"SILVER DOLLAR SLOT MACHINE"430 PRINT440 PRINT TAB(3)"      === 3 BARS PAY $ 100 ===450 PRINT TAB(3)" 3 CHERRIES, PLUMS or BELLS pay $ 10460 PRINT TAB(3)"   2 CHERRIES, 2 PLUMS or 2 BELLS470 PRINT TAB(3)"   when on the RIGHT side pay  $ 3480 PRINT TAB(3)"   except with a lemon on the left.490 '500 'print the lever510 FOR X=3 TO 15520   Y=50:GOSUB 160530   PRINT L$(X)540 NEXT X550 '560 'print the wheels570 X=9:Y=5:GOSUB 160:PRINT A$580 X=10:Y=5:GOSUB 160:PRINT A$590 X=11:Y=5:GOSUB 160:PRINT A$600 '610 ' get started620 X=14:Y=1:GOSUB 160:PRINT"How many coins will you start with";630 INPUT CU640 IF CU=<0 THEN 620 ' can't start without putting coins in650 CU=CU-1660 GOSUB 1620670 X=14:Y=1:GOSUB 160:PRINT STRING$(48,32)680 '690 'start of main loop, play as long as CU is not zero700 X=10:Y=5:GOSUB 160:PRINT A$710 '720 ' spin the wheels and pick what they stop on.730 ' note that locate Y is already defined in the J loop here.740   FOR J=1 TO 3750     IF J=1 THEN Y=5 ELSE IF J=2 THEN Y=17 ELSE Y=29760     FOR I=35 TO Y STEP -1770       X=10:GOSUB 160:PRINT B$ ' print the center bar780       X=10:GOSUB 160:PRINT STRING$(10,32) ' blank the center bar790     NEXT I800     GOSUB 1130 ' to pick what it stops on810     X=10:GOSUB 160:PRINT C$820   NEXT J ' end of wheel spinning loop830 '840 ' take D$ apart to see what is in it850   FOR K=1 TO 3860     E$(K)=MID$(D$,K,1)870   NEXT K880 '890 ' find out if we have a win and if so, what kind.900   IF E$(1)=E$(2) AND E$(1)=E$(3) AND VAL(E$(1))=1 THEN GOSUB 1320:GOTO 950910   IF E$(1)=E$(2) AND E$(1)=E$(3) AND VAL(E$(1))>2 THEN GOSUB 1420:GOTO 950920   IF E$(2)=E$(3) AND (NOT E$(1)="2") AND VAL(RIGHT$(D$,2)) >22 THEN GOSUB 1520:GOTO 950930 '940   IF CU=0 THEN 1080950   X=14:Y=1:GOSUB 160:PRINT"Press ENTER to pull the lever";960   INPUT XX970   CU=CU-1980   GOSUB 1620 ' to pull the lever990   X=15:Y=1:GOSUB 160:PRINT STRING$(20,32)1000   X=15:Y=1:GOSUB 160:PRINT"You now have $";CU1010   D$=""1020   X=14:Y=1:GOSUB 160:PRINT STRING$(40,32)1030   PL=PL+1 ' keep track of number of pulls1040 GOTO 7001050 ' end of main loop1060 '1070 'end play when you have lost all your money.1080 X=15:Y=1:GOSUB 160:PRINT"The one-armed bandit got you!"1090 PRINT"You have put $";PL+1;" into this machine."1100 END1110 '1120 ' make randomizer if needed1130 'RN=VAL(MID$(TIME$,4,2)+MID$(TIME$,7,2)):RANDOMIZE RN1140 '1150 ' pick a random number between 1 and 51160 A=int(RND*5)+11170 '1180 ' retard lemons during early part of play1190 IF PL>30 THEN PQ=1 ELSE IF PL>15 THEN PQ=2 ELSE PQ=31200 AA=INT(RND(1)*PQ)+11210 IF AA>1 THEN IF A=2 THEN 11601220 ON A GOTO 1250,1260,1270,1280,12901230 '1240 ' D$ will be built up here to keep track of what we have1250 C$="  ==BAR== ":D$=D$+"1":RETURN1260 C$="   lemon  ":D$=D$+"2":RETURN1270 C$="   PLUM   ":D$=D$+"3":RETURN1280 C$="   BELL   ":D$=D$+"4":RETURN1290 C$="  CHERRY  ":D$=D$+"5":RETURN1300 '1310 ' three bars win routine1320 FOR JP=1 TO 1001330   X=14:Y=17:GOSUB 1601340   PRINT"K L U N K":PRINT BL$1350   X=14:Y=17:GOSUB 160:PRINT STRING$(10,32)1360   CU=CU+11370   X=15:Y=1:GOSUB 160:PRINT"You now have $";CU1380 NEXT JP1390 RETURN1400 '1410 ' three of a kind win routine1420 FOR JP=1 TO 101430   X=14:Y=17:GOSUB 1601440   PRINT"K L U N K":PRINT BL$1450   X=14:Y=17:GOSUB 160:PRINT STRING$(10,32)1460   CU=CU+11470   X=15:Y=1:GOSUB 160:PRINT"You now have $";CU1480 NEXT JP1490 RETURN1500 '1510 ' two on the right win routine1520 FOR JP=1 TO 31530   X=14:Y=17:GOSUB 1601540   PRINT"C L I N K":PRINT BL$1550   X=14:Y=17:GOSUB 160:PRINT STRING$(10,32)1560   CU=CU+11570   X=15:Y=1:GOSUB 160:PRINT"You now have $";CU1580 NEXT JP1590 RETURN1600 '1610 ' make the lever pull down1620 FOR X=3 TO 151630   Y=50:GOSUB 1601640   PRINT STRING$(6,32)1650 NEXT X1660 '1670 ' let the lever go back up slowly1680 FOR X=15 TO 3 STEP -11690   Y=50:GOSUB 1601700   PRINT L$(X)1710   FOR TD=1 TO 50:NEXT TD ' time delay1720 NEXT X1730 RETURN