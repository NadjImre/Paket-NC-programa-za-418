
//M(komad/$89472)


DEF KAMEN = (IDD///,$89098,"",""/LI3///255,,200/415,,120)
DEF DIAMANT = (IDD/* 2="G54",3="G55",4="G56",5="G57",6="G505",7="G506",8="G507",9="G508"/2/,$89454,""/WR1///255,,200/415,,120)
DEF Xnaslov = (R4///,"X"/WR1///200),
Znaslov = (R4///,"Z",/WR1,///330),
Unaslov = (R4///,"U",/WR4,///450)

DEF XTARG = (R4/0,1000//,$89449,,$89068////,,175/180,,120),
ZTARG = (R4/-1000,1000//,,,$89068/////310,,120),
UTARG = (R4/0,360//,,,$89068/WR2////430,,120)

DEF XMAS = (R4///,$89099,,$89068/WR1//"$AA_IM[0]"/,,175/180,,120),
ZMAS = (R4///,,,$89068/WR1//"$AA_IM[2]"//310,,120),
UMAS = (R4///,,,$89068/WR1//"$AA_IM[4]"//430,,120)

DEF XOFF = (R4///,$89448,,$89068/WR1//"$P_UIFR[1,0,TR]"/,,175/160,,120),
ZOFF = (R4///,,,$89068/WR1//"$P_UIFR[1,2,TR]"//310,,120),
UOFF = (R4///,,,$89068/WR1//"$P_UIFR[1,4,TR]"//430,,120)

DEF XFin = (R4///,$89536,,$89068/WR1//"$P_UIFR[1,0,FI]"/,,175/180,,120),
ZFin = (R4///,,,$89068/WR1//"$P_UIFR[1,2,FI]"//310,,120),
UFin = (R4///,,,$89068/WR1//"$P_UIFR[1,4,FI]"//430,,120)

DEF XADD = (R4///,$89537,,$89068/WR2///,,175/180,,120),
ZADD = (R4///,,,$89068/WR2////310,,120),
UADD = (R4///,,,$89068/WR2////430,,120)

DEF DEBUG1=(IDD////WR4)
DEF SCALU=(R4////WR4)
DEF XPOZ2=(R4////WR4)

VS1=("+",,se1)
VS2=("-",,se1)
VS3=("",,se2)
VS4=($89494,,se1)
VS5=($89492,,se1)
VS6=($89493,,se1)
VS7=("",,se2)
VS8=($89538,,se1)
HS1=(,,)
HS2=(,,)
HS3=(,,)
HS4=(,,)
HS5=(,,)
HS6=(,,)
HS7=(,,)
HS8=(,,)

PRESS(HS1)
LM("Brusenje","centar.com")
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
  IF(KAMEN>=4)
    KAMEN=1
  ELSE
    KAMEN=KAMEN+1
  ENDIF
CALL("UPIS")
END_PRESS

PRESS(VS2)
  IF(KAMEN<=1)
    KAMEN=4
  ELSE
    KAMEN=KAMEN-1
  ENDIF
CALL("UPIS")
END_PRESS

PRESS(VS4)
  XOFF=(XMAS-XTARG/2)
  XFIN=0
  PI_START("/NC,201,_N_SETUFR")
END_PRESS

PRESS(VS5)
  ZOFF = ZMAS-ZTARG
  ZFIN=0
  PI_START("/NC,201,_N_SETUFR")
END_PRESS

PRESS(VS6)
  UOFF = UMAS-UTARG
  UFIN=0
  PI_START("/NC,201,_N_SETUFR")
END_PRESS

PRESS(VS8)
  XFIN=XFIN+XADD
  XADD=0
  ZFIN=ZFIN+ZADD
  ZADD=0
  UFIN=UBIN+UADD
  UADD=0
  PI_START("/NC,201,_N_SETUFR")
END_PRESS

CHANGE (KAMEN)

REG[5]=KAMEN.VAL-1
diamant.VAr="KORDSYS["<<REG[5]<<"]"
debug1.val=diamant-1
XOFF.VAR="$P_UIFR["<<DEBUG1<<",0,TR]"
ZOFF.VAR="$P_UIFR["<<DEBUG1<<",2,TR]"
UOFF.VAR="$P_UIFR["<<DEBUG1<<",4,TR]"

XFin.VAR="$P_UIFR["<<DEBUG1<<",0,fi]"
ZFin.VAR="$P_UIFR["<<DEBUG1<<",2,fi]"
UFin.VAR="$P_UIFR["<<DEBUG1<<",4,fi]"
END_CHANGE

LOAD

  LB("HKL","chkl.com")
  CALL("TEKST")

IF(REG[5].VLD==FALSE)
  REG[5]=0
ENDIF

KAMEN.VAL=REG[5]+1
diamant.VAr="KORDSYS["<<REG[5]<<"]"
debug1.val=diamant-1
XOFF.VAR="$P_UIFR["<<DEBUG1<<",0,TR]"
ZOFF.VAR="$P_UIFR["<<DEBUG1<<",2,TR]"
UOFF.VAR="$P_UIFR["<<DEBUG1<<",4,TR]"

XFin.VAR="$P_UIFR["<<DEBUG1<<",0,fi]"
ZFin.VAR="$P_UIFR["<<DEBUG1<<",2,fi]"
UFin.VAR="$P_UIFR["<<DEBUG1<<",4,fi]"



END_LOAD

//END

//B(PROG5)

SUB(UPIS5)


diamant.VAr="KORDSYS["<<REG[5]<<"]"
debug1.val=diamant-1
XOFF.VAR="$P_UIFR["<<DEBUG1<<",0,TR]"
ZOFF.VAR="$P_UIFR["<<DEBUG1<<",2,TR]"
UOFF.VAR="$P_UIFR["<<DEBUG1<<",4,TR]"

XFin.VAR="$P_UIFR["<<DEBUG1<<",0,fi]"
ZFin.VAR="$P_UIFR["<<DEBUG1<<",2,fi]"
UFin.VAR="$P_UIFR["<<DEBUG1<<",4,fi]"


END_SUB

//END
