1 RANDOMIZE VAL(RIGHT$(TIME$,2))
2 CLS
3 SCREEN 9
4 COLOR 7,8
5 SAVE"accumu
10 PRINT "The Accummulater!
20 INPUT "name -->";N$
30 PRINT
40 PRINT "hello ";N$;"!"
50 PRINT "You are playing the computer."
51 A$=INPUT$(1)
52 CLS
60 FOR I=1 TO 5
70 A=0
71 Z=INT(RND*20)
80 FOR C=1 TO Z
90 A=A+INT(RND*6)+1
100 NEXT C
110 LOCATE 1
120 PRINT "Score to add";A
130 INPUT "reject this score y/n";A$
140 IF A$="y" THEN R=R+A:GOSUB 4000:PRINT :PRINT :PRINT
150 IF A$<>"y" THEN AC=AC+A :GOSUB 2000
151 B=0
152 Z=INT(RND*20)
160 FOR C=1 TO Z
170 B=B+INT(RND*6)+1
180 NEXT C
190 PRINT "Computer is working...."
200 PRINT
220 IF B>5 THEN PRINT "Computer has accecpted ";B;"points":CAC=CAC+B:GOSUB 3000
230 IF B<=5 THEN PRINT "Computer has rejected ";B;"points ":CR=CR+B:GOSUB 4000:PRINT :GOSUB 4000
240 IF CAC>AC THEN PRINT "Computer is winning.
250 IF AC>CAC THEN PRINT "You are winning."
260 LET AC=AC+CR
261 GOSUB 4000
270 CAC=CAC + R
271 PRINT "
272 PRINT "Rejected points to the computer";R
273 PRINT "point rejected by the computer";CR
275 PRINT "your score--------->";AC
276 PRINT "commputers score--->";CAC
280 NEXT I
281 CLS
290 PRINT "after 5 rounds ..."
300 PRINT
310 PRINT "your score--------->";AC
320 PRINT "computers score---->";CAC
330 NE=NE+1
340 IF NE=9 THEN 1000
350 INPUT "do you wish to do another round y/n";A$
360 IF A$="y" THEN CLS:GOTO 60
1000 PRINT
1010 PRINT "End of game!!"
1020 IF CAC>AC THEN PRINT "the computer won"
1030 IF AC>CAC THEN PRINT N$ ;" won"
1040 PRINT
1050 INPUT "do you wish to play again ";A$
1060 IF A$="y" THEN CLEAR :GOTO 10
1070 PRINT "It has been nice playing you ";N$;" bye."
1080 END
2000 D=INT(RND*10)
2001 LOST=INT(RND*100)+1
2002 GOSUB 4000
2010 IF D=0 THEN AC=AC-LOST:PRINT :PRINT "you lost";LOST;"points!":PRINT ELSE PRINT :PRINT "no loss              ":PRINT
2020 RETURN
3000 GOSUB 4000
3001 LOST=INT(RND*100)+1
3010 D=INT(RND*10)
3020 IF D=0 THEN CAC=CAC-LOST:PRINT "the computer lost";LOST;"points!   " ELSE PRINT "the computer lost nothing!"
3030 GOSUB 4000
3040 RETURN
4000 FOR X=1 TO 79
4010 PRINT "-";
4020 NEXT X
4030 PRINT
4040 RETURN
