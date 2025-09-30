
//M(brusenje/$89272)
;FB289 februar 2020

def debug1 = (i/1,90/1/,$89515////235/375,,50)

DEF BRTOC = (S///,"Alat za brusenje"////235,,190/375,,95//"pomoc.html","9007"),
DEF DBROJTOC = (I///,,"D"////500,25,20/500,25,40)

DEF NACBRUS = (I/*ARR6//,$89000,,////235,,120/375,,150//"pomoc.html","9008")

DEF SMER = (I/* 0=$89191,1=$89192//,$89198,,/wr2///235,,120/375,,150)

DEF PREC0 = (R4/0,//$89100,$89101,"D1",/LI3,///235,,160/375,,60//"pomoc.html","9010"),
PREC1 = (R4/0,//$89100,,"D2",$89068/LI3,///465,,20/465,,110//"pomoc.html","9011")

DEF POZZ1 = (R4/,//$89102,$89103,"Z1",/LI3,///235,,160/375,,60//"pomoc.html","9012"),
POZZ2 = (R4/,//$89104,,"Z2",$89068/LI3,///465,,20/465,,110//"pomoc.html","9013")

DEF BROJMER = (I///,$89525,"x",////235,,165/375,,60),
BROJMERZ = (I///,,"z",$89067////465,,25/465,,110)

DEF VAR15 = (R4/,//$89065,$89065,,/LI3,///235,,165/375,,60),
VAR25 = (R4/,//,,,$89068/LI3,///465,,18/465,,110)

DEF VAR16 = (R4/,//$89066,$89066,,/LI3,///235,,165/375,,60),
VAR26 = (R4/,//,,,$89068/LI3,///465,,25/465,,110)

DEF XSAFE = (R4///,$89436,"X",///"bezprec[0]"/235,,165/375,,60),
ZSAFE = (R4///,,"Z",$89068/WR2//"bezpoz[0]"/465,,25/465,,110)

DEF KORDSYS = (IDD/* 2="G54",3="G55",4="G56",5="G57",6="G505",7="G506",8="G507",9="G508",10="G509",11="G510",12="G511",13="G512",14="G513",15="G514",16="G515",17="G515"/2/,$89454,""/WR2///235,,145/375,,60)
DEF OBLIK = (IDD/*OblikKamNiz//,$89400,,/wr2///235,,145/375,,100//"pomoc.html","9005")
DEF KONTURA = (S///,$89653,////235,,100/375,,100//"pomoc.html","9017")
def primx=(i/0,100//,$89654,"X=","%"////235,,165/375,,90),
primz=(i/-100,100//,,"Z=","%"////455,,35/465,,90)
DEF BRZINA = (R3/10,100//,$89063,"V",$89074/LI3,///235,,165/375,,110//"pomoc.html","9044")

DEF HLADJENJE = (IDD/10,15/10/,$89452,,$89067/WR2,ac2///235,,145/375,,110//"pomoc.html","9009")

DEF KOMENT = (S///,$89569,////235,,100/315,,225//"pomoc.html","9017")

DEF Slika = (I///,,,/wr1///0,0,250,330/0,320,25,2) 

;IZMENA - ne koristi se na FB289
DEF Glava = (I/*OffONNiz//,$89140,,"0/1"/wr4///250,,140/425,,130//"pomoc.html","9018")
DEF _ZLJEB_SIRINA = (R4/,//$89573,$89573,"L",$89068/wr4///250,,180/425,,120//"pomoc.html","9013")
DEF _ZLJEB_TOCILO = (R4/,//$89574,$89574,"B",$89068/wr4,///250,,180/425,,120//"pomoc.html","9013")
DEF BPOZ = (R///,$89552,,$89072/WR4///250,,180/425,,120)
DEF kocnica = (I/* 0=$89406,1=$89407, 2=$89408//,$89405/wr4///250,,180/390,,120//"pomoc.html","9018")
DEF VAR1C = (R4/,//$89066,$89298,,$89068/wr4///235,,150/365,,110),
VAR2C = (R4/,//,,,$89068/LI3,wr4///,350/465,,110)

;IZMENA 30.maj.2019 13:18
DEF CMAS = (R4///,,"C1",$89068/WR4//"$AA_IM[1]"//420)
DEF XMAS = (R4///,$89099,,$89068/WR4//"$AA_Iw[0]"/200/315)
DEF ZMAS = (R4///,,,$89068/WR4//"$AA_Iw[2]"//425)
DEF BMAS = (R4///,,,$89068/WR4//"$AA_IM[5]"//425)

DEF BOFF = (R4///,,,$89068/WR4//"$P_UIFR[1,5,TR]"//425)
DEF BrojBose=(IDD////WR4//"BROJ_B_OSE")
DEF DEBUG5 = (IDD/0,19//,$89474/WR4///200,,100/390)
DEF MAKSBROJ=(IDD////WR4//"MAXBRUSBROJ")

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
DEF CSAFEX = (R////WR2)
DEF CSAFEZ = (R////Wr2)
DEF CBRZINA = (R////Wr2)
DEF CHLADJENJE = (I////Wr2)
DEF CKORDSYS = (I////Wr2)
DEF COBLIK = (I////Wr2)
DEF CBRTOC = (S////Wr2)
DEF CDBROJTOC = (I////Wr2)
DEF CSMER = (I////Wr2)
DEF ckontura = (S////Wr2)
def cprimx=(r1////wr2)
def cprimz=(r1////wr2)

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
        PREC0 = XMAS
     ELSE
        PREC0 = XMAS
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
     CSAFEX = XSAFE
     CSAFEZ = ZSAFE
     CBRZINA = BRZINA
     CKORDSYS = KORDSYS
     COBLIK = OBLIK
     CHLADJENJE = HLADJENJE
     CBRTOC = BRTOC
     CDBROJTOC = DBROJTOC
     CSMER = SMER
     ckontura=kontura
     cprimx=primx
     cprimz=primz
   ENDIF
END_PRESS

PRESS(VS5)
   IF(DEBUG5==0)
     POZZ1 = ZMAS
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
     XSAFE = CSAFEX
     ZSAFE = CSAFEZ
     BRZINA = CBRZINA
     KORDSYS = CKORDSYS
     OBLIK = COBLIK
     HLADJENJE = CHLADJENJE
     BRTOC = CBRTOC
     DBROJTOC = CDBROJTOC
     SMER = CSMER
     kontura=ckontura
     primx=cprimx
     primz=cprimz
  ENDIF
END_PRESS

PRESS(VS6)
    IF(DEBUG5==0)
     IF(OBLIK==0)
        PREC1 = XMAS
     ELSE
        PREC1 = XMAS
     ENDIF
    ELSE
      var15 = var15+var25
      var16 = var16+var26
      var1C = var1C+var2C 
    ENDIF
END_PRESS

PRESS(VS7)
   IF(DEBUG5==0)
      POZZ2 = ZMAS
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
     vs7.se=1
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
     ;IZMENA 23.okt.2019
     vs7.se=2
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
  LB("EKRANI","CBRUSENJE.COM")

  LA("ARR6","cnizovi.com")
  LA("OffOnNiz","cnizovi.com")
  LA("OblikKamNiz","cnizovi.com")
  
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
   Kontura.VAR = "nazivkonture["<<REG[11]<<"]"
   VAR15.VAR = "KORX["<<reg[11]<<"]"
   VAR16.VAR = "KORZ["<<reg[11]<<"]"
   VAR1C.VAR = "KORC["<<reg[11]<<"]"
   kocnica.var= "kocnica["<<reg[11]<<"]"
   BROJMER.VAR    = "MER_BRUS["<<reg[11]<<"]"
   BROJMERZ.VAR    = "MER_BRUS_Z["<<reg[11]<<"]"
   KORDSYS.VAr="KORDSYS["<<Reg[11]<<"]"
   OBLIK.VAR = "OBLIKAM["<<Reg[11]<<"]"
   DBROJTOC.VAR = "BrojIviceToc["<<Reg[11]<<"]"
   BRTOC.VAR="NazivToc["<<Reg[11]<<"]"
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"
   XSAFE.VAr="BEZPREC["<<REG[11]<<"]"
   ZSAFE.VAr="BEZPOZ["<<REG[11]<<"]"
   HLADJENJE.VAR = "HLADJENJE["<<REG[11]<<"]"
   BRZINA.VAR = "BRZKAM["<<REG[11]<<"]"
   primx.VAR = "primugao["<<REG[11]<<",0]"
   primz.VAR = "primugao["<<REG[11]<<",1]"

   _ZLJEB_SIRINA.VAR = "ZLJEB_SIRINA["<<reg[11]<<"]"
   _ZLJEB_TOCILO.VAR = "ZLJEB_TOCILO["<<BRTOC.VAL-1<<"]" 

   IF(BrojBose>0)
      BOFF.VAR="$P_UIFR["<<KORDSYS.VAL-1<<","<<BrojBose<<",TR]"
      BMAS.VAR = "$AA_IM["<<BrojBose<<"]"
      BPOZ.WR=2
      BPOZ.VAR = "POZB["<<reg[11]<<"]"
   ENDIF
  CALL("PARAMETRI_BRUSENJA")
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
   KOMENT.VAR = "KOMENTAR["<<REG[11]<<"]"
   VAR15.VAR = "KORX["<<reg[11]<<"]"
   VAR16.VAR = "KORZ["<<reg[11]<<"]"
   VAR1C.VAR = "KORC["<<reg[11]<<"]"
   kocnica.var= "kocnica["<<reg[11]<<"]"
   BROJMER.VAR    = "MER_BRUS["<<reg[11]<<"]"
   BROJMERZ.VAR    = "MER_BRUS_Z["<<reg[11]<<"]"
   OBLIK.VAR = "OBLIKAM["<<REG[11]<<"]"
   DBROJTOC.VAR = "BrojIviceToc["<<Reg[11]<<"]"
   BRTOC.Var="NazivToc["<<REG[11]<<"]"
   slika.st = "\\sm" << NACBRUS+2*OBLIK+SMER<< ".png"
   XSAFE.VAr="BEZPREC["<<REG[11]<<"]"
   ZSAFE.VAr="BEZPOZ["<<REG[11]<<"]"
   HLADJENJE.VAR = "HLADJENJE["<<REG[11]<<"]"
   BRZINA.VAR = "BRZKAM["<<REG[11]<<"]"
   KORDSYS.VAr="KORDSYS["<<Reg[11]<<"]"
   _ZLJEB_SIRINA.VAR = "ZLJEB_SIRINA["<<reg[11]<<"]"
   _ZLJEB_TOCILO.VAR = "ZLJEB_TOCILO["<<BRTOC.VAL-1<<"]" 
   Kontura.VAR = "nazivkonture["<<REG[11]<<"]"
   primx.VAR = "primugao["<<REG[11]<<",0]"
   primz.VAR = "primugao["<<REG[11]<<",1]"

   IF(BrojBose>0)
      BOFF.VAR="$P_UIFR["<<KORDSYS.VAL-1<<","<<BrojBose<<",TR]"
      BPOZ.VAR = "POZB["<<reg[11]<<"]"
   ENDIF
   
  CALL("PARAMETRI_BRUSENJA")

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
  CALL("PARAMETRI_BRUSENJA")
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


//B(EKRANI)
;FB271 i FB272
;10.sep.2019 10:04

SUB(PARAMETRI_BRUSENJA)

   ;=============================      
      ;IZMENA 23.okt.2019   
      WNP("GLAVA["<<REG[11]<<"]",0)
      WNP("KORC["<<reg[11]<<"]",0)
   ;=============================

  debug1.WR = 2 
  BRTOC.WR = 2 
  NACBRUS.WR = 2 
  SMER.WR = 2 
  Glava.WR = 4 ;IZMENA 23.okt.2019 
  PREC0.WR = 2 
  PREC1.WR = 2 
  POZZ1.WR = 2 
  POZZ2.WR = 2 
  _ZLJEB_SIRINA.WR = 4 
  _ZLJEB_TOCILO.WR = 4 
  BROJMER.WR = 2 
  BROJMERZ.WR = 2 
  BPOZ.WR = 4
  kocnica.WR = 4
  KOMENT.WR = 2 
  VAR15.WR = 2 
  VAR25.WR = 2 
  VAR16.WR = 2
  VAR26.WR = 2 
  VAR1C.WR = 4 ;IZMENA 23.okt.2019 
  VAR2C.WR = 4 ;IZMENA 23.okt.2019
  
   IF NACBRUS.val==0
    
      ;debug1.WR = 2 
      ;BRTOC.WR = 2 
      ;NACBRUS.WR = 2 
      SMER.WR = 1 
      Glava.WR = 1 
      PREC0.WR = 1 
      PREC1.WR = 1 
      POZZ1.WR = 1 
      POZZ2.WR = 1 
      _ZLJEB_SIRINA.WR = 4 
      _ZLJEB_TOCILO.WR = 4 
      BROJMER.WR = 1
      BROJMERZ.WR = 1
      BPOZ.WR = 4
      kocnica.WR = 4
      KOMENT.WR = 1
      VAR15.WR = 1
      VAR25.WR = 1 
      VAR16.WR = 1 
      VAR26.WR = 1 
      VAR1C.WR = 4 
      VAR2C.WR = 4
   
     WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==100 OR NACBRUS.val==300 OR NACBRUS.val==301
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4

      IF NACBRUS.val==100
         GLAVA.WR=4 ;IZMENA 23.okt.2019 
      ENDIF

      IF NACBRUS.val==300 OR NACBRUS.val==301
         GLAVA.WR=4
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
   
      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4

      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==304 OR NACBRUS.val==305
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4
   
      GLAVA.WR=4 ;IZMENA 23.okt.2019 
   ENDIF

   IF NACBRUS.val==320 OR NACBRUS.val==321
      POZZ2.wr=2
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4
   
      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

    ;navoj oscilovanje
   IF NACBRUS.val==820
      POZZ2.wr=2
      POZZ1.wr=2
      ;VAR15.wr=2
      ;VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2
      BPOZ.WR=2
      
      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4

      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

    ;navoj usecanje
   IF NACBRUS.val==810
      POZZ2.wr=1
      POZZ1.wr=2
      ;VAR15.wr=2
      ;VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1
      BPOZ.WR=4

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4

      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

    ;pritupljenje 1 i 2
   IF (NACBRUS.val==500) OR (NACBRUS.val==501)
      POZZ2.wr=2
      POZZ1.wr=2
      ;VAR15.wr=2
      ;VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2
      BPOZ.WR=4
      
      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4

      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==900
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=2

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4
   
      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF NACBRUS.val==700
      POZZ2.wr=1
      POZZ1.wr=2
      VAR15.wr=2
      VAR16.wr=2
      PREC0.wr=2
      PREC1.WR=1

      _ZLJEB_SIRINA.WR = 4
      _ZLJEB_TOCILO.WR = 4
  
      GLAVA.WR=4
      WNP("GLAVA["<<REG[11]<<"]",0)
   ENDIF

   IF ((NACBRUS==300 OR NACBRUS==304 OR NACBRUS==320) AND OBLIK==0)
      SMER.WR=2
   ELSE
   ;IZMENA 27.mar.2019 22.24
      ;SMER.WR=1
      SMER.WR=2   
   ENDIF

END_SUB

//END


