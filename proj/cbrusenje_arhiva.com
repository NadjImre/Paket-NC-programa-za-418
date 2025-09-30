
//M(brusenje/$89272)
;FB271 i FB272
;jun 2019

def debug1 = (i/1,90/1/,$89515////250/485,,50)
;IZMENA 27/Feb/2019 14:28
;DEF BRTOC = (I/* 1=$89575,2=$89576,3=$89577,4=$89578,5=$89579,6=$89580//,$89190////280,,190/405,,130//"pomoc.html","9007")
DEF BRTOC = (I/* 1=$89575,2=$89576,3=$89577,4=$89578//,$89190////250,,190/390,,150//"pomoc.html","9007")

DEF NACBRUS = (I/*ARR6//,$89000,,////250,,120/390,,150//"pomoc.html","9008")
;IZMENA 27.mar.2019 22.22
;DEF SMER = (I/* 0=$89191,1=$89192//,$89198,,/wr4///280,,120/405,,130)
DEF SMER = (I/* 0=$89191,1=$89192//,$89198,,/wr2///250,,120/390,,150)
;IZMENA - novo
DEF Glava = (I/*OffONNiz//,$89140,,"0/1"/wr2///250,,140/425,,130//"pomoc.html","9018")

DEF PREC0 = (R4/0,//$89100,$89101,"D1",$89068/LI3,///250,,180/425,,120//"pomoc.html","9010")
DEF PREC1 = (R4/0,//$89100,,"D2",$89068/LI3,///250,,180/425,,120//"pomoc.html","9011")

DEF POZZ1 = (R4/,//$89102,$89103,"Z1",$89068/LI3,///250,,180/425,,120//"pomoc.html","9012")
DEF POZZ2 = (R4/,//$89104,,"Z2",$89068/LI3,///250,,180/425,,120//"pomoc.html","9013")
;IZMENA 29/Mar/2019 9:36
DEF _ZLJEB_SIRINA = (R4/,//$89573,$89573,"L",$89068/LI3,///250,,180/425,,120//"pomoc.html","9013")
DEF _ZLJEB_TOCILO = (R4/,//$89574,$89574,"B",$89068/LI3,///250,,180/425,,120//"pomoc.html","9013")

DEF BROJMER = (I///,$89525,"x",$89067////250,,180/425,,120)
DEF BROJMERZ = (I///,,"z",$89067////250,,180/425,,120)
DEF BPOZ = (R///,$89552,,$89072/WR4///250,,180/425,,120)
DEF kocnica = (I/* 0=$89406,1=$89407, 2=$89408//,$89405/wr2///250,,180/390,,120//"pomoc.html","9018")

;DEF KOMENT = (S///,$89569,////280,270,100/280,290,260//"pomoc.html","9017")
DEF KOMENT = (S///,$89569,////250,,100/365,,175//"pomoc.html","9017")

DEF VAR15 = (R4/,//$89065,$89065,,$89068/LI3,///235,,150/365,,110),
VAR25 = (R4/,//,,,$89068/LI3,///,320/465,,110)
DEF VAR16 = (R4/,//$89066,$89066,,$89068/LI3,///235,,150/365,,110),
VAR26 = (R4/,//,,,$89068/LI3,///,340/465,,110)
;IZMENA 12/Mar/2019 9:45
DEF VAR1C = (R4/,//$89066,$89298,,$89068/LI3,///235,,150/365,,110),
VAR2C = (R4/,//,,,$89068/LI3,///,350/465,,110)

DEF KORDSYS = (I///,"KORD"/WR4///280,,60/365,,100)
;DEF BPOZ = (R///,$89552,,$89072/WR4///280,,140/425,,120)

DEF Slika = (I///,,,/wr1///0,0,250,330/0,320,25,2) 

;IZMENA 30.maj.2019 13:18
DEF CMAS = (R4///,,"C1",$89068/WR4//"$AA_IM[1]"//420)

DEF XMAS = (R4///,$89099,,$89068/WR4//"$AA_IM[0]"/200/315)
DEF ZMAS = (R4///,,,$89068/WR4//"$AA_IM[2]"//425)
DEF BMAS = (R4///,,,$89068/WR4//"$AA_IM[5]"//425)
DEF PRECKAM = (R3/1,100//,$89059,"D",$89068/LI3,WR4)
DEF duznas = (R3/2,160//,$89089,"L",$89068/LI3,WR4)
DEF XOFF = (R4///,$89448,,$89068/WR4//"$P_UIFR[1,0,TR]"/200/315)
DEF ZOFF = (R4///,,,$89068/WR4//"$P_UIFR[1,2,TR]"//425)
DEF BOFF = (R4///,,,$89068/WR4//"$P_UIFR[1,5,TR]"//425)
DEF BrojBose=(IDD////WR4//"BROJ_B_OSE")
DEF DEBUG5 = (IDD/0,19//,$89474/WR4///200,,100/390)
DEF TOCILO = (I///,$89532/WR4///280,,120/405,,130)
DEF OBLIK = (IDD////wr4)
DEF MAKSBROJ=(IDD////WR4//"MAXBRUSBROJ")
DEF MAKSTOC=(IDD////WR4//"MAXBROJTOC")
DEF CNACBRUS=(I////WR4)
DEF CTOCILO=(I////WR4)
DEF CPREC0=(R4////WR4)
DEF CPREC1=(R4////WR4)
DEF CPOZZ1=(R4////WR4)
DEF CPOZZ2=(R4////WR4)
def ckocnica=(idd////wr4)
DEF CVAR15=(R4////WR4)
DEF CVAR16=(R4////WR4)
DEF CVAR1C=(R4////WR4)
DEF CBPOZ=(R4////WR4)
DEF CBROJMER = (I////WR4)
DEF CBROJMERZ = (I////WR4)
;IZMENA 29/Mar/2019 9:36
DEF C_ZLJEB_SIRINA = (R4////WR4)
DEF C_ZLJEB_TOCILO = (R4////WR4)
DEF CGLAVA = (I////WR4)

VS1=($89531,,se1)
VS2=($89512,,se1)
VS3=($89171,,se1)

VS4=($89501,,se1)
VS5=($89502,,se1)
VS6=($89503,,se1)
VS7=($89504,,se1)
VS8=(">>>",,se1)

HS1=(,,)
HS2=(,,)
HS3=(,,)
HS4=(,,)
HS5=(,,)
HS6=(,,)
HS7=(,,)
HS8=(,,)

PRESS(vS2)
   if(debug1<=1)
     debug1=MAKSBROJ
   else
     debug1=debug1-1
   endif
END_PRESS

PRESS(vS1)
   if(debug1>=MAKSBROJ)
     debug1=1
   else
     debug1=debug1+1
   endif
END_PRESS

PRESS(vS3)
    LM("rezimi","crezimi.com")
END_PRESS

PRESS(VS4)
   IF(DEBUG5==0)
     IF(OBLIK==0)
        PREC0 = 2*(XMAS-XOFF)-PRECKAM
     ELSE
        PREC0 = 2*(XMAS-XOFF)+PRECKAM
     ENDIF
   ELSE
     CNACBRUS= NACBRUS
     CTOCILO=TOCILO
     CPREC0=PREC0
     CPREC1=PREC1
     CPOZZ1=POZZ1
     CPOZZ2=POZZ2
     ckocnica=kocnica
     CVAR15=VAR15
     CVAR16=VAR16	
     CVAR1C=VAR1C	
     CBPOZ=BPOZ
     CBROJMER=BROJMER
     CBROJMERZ =BROJMERZ
     C_ZLJEB_SIRINA = _ZLJEB_SIRINA
     C_ZLJEB_TOCILO = _ZLJEB_TOCILO
     CGLAVA = GLAVA
   ENDIF
END_PRESS

PRESS(VS5)
   IF(DEBUG5==0)
     POZZ1 = ZMAS-ZOFF-DUZNAS
   ELSE
     NACBRUS=CNACBRUS
     TOCILO=CTOCILO
     PREC0=CPREC0
     PREC1=CPREC1
     POZZ1=CPOZZ1
     POZZ2=CPOZZ2
     kocnica=ckocnica
     VAR15=CVAR15
     VAR16=CVAR16
     VAR1C=CVAR1C
     BPOZ=CBPOZ
     BROJMER=CBROJMER
     BROJMERZ =CBROJMERZ
     _ZLJEB_SIRINA = C_ZLJEB_SIRINA
     _ZLJEB_TOCILO = C_ZLJEB_TOCILO
     GLAVA = CGLAVA
  ENDIF
END_PRESS

PRESS(VS6)
    IF(DEBUG5==0)
     IF(OBLIK==0)
        PREC1 = 2*(XMAS-XOFF)-PRECKAM
     ELSE
        PREC1 = 2*(XMAS-XOFF)+PRECKAM
     ENDIF
    ELSE
      var15 = var15+var25
      var16 = var16+var26
      var1C = var1C+var2C 
    ENDIF
END_PRESS

PRESS(VS7)
   IF(DEBUG5==0)
      POZZ2 = ZMAS-ZOFF-DUZNAS
   ELSE
   ;IZMENA 30.maj.2019 13:22
      VAR1C = CMAS
      IF(VAR1C<0)
         VAR1C=360+ VAR1C
      ENDIF
   ENDIF
END_PRESS

PRESS(VS8)
  IF (DEBUG5<>0)
     DEBUG5=0
	 VS3.st=$89171	 
     VS4.st=$89501
     VS5.st=$89502
     VS6.st=$89503
     VS7.st=$89504
     VS8.st=">>>"
  ELSE
     DEBUG5=1
	 VS3.st=$89171	
     VS4.st="COPY"
     VS5.st="PASTE"
     VS6.st=$89538
     ;IZMENA 30.maj.2019 13:35
     ;vs7.st=""
     vs7.st=$89592
     VS8.st="<<<"
  ENDIF
END_PRESS  


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

LOAD

  LB("HKL","chkl.com")
  CALL("TEKST")
  LA("ARR6","cnizovi.com")
  LA("OffOnNiz","cnizovi.com")
  
  IF(REG[11].VLD==FALSE)
    REG[11]=0
  ENDIF
  
   DEBUG5=0
   debug1=reg[11]+1
   hd=$89201<<"-"<<DEBUG1
   NACBRUS.VAR = "BRUS["<<reg[11]<<"]"
   SMER.VAR =  "BRUSSMER["<<REG[11]<<"]"
   GLAVA.VAR =  "GLAVA["<<REG[11]<<"]"
   PREC0.VAR = "PREC["<<reg[11]<<",0]"
   POZZ1.VAR = "POZZ["<<reg[11]<<",0]"
   POZZ2.VAR = "POZZ["<<reg[11]<<",1]"

   PREC1.VAR = "PREC["<<reg[11]<<",1]"
   KOMENT.VAR = "KOMENTAR["<<REG[11]<<"]"
   TOCILO.VAR = "TOCILO["<<reg[11]<<"]"
   VAR15.VAR = "KORX["<<reg[11]<<"]"
   VAR16.VAR = "KORZ["<<reg[11]<<"]"
   VAR1C.VAR = "KORC["<<reg[11]<<"]"
   kocnica.var= "kocnica["<<reg[11]<<"]"
   BROJMER.VAR    = "MER_BRUS["<<reg[11]<<"]"
   BROJMERZ.VAR    = "MER_BRUS_Z["<<reg[11]<<"]"
   KORDSYS.VAr="KORDSYS["<<TOCILO.VAL<<"]"
   OBLIK.VAR = "OBLIKAM["<<TOCILO.VAL<<"]"
   PRECKAM.VAr="PRECKAM["<<TOCILO.VAL<<"]"
   DUZNAS.VAR = "DUZNAS["<<TOCILO.VAL<<"]"
   BRTOC=TOCILO+1
   XOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",0,TR]"
   ZOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",2,TR]"
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"
   BRTOC.MAX=MAKSTOC

   _ZLJEB_SIRINA.VAR = "ZLJEB_SIRINA["<<reg[11]<<"]"
   _ZLJEB_TOCILO.VAR = "ZLJEB_TOCILO["<<BRTOC.VAL-1<<"]" 


   IF(BrojBose>0)
      BOFF.VAR="$P_UIFR["<<KORDSYS.VAL-1<<","<<BrojBose<<",TR]"
      BMAS.VAR = "$AA_IM["<<BrojBose<<"]"
      BPOZ.WR=2
      BPOZ.VAR = "POZB["<<reg[11]<<"]"
   ENDIF

END_LOAD

CHANGE(BRTOC)
   TOCILO=BRTOC-1
   _ZLJEB_TOCILO.VAR = "ZLJEB_TOCILO["<<BRTOC.VAL-1<<"]" 
END_CHANGE

CHANGE(debug1)

   reg[11]=debug1-1

   NACBRUS.VAR = "BRUS["<<reg[11]<<"]"
   SMER.VAR =  "BRUSSMER["<<REG[11]<<"]"
   GLAVA.VAR =  "GLAVA["<<REG[11]<<"]"
   PREC0.VAR = "PREC["<<reg[11]<<",0]"
   POZZ1.VAR = "POZZ["<<reg[11]<<",0]"
   POZZ2.VAR = "POZZ["<<reg[11]<<",1]"
   PREC1.VAR = "PREC["<<reg[11]<<",1]"
   TOCILO.VAR = "TOCILO["<<reg[11]<<"]"
   KOMENT.VAR = "KOMENTAR["<<REG[11]<<"]"
   VAR15.VAR = "KORX["<<reg[11]<<"]"
   VAR16.VAR = "KORZ["<<reg[11]<<"]"
   VAR1C.VAR = "KORC["<<reg[11]<<"]"
   XOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",0,TR]"
   ZOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",2,TR]"
   kocnica.var= "kocnica["<<reg[11]<<"]"
   BROJMER.VAR    = "MER_BRUS["<<reg[11]<<"]"
   BROJMERZ.VAR    = "MER_BRUS_Z["<<reg[11]<<"]"
   OBLIK.VAR = "OBLIKAM["<<TOCILO.VAL<<"]"
   PRECKAM.VAr="PRECKAM["<<TOCILO.VAL<<"]"
   DUZNAS.VAR = "DUZNAS["<<TOCILO.VAL<<"]"

   BRTOC=TOCILO+1
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"

   _ZLJEB_SIRINA.VAR = "ZLJEB_SIRINA["<<reg[11]<<"]"
   _ZLJEB_TOCILO.VAR = "ZLJEB_TOCILO["<<BRTOC.VAL-1<<"]" 

   IF(BrojBose>0)
      BOFF.VAR="$P_UIFR["<<KORDSYS.VAL-1<<","<<BrojBose<<",TR]"
      BPOZ.VAR = "POZB["<<reg[11]<<"]"
   ENDIF

END_CHANGE

CHANGE(TOCILO)

   KORDSYS.VAr="KORDSYS["<<TOCILO.VAL<<"]"
   XOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",0,TR]"
   ZOFF.VAR = "$P_UIFR["<<KORDSYS.VAL-1<<",2,TR]"
   OBLIK.VAR = "OBLIKAM["<<TOCILO.VAL<<"]"
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"
   
   IF ((NACBRUS==300 OR NACBRUS==304 OR NACBRUS==320) AND OBLIK==0)
      SMER.WR=2
   ELSE
      ;IZMENA 27.mar.2019 22.23
      ;SMER.WR=1
      SMER.WR=2
   ENDIF
   
   BRTOC=TOCILO+1

   IF(BrojBose>0)
      BOFF.VAR="$P_UIFR["<<KORDSYS.VAL-1<<","<<BrojBose<<",TR]"
   ENDIF

END_CHANGE

CHANGE(SMER)
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"

   IF ((NACBRUS==300 OR NACBRUS==304 OR NACBRUS==320) AND OBLIK==0)
      SMER.WR=2
   ELSE
      ;IZMENA 27.mar.2019 22.24
      ;SMER.WR=1
      SMER.WR=2
   ENDIF

END_CHANGE

CHANGE(NACBRUS)

   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"

   IF NACBRUS.val==0
      POZZ2.wr=1
      POZZ1.wr=1
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=1
      PREC1.WR=1
   
      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 

      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==100 OR NACBRUS.val==300 OR NACBRUS.val==301
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 

      IF NACBRUS.val==100
         GLAVA.WR=2
      ENDIF

      IF NACBRUS.val==300 OR NACBRUS.val==301
         GLAVA.WR=1
         WNP("GLAVA["<<REG[11]<<"]",0)
      ENDIF

   ENDIF

   IF NACBRUS.val==200 OR NACBRUS.val==204 OR NACBRUS.val==400
      POZZ2.wr=2
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2
   
      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 

      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==304 OR NACBRUS.val==305
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 
   
      GLAVA.WR=2
   ENDIF

   IF NACBRUS.val==320 OR NACBRUS.val==321
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2

      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 
   
      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==810 OR NACBRUS.val==820
      POZZ2.wr=2
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2

      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 

      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==900
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 1
      _ZLJEB_TOCILO.WR = 1 
   
      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==700
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 2
      _ZLJEB_TOCILO.WR = 2 
  
      GLAVA.WR=1
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF ((NACBRUS==300 OR NACBRUS==304 OR NACBRUS==320) AND OBLIK==0)
      SMER.WR=2
   ELSE
   ;IZMENA 27.mar.2019 22.24
      ;SMER.WR=1
      SMER.WR=2   
   ENDIF

END_CHANGE

;IZMENA 30/Mar/2019 13:25
CHANGE(_ZLJEB_SIRINA)

   IF NACBRUS.val==700
      reg[11]=debug1-1
      WNP("OSCA["<<reg[11]<<",2]",_ZLJEB_SIRINA)
      WNP("OSCA["<<reg[11]<<",1]",_ZLJEB_SIRINA)
      WNP("OSCA["<<reg[11]<<",0]",_ZLJEB_SIRINA)
   ENDIF

END_CHANGE
//END

