
'#sec:Main
10 DIM C(16), S(16)  ''Set-Up
15 dim b$(10):pen on
20 beep
30 CLS
60 B$(1) = "izquierda"
70 B$(2) = "derecha"
80 R = 15
90 R2 = R / 120
100 D = 1 / 4:color 9
110 PRINT "                                      "
120 PRINT "****  SHOT  3.0  ****"
130 PRINT : PRINT " UNA SIMULACION DE ARTILLERIA": PRINT "           * *             *  *"
140 PRINT "POTSHOT de microsoft"
160 PRINT:color 12
165 PRINT " por Jaime A Maturana V"
190 PRINT "********************":color 0
200 FOR N = 1 TO 3000: NEXT N
210 ''     Game starts here
220 L1 = 200: L2 = 2000: GOSUB 3600: M1 = VA''Left player distance
230 GOSUB 3600: M2 = VA''Right player distance
240 L1 = 1: L2 = 1000: GOSUB 3600: H1 = VA''Left player elevation
250 GOSUB 3600: H3 = VA''Right player elevation
260 L1 = 800: L2 = 1500: GOSUB 3600: H2 = VA''Mountain height
270 CLS
280 PRINT
310 IF H1 > 0 THEN 380
320 IF H3 > 0 THEN 360
330 IF H1 < H3 THEN 360
340 H9 = H3
350 GOTO 400
360 H9 = H1
370 GOTO 400
380 IF H3 < 0 THEN 340
390 H9 = 0
400 L4 = M1 + M2
410 F1 = 8 / L4
420 IF (H2 - H9) * F1 >= 4 THEN F1 = 4 / (H2 - H9)
440 '' SCALE THINGs
450 '' MOUNTAIN TOP <= 4
460 '' X DIRECTION = 10
480 L4 = L4 * F1
485 XX = 15: YY = 12'' FIJA ESCALAS
486 LX = 160: LY = 160
490 C1 = (10 - L4) / 2   ''LEFT PLAYER
500 C2 = C1 + (M1 * F1)  ''MOUNTAIN
510 C3 = C1 + L4         ''RIGHT PLAYER
520 H1 = H1 * F1       ''LEFT PLAYER HT
530 H2 = H2 * F1       ''MOUNTAIN HT
540 H3 = H3 * F1       ''RIGHT PLYER HT
550 H9 = H9 * F1
560 GOTO 620
570 LINE (XX * C1), (YY * H1),(XX * C2), (YY * H2): LINE (XX * C2), (YY * H2),(XX * C3), (YY * H3)
580 LINE XX * C1, 0,XX * C1, YY * H1: PRINT "C1"
590 LINE XX * C2, 0,XX * C2, YY * H2: PRINT "C2"
600 LINE XX * C3, 0,XX * C3, YY * H3: PRINT "C3"
620 F2 = SQR(F1 / 32)                        ''SCALE FACTOR FOR VELOCITIES
630 B1 = SQR(C2 - C1) / 4
640 B3 = SQR(C3 - C2) / 4
650 IF L1 < L2 THEN 680
660 B2 = B3
670 GOTO 690
680 B2 = B1
690 A2 = H2 * B2
700 A1 = (H1 - A2 / (B2 + (C1 - C2) ^ 2)) * B1
720 A3 = (H3 - A2 / (B2 + (C3 - C2) ^ 2)) * B3
730 at 0, 0
740 BEEP: PRINT "Viento?(S/N) ?";
745 T$ = INKEY$: IF T$ = "" THEN GOTO 745
750 PRINT T$; : IF T$ = "s" THEN 780
760 K9 = 0
770 GOTO 850
780 K9 = .1 ''VISCOSITY CONSTANT
790 Q8 = 2 * RND - 1
800 at 0, 30:color 13
820 PRINT "Viento hacia la ";
830 PRINT B$((3 + SGN(Q8)) / 2); " A"; INT(ABS(Q8) / F2 * 10) / 10; "Mt/seg"
850 X8 = Y8 = 0
860 X9 = 10
870 Y9 = 7
890 ''    PLOT THE HILL
910 PSET 0, LY
920 FOR X1 = 0 TO 10 STEP 1 / 16
930 X2 = X1 - C1
940 X3 = X1 - C2
950 Y1 = A1 / (B1+(x2)*x2)+a2/(b2+(x3)*x3)
960 X4 = X1 - C3
970 Y1 = Y1 + A3 / (B3 + (X4) * X4) - H9
980 U1 = LY - YY * Y1
990 IF U1 < 0 THEN U1 = 0
1000 line XX * X1,159,XX * X1,U1 color 10
1005 pset XX * X1,U1 color 0
1010 NEXT X1
1030 '' PLOT GUARD SHACKS, SET UP BALLISTICS
1050 H2 = H2 - H9 ''TOP OF MOUNTAIN FROM LOWEST
1060 X1 = C1    ''X1 IS THE LEFT PLAYER
1070 H1 = H1 - H9  ''MOUNTAIN ABOVE LEFT PLAYER
1080 Y1 = H1
1100 color 9:GOSUB 2330     ''DRAW LEFT BOX
1110 X1 = C3
1120 H3 = H3 - H9
1130 Y1 = H3
1200 color 12:GOSUB 2330:color 0     ''DRAW RIGHT BOX
1300 ''  START THE ACTIOn
1320 C(0) = 1
1330 S(0) = 0
1340 A5 = 3.14159265 / 12
1350 Ca = cos (A5)
1360 Sa = sin (A5)
1370 FOR I = 1 TO 16
1380 C(I) = C(I - 1) * Ca - S(I - 1) * Sa
1390 S(I) = S(I - 1) * Ca+ C(I - 1) * Sa
1400 NEXT I
1410 at 0, 10: PRINT "Angulo, Velocidad.";
1430 IF RND > .5 THEN 1660              ''PICK A PLAYER
1450 ''   PROCESS THE LEFT SIDE
1460 at 0, 1: PRINT "                                      ";:color 9
1480 at 50, 0: PRINT "LEFT Player: ";
1500 GOSUB 1810
1510 X1 = C1
1520 Y1 = H1 + R2
1530 C4 = C3
1540 C5 = (C4) + R2
1550 H4 = H3 + R2
1560 GOSUB 1940
1570 IF F9 = 0 then 1660
1580 REM
1600 at 0, 0: PRINT "                                      ";
1610 at 0, 0:color 0: PRINT "O T R O   J U E G I T O?( S / N )?";
1615 T$ = INKEY$: IF T$ = "" THEN GOTO 1615
1620 IF T$ = "s" THEN 210
1630 CLS
1640 END
1660 '' NOW DO THE RIGHT SIDE
1680 color 12:at 50, 0: PRINT "                 RIGHT Player:"; 
1700 GOSUB 1810
1710 X1 = C3
1720 Y1 = H3 + R2
1730 C4 = C1
1740 C5 = C4 - R2
1750 H4 = H1 + R2
1760 V1 = -V1
1770 GOSUB 1940
1780 IF F9 = 0 THEN 1450
1790 GOTO 1580
1810 '' INPUT ANGLE, VELOCITY
1840 gosub 4000:A=va1:V=va2
1850 if a<10 then 210
1890 V = V * F2
1900 A = A * 3.14159265 / 180
1910 V1 = V * COS(A)
1920 V2 = V * SIN(A)
1930 RETURN
1940 F9 = 0
1950 PSET XX * X1, LY - YY * Y1 color 15
1960 V1 = V1 - K9 * (V1 - Q8) * D / 2
1970 V2 = V2 - (K9 * V2 + 1) * D / 2
1980 X1 = (X1 + V1 * D)
1990 T1 = XX * X1
2000 IF T1 > LX THEN T1 = LX
2010 IF T1 < 0 THEN T1 = 0
2020 Y1 = (Y1 + V2 * D)
2030 U1 = LY - YY * Y1
2040 IF U1 > LY THEN U1 = LY
2050 IF U1 < 0 THEN U1 = 0
2060 LINE T1, U1
2070 S5 = SGN(X1 - C5)
2080 IF S5 <> S7 THEN 2230
2090 IF X1 < 0 THEN 2290
2100 IF X1 > 10 THEN 2290
2110 IF Y1 < H2 THEN 2160
2120 IF Y1 > 15 THEN 2290
2130 V1 = V1 - K9 * (V1 - Q8) * D
2140 V2 = V2 - (K9 * V2 + 1) * D
2150 GOTO 1980
2160 X2 = X1 - C1
2170 X3 = X1 - C2
2180 Y5 = A1 / (B1 + X2 * X2) + A2 / (B2 + X3 * X3)
2190 X4 = X1 - C3
2200 Y5 = Y5 + A3 / (B3 + X4 * X4) - H9
2210 IF Y1 > Y5 THEN 2130
2220 IF ABS(X1 - C4) > 1 THEN 2290
2230 IF ABS((X1 - C4) * V2 - (Y1 - H4) * V1) < R2 * (ABS(V1) + ABS(V2)) THEN 2270
2240 IF S5 = S7 THEN 2290
2250 S7 = S5
2260 GOTO 2160
2270 GOSUB 2390
2280 F9 = 1
2290 X1 = 10
2300 Y1 = 7
2310 RETURN
2320 STOP
2330 '' plot casitas
2340 ''
2350 Q1 = ABS(X1): Q2 = ABS(Y1)
2355 rect XX * X1 - 3, LY - YY * Y1 - 6,XX * X1 + 3, LY - YY * Y1 filled
2356 return
2390 R4 = 1 / 4
2400 X0 = C4
2410 X1 = X0 - R / XX
2420 Y1 = H4: Y0 = H4
2430 X1 = ABS(X1)
2440 PSET XX * X1, LY - YY * Y1 color 15
2445 SOUND 2000, 8: SOUND 4000, 8: SOUND 1, 2: SOUND 2000, 8: SOUND 4000, 8: SOUND 1, 2: SOUND 2000, 8: SOUND 4000, 8
2450 FOR I = 1 TO 12
2460 R8 = RND / 4 + .5 + R4
2470 X1 = (X0 - R8 * C(I))
2480 Y1 = Y0 + R8 * S(I)
2490 LINE XX * X1, LY - YY * Y1
2500 R4 = -R4
2510 NEXT I
2520 BEEP
2530 RETURN
2540 ''
2550 ''  CHECK FOR LIST REQUEST
2560 ''
2570 LOCATE 0, 0: PRINT "   E R R O R . . ."; 
2580 GOTO 1810
3600 ''SUBROUTINE TO GENERATE A RANDOM NUMBER BETWEEN L1 AND L2
3620 VA = INT(L2 * RND)
3630 IF VA < L1 THEN 3620
3650 RETURN


4000 REM deteccion de pen
4010 z$=inkey$
4012 if z$<>"" then 4050
4015 if not pen(0) then 4010
4020 va1=pen(4):va2=pen(5)
4025 va1=int(va1/1.6):va2=int(va2*3.5)
4030 at 1,1:? va1;" ";va2;"    "
4040 goto 4010
4050 return
'
