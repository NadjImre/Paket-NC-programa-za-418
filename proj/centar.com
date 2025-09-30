
//M(Brusenje/$89440)
;FB271 i FB272
;jun 2019

DEF NAZIV = (S///,$89267,,""///"NAIMENOV[0]"/20,,180/190,,330/6,4/"pomoc.html","9101")
DEF STARTOP = (IDD/*0=$89465,1=$89466//,$89535////20,,80/100,,195/6,4/"pomoc.html","9102"),
START = (IDD////////300,,30/6,4/"pomoc.html","9102")
DEF OP00 = (IDD///,$89183,/WR1///15//),
KM00=(IDD///,$89182/WR1///200//),
PA00=(IDD///,$89569/WR1///260//)
DEF OP01 = (IDD/*ARR1//,"1"/wr5//"NACBRUS[0]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM01 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA01 = (S////wr2////260,,260/3,4)
DEF OP02 = (IDD/*ARR1//,"2"/wr5//"NACBRUS[1]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM02 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA02 = (S////////260,,260/3,4)
DEF OP03 = (IDD/*ARR1//,"3"/wr5//"NACBRUS[2]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM03 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA03 = (S////////260,,260/3,4)
DEF OP04 = (IDD/*ARR1//,"4"/wr5//"NACBRUS[3]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM04 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA04 = (S////////260,,260/3,4)
DEF OP05 = (IDD/*ARR1//,"5"/wr5//"NACBRUS[4]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM05 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA05 = (S////////260,,260/3,4)
DEF OP06 = (IDD/*ARR1//,"6"/wr5//"NACBRUS[5]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM06 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA06 = (S////////260,,260/3,4)
DEF OP07 = (IDD/*ARR1//,"7"/wr5//"NACBRUS[6]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM07 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA07 = (S////////260,,260/3,4)
DEF OP08 = (IDD/*ARR1//,"8"/wr5//"NACBRUS[7]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM08 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA08 = (S////////260,,260/3,4)
DEF OP09 = (IDD/*ARR1//,"9"/wr5//"NACBRUS[8]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM09 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA09 = (S////////260,,260/3,4)
DEF OP10 = (IDD/*ARR1//,"10"/wr5//"NACBRUS[9]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM10 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA10 = (S////////260,,260/3,4)
DEF OP11 = (IDD/*ARR1//,"11"/wr5//"NACBRUS[10]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM11 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA11 = (S////////260,,260/3,4)
DEF OP12 = (IDD/*ARR1//,"12"/wr5//"NACBRUS[11]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM12 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA12 = (S////////260,,260/3,4)
DEF OP13 = (IDD/*ARR1//,"13"/wr5//"NACBRUS[12]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM13 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA13 = (S////////260,,260/3,4)
DEF OP14 = (IDD/*ARR1//,"14"/wr5//"NACBRUS[13]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM14 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA14 = (S////////260,,260/3,4)
DEF OP15 = (IDD/*ARR1//,"15"/wr5//"NACBRUS[14]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM15 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA15 = (S////////260,,260/3,4)

;ODAVDE
DEF OP16 = (IDD/*ARR1//,"1"/wr5//"NACBRUS[15]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM16 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA16 = (S////wr2////260,,260/3,4)
DEF OP17 = (IDD/*ARR1//,"2"/wr5//"NACBRUS[16]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM17 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA17 = (S////////260,,260/3,4)
DEF OP18 = (IDD/*ARR1//,"3"/wr5//"NACBRUS[17]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM18 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA18 = (S////////260,,260/3,4)
DEF OP19 = (IDD/*ARR1//,"4"/wr5//"NACBRUS[18]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM19 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA19 = (S////////260,,260/3,4)
DEF OP20 = (IDD/*ARR1//,"5"/wr5//"NACBRUS[19]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM20 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA20 = (S////////260,,260/3,4)
DEF OP21 = (IDD/*ARR1//,"6"/wr5//"NACBRUS[20]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM21 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA21 = (S////////260,,260/3,4)
DEF OP22 = (IDD/*ARR1//,"7"/wr5//"NACBRUS[21]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM22 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA22 = (S////////260,,260/3,4)
DEF OP23 = (IDD/*ARR1//,"8"/wr5//"NACBRUS[22]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM23 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA23 = (S////////260,,260/3,4)
DEF OP24 = (IDD/*ARR1//,"9"/wr5//"NACBRUS[23]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM24 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA24 = (S////////260,,260/3,4)
DEF OP25 = (IDD/*ARR1//,"10"/wr5//"NACBRUS[24]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM25 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA25 = (S////////260,,260/3,4)
DEF OP26 = (IDD/*ARR1//,"11"/wr5//"NACBRUS[25]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM26 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA26 = (S////////260,,260/3,4)
DEF OP27 = (IDD/*ARR1//,"12"/wr5//"NACBRUS[26]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM27 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA27 = (S////////260,,260/3,4)
DEF OP28 = (IDD/*ARR1//,"13"/wr5//"NACBRUS[27]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM28 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA28 = (S////////260,,260/3,4)
DEF OP29 = (IDD/*ARR1//,"14"/wr5//"NACBRUS[28]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM29 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA29 = (S////////260,,260/3,4)
DEF OP30 = (IDD/*ARR1//,"15"/wr5//"NACBRUS[29]"/15,,45/40,,150/7,4/"pomoc.html","9103"),
KM30 = (IDD////wr5//"PARBRUS[0]"//200,,40/7,4/"pomoc.html","9104"),
PA30 = (S////////260,,260/3,4)
;dovde

DEF VAR7 = (IDD///,$89374,"NN",$89073/WR4//"SCHETCHIK"/20,,150/160,,300)
DEF BROJCIK = (IDD///,"$89467"/WR4//"BROJ_CIK")
 
DEF FOKUS=(S////WR4),
RedTabele=(IDD////WR4),
DEBUG4=(IDD////WR4),
KursorUTabeli=(IDD////WR4)
DEF TipOperacije=(IDD////WR4)
DEF VODA = (IDD/*1=$89154,0=$89155//,$89137,,$89067/WR4//"TEST")
DEF BrojOperacije=(IDD////WR4)
 
HS1=(,,)
HS2=(,,)
HS3=(,,)
HS4=(,,)
HS5=(,,)
HS6=(,,)
HS7=(,,)
HS8=(,,)

VS1=($89468,,se1)
VS2=($89469,,se1)
VS3=($89470,,se1)
VS4=($89184,,se1)
VS5=($89151,,se1)
VS6=($89506,,se1)
vs7=("",,se1)
VS8=($89533,,se1)

PRESS(HS1)
   LM("Brusenje","centar.com")
END_PRESS

PRESS(HS3)
   LM("sonda","csonda.com")
END_PRESS

PRESS(HS4)
   LM("Komad","ckomad.com")
END_PRESS

PRESS(HS5)
   LM("Abriht","cabriht.com")
END_PRESS

PRESS(HS6)
   LM("Tocilo","ctocilo.com")
END_PRESS

PRESS(HS7)
   LM("rezimiporav","cporavnavanje.com")
END_PRESS

PRESS(HS8)
   LM("brusenje","cbrusenje.com")
END_PRESS

;podizati vrednost
PRESS(VS1)
  BROJCIK=0
END_PRESS

PRESS(VS2)
  BROJCIK=30
END_PRESS

PRESS(VS3)
  BROJCIK=60
END_PRESS

PRESS(VS4)
  BROJCIK=90
END_PRESS

PRESS(VS5)
  BROJCIK=120
END_PRESS

PRESS(VS6)
    IF (TipOperacije==1)
       reg[11]=BrojOperacije-1
       LM("brusenje","cbrusenje.com")
    ENDIF
    IF (TipOperacije==2)
       reg[7]=BrojOperacije-1
       LM("rezimiporav","cporavnavanje.com")
    ENDIF
END_PRESS

PRESS(VS7)
  IF(VODA<>0)
     VODA=0
     VS7.st="\\sh023.png"
  ELSE
     VODA=1
     VS7.st="\\sh022.png"
  ENDIF
END_PRESS

focus
  FOKUS=LEFT(FOC,2)
  RedTabele=RIGHT(FOC,2)
  IF ((FOKUS=="PA") OR (FOKUS=="OP") OR (FOKUS=="KM"))
     KursorUTabeli=1
     if (RedTabele<10)
        TipOperacije=eval("op0"<<RedTabele)
        BrojOperacije=eval("km0"<<RedTabele)
     else
        TipOperacije=eval("op"<<RedTabele)
        BrojOperacije=eval("km"<<RedTabele)
     endif
  else
     KursorUTabeli=0
  ENDIF
end_focus

CHANGE(TipOperacije)
   if ((TipOperacije<1) or (TipOperacije>2))
      if (kursorutabeli>0)
         vs6.se=2
      endif  
   else
      vs6.se=1
   endif
END_CHANGE

CHANGE(NAZIV)
  CALL("TASTERI")
END_CHANGE   

CHANGE (BROJCIK)
  CALL("UPIS")
  CALL("TASTERI")
END_CHANGE

CHANGE(OP01)
   IF (OP01==1)
      PA01.VAR = "KOMENTAR["<<KM01.VAL-1<<"]"
   ELSE
      IF (OP01==2)
         PA01.VAR = "KOMENTAR_A["<<KM01.VAL-1<<"]"
      ELSE
         PA01.VAR=""
         PA01=""
      ENDIF
   ENDIF 
   TipOperacije=OP01
END_CHANGE

CHANGE(KM01)
  IF (OP01==1)
     PA01.VAR = "KOMENTAR["<<KM01.VAL-1<<"]"
  ELSE
     IF (OP01==2)
        PA01.VAR = "KOMENTAR_A["<<KM01.VAL-1<<"]"
     ELSE
        PA01.VAR=""
        PA01=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM01-1
END_CHANGE

CHANGE(OP02)
  IF (OP02==1)
     PA02.VAR = "KOMENTAR["<<KM02.VAL-1<<"]"
  ELSE
     IF (OP02==2)
        PA02.VAR = "KOMENTAR_A["<<KM02.VAL-1<<"]"
     ELSE
        PA02.VAR=""
        PA02=""
     ENDIF
   ENDIF
   TIPOPERACIJE=OP02
END_CHANGE

CHANGE(KM02)
  IF (OP02==1)
     PA02.VAR = "KOMENTAR["<<KM02.VAL-1<<"]"
  ELSE
     IF (OP02==2)
        PA02.VAR = "KOMENTAR_A["<<KM02.VAL-1<<"]"
     ELSE
        PA02.VAR=""
        PA02=""
     ENDIF
   ENDIF
   BROJOPERACIJE=KM02-1
END_CHANGE

CHANGE(OP03)
  IF (OP03==1)
     PA03.VAR = "KOMENTAR["<<KM03.VAL-1<<"]"
  ELSE 
     IF (OP03==2)
        PA03.VAR = "KOMENTAR_A["<<KM03.VAL-1<<"]"
     ELSE
        PA03.VAR=""
        PA03=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP03
END_CHANGE

CHANGE(KM03)
  IF (OP03==1)
     PA03.VAR = "KOMENTAR["<<KM03.VAL-1<<"]"
  ELSE 
     IF (OP03==2)
        PA03.VAR = "KOMENTAR_A["<<KM03.VAL-1<<"]"
     ELSE
        PA03.VAR=""
        PA03=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM03-1
END_CHANGE

CHANGE(OP04)
  IF (OP04==1)
     PA04.VAR = "KOMENTAR["<<KM04.VAL-1<<"]"
  ELSE 
     IF (OP04==2)
        PA04.VAR = "KOMENTAR_A["<<KM04.VAL-1<<"]"
     ELSE
        PA04.VAR=""
        PA04=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP04
END_CHANGE

CHANGE(KM04)
  IF (OP04==1)
     PA04.VAR = "KOMENTAR["<<KM04.VAL-1<<"]"
  ELSE 
     IF (OP04==2)
        PA04.VAR = "KOMENTAR_A["<<KM04.VAL-1<<"]"
     ELSE
        PA04.VAR=""
        PA04=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM04-1
END_CHANGE

CHANGE(OP05)
  IF (OP05==1)
     PA05.VAR = "KOMENTAR["<<KM05.VAL-1<<"]"
  ELSE 
     IF (OP05==2)
        PA05.VAR = "KOMENTAR_A["<<KM05.VAL-1<<"]"
     ELSE
        PA05.VAR=""
        PA05=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP05
END_CHANGE

CHANGE(KM05)
  IF (OP05==1)
     PA05.VAR = "KOMENTAR["<<KM05.VAL-1<<"]"
  ELSE 
     IF (OP05==2)
        PA05.VAR = "KOMENTAR_A["<<KM05.VAL-1<<"]"
     ELSE
        PA05.VAR=""
        PA05=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM05-1
END_CHANGE

CHANGE(OP06)
  IF (OP06==1)
     PA06.VAR = "KOMENTAR["<<KM06.VAL-1<<"]"
  ELSE 
     IF (OP06==2)
        PA06.VAR = "KOMENTAR_A["<<KM06.VAL-1<<"]"
     ELSE
        PA06.VAR=""
        PA06=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP06
END_CHANGE

CHANGE(KM06)
  IF (OP06==1)
     PA06.VAR = "KOMENTAR["<<KM06.VAL-1<<"]"
  ELSE 
     IF (OP06==2)
        PA06.VAR = "KOMENTAR_A["<<KM06.VAL-1<<"]"
     ELSE
        PA06.VAR=""
        PA06=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM06-1
END_CHANGE

CHANGE(OP07)
  IF (OP07==1)
     PA07.VAR = "KOMENTAR["<<KM07.VAL-1<<"]"
  ELSE 
     IF (OP07==2)
        PA07.VAR = "KOMENTAR_A["<<KM07.VAL-1<<"]"
     ELSE
        PA07.VAR=""
        PA07=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP07
END_CHANGE

CHANGE(KM07)
  IF (OP07==1)
     PA07.VAR = "KOMENTAR["<<KM07.VAL-1<<"]"
  ELSE 
     IF (OP07==2)
        PA07.VAR = "KOMENTAR_A["<<KM07.VAL-1<<"]"
     ELSE
        PA07.VAR=""
        PA07=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM07-1
END_CHANGE

CHANGE(OP08)
  IF (OP08==1)
     PA08.VAR = "KOMENTAR["<<KM08.VAL-1<<"]"
  ELSE 
     IF (OP08==2)
        PA08.VAR = "KOMENTAR_A["<<KM08.VAL-1<<"]"
     ELSE
        PA08.VAR=""
        PA08=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP08
END_CHANGE

CHANGE(KM08)
  IF (OP08==1)
     PA08.VAR = "KOMENTAR["<<KM08.VAL-1<<"]"
  ELSE 
     IF (OP08==2)
        PA08.VAR = "KOMENTAR_A["<<KM08.VAL-1<<"]"
     ELSE
        PA08.VAR=""
        PA08=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM08-1
END_CHANGE

CHANGE(OP09)
  IF (OP09==1)
     PA09.VAR = "KOMENTAR["<<KM09.VAL-1<<"]"
  ELSE 
     IF (OP09==2)
        PA09.VAR = "KOMENTAR_A["<<KM09.VAL-1<<"]"
     ELSE
        PA09.VAR=""
        PA09=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP09
END_CHANGE

CHANGE(KM09)
  IF (OP09==1)
     PA09.VAR = "KOMENTAR["<<KM09.VAL-1<<"]"
  ELSE 
     IF (OP09==2)
        PA09.VAR = "KOMENTAR_A["<<KM09.VAL-1<<"]"
     ELSE
        PA09.VAR=""
        PA09=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM09-1
END_CHANGE

CHANGE(OP10)
  IF (OP10==1)
     PA10.VAR = "KOMENTAR["<<KM10.VAL-1<<"]"
  ELSE 
     IF (OP10==2)
        PA10.VAR = "KOMENTAR_A["<<KM10.VAL-1<<"]"
     ELSE
        PA10.VAR=""
        PA10=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP10
END_CHANGE

CHANGE(KM10)
  IF (OP10==1)
     PA10.VAR = "KOMENTAR["<<KM10.VAL-1<<"]"
  ELSE 
     IF (OP10==2)
        PA10.VAR = "KOMENTAR_A["<<KM10.VAL-1<<"]"
     ELSE
        PA10.VAR=""
        PA10=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM10-1
END_CHANGE

CHANGE(OP11)
  IF (OP11==1)
     PA11.VAR = "KOMENTAR["<<KM11.VAL-1<<"]"
  ELSE 
     IF (OP11==2)
        PA11.VAR = "KOMENTAR_A["<<KM11.VAL-1<<"]"
     ELSE
        PA11.VAR=""
        PA11=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP11
END_CHANGE

CHANGE(KM11)
  IF (OP11==1)
     PA11.VAR = "KOMENTAR["<<KM11.VAL-1<<"]"
  ELSE 
     IF (OP11==2)
        PA11.VAR = "KOMENTAR_A["<<KM11.VAL-1<<"]"
     ELSE
        PA11.VAR=""
        PA11=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM11-1
END_CHANGE


CHANGE(OP12)
  IF (OP12==1)
     PA12.VAR = "KOMENTAR["<<KM12.VAL-1<<"]"
  ELSE 
     IF (OP12==2)
        PA12.VAR = "KOMENTAR_A["<<KM12.VAL-1<<"]"
     ELSE
        PA12.VAR=""
        PA12=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP12
END_CHANGE

CHANGE(KM12)
  IF (OP12==1)
     PA12.VAR = "KOMENTAR["<<KM12.VAL-1<<"]"
  ELSE 
     IF (OP12==2)
        PA12.VAR = "KOMENTAR_A["<<KM12.VAL-1<<"]"
     ELSE
        PA12.VAR=""
        PA12=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM12-1
END_CHANGE

CHANGE(OP13)
  IF (OP13==1)
     PA13.VAR = "KOMENTAR["<<KM13.VAL-1<<"]"
  ELSE 
     IF (OP13==2)
        PA13.VAR = "KOMENTAR_A["<<KM13.VAL-1<<"]"
     ELSE
        PA13.VAR=""
        PA13=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP13
END_CHANGE

CHANGE(KM13)
  IF (OP13==1)
     PA13.VAR = "KOMENTAR["<<KM13.VAL-1<<"]"
  ELSE 
     IF (OP13==2)
        PA13.VAR = "KOMENTAR_A["<<KM13.VAL-1<<"]"
     ELSE
        PA13.VAR=""
        PA13=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM13-1
END_CHANGE

CHANGE(OP14)
  IF (OP14==1)
     PA14.VAR = "KOMENTAR["<<KM14.VAL-1<<"]"
  ELSE 
     IF (OP14==2)
        PA14.VAR = "KOMENTAR_A["<<KM14.VAL-1<<"]"
     ELSE
        PA14.VAR=""
        PA14=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP14
END_CHANGE

CHANGE(KM14)
  IF (OP14==1)
     PA14.VAR = "KOMENTAR["<<KM14.VAL-1<<"]"
  ELSE 
     IF (OP14==2)
        PA14.VAR = "KOMENTAR_A["<<KM14.VAL-1<<"]"
     ELSE
        PA14.VAR=""
        PA14=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM14-1
END_CHANGE

CHANGE(OP15)
  IF (OP15==1)
     PA15.VAR = "KOMENTAR["<<KM15.VAL-1<<"]"
  ELSE 
     IF (OP15==2)
        PA15.VAR = "KOMENTAR_A["<<KM15.VAL-1<<"]"
     ELSE
        PA15.VAR=""
        PA15=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP15
END_CHANGE

CHANGE(KM15)
  IF (OP15==1)
     PA15.VAR = "KOMENTAR["<<KM15.VAL-1<<"]"
  ELSE 
     IF (OP15==2)
        PA15.VAR = "KOMENTAR_A["<<KM15.VAL-1<<"]"
     ELSE
        PA15.VAR=""
        PA15=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM15-1
END_CHANGE

;ODAVDE

CHANGE(OP16)
  IF (OP16==1)
     PA16.VAR = "KOMENTAR["<<KM16.VAL-1<<"]"
  ELSE 
     IF (OP16==2)
        PA16.VAR = "KOMENTAR_A["<<KM16.VAL-1<<"]"
     ELSE
        PA16.VAR=""
        PA16=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP16
END_CHANGE

CHANGE(KM16)
  IF (OP16==1)
     PA16.VAR = "KOMENTAR["<<KM16.VAL-1<<"]"
  ELSE 
     IF (OP16==2)
        PA16.VAR = "KOMENTAR_A["<<KM16.VAL-1<<"]"
     ELSE
        PA16.VAR=""
        PA16=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM16-1
END_CHANGE

CHANGE(OP17)
  IF (OP17==1)
     PA17.VAR = "KOMENTAR["<<KM17.VAL-1<<"]"
  ELSE 
     IF (OP17==2)
        PA17.VAR = "KOMENTAR_A["<<KM17.VAL-1<<"]"
     ELSE
        PA17.VAR=""
        PA17=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP17
END_CHANGE

CHANGE(KM17)
  IF (OP17==1)
     PA17.VAR = "KOMENTAR["<<KM17.VAL-1<<"]"
  ELSE 
     IF (OP17==2)
        PA17.VAR = "KOMENTAR_A["<<KM17.VAL-1<<"]"
     ELSE
        PA17.VAR=""
        PA17=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM17-1
END_CHANGE

CHANGE(OP18)
  IF (OP18==1)
     PA15.VAR = "KOMENTAR["<<KM18.VAL-1<<"]"
  ELSE 
     IF (OP18==2)
        PA18.VAR = "KOMENTAR_A["<<KM18.VAL-1<<"]"
     ELSE
        PA18.VAR=""
        PA18=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP18
END_CHANGE

CHANGE(KM18)
  IF (OP18==1)
     PA18.VAR = "KOMENTAR["<<KM18.VAL-1<<"]"
  ELSE 
     IF (OP18==2)
        PA18.VAR = "KOMENTAR_A["<<KM18.VAL-1<<"]"
     ELSE
        PA18.VAR=""
        PA18=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM18-1
END_CHANGE

CHANGE(OP19)
  IF (OP19==1)
     PA19.VAR = "KOMENTAR["<<KM19.VAL-1<<"]"
  ELSE 
     IF (OP19==2)
        PA19.VAR = "KOMENTAR_A["<<KM19.VAL-1<<"]"
     ELSE
        PA19.VAR=""
        PA19=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP19
END_CHANGE

CHANGE(KM19)
  IF (OP19==1)
     PA19.VAR = "KOMENTAR["<<KM19.VAL-1<<"]"
  ELSE 
     IF (OP19==2)
        PA19.VAR = "KOMENTAR_A["<<KM19.VAL-1<<"]"
     ELSE
        PA19.VAR=""
        PA19=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM19-1
END_CHANGE

CHANGE(OP20)
  IF (OP20==1)
     PA20.VAR = "KOMENTAR["<<KM20.VAL-1<<"]"
  ELSE 
     IF (OP20==2)
        PA20.VAR = "KOMENTAR_A["<<KM20.VAL-1<<"]"
     ELSE
        PA20.VAR=""
        PA20=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP20
END_CHANGE

CHANGE(KM20)
  IF (OP20==1)
     PA20.VAR = "KOMENTAR["<<KM20.VAL-1<<"]"
  ELSE 
     IF (OP20==2)
        PA20.VAR = "KOMENTAR_A["<<KM20.VAL-1<<"]"
     ELSE
        PA20.VAR=""
        PA20=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM20-1
END_CHANGE

CHANGE(OP21)
  IF (OP21==1)
     PA21.VAR = "KOMENTAR["<<KM21.VAL-1<<"]"
  ELSE 
     IF (OP21==2)
        PA21.VAR = "KOMENTAR_A["<<KM21.VAL-1<<"]"
     ELSE
        PA21.VAR=""
        PA21=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP21
END_CHANGE

CHANGE(KM21)
  IF (OP21==1)
     PA21.VAR = "KOMENTAR["<<KM21.VAL-1<<"]"
  ELSE 
     IF (OP21==2)
        PA21.VAR = "KOMENTAR_A["<<KM21.VAL-1<<"]"
     ELSE
        PA21.VAR=""
        PA21=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM21-1
END_CHANGE

CHANGE(OP22)
  IF (OP22==1)
     PA22.VAR = "KOMENTAR["<<KM22.VAL-1<<"]"
  ELSE 
     IF (OP22==2)
        PA22.VAR = "KOMENTAR_A["<<KM22.VAL-1<<"]"
     ELSE
        PA22.VAR=""
        PA22=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP22
END_CHANGE

CHANGE(KM22)
  IF (OP22==1)
     PA22.VAR = "KOMENTAR["<<KM22.VAL-1<<"]"
  ELSE 
     IF (OP22==2)
        PA22.VAR = "KOMENTAR_A["<<KM22.VAL-1<<"]"
     ELSE
        PA22.VAR=""
        PA22=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM22-1
END_CHANGE

CHANGE(OP23)
  IF (OP23==1)
     PA23.VAR = "KOMENTAR["<<KM23.VAL-1<<"]"
  ELSE 
     IF (OP23==2)
        PA23.VAR = "KOMENTAR_A["<<KM23.VAL-1<<"]"
     ELSE
        PA23.VAR=""
        PA23=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP23
END_CHANGE

CHANGE(KM23)
  IF (OP23==1)
     PA23.VAR = "KOMENTAR["<<KM23.VAL-1<<"]"
  ELSE 
     IF (OP23==2)
        PA23.VAR = "KOMENTAR_A["<<KM23.VAL-1<<"]"
     ELSE
        PA23.VAR=""
        PA23=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM23-1
END_CHANGE

CHANGE(OP24)
  IF (OP24==1)
     PA24.VAR = "KOMENTAR["<<KM24.VAL-1<<"]"
  ELSE 
     IF (OP24==2)
        PA24.VAR = "KOMENTAR_A["<<KM24.VAL-1<<"]"
     ELSE
        PA24.VAR=""
        PA24=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP24
END_CHANGE

CHANGE(KM24)
  IF (OP24==1)
     PA24.VAR = "KOMENTAR["<<KM24.VAL-1<<"]"
  ELSE 
     IF (OP24==2)
        PA24.VAR = "KOMENTAR_A["<<KM24.VAL-1<<"]"
     ELSE
        PA24.VAR=""
        PA24=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM24-1
END_CHANGE

CHANGE(OP25)
  IF (OP25==1)
     PA25.VAR = "KOMENTAR["<<KM25.VAL-1<<"]"
  ELSE 
     IF (OP25==2)
        PA25.VAR = "KOMENTAR_A["<<KM25.VAL-1<<"]"
     ELSE
        PA25.VAR=""
        PA25=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP25
END_CHANGE

CHANGE(KM25)
  IF (OP25==1)
     PA25.VAR = "KOMENTAR["<<KM25.VAL-1<<"]"
  ELSE 
     IF (OP25==2)
        PA25.VAR = "KOMENTAR_A["<<KM25.VAL-1<<"]"
     ELSE
        PA25.VAR=""
        PA25=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM25-1
END_CHANGE

CHANGE(OP26)
  IF (OP26==1)
     PA26.VAR = "KOMENTAR["<<KM26.VAL-1<<"]"
  ELSE 
     IF (OP26==2)
        PA26.VAR = "KOMENTAR_A["<<KM26.VAL-1<<"]"
     ELSE
        PA26.VAR=""
        PA26=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP26
END_CHANGE

CHANGE(KM26)
  IF (OP26==1)
    ;IZMENA 2.avg.2019
    ;PA15.VAR = "KOMENTAR["<<KM26.VAL-1<<"]"
    PA26.VAR = "KOMENTAR["<<KM26.VAL-1<<"]"
  ELSE 
     IF (OP26==2)
        PA26.VAR = "KOMENTAR_A["<<KM26.VAL-1<<"]"
     ELSE
        PA26.VAR=""
        PA26=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM26-1
END_CHANGE

CHANGE(OP27)
  IF (OP27==1)
     PA27.VAR = "KOMENTAR["<<KM27.VAL-1<<"]"
  ELSE 
     IF (OP27==2)
        PA27.VAR = "KOMENTAR_A["<<KM27.VAL-1<<"]"
     ELSE
        PA27.VAR=""
        PA27=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP27
END_CHANGE

CHANGE(KM27)
  IF (OP27==1)
     PA27.VAR = "KOMENTAR["<<KM27.VAL-1<<"]"
  ELSE 
     IF (OP27==2)
        PA27.VAR = "KOMENTAR_A["<<KM27.VAL-1<<"]"
     ELSE
        PA27.VAR=""
        PA27=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM27-1
END_CHANGE

CHANGE(OP28)
  IF (OP28==1)
     PA28.VAR = "KOMENTAR["<<KM28.VAL-1<<"]"
  ELSE 
     IF (OP28==2)
        PA28.VAR = "KOMENTAR_A["<<KM28.VAL-1<<"]"
     ELSE
        PA28.VAR=""
        PA28=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP28
END_CHANGE

CHANGE(KM28)
  IF (OP28==1)
     PA28.VAR = "KOMENTAR["<<KM28.VAL-1<<"]"
  ELSE 
     IF (OP28==2)
        PA28.VAR = "KOMENTAR_A["<<KM28.VAL-1<<"]"
     ELSE
        PA28.VAR=""
        PA28=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM28-1
END_CHANGE

CHANGE(OP29)
  IF (OP29==1)
     PA29.VAR = "KOMENTAR["<<KM29.VAL-1<<"]"
  ELSE 
     IF (OP29==2)
        PA29.VAR = "KOMENTAR_A["<<KM29.VAL-1<<"]"
     ELSE
        PA29.VAR=""
        PA29=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP29
END_CHANGE

CHANGE(KM29)
  IF (OP29==1)
     PA29.VAR = "KOMENTAR["<<KM29.VAL-1<<"]"
  ELSE 
     IF (OP29==2)
        PA29.VAR = "KOMENTAR_A["<<KM29.VAL-1<<"]"
     ELSE
        PA29.VAR=""
        PA29=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM29-1
END_CHANGE

CHANGE(OP30)
  IF (OP30==1)
     PA30.VAR = "KOMENTAR["<<KM30.VAL-1<<"]"
  ELSE 
     IF (OP30==2)
        PA30.VAR = "KOMENTAR_A["<<KM30.VAL-1<<"]"
     ELSE
        PA30.VAR=""
        PA30=""
     ENDIF
   ENDIF 
   TIPOPERACIJE=OP30
END_CHANGE

CHANGE(KM30)
  IF (OP30==1)
     PA30.VAR = "KOMENTAR["<<KM30.VAL-1<<"]"
  ELSE 
     IF (OP30==2)
        PA30.VAR = "KOMENTAR_A["<<KM30.VAL-1<<"]"
     ELSE
        PA30.VAR=""
        PA30=""
     ENDIF
   ENDIF 
   BROJOPERACIJE=KM30-1
END_CHANGE
;dovde

LOAD
   LB("PROG1")
   LB("HKL","CHKL.COM")
   CALL("TEKST")  
   CALL("UPIS")
   CALL("TASTERI")
   LA("ARR1","CNIZOVI.COM")
  
  IF (VODA<>0)
     VS7.ST="\\sh022.png"
  ELSE
     VS7.ST="\\sh023.png"
  ENDIF
  
END_LOAD

PRESS(vS8)
  LM("opste","copste.com",1)
END_PRESS


//END


//B(PROG1)

SUB(UPIS)
   
   ;menjao
   DEBUG4=BROJCIK/30;15
   
   NAZIV.VAR = "NAIMENOV["<<DEBUG4<<"]"
   OP01.VAR = "NACBRUS["<<BROJCIK+0<<"]"
   KM01.VAR = "PARBRUS["<<BROJCIK+0<<"]"
   
   Op01.ST=BROJCIK+1
   OP02.VAR = "NACBRUS["<<BROJCIK+1<<"]"
   KM02.VAR = "PARBRUS["<<BROJCIK+1<<"]"

   Op02.ST=BROJCIK+2
   OP03.VAR = "NACBRUS["<<BROJCIK+2<<"]"
   KM03.VAR = "PARBRUS["<<BROJCIK+2<<"]"
   
   Op03.ST=BROJCIK+3
   OP04.VAR = "NACBRUS["<<BROJCIK+3<<"]"
   KM04.VAR = "PARBRUS["<<BROJCIK+3<<"]"
   
   Op04.ST=BROJCIK+4
   OP05.VAR = "NACBRUS["<<BROJCIK+4<<"]"
   KM05.VAR = "PARBRUS["<<BROJCIK+4<<"]"
   
   Op05.ST=BROJCIK+5
   OP06.VAR = "NACBRUS["<<BROJCIK+5<<"]"
   KM06.VAR = "PARBRUS["<<BROJCIK+5<<"]"
   
   Op06.ST=BROJCIK+6
   OP07.VAR = "NACBRUS["<<BROJCIK+6<<"]"
   KM07.VAR = "PARBRUS["<<BROJCIK+6<<"]"
   
   Op07.ST=BROJCIK+7
   OP08.VAR = "NACBRUS["<<BROJCIK+7<<"]"
   KM08.VAR = "PARBRUS["<<BROJCIK+7<<"]"

   Op08.ST=BROJCIK+8
   OP09.VAR = "NACBRUS["<<BROJCIK+8<<"]"
   KM09.VAR = "PARBRUS["<<BROJCIK+8<<"]"
   
   Op09.ST=BROJCIK+9
   OP10.VAR = "NACBRUS["<<BROJCIK+9<<"]"
   KM10.VAR = "PARBRUS["<<BROJCIK+9<<"]"
   
   Op10.ST=BROJCIK+10
   OP11.VAR = "NACBRUS["<<BROJCIK+10<<"]"
   KM11.VAR = "PARBRUS["<<BROJCIK+10<<"]"
   
   Op11.ST=BROJCIK+11
   OP12.VAR = "NACBRUS["<<BROJCIK+11<<"]"
   KM12.VAR = "PARBRUS["<<BROJCIK+11<<"]"
   
   Op12.ST=BROJCIK+12
   OP13.VAR = "NACBRUS["<<BROJCIK+12<<"]"
   KM13.VAR = "PARBRUS["<<BROJCIK+12<<"]"
      
   Op13.ST=BROJCIK+13
   OP14.VAR = "NACBRUS["<<BROJCIK+13<<"]"
   KM14.VAR = "PARBRUS["<<BROJCIK+13<<"]"
   
   Op14.ST=BROJCIK+14
   OP15.VAR = "NACBRUS["<<BROJCIK+14<<"]"
   KM15.VAR = "PARBRUS["<<BROJCIK+14<<"]"
   ;odavde
   Op15.ST=BROJCIK+15
   OP16.VAR = "NACBRUS["<<BROJCIK+15<<"]"
   KM16.VAR = "PARBRUS["<<BROJCIK+15<<"]"
   
   Op16.ST=BROJCIK+16
   OP17.VAR = "NACBRUS["<<BROJCIK+16<<"]"
   KM17.VAR = "PARBRUS["<<BROJCIK+16<<"]"
   
   Op17.ST=BROJCIK+17
   OP18.VAR = "NACBRUS["<<BROJCIK+17<<"]"
   KM18.VAR = "PARBRUS["<<BROJCIK+17<<"]"
   
   Op18.ST=BROJCIK+18
   OP19.VAR = "NACBRUS["<<BROJCIK+18<<"]"
   KM19.VAR = "PARBRUS["<<BROJCIK+18<<"]"
   
   Op19.ST=BROJCIK+19
   OP20.VAR = "NACBRUS["<<BROJCIK+19<<"]"
   KM20.VAR = "PARBRUS["<<BROJCIK+19<<"]"
   
   Op20.ST=BROJCIK+20
   OP21.VAR = "NACBRUS["<<BROJCIK+20<<"]"
   KM21.VAR = "PARBRUS["<<BROJCIK+20<<"]"
   
   Op21.ST=BROJCIK+21
   OP22.VAR = "NACBRUS["<<BROJCIK+21<<"]"
   KM22.VAR = "PARBRUS["<<BROJCIK+21<<"]"
   
   Op22.ST=BROJCIK+22
   OP23.VAR = "NACBRUS["<<BROJCIK+22<<"]"
   KM23.VAR = "PARBRUS["<<BROJCIK+22<<"]"
      
   Op23.ST=BROJCIK+23
   OP24.VAR = "NACBRUS["<<BROJCIK+23<<"]"
   KM24.VAR = "PARBRUS["<<BROJCIK+23<<"]"
   
   Op24.ST=BROJCIK+24
   OP25.VAR = "NACBRUS["<<BROJCIK+24<<"]"
   KM25.VAR = "PARBRUS["<<BROJCIK+24<<"]"
   
   Op25.ST=BROJCIK+25
   OP26.VAR = "NACBRUS["<<BROJCIK+25<<"]"
   KM26.VAR = "PARBRUS["<<BROJCIK+25<<"]"
   
   Op26.ST=BROJCIK+26
   OP27.VAR = "NACBRUS["<<BROJCIK+26<<"]"
   KM27.VAR = "PARBRUS["<<BROJCIK+26<<"]"

   Op27.ST=BROJCIK+27
   OP28.VAR = "NACBRUS["<<BROJCIK+27<<"]"
   KM28.VAR = "PARBRUS["<<BROJCIK+27<<"]"
   
   Op28.ST=BROJCIK+28
   OP29.VAR = "NACBRUS["<<BROJCIK+28<<"]"
   KM29.VAR = "PARBRUS["<<BROJCIK+28<<"]"
   
   Op29.ST=BROJCIK+29
   OP30.VAR = "NACBRUS["<<BROJCIK+29<<"]"
   KM30.VAR = "PARBRUS["<<BROJCIK+29<<"]"
   ;menjao
   Op30.ST=BROJCIK+30;15
   STARTOP.VAR = "STARTPARAM["<<DEBUG4<<"]"
   START.VAR = "BRUS_BROJ["<<DEBUG4<<"]"

END_SUB

SUB(TASTERI)

   VS1.ST = RNP("NAIMENOV[0]")
   VS2.ST = RNP("NAIMENOV[1]")
   VS3.ST = RNP("NAIMENOV[2]")
   VS4.ST = RNP("NAIMENOV[3]")
   VS5.ST = RNP("NAIMENOV[4]")
   
   IF(BROJCIK==0)
     VS1.sE=3
     HD=RNP("NAIMENOV[0]")
   ELSE
     VS1.SE=1
   ENDIF
   
   IF(BROJCIK==30)
     VS2.sE=3
     HD=RNP("NAIMENOV[1]")
   ELSE
     VS2.sE=1
   ENDIF
   
   IF(BROJCIK==60)
     VS3.SE=3
     HD=RNP("NAIMENOV[2]")
   ELSE
     VS3.se=1
   ENDIF
   
   IF(BROJCIK==90)
     VS4.se=3
     HD=RNP("NAIMENOV[3]")
   ELSE
     VS4.se=1
   ENDIF
   
   IF(BROJCIK==120)
     VS5.se=3
     HD=RNP("NAIMENOV[4]")
   ELSE
     VS5.se=1
   ENDIF

END_SUB

//END

