10 DEFINT A-Z
20 RANDOMIZE TIMER
30 SCREEN 9
35 CLS
40 FOR I = 0 TO 3
50 LINE (I*10,I*10)-(639-(I*10),349-(I*10)),INT(RND*5)+1,B
60 NEXT I
70 D = INT(RND*8)
80 X = 320
90 Y = 175
100 IF D=0 THEN X=X-1:Y=Y-1
110 IF D=1 THEN Y=Y-1
120 IF D=2 THEN X=X+1:Y=Y-1
130 IF D=3 THEN X=X+1
140 IF D=4 THEN X=X+1:Y=Y+1
150 IF D=5 THEN Y=Y+1
160 IF D=6 THEN X=X-1:Y=Y+1
170 IF D=7 THEN X=X-1
180 P = POINT(X,Y)
190 D = (D + P) MOD 8
200 IF P<15 THEN PSET (X,Y),P+1 ELSE PSET (X,Y),0
210 IF X<0 THEN X=1
220 IF Y<0 THEN Y=1
230 IF X>649 THEN X=648
240 IF Y>349 THEN Y=348
250 GOTO 100
