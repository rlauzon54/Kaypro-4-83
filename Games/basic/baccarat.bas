10 PRINT "Welcome to Casino BASIC"
20 PRINT "The game is Baccarat"
30 H=0: REM Set win/loss to 0
40 GOSUB 680
50 INPUT "Are you ready";X$
60 IF X$="N" OR X$="n" THEN 660
70 PRINT "Press any key to continue"
80 A=RND:if inkey$="" then 80
90 randomize(a)
100 D=0: REM Reset computer's score
110 E=0: REM Reset player's score
120 INPUT "Wager ";G
130 IF G>100000 THEN PRINT "House limit is $100000": GOTO 100
140 IF G<=0 THEN PRINT "Ha! Ha!, Very funny!!": GOTO 100
150 PRINT "Your first card is a ";
160 GOSUB 900
170 GOSUB 590
180 PRINT " "
190 PRINT "Your next card is a ";
200 GOSUB 900
210 GOSUB 590
220 INPUT "Do you want a card";J$
230 IF J$="N" OR J$="n" THEN 300
240 REM Player third card
250 PRINT "The card is a ";
260 GOSUB 900
270 GOSUB 590
280 PRINT " ":PRINT " "
290 REM Dealer plays
300 PRINT "My first card is a ";
310 GOSUB 900
320 GOSUB 630
330 PRINT "My next card is a ";
340 GOSUB 900
350 GOSUB 630
360 REM Dealer decides if he takes another card
370 IF E<6 THEN 410
380 PRINT "I do not want a card."
390 GOTO 450
400 REM Dealer draws extra card
410 PRINT "I take a card."
420 PRINT "The card is a ";
430 GOSUB 900
440 GOSUB 630
450 PRINT "Your total is";D
460 PRINT "My total is";E
470 IF D=E THEN PRINT "IT IS A TIE. THE COMPUTER WINS!": G=-G: GOTO 500
480 IF D<E THEN PRINT "I win $"G: G=-G: GOTO 500
490 PRINT "You win $";G
500 H=H+G
510 IF H>0 THEN PRINT "I.O.U. $";H: GOTO 550
520 IF H=0 THEN PRINT "YOU ARE EVEN-UP !!": GOTO 550
530 PRINT "You owe me $";-H
540 REM Try again?
550 INPUT "Do you want to try again";K$
560 IF K$="N" OR K$="n" THEN 660
570 GOTO 100
580 REM Add players hand up
590 D=D+C
600 if d > 9 then d=d-10: goto 600
610 RETURN
620 REM Add up dealer's hand
630 E=E+C
640 if e > 9 then e=e-10: goto 640
650 RETURN
660 END
670 REM Rules
680 INPUT "Do you want the rules of the game (Y/N)";I$
690 IF I$="N" OR I$="n" THEN RETURN
700 PRINT "* OFFICIAL RULES FOR THE GAME OF BACCARAT *"
710 PRINT "The computer is shuffling six decks of cards together."
720 PRINT "The rules are as follows:"
730 PRINT "The object is to be as close as possible to 9 in 3 or 3 cards."
740 PRINT "Face cards and tens count zero."
750 PRINT "Aces count as one."
760 PRINT "All other cards count their index value."
770 PRINT " "
780 PRINT "When the total is over 10 the tens unit is dropped"
790 PRINT "Example: A seven and a six totaling 13 count as 3."
800 PRINT "The player with the higher total wins."
810 PRINT "In case of a tie, the computer wins."
820 PRINT " "
830 INPUT "Do you understand the rules (Y/N)";O$
840 IF O$="Y" OR O$="y" THEN RETURN
850 PRINT "Tough luck"
860 RETURN
890 REM Draw card
900 A=INT(RND(1)*52)+1
910 REM Get card face/value
920 C=A-13*INT(A/13) : REM Card face - 0 = King, 1 = Ace... 12 = Queen
930 IF C=0 THEN 1070
940 ON C GOTO 950,960,970,890,990,1000,1010,1020,1030,1040,1050,1060
950 PRINT "ACE  ";:GOTO 1090
960 PRINT "DEUCE  ";:GOTO 1090
970 PRINT "THREE  ";:GOTO 1090
980 PRINT "FOUR  ";:GOTO 1090
990 PRINT "FIVE  ";:GOTO 1090
1000 PRINT "SIX  ";:GOTO 1090
1010 PRINT "SEVEN  ";:GOTO 1090
1020 PRINT "EIGHT  ";:GOTO 1090
1030 PRINT "NINE  ";:GOTO 1090
1040 PRINT "TEN  ";:C=0:GOTO 1090
1050 PRINT "JACK  ";:C=0:GOTO 1090
1060 PRINT "QUEEN  ";:C=0:GOTO 1090
1070 PRINT "KING  ";:C=0
1080 REM Get suit
1090 IF INT(A/13)<>A/13 THEN 1110
1100 ON A/13 GOTO 1130,1140,1150,1160
1110 IF INT(A/13)=0 THEN 1130
1120 ON INT(A/13) GOTO 1140,1150,1160
1130 PRINT "OF CLUBS":RETURN
1140 PRINT "OF DIAMONDS":RETURN
1150 PRINT "OF SPADES":RETURN
1160 PRINT "OF HEARTS":RETURN
