
//M(Tocilo//"\\prazna.png")
;FB271 i FB272
;jun 2019

;IZMENA 27/Feb/2019 13:46 izmena na 4 tocila
;DEF DEBUG1 = (IDD/* 1=$89575,2=$89576,3=$89577,4=$89578,5=$89579,6=$89580//,$89098/WR2///200,,250/400,,125)
DEF DEBUG1 = (IDD/* 1=$89575,2=$89576,3=$89577,4=$89578//,$89098/WR2///200,,250/390,,150)

;IZMENA 12/Mar/2019 11:28
;DEF OBLIK = (IDD/*OblikKamNiz//,$89400,,"-"/wr2///200,,250/400,,125//"pomoc.html","9005")
DEF OBLIK = (IDD/*OblikKamNiz//,$89400,,"-"/WR1,ac2///200,,250/400,,125//"pomoc.html","9005")

DEF VAR11 = (R3/20,510//,$89059,"D",$89068/LI3,///200,,250/400,,125//"pomoc.html","9041")
DEF VAR2 = (R3/2,220//,$89060,"B",$89068/LI3,///200,,250/400,,125//"pomoc.html","9042")
DEF duznas = (R3/0,160//,$89109,"L",$89068/LI3,///200,,250/400,,125//"pomoc.html","9442")
DEF VAR12 = (R3/10,100//,$89063,"V",$89074/LI3,///200,,250/400,,125//"pomoc.html","9043")
DEF BRZINA_A = (R3/10,100//,$89567,"Va",$89074/LI3,///200,,250/400,,125//"pomoc.html","9044")
DEF KOREKCIJA = (R3///,$89065,,$89068////200,,250/400,,125//"pomoc.html","9407")

DEF VAR5 = (R3/0,700//,$89061,"Dm",$89068/LI3,///200,,250/400,,125//"pomoc.html","9045")
DEF VAR6 = (R3/0,160//,$89062,"Bm",$89068/LI3,///200,,250/400,,125//"pomoc.html","9046")
DEF MAXBROB = (R0/100,30000//,$89090,"Nx",$89069/LI3,///200,,250/400,,125//"pomoc.html","9004")

DEF VAR3 = (IDD/10,15/10/,$89452,,$89067/WR2,ac2///200,,250/400,,125//"pomoc.html","9009")
DEF KORD = (IDD/*GNIZ//,$89454,""/WR1,ac2///200,,250/400,,125//"pomoc.html","9010")

DEF HLAD_A = (IDD/10,15/10/,$89568,,$89067/WR2,ac2///200,,250/400,,125//"pomoc.html","9011")
DEF KORD_A = (IDD/*GNIZ//,$89566,""/WR1,ac2///200,,250/400,,125//"pomoc.html","9012")
DEF VRETENO = (IDD/*VretenoNiz//,$89565,""/WR1,ac2///200,,350/450,,125//"pomoc.html","9006")
DEF SMERX = (I/* 0="Minus",1="Plus"//,$89293,"",/WR1,AC2///200,,250/400,,125//"pomoc.html","9030")
DEF PRILAZ = (I/* 0="Z->X",1="X->Z"//,$89294,"",/WR1,AC2///200,,250/400,,125//"pomoc.html","9030")
DEF ODSKOK = (I/* 0=$89296,1=$89297//,$89295,"",/WR1,AC2///200,,250/400,,125//"pomoc.html","9030")

;DEF Slika = (I///,,,/wr1///0,0,250,330/0,320,25,2) 

DEF MAKSTOC=(IDD////WR4//"MAXBROJTOC")
DEF XOFF = (R4///,$89448/WR4//"$P_UIFR[4,0,TR]"/255,,180/440,,120)
def drugi=(i///,"broj druge ostrice"/wr4)
def oblik2=(i////wr4)
def prec2=(r4////wr4)
def sir2=(r4////wr4)
def maxbrob2=(r4////wr4)
def vret2=(i////wr4)

HS1=(,,)
HS2=(,,)
HS3=(,,)
HS4=(,,)
HS5=(,,)
HS6=(,,)
HS7=(,,)
HS8=(,,)

VS1=($89450,,se1)
VS2=($89451,,se1)
VS3=("",,se2)
VS4=($89564,,se1)
VS5=("",,se2)
VS6=($89538,,se1)

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

PRESS(VS1)
   REG[8]=REG[8]+1
   IF (REG[8]>(MAKSTOC-1))
      REG[8]=0
   ENDIF
   DEBUG1=REG[8]+1

   call("upis8")

   ;IZMENA 28/Mar/2019 10:13
   IF (REG[8]+1==2) OR (REG[8]+1==4) OR (REG[8]+1==6)
      duznas.hlp = "\\duzina_desno.png"
   ELSE
      duznas.hlp = "\\duzina_levo.png"
   ENDIF
END_PRESS

PRESS(VS2)
   REG[8]=REG[8]-1
   IF (REG[8]<0)
      REG[8]=MAKSTOC-1
   ENDIF
   DEBUG1=REG[8]+1

   call("upis8")

   ;IZMENA 28/Mar/2019 10:13
   IF (REG[8]+1==2) OR (REG[8]+1==4) OR (REG[8]+1==6)
      duznas.hlp = "\\duzina_desno.png"
   ELSE
      duznas.hlp = "\\duzina_levo.png"
   ENDIF
END_PRESS

PRESS(VS4)
   LM("Profil","cprofil.com")
END_PRESS

PRESS(VS6)
   VAR11 = VAR11 + KOREKCIJA
   XOFF = XOFF + KOREKCIJA/2
   KOREKCIJA =0
   PI_START("/NC,201,_N_SETUFR")
END_PRESS

CHANGE(OBLIK)
   OBLIK2=OBLIK
END_CHANGE

CHANGE(VAR11)
   PREC2=VAR11
END_CHANGE

CHANGE(VAR2)
   SIR2=VAR2
END_CHANGE

CHANGE(VRETENO)
   VRET2=VRETENO
END_CHANGE

CHANGE(MAXBROB)
   MAXBROB2=MAXBROB
END_CHANGE

CHANGE(DEBUG1)
   REG[8]=DEBUG1-1
   
   call("upis8")
   
   ;IZMENA 28/Mar/2019 10:13
   IF (REG[8]+1==2) OR (REG[8]+1==4) OR (REG[8]+1==6)
      duznas.hlp = "\\duzina_desno.png"
   ELSE
      duznas.hlp = "\\duzina_levo.png"
   ENDIF
END_CHANGE

LOAD
   IF(REG[8].VLD==FALSE)
      REG[8]=0
   ENDIF
   DEBUG1=REG[8]+1

   LA("VretenoNiz","cnizovi.com")
   LA("OblikKamNiz","cnizovi.com")
   LB("HKL","chkl.com")
   CALL("TEKST")

   LA("ARR5","cnizovi.com")
   LA("GNIZ","cnizovi.com")
   call("upis8")

   ;IZMENA 28/Mar/2019 10:13
   IF (REG[8]+1==2) OR (REG[8]+1==4) OR (REG[8]+1==6)
      duznas.hlp = "\\duzina_desno.png"
   ELSE
      duznas.hlp = "\\duzina_levo.png"
   ENDIF
END_LOAD

SUB(UPIS8)

   ;=============================      
      ;IZMENA 23.okt.2019   
      WNP("SMER_AX["<<REG[8]<<"]",0)
      WNP("PRILAZ_A["<<REG[8]<<"]",0)
      WNP("ODSKOK_A["<<REG[8]<<"]",0)
   ;=============================

   VAR11.VAR = "PRECKAM["<<REG[8]<<"]"
   VAR2.VAR = "SIRKAM["<<REG[8]<<"]"
   VAR12.VAR = "BRZKAM["<<REG[8]<<"]"
   OBLIK.VAR = "OBLIKAM["<<REG[8]<<"]"
   VAR5.VAR = "MINPREC["<<REG[8]<<"]"
   VAR6.VAR = "MINSIRINA["<<REG[8]<<"]"
   BRZINA_A.VAR = "BRZKAM_A["<<REG[8]<<"]"
   VAR3.VAR = "HLADJENJE["<<REG[8]<<"]"
   KORD.VAR = "KORDSYS["<<REG[8]<<"]"
   VRETENO.VAR = "VRETENO["<<REG[8]<<"]"
   HLAD_A.VAR = "HLADJENJE_A["<<REG[8]<<"]"
   KORD_A.VAR = "DIAMANT["<<REG[8]<<"]"
   maxbrob.var = "maksbrob["<<REG[8]<<"]"
   XOFF.VAR = "$P_UIFR["<<KORD_A.VAL-1<<",0,TR]"
   SMERX.VAR =  "SMER_AX["<<REG[8]<<"]"
   PRILAZ.VAR =  "PRILAZ_A["<<REG[8]<<"]"
   ODSKOK.VAR = "ODSKOK_A["<<REG[8]<<"]"
   duznas.VAR = "duznas["<<REG[8]<<"]"
   if ((reg[8] mod 2)==0)
      drugi=reg[8]+1
   else
      drugi=reg[8]-1
   endif
   prec2.VAR = "PRECKAM["<<drugi<<"]"
   sir2.VAR = "SIRKAM["<<drugi<<"]"
   OBLIK2.VAR = "OBLIKAM["<<drugi<<"]"
   VRET2.VAR = "VRETENO["<<drugi<<"]"
   maxbrob2.var = "maksbrob["<<drugi<<"]"

END_SUB

//END
