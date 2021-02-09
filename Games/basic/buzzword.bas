10 PRINT TAB(26);"Buzzword Generator"
20 PRINT TAB(15);"Creative Computing  Morristown, New Jersey"
30 PRINT:PRINT:PRINT
40 PRINT "This program prints highly acceptable phrases in"
50 PRINT "'manager-speak' that you can work into reports"
60 PRINT "and speeches.  Whenever a question mark is printed,"
70 PRINT "type a 'Y' for another phrase or 'N' to quit."
80 DIM A$(40)
100 FOR I=1 TO 39 : READ A$(I) : NEXT I
110 print "?"
120 a=rnd:y$=inkey$:if y$="" then 120
130 if y$="Y" or y$="y" then 150
140 if y$="N" or y$="n" then 999
145 goto 120
150 PRINT A$(INT(13*RND(1)+1));" ";
160 PRINT A$(INT(13*RND(1)+14));" ";
170 PRINT A$(INT(13*RND(1)+27)) : PRINT
180 goto 110
200 data "ability","basal","behavioral","child-centered"
210 data "differentiated","discovery","flexible","heterogeneous"
220 data "homogeneous","manipulative","modular","tavistock"
230 data "individualized","learning","evaluative","objective"
240 data "cognitive","enrichment","scheduling","humanistic"
250 data "integrated","non-graded","training","vertical age"
260 data "motivational","creative","grouping","modification"
270 data "accountability","process","core curriculum","algorithm"
280 data "performance","reinforcement","open classroom","resource"
290 data "structure","facility","environment"
999 PRINT "Come back when you need help with another report!":END
