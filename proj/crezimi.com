
//M(rezimi/$89272////300,100,200,200)
;FB271 i FB272 jun 2019
;FB282 novembar 2019

def debug1 = (i/1,90/1/,$89515////250/405,,50//"pomoc.html","9006")

DEF Vnaslov = (R4///,$89507/WR1,///175),
Gnaslov = (R4///,$89508/WR1,///270),
Fnaslov = (R4///,$89509/WR1,///365),
Znaslov = (R4///,$89510/WR1,///440)

DEF DOD3 = (R4/,//$89208,$89005////5,42,155/160,42,80//"pomoc.html","9218"),
DOD2 = (R4/,//$89210/////250,42,80//"pomoc.html","9218"),
DOD1 = (R4/,//$89212/////340,42,80//"pomoc.html","9218"),
DOD0 = (R4/,//$89212,,,$89068/////430,42,120//"pomoc.html","9218")

DEF BROJOB3 = (R1/0,600//$89106,$89106,,/LI3///5,61,155/160,61,80//"pomoc.html","9014"),
BROJOB2 = (R1/0,600//$89106,,,/LI3////250,61,80//"pomoc.html","9014"),
BROJOB1 = (R1/0,600//$89106,,,/LI3////340,61,80//"pomoc.html","9014"),
BROJOB0 = (R1/0,600//$89106,,,$89069/LI3////430,61,120//"pomoc.html","9014")

DEF BRZU3 = (R3/,//$89214,$89219////5,80,155/160,80,80//"pomoc.html","9219"),
BRZU2 = (R3/,//$89218/////250,80,80//"pomoc.html","9219"),
BRZU1 = (R3/,//$89120/////340,80,80//"pomoc.html","9219"),
BRZU0 = (R3/,//$89120,,,$89070/////430,80,120//"pomoc.html","9219")

DEF KORAK3 = (R3/,//$89008,$89008/WR1///5,99,155/160,99,80//"pomoc.html","9220"),
KORAK2 = (R3/,//$89008/////250,99,80//"pomoc.html","9220"),
KORAK1 = (R3/,//$89008/////340,99,80//"pomoc.html","9220"),
KORAK0 = (R3/,//$89008,,,$89068/////430,99,120//"pomoc.html","9220")

DEF BRZO3 = (R3/,//$89210,$89009/WR1///5,118,155/160,118,80//"pomoc.html","9221"),
BRZO2 = (R3/,//$89210/////250,118,80//"pomoc.html","9221"),
BRZO1 = (R3/,//$89110/////340,118,80//"pomoc.html","9221"),
BRZO0 = (R3/,//$89110,,,$89070/////430,118,120//"pomoc.html","9221")

DEF IZBR3 = (r1/,//$89222,$89223/WR1///5,137,155/160,137,80//"pomoc.html","9222"),
IZBR2 = (r1/,//$89222/////250,137,80//"pomoc.html","9222"),
IZBR1 = (r1/,//$89222/////340,137,80//"pomoc.html","9222"),
IZBR0 = (r1/,//$89222,,,$89071/////430,137,120//"pomoc.html","9222")

DEF BROB3 = (r2/,//$89222,$89282/wr1///5,156,155/160,156,80//"pomoc.html","9235"),
BROB2 = (r2/,//$89222/wr2////250,156,80//"pomoc.html","9235"),
BROB1 = (r2/,//$89222/wr2////340,156,80//"pomoc.html","9235"),
BROB0 = (r/,//$89222,,,$89068/wr2////430,156,120//"pomoc.html","9235")

DEF ZADR13 = (r1/,//$89119,$89119/wr1///5,175,155/160,175,80//"pomoc.html","9225"),
ZADR12 = (r1/,//$89119/wr2////250,175,80//"pomoc.html","9225"),
ZADR11 = (r1/,//$89119/wr2////340,175,80//"pomoc.html","9225"),
ZADR10 = (r1/,//$89119,,,$89071/wr2////430,175,120//"pomoc.html","9225")

DEF ZADR23 = (r1/,//$89120,$89120/wr1///5,194,155/160,194,80//"pomoc.html","9225"),
ZADR22 = (r1/,//$89120/wr2////250,194,80//"pomoc.html","9225"),
ZADR21 = (r1/,//$89120/wr2////340,194,80//"pomoc.html","9225"),
ZADR20 = (r1/,//$89120,,,$89071/wr2////430,194,120//"pomoc.html","9225")
DEF kor_abriht3 = (r3/,//$89222,$89199/WR1///5,213,155/160,213,80//"pomoc.html","9222"),
kor_abriht2 = (R3/,//$89222/////250,213,80//"pomoc.html","9222"),
kor_abriht1 = (R3/,//$89222/////340,213,80//"pomoc.html","9222"),
kor_abriht0 = (R3/,//$89222,,,$89068/////430,213,120//"pomoc.html","9222")

DEF Br_abriht3 = (I/0,90//$89222,$89151/WR1///5,232,155/160,232,80//"pomoc.html","9222"),
Br_abriht2 = (I/0,90//$89222/////250,232,80//"pomoc.html","9222"),
Br_abriht1 = (I/0,90//$89222/////340,232,80//"pomoc.html","9222"),
Br_abriht0 = (I/0,90//$89222,,,"-"/////430,232,120//"pomoc.html","9222")

DEF PRIMICANJE3 = (I///$89122,$89159/wr1///5,251,155/160,251,80//"pomoc.html","9226"),
PRIMICANJE2 = (I/*0=$89156,1=$89157,-1=$89158//$89122////5/250,251,80//"pomoc.html","9226"),
PRIMICANJE1 = (I/*0=$89156,1=$89157,-1=$89158//$89122////5/340,251,80//"pomoc.html","9226"),
PRIMICANJE0 = (I/*0=$89156,1=$89157,-1=$89158//$89122////5/430,251,80//"pomoc.html","9226")

DEF OSCILA3 = (R3/,//$89114,$89104/LI3,wr1///5,270,155/160,270,80//"pomoc.html","9224"),
OSCILA2 = (R3/,//$89114////5/250,270,80//"pomoc.html","9224"),
OSCILA1 = (R3/,//$89114////5/340,270,80//"pomoc.html","9224"),
OSCILA0 = (R3/,//$89114,,,$89068////5/430,270,120//"pomoc.html","9224")

DEF PRAZNA_1 = (V////WR0,), GRUBO_PLUS = (R4/-10,10//,$89508,"+",$89068/wr2///,291,/,291,)

DEF ODSKOK = (I/*0=$89526,1=$89527,2=$89528,-1=$89320,-2=$89321, -3=$89322//,$89529,,/WR2///5,291,110/125,291,140//"pomoc.html","9015"),
BROJMER_DODATAK = (I///,$89525,"x",$89067/wr2///,310,/,310,)

DEF PRECODSKOK = (R1/,//,$89530,"",$89068/LI3,WR2///5,310,110/125,310,140//"pomoc.html","9016"),
BROJMERZ_DODATAK = (I///,,"z",$89067/wr2///,329,/,329,)

;DEF PRILAZ = (I/*0=$89303, 1=$89304//,$89302,,/WR2///5,329,140/125,329,140//"pomoc.html","9015")
;IZMENA 22/Feb/2019 11:36
DEF PRILAZ = (I/*0=$89304, 1=$89303//,$89302,,/WR1///5,329,140/125,329,140//"pomoc.html","9015") ;IZMENA 23.okt.2019

;IZMENA 15.maj.2019 10:10
DEF PROGRAM = (S///,$89300/wr4///5,350,110/115,350,150), KorProf = (I///,$89301,,"%"/wr4///,,/,,)
;DEF KorProf = (I///,$89301,,"%"/wr4///285,310,160/450,310,100)

DEF KOMENT = (S///,$89569,////5,350,90/95,350,445//"pomoc.html","9017")
DEF NACIN=(IDD////WR4)
DEF MAKSBROJ=(IDD////WR4//"MAXBRUSBROJ")
DEF COFF = (R4///,$89448,,$89068/WR4//"$P_UIFR[4,1,TR]")
DEF CMAS = (R4///,,,$89068/WR4//"$AA_IM[1]"//425)
DEF KORDSYS = (I///,"KORD"/WR4)
DEF TOCILO = (I///,$89532/WR4)

;IZMENA 23.avg.2019 12:52
DEF Glava = (I/*OffONNiz//,$89140,,"0/1"/wr4///250,,140/425,,130//"pomoc.html","9018")
 
DEF CDOD3 = (R4////WR4),
CDOD2 = (R4////WR4),
CDOD1 = (R4////WR4),
CDOD0 = (R4////WR4)

DEF CBRZU3 = (R3////WR4),
CBRZU2 = (R3////WR4),
CBRZU1 = (R3////WR4),
CBRZU0 = (R3////WR4)

DEF CKORAK3 = (R3////WR4),
CKORAK2 = (R3////WR4),
CKORAK1 = (R3////WR4),
CKORAK0 = (R3////WR4)

DEF CBRZO3 = (R3////WR4),
CBRZO2 = (R3////WR4),
CBRZO1 = (R3////WR4),
CBRZO0 = (R3////WR4)

DEF CIZBR3 = (IDD////Wr4),
CIZBR2 = (IDD////WR4),
CIZBR1 = (IDD////WR4),
CIZBR0 = (IDD////WR4)

DEF CZADR13 = (R1////WR4)
DEF CZADR12 = (R1////WR4)
DEF CZADR11 = (R1////WR4)
DEF CZADR10 = (R1////WR4)

DEF CZADR23 = (R1////WR4)
DEF CZADR22 = (R1////WR4)
DEF CZADR21 = (R1////WR4)
DEF CZADR20 = (R1////WR4)

DEF COSCILA3 = (R1////WR4)
DEF COSCILA2 = (R1////WR4)
DEF COSCILA1 = (R1////WR4)
DEF COSCILA0 = (R1////WR4)

DEF Ckor_abriht3 = (R3////WR4)
DEF Ckor_abriht2 = (R3////WR4)
DEF Ckor_abriht1 = (R3////WR4)
DEF Ckor_abriht0 = (R3////WR4)

DEF CBr_abriht3 = (I////WR4)
DEF CBr_abriht2 = (I////WR4)
DEF CBr_abriht1 = (I////WR4)
DEF CBr_abriht0 = (I////WR4)

DEF CPRIMICANJE3 = (I////WR4)
DEF CPRIMICANJE2 = (I////WR4)
DEF CPRIMICANJE1 = (I////WR4)
DEF CPRIMICANJE0 = (I////WR4)

DEF CBROB3 = (r2////wr4)
DEF CBROB2 = (r2////wr4)
DEF CBROB1 = (r2////wr4)
DEF CBROB0 = (r2////wr4)

DEF CBROJOB3 = (R1////WR4)
DEF CBROJOB2 = (R1////WR4)
DEF CBROJOB1 = (R1////WR4)
DEF CBROJOB0 = (R1////WR4)

DEF CODSKOK=(I////WR4)
DEF CPRECODSKOK=(I////WR4)
DEF CPRILAZ=(I////WR4)
DEF CPROGRAM=(S////WR4)
DEF CKORPROF=(I////WR4)

DEF _ZLJEB_SIRINA = (R4/,//$89573,$89573,,$89068/LI3,WR4///280,,140/425,,120//"pomoc.html","9013")
;DEF SMER = (I/* 0=$89191,1=$89192//,$89198,,/wr4///280,,120/405,,130)


VS1=($89531,,se1)
VS2=($89512,,se1)
VS3=("",,se2)
VS4=("COPY",,se1)
VS5=("PASTE",,se1)
VS6=("",,se2)
VS7=("",,se2)
HS1=($89385,,se1)
HS2=("",,se2)
HS3=($89584,,se3)
HS4=("",,se2)
HS5=($89585,,se2) ;IZMENA 23.okt.2019
HS6=("",,se2)
HS7=($89586,,se2) ;IZMENA 23.okt.2019
HS8=("",,se2)

PRESS(vS2)
   if(DEBUG1<=1)
     DEBUG1=MAKSBROJ
   else
     DEBUG1=DEBUG1-1
   endif
   CALL("UPIS")
   LM("rezimi","crezimi.com")
END_PRESS

PRESS(vS1)
   if(DEBUG1>=MAKSBROJ)
     DEBUG1=1
   else
     DEBUG1=DEBUG1+1
   endif
   CALL("UPIS")
   LM("rezimi","crezimi.com")
END_PRESS

PRESS(VS4)

   CDOD3 = DOD3
   CDOD2 = DOD2
   CDOD1 = DOD1
   CDOD0 = DOD0
   CBRZU3 = BRZU3
   CBRZU2 = BRZU2
   CBRZU1 = BRZU1
   CBRZU0 = BRZU0
   CKORAK3 = KORAK3
   CKORAK2 = KORAK2
   CKORAK1 = KORAK1
   CKORAK0 = KORAK0
   CBRZO3 = BRZO3
   CBRZO2 = BRZO2
   CBRZO1 = BRZO1
   CBRZO0 = BRZO0
   CIZBR3 = IZBR3
   CIZBR2 = IZBR2
   CIZBR1 = IZBR1
   CIZBR0 = IZBR0
   CZADR13 = ZADR13
   CZADR12 = ZADR12
   CZADR11 = ZADR11
   CZADR10 = ZADR10
   CZADR23 = ZADR23
   CZADR22 = ZADR22
   CZADR21 = ZADR21
   CZADR20 = ZADR20
   COSCILA3 = OSCILA3
   COSCILA2 = OSCILA2
   COSCILA1 = OSCILA1
   COSCILA0 = OSCILA0
   CPRIMICANJE3 = PRIMICANJE3
   CPRIMICANJE2 = PRIMICANJE2
   CPRIMICANJE1 = PRIMICANJE1
   CPRIMICANJE0 = PRIMICANJE0
   CBROB3 = BROB3
   CBROB2 = BROB2
   CBROB1 = BROB1
   CBROB0 = BROB0
   CBROJOB3=BROJOB3
   CBROJOB2=BROJOB2
   CBROJOB1=BROJOB1
   CBROJOB0=BROJOB0
   CODSKOK=ODSKOK
   CPRECODSKOK=PRECODSKOK
   CPRILAZ = PRILAZ
   CKORPROF = KORPROF
   CPROGRAM = PROGRAM

   Ckor_abriht3 = kor_abriht3
   Ckor_abriht2 = kor_abriht2
   Ckor_abriht1 = kor_abriht1
   Ckor_abriht0 = kor_abriht0

   CBr_abriht3=Br_abriht3
   CBr_abriht2=Br_abriht2
   CBr_abriht1=Br_abriht1
   CBr_abriht0=Br_abriht0

;IZMENA 16.apr.2019 9.06
;=======================
   WNP("KOPIRAJ_REAL[0]", DOD3)
   WNP("KOPIRAJ_REAL[1]", DOD2)
   WNP("KOPIRAJ_REAL[2]", DOD1)
   WNP("KOPIRAJ_REAL[3]", DOD0)
   WNP("KOPIRAJ_REAL[4]", BRZU3)
   WNP("KOPIRAJ_REAL[5]", BRZU2)
   WNP("KOPIRAJ_REAL[6]", BRZU1)
   WNP("KOPIRAJ_REAL[7]", BRZU0)
   WNP("KOPIRAJ_REAL[8]", KORAK3)
   WNP("KOPIRAJ_REAL[9]", KORAK2)
   WNP("KOPIRAJ_REAL[10]", KORAK1)
   WNP("KOPIRAJ_REAL[11]", KORAK0)
   WNP("KOPIRAJ_REAL[12]", BRZO3)
   WNP("KOPIRAJ_REAL[13]", BRZO2)
   WNP("KOPIRAJ_REAL[14]", BRZO1)
   WNP("KOPIRAJ_REAL[15]", BRZO0)
   WNP("KOPIRAJ_REAL[16]", IZBR3)
   WNP("KOPIRAJ_REAL[17]", IZBR2)
   WNP("KOPIRAJ_REAL[18]", IZBR1)
   WNP("KOPIRAJ_REAL[19]", IZBR0)
   WNP("KOPIRAJ_REAL[20]", ZADR13)
   WNP("KOPIRAJ_REAL[21]", ZADR12)
   WNP("KOPIRAJ_REAL[22]", ZADR11)
   WNP("KOPIRAJ_REAL[23]", ZADR10)
   WNP("KOPIRAJ_REAL[24]", ZADR23)
   WNP("KOPIRAJ_REAL[25]", ZADR22)
   WNP("KOPIRAJ_REAL[26]", ZADR21)
   WNP("KOPIRAJ_REAL[27]", ZADR20)
   WNP("KOPIRAJ_REAL[28]", OSCILA3)
   WNP("KOPIRAJ_REAL[29]", OSCILA2)
   WNP("KOPIRAJ_REAL[30]", OSCILA1)
   WNP("KOPIRAJ_REAL[31]", OSCILA0)
   WNP("KOPIRAJ_REAL[32]", BROB3)
   WNP("KOPIRAJ_REAL[33]", BROB2)
   WNP("KOPIRAJ_REAL[34]", BROB1)
   WNP("KOPIRAJ_REAL[35]", BROB0)
   WNP("KOPIRAJ_REAL[36]", BROJOB3)
   WNP("KOPIRAJ_REAL[37]", BROJOB2)
   WNP("KOPIRAJ_REAL[38]", BROJOB1)
   WNP("KOPIRAJ_REAL[39]", BROJOB0)
   WNP("KOPIRAJ_REAL[40]", kor_abriht3)
   WNP("KOPIRAJ_REAL[41]", kor_abriht2)
   WNP("KOPIRAJ_REAL[42]", kor_abriht1)
   WNP("KOPIRAJ_REAL[43]", kor_abriht0)
   WNP("KOPIRAJ_REAL[44]", GRUBO_PLUS)
   

   WNP("KOPIRAJ_INT[0]", Br_abriht3)
   WNP("KOPIRAJ_INT[1]", Br_abriht2)
   WNP("KOPIRAJ_INT[2]", Br_abriht1)
   WNP("KOPIRAJ_INT[3]", Br_abriht0)
   WNP("KOPIRAJ_INT[4]", PRILAZ)
   WNP("KOPIRAJ_INT[5]", ODSKOK)
   WNP("KOPIRAJ_INT[6]", PRIMICANJE3)
   WNP("KOPIRAJ_INT[7]", PRIMICANJE2)
   WNP("KOPIRAJ_INT[8]", PRIMICANJE1)
   WNP("KOPIRAJ_INT[9]", PRIMICANJE0)
   WNP("KOPIRAJ_INT[10]", PRECODSKOK)
   WNP("KOPIRAJ_INT[11]",  KORPROF)
   WNP("KOPIRAJ_INT[12]", BROJMER_DODATAK)
   WNP("KOPIRAJ_INT[13]",  BROJMERZ_DODATAK)

   WNP("KOPIRAJ_STRING[0]", PROGRAM)

END_PRESS

PRESS(VS5)
   DOD3 = CDOD3 
   DOD2 = CDOD2 
   DOD1 = CDOD1 
   DOD0 = CDOD0 
   BRZU3 = CBRZU3 
   BRZU2 = CBRZU2 
   BRZU1 = CBRZU1 
   BRZU0 = CBRZU0 
   KORAK3 = CKORAK3 
   KORAK2 = CKORAK2 
   KORAK1 = CKORAK1 
   KORAK0 = CKORAK0 
   BRZO3 = CBRZO3 
   BRZO2 = CBRZO2 
   BRZO1 = CBRZO1 
    BRZO0 = CBRZO0 
    IZBR3 = CIZBR3 
    IZBR2 = CIZBR2 
    IZBR1 = CIZBR1 
    IZBR0 = CIZBR0 
   ZADR13 = CZADR13
   ZADR12 = CZADR12
   ZADR11 = CZADR11
   ZADR10 = CZADR10
   ZADR23 = CZADR23
   ZADR22 = CZADR22
   ZADR21 = CZADR21
   ZADR20 = CZADR20
   OSCILA3 = COSCILA3
   OSCILA2 = COSCILA2
   OSCILA1 = COSCILA1
   OSCILA0 = COSCILA0
   PRIMICANJE3 = CPRIMICANJE3
   PRIMICANJE2 = CPRIMICANJE2
   PRIMICANJE1 = CPRIMICANJE1
   PRIMICANJE0 = CPRIMICANJE0
   BROB3 = CBROB3
   BROB2 = CBROB2
   BROB1 = CBROB1
   BROB0 = CBROB0
   BROJOB3 = CBROJOB3
   BROJOB2 = CBROJOB2
   BROJOB1 = CBROJOB1
   BROJOB0 = CBROJOB0
   ODSKOK=CODSKOK
   PRECODSKOK=CPRECODSKOK
   PRILAZ = CPRILAZ
   KORPROF = CKORPROF
   PROGRAM = CPROGRAM

   kor_abriht3 = ckor_abriht3
   kor_abriht2 = ckor_abriht2
   kor_abriht1 = ckor_abriht1
   kor_abriht0 = ckor_abriht0
   
   Br_abriht3=CBr_abriht3
   Br_abriht2=CBr_abriht2
   Br_abriht1=CBr_abriht1
   Br_abriht0=CBr_abriht0
   
;IZMENA 16.apr.2019 9.06
;=======================
   DOD3=RNP("KOPIRAJ_REAL[0]")
   DOD2=RNP("KOPIRAJ_REAL[1]")
   DOD1=RNP("KOPIRAJ_REAL[2]")
   DOD0=RNP("KOPIRAJ_REAL[3]")
   BRZU3=RNP("KOPIRAJ_REAL[4]")
   BRZU2=RNP("KOPIRAJ_REAL[5]")
   BRZU1=RNP("KOPIRAJ_REAL[6]")
   BRZU0=RNP("KOPIRAJ_REAL[7]")
   KORAK3=RNP("KOPIRAJ_REAL[8]")
   KORAK2=RNP("KOPIRAJ_REAL[9]")
   KORAK1=RNP("KOPIRAJ_REAL[10]")
   KORAK0=RNP("KOPIRAJ_REAL[11]")
   BRZO3=RNP("KOPIRAJ_REAL[12]")
   BRZO2=RNP("KOPIRAJ_REAL[13]")
   BRZO1=RNP("KOPIRAJ_REAL[14]")
   BRZO0=RNP("KOPIRAJ_REAL[15]")
   IZBR3=RNP("KOPIRAJ_REAL[16]")
   IZBR2=RNP("KOPIRAJ_REAL[17]")
   IZBR1=RNP("KOPIRAJ_REAL[18]")
   IZBR0=RNP("KOPIRAJ_REAL[19]")
   ZADR13=RNP("KOPIRAJ_REAL[20]")
   ZADR12=RNP("KOPIRAJ_REAL[21]")
   ZADR11=RNP("KOPIRAJ_REAL[22]")
   ZADR10=RNP("KOPIRAJ_REAL[23]")
   ZADR23=RNP("KOPIRAJ_REAL[24]")
   ZADR22=RNP("KOPIRAJ_REAL[25]")
   ZADR21=RNP("KOPIRAJ_REAL[26]")
   ZADR20=RNP("KOPIRAJ_REAL[27]")
   OSCILA3=RNP("KOPIRAJ_REAL[28]")
   OSCILA2=RNP("KOPIRAJ_REAL[29]")
   OSCILA1=RNP("KOPIRAJ_REAL[30]")
   OSCILA0=RNP("KOPIRAJ_REAL[31]")
   BROB3=RNP("KOPIRAJ_REAL[32]")
   BROB2=RNP("KOPIRAJ_REAL[33]")
   BROB1=RNP("KOPIRAJ_REAL[34]")
   BROB0=RNP("KOPIRAJ_REAL[35]")
   BROJOB3=RNP("KOPIRAJ_REAL[36]")
   BROJOB2=RNP("KOPIRAJ_REAL[37]")
   BROJOB1=RNP("KOPIRAJ_REAL[38]")
   BROJOB0=RNP("KOPIRAJ_REAL[39]")
   kor_abriht3=RNP("KOPIRAJ_REAL[40]")
   kor_abriht2=RNP("KOPIRAJ_REAL[41]")
   kor_abriht1=RNP("KOPIRAJ_REAL[42]")
   kor_abriht0=RNP("KOPIRAJ_REAL[43]")
   GRUBO_PLUS=RNP("KOPIRAJ_REAL[44]")

   Br_abriht3=RNP("KOPIRAJ_INT[0]")
   Br_abriht2=RNP("KOPIRAJ_INT[1]")
   Br_abriht1=RNP("KOPIRAJ_INT[2]")
   Br_abriht0=RNP("KOPIRAJ_INT[3]")
   PRILAZ=RNP("KOPIRAJ_INT[4]")
   ODSKOK=RNP("KOPIRAJ_INT[5]")
   PRIMICANJE3=RNP("KOPIRAJ_INT[6]")
   PRIMICANJE2=RNP("KOPIRAJ_INT[7]")
   PRIMICANJE1=RNP("KOPIRAJ_INT[8]")
   PRIMICANJE0=RNP("KOPIRAJ_INT[9]")
   PRECODSKOK=RNP("KOPIRAJ_INT[10]")
   KORPROF=RNP("KOPIRAJ_INT[11]")

   BROJMER_DODATAK=RNP("KOPIRAJ_INT[12]")
   BROJMERZ_DODATAK=RNP("KOPIRAJ_INT[13]")
   
   PROGRAM=RNP("KOPIRAJ_STRING[0]")
   
END_PRESS

PRESS(HS1)
  LM("BRUSEnje","cBRUsEnje.com")
END_PRESS

PRESS(HS3)
  LM("rezimi","crezimi.com")
END_PRESS

PRESS(HS5)
  LM("navoj","cnavoj.com")
END_PRESS

PRESS(HS5)
  LM("navoj","cnavoj.com")
END_PRESS

PRESS(HS7)
  LM("mernaglava","cglava.com")
END_PRESS

CHANGE(DEBUG1)
   CALL("UPIS")
END_CHANGE

CHANGE(OSCILA0)

   REG[11]=DEBUG1-1

   IF NACIN==700

      WNP("ZLJEB_SIRINA["<<reg[11]<<"]",OSCILA0.VAL)

      ;IF RNP("BRUSSMER["<<REG[11]<<"]")==0
         ;OSCILA2.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      ;ELSE
         ;OSCILA2.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = -1*_ZLJEB_SIRINA.VAL
      ;ENDIF
      
      OSCILA2.VAL = _ZLJEB_SIRINA.VAL
      OSCILA1.VAL = _ZLJEB_SIRINA.VAL
      OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      
   ELSE
      OSCILA2.VAR = "OSCA["<<reg[11]<<",2]"
      OSCILA1.VAR = "OSCA["<<reg[11]<<",1]"
      OSCILA0.VAR = "OSCA["<<reg[11]<<",0]"
   ENDIF

   CALL("UPIS")
   
END_CHANGE

CHANGE(OSCILA1)

   REG[11]=DEBUG1-1

   IF NACIN==700

      WNP("ZLJEB_SIRINA["<<reg[11]<<"]",OSCILA1.VAL)

      ;IF RNP("BRUSSMER["<<REG[11]<<"]")==0
         ;OSCILA2.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      ;ELSE
         ;OSCILA2.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = -1*_ZLJEB_SIRINA.VAL
      ;ENDIF
      
      OSCILA2.VAL = _ZLJEB_SIRINA.VAL
      OSCILA1.VAL = _ZLJEB_SIRINA.VAL
      OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      
   ELSE
      OSCILA2.VAR = "OSCA["<<reg[11]<<",2]"
      OSCILA1.VAR = "OSCA["<<reg[11]<<",1]"
      OSCILA0.VAR = "OSCA["<<reg[11]<<",0]"
   ENDIF

   CALL("UPIS")
   
END_CHANGE

CHANGE(OSCILA2)

   REG[11]=DEBUG1-1

   IF NACIN==700

      WNP("ZLJEB_SIRINA["<<reg[11]<<"]",OSCILA2.VAL)

      ;IF RNP("BRUSSMER["<<REG[11]<<"]")==0
         ;OSCILA2.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      ;ELSE
         ;OSCILA2.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = -1*_ZLJEB_SIRINA.VAL
      ;ENDIF
      
      OSCILA2.VAL = _ZLJEB_SIRINA.VAL
      OSCILA1.VAL = _ZLJEB_SIRINA.VAL
      OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      
   ELSE
      OSCILA2.VAR = "OSCA["<<reg[11]<<",2]"
      OSCILA1.VAR = "OSCA["<<reg[11]<<",1]"
      OSCILA0.VAR = "OSCA["<<reg[11]<<",0]"
   ENDIF

   CALL("UPIS")

END_CHANGE

LOAD
   DEBUG1=REG[11]+1
   LB("PROG1")

   CALL("UPIS")
   LA("OffOnNiz","cnizovi.com")

   line(10,22,550,22,7,1)
   line(10,41,550,41,7,1)
   line(10,289,550,289,7,1)
   line(10,349,550,349,7,1)
   line(280,289,280,349,7,1)

END_LOAD

//END

//B(PROG1)

SUB(UPIS)
   REG[11]=DEBUG1-1
   hd=$89201<<"-"<<REG[11]+1
   
   ;=============================      
      ;IZMENA 23.okt.2019   
      WNP("prilaz_brus["<<reg[11]<<"]",0)
      WNP("GLAVA["<<REG[11]<<"]",0)
      
      ;WNP("MER_DODATAK_PLUS["<<reg[11]<<"]",0)
      ;WNP("MER_DODATAK["<<reg[11]<<"]",0)
      ;WNP("MER_DODATAK_Z["<<reg[11]<<"]",0)
   ;=============================
   
   DOD3.VAR = "DODB["<<REG[11]<<",3]"
   DOD2.VAR = "DODB["<<REG[11]<<",2]"
   DOD1.VAR = "DODB["<<REG[11]<<",1]"
   DOD0.VAR = "DODB["<<REG[11]<<",0]"

   BRZU3.VAR = "BRZU["<<REG[11]<<",3]"
   BRZU2.VAR = "BRZU["<<REG[11]<<",2]"
   BRZU1.VAR = "BRZU["<<REG[11]<<",1]"
   BRZU0.VAR = "BRZU["<<REG[11]<<",0]"

   KORAK2.VAR = "KORAK["<<REG[11]<<",2]"
   KORAK1.VAR = "KORAK["<<REG[11]<<",1]"
   KORAK0.VAR = "KORAK["<<REG[11]<<",0]"

   ;BRZO3.VAR = "BRZO["<<REG[11]<<",3]"
   BRZO2.VAR = "BRZO["<<REG[11]<<",2]"
   BRZO1.VAR = "BRZO["<<REG[11]<<",1]"
   BRZO0.VAR = "BRZO["<<REG[11]<<",0]"

   ;IZBR3.VAR = "IZBR["<<REG[11]<<",3]"
   IZBR2.VAR = "IZBR["<<REG[11]<<",2]"
   IZBR1.VAR = "IZBR["<<REG[11]<<",1]"
   IZBR0.VAR = "IZBR["<<REG[11]<<",0]"

   ;BROB3.VAR = "BROB_N["<<REG[11]<<",3]"
   BROB2.VAR = "BROB_N["<<REG[11]<<",2]"
   BROB1.VAR = "BROB_N["<<REG[11]<<",1]"
   BROB0.VAR = "BROB_N["<<REG[11]<<",0]"

   ;ZADR13.VAR = "ZADR["<<reg[11]<<",6]"
   ZADR12.VAR = "ZADR["<<reg[11]<<",5]"
   ZADR11.VAR = "ZADR["<<reg[11]<<",3]"
   ZADR10.VAR = "ZADR["<<reg[11]<<",1]"

   ;ZADR23.VAR = "ZADR["<<reg[11]<<",7]"
   ZADR22.VAR = "ZADR["<<reg[11]<<",4]"
   ZADR21.VAR = "ZADR["<<reg[11]<<",2]"
   ZADR20.VAR = "ZADR["<<reg[11]<<",0]"

   ;PRIMICANJE3.VAR = "PRIM["<<reg[11]<<",3]"
   PRIMICANJE2.VAR = "PRIM["<<reg[11]<<",2]"
   PRIMICANJE1.VAR = "PRIM["<<reg[11]<<",1]"
   PRIMICANJE0.VAR = "PRIM["<<reg[11]<<",0]"

   KOMENT.VAR = "KOMENTAR["<<REG[11]<<"]"
   NACIN.VAR = "BRUS["<<reg[11]<<"]"
   
   ;IZMENA 23.avg.2019 13:13
   GLAVA.VAR =  "GLAVA["<<REG[11]<<"]"
        
   ;OSCILA3.VAR = "OSCA["<<reg[11]<<",3]"

   ;kor_abriht3.VAR = "KOR_ABRIHT["<<reg[11]<<",3]"
   kor_abriht2.VAR = "KOR_ABRIHT["<<reg[11]<<",2]"
   kor_abriht1.VAR = "KOR_ABRIHT["<<reg[11]<<",1]"
   kor_abriht0.VAR = "KOR_ABRIHT["<<reg[11]<<",0]"

   Br_abriht2.VAR = "ABRIHT["<<reg[11]<<",2]"
   Br_abriht1.VAR = "ABRIHT["<<reg[11]<<",1]"
   Br_abriht0.VAR = "ABRIHT["<<reg[11]<<",0]"

   BROJOB3.VAR="BROB["<<reg[11]<<",3]"
   BROJOB2.VAR="BROB["<<reg[11]<<",2]"
   BROJOB1.VAR="BROB["<<reg[11]<<",1]"
   BROJOB0.VAR="BROB["<<reg[11]<<",0]"
   TOCILO.VAR = "TOCILO["<<reg[11]<<"]"
   KORDSYS.VAr="KORDSYS["<<TOCILO.VAL<<"]"

   odskok.var= "odskok_skroz["<<reg[11]<<"]"
   precodskok.var= "odskok_brus["<<reg[11]<<"]"

   prilaz.var = "prilaz_brus["<<reg[11]<<"]"

   korprof.var = "korprof["<<reg[11]<<"]"
   program.var = "tabprof["<<reg[11]<<"]"
   
   ;SMER.VAR =  "BRUSSMER["<<REG[11]<<"]"

   ;IZMENA 17.apr.2019 13.13
   BROJMER_DODATAK.VAR = "MER_DODATAK["<<reg[11]<<"]"
   BROJMERZ_DODATAK.VAR = "MER_DODATAK_Z["<<reg[11]<<"]"
   GRUBO_PLUS.VAR = "MER_DODATAK_PLUS["<<reg[11]<<"]"

   ;IZMENA 30/Mar/2019 7:31
   IF NACIN==700
      _ZLJEB_SIRINA.VAR = "ZLJEB_SIRINA["<<reg[11]<<"]"
      ;IF RNP("BRUSSMER["<<REG[11]<<"]")==0
         ;OSCILA2.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = _ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = _ZLJEB_SIRINA.VAL
      ;ELSE
         ;OSCILA2.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA1.VAL = -1*_ZLJEB_SIRINA.VAL
         ;OSCILA0.VAL = -1*_ZLJEB_SIRINA.VAL
      ;ENDIF
      OSCILA2.VAL = _ZLJEB_SIRINA.VAL
      OSCILA1.VAL = _ZLJEB_SIRINA.VAL
      OSCILA0.VAL = _ZLJEB_SIRINA.VAL
   ELSE
      OSCILA2.VAR = "OSCA["<<reg[11]<<",2]"
      OSCILA1.VAR = "OSCA["<<reg[11]<<",1]"
      OSCILA0.VAR = "OSCA["<<reg[11]<<",0]"
   ENDIF

   ;IF((NACIN==100) OR (NACIN==300) OR (NACIN==301))
   IF((NACIN==100) OR (NACIN==300) OR (NACIN==301) OR (NACIN==700))
 
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2
   
      BRZU3.WR = 2
      BRZU2.WR = 2
      BRZU1.WR = 2
      BRZU0.WR = 2

      KORAK2.WR = 1
      KORAK1.WR = 1
      KORAK0.WR = 1

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 2
      BRZO0.WR = 2

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA0.WR = 2

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

   ENDIF

   IF((NACIN==200)  OR (NACIN==210) OR (NACIN==100) OR (NACIN==300) OR (NACIN==304) OR (NACIN==320) OR (NACIN==900))
      BROB1.wr=2
      BROB2.wr=2
   ELSE
      BROB1.wr=1
      BROB2.wr=1
   ENDIF

   IF((NACIN==240))
      BROJOB0.wr=1
   ELSE
      BROBOB0.wr=2
   ENDIF

   IF((NACIN==200) OR (NACIN==320) OR (NACIN==321) OR (NACIN==210) OR (NACIN==240))
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2

      BRZU3.WR = 2
      BRZU2.WR = 1
      BRZU1.WR = 1
      BRZU0.WR = 1

      KORAK2.WR = 2
      KORAK1.WR = 2
      KORAK0.WR = 2

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 2
      BRZO0.WR = 2

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 2
      ZADR11.WR = 2
      ZADR10.WR = 2

      ZADR23.WR = 1
      ZADR22.WR = 2
      ZADR21.WR = 2
      ZADR20.WR = 2

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 2
      PRIMICANJE1.WR = 2
      PRIMICANJE0.WR = 2

   ENDIF

   IF (NACIN==810)
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 1
      DOD0.WR = 1
      
      BROJOB3.wr = 1
      BROJOB2.wr = 1
      BROJOB1.wr = 1
      BROJOB0.wr = 1
      
      BRZU3.WR = 2
      BRZU2.WR = 1
      BRZU1.WR = 1
      BRZU0.WR = 1

      KORAK2.WR = 1
      KORAK1.WR = 1
      KORAK0.WR = 1

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 1
      BRZO0.WR = 1

      IZBR2.WR = 1
      IZBR1.WR = 1
      IZBR0.WR = 1

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

      BROB2.wr = 1
      BROB1.wr = 1
      BROB0.wr = 1

      kor_abriht2.wr = 1
      kor_abriht1.wr = 1
      kor_abriht0.wr = 1

      Br_abriht2.wr = 1
      Br_abriht1.wr = 1
      Br_abriht0.wr = 1
   ENDIF

   IF (NACIN==820)
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2

      BROJOB3.wr = 1
      BROJOB2.wr = 1
      BROJOB1.wr = 1
      BROJOB0.wr = 1

      BRZU3.WR = 2
      BRZU2.WR = 1
      BRZU1.WR = 1
      BRZU0.WR = 1

      KORAK2.WR = 2
      KORAK1.WR = 2
      KORAK0.WR = 2

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 2
      BRZO0.WR = 2

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

      BROB2.wr = 2
      BROB1.wr = 2
      BROB0.wr = 2
   ENDIF

   IF (NACIN==500) OR (NACIN==501)
      
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 1
      DOD0.WR = 1

      BROJOB3.wr = 1
      BROJOB2.wr = 1
      BROJOB1.wr = 1
      BROJOB0.wr = 1

      BRZU3.WR = 2
      BRZU2.WR = 1
      BRZU1.WR = 1
      BRZU0.WR = 1

      KORAK2.WR = 2
      KORAK1.WR = 1
      KORAK0.WR = 1

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 1
      BRZO0.WR = 1

      IZBR2.WR = 1
      IZBR1.WR = 1
      IZBR0.WR = 1

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

      BROB2.wr = 1
      BROB1.wr = 1
      BROB0.wr = 1

      kor_abriht2.wr = 1
      kor_abriht1.wr = 1
      kor_abriht0.wr = 1

      Br_abriht2.wr = 1
      Br_abriht1.wr = 1
      Br_abriht0.wr = 1


   ENDIF

   IF(NACIN==204)
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2

      BRZU3.WR = 2
      BRZU2.WR = 2
      BRZU1.WR = 1
      BRZU0.WR = 1

      KORAK2.WR = 1
      KORAK1.WR = 2
      KORAK0.WR = 2

      BRZO3.WR = 1
      BRZO2.WR = 1
      BRZO1.WR = 2
      BRZO0.WR = 2

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 2
      ZADR10.WR = 2

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 2
      ZADR20.WR = 2

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 2
      PRIMICANJE0.WR = 2

   ENDIF

   IF((NACIN==304) OR (NACIN==305))
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2

      BRZU3.WR = 2
      BRZU2.WR = 2
      BRZU1.WR = 2
      BRZU0.WR = 2

      KORAK2.WR = 1
      KORAK1.WR = 1
      KORAK0.WR = 1

      BRZO3.WR = 1
      BRZO2.WR = 1
      BRZO1.WR = 1
      BRZO0.WR = 1

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA2.WR = 1
      OSCILA1.WR = 1
      OSCILA0.WR = 1

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

   ENDIF

   IF(NACIN==900)
      DOD3.WR = 2
      DOD2.WR = 2
      DOD1.WR = 2
      DOD0.WR = 2

      BRZU3.WR = 2
      BRZU2.WR = 2
      BRZU1.WR = 2
      BRZU0.WR = 2

      KORAK2.WR = 1
      KORAK1.WR = 1
      KORAK0.WR = 1

      BRZO3.WR = 1
      BRZO2.WR = 2
      BRZO1.WR = 2
      BRZO0.WR = 2

      IZBR2.WR = 2
      IZBR1.WR = 2
      IZBR0.WR = 2

      OSCILA2.WR = 2
      OSCILA1.WR = 2
      OSCILA0.WR = 2

      ZADR13.WR = 1
      ZADR12.WR = 1
      ZADR11.WR = 1
      ZADR10.WR = 1

      ZADR23.WR = 1
      ZADR22.WR = 1
      ZADR21.WR = 1
      ZADR20.WR = 1

      PRIMICANJE3.WR = 1
      PRIMICANJE2.WR = 1
      PRIMICANJE1.WR = 1
      PRIMICANJE0.WR = 1

      KORPROF.WR=2
      PROGRAM.WR=2
      KOMENT.WR=4
   ELSE

      KORPROF.WR=4
      PROGRAM.WR=4  
   ENDIF

      ;IZMENA 23.avg.2019 12:50

      IF GLAVA == 1
        BROB2.WR=1
        BROB1.WR=1
        BROB0.WR=1
    
        kor_abriht2.WR=1
        kor_abriht1.WR=1
        kor_abriht0.WR=1

        Br_abriht2.WR=1
        Br_abriht1.WR=1
        Br_abriht0.WR=1
      ENDIF

END_SUB

//END




