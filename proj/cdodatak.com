
//M(PetiNO/$89444////10,20)
;navoj sa oscilacijama
DEF tipbrus = (I/* 0=$89152, 3=$89432,1=$89430,2=$89431,4=$89433//,$89400,,/wr4//"BRUS[0]"/250,15,180/415,15,120//"pom.html","B001")
def osca = (I/*0=$89522,1=$89523,2=$89079,3=$89081,4=$89635//$89400,"-",,/wr1///250,,180/415,,120//"pom.html","B002")
DEF VAR1 = (R3///,$89434,"x",$89068/wr4/"\\sh047.png"/"MERAX[0]"/250,,180/415,,120//"pom.html","B003")

DEF VAR2 = (R1///,$89107,"Ng",$89069///"BROB[0]"/250,,180/415,,120//"pom.html","B004")
DEF PRIMICANJE = (I/*0=$89557,1=$89558//,$89159,,////250,,180/415,,120//"pom.html","B005")
DEF PRIMICANJE2 = (I/*0=$89559,1=$89560 ,2=$89561,3=$89562//,$89563,,,////250,,180/415,,120//"pom.html","B006")
DEF IZPUNOG = (I/*0=$89154,1=$89155//, $89566////250,,180/415,,120//"pom.html","B007")
DEF DODGRUB = (R3///,$89108,"Dg",$89068///"DOD1[0]"/250,,180/415,,120//"pom.html","B008")
DEF VAR8 = (i///,$89564,"Sg","hod"//"\\sh045.png"/"KOR1[0]"/250,,180/415,,120//"pom.html","B009")
DEF VAR6 = (R3///,$89109,"Dz",$89068//"\\sh046.png"/"DOD2[0]"/250,,180/415,,120//"pom.html","B010")
DEF VAR9 = (i///,$89565,"Sz","hod"//"\\sh046.png"/"KOR2[0]"/250,,180/415,,120//"pom.html","B011")
DEF IZBR1 = (I///,$89121,"Ig","hod"//"\\sh043.png"/"IZBR[0]"/250,,180/415,,120//"pom.html","B012")
DEF NACBRUS = (IDD///,,,/wr4//"NACBRUS[0]")
Def Ugao = (IDD/*1=$89154,0=$89155//,$89436,,$89067//"\\sh044.png"/"NAVOJ[0]"/250,,180/415,,120//"pom.html","B013")
DEF VAR11 = (R3///,$89437,"w",$89068/WR4//"prekid[0]"/250,,180/415,,120//"pom.html","B014")
DEF var0 = (IDD////wr4//"NACABRIHT[0]"/250,,180/415)

DEF VAR45 = (R3/-10,10//,$89438,"x",$89068/Li3,wr2/"\\sh050.png"/"KORX[0]"/5,260,120/150,260,100//"pom.html","B015")
DEF VAR46 = (R3/-10,10//,$89438,"z",$89068/LI3/"\\sh050.png"/"KORZ[0]"/5,280,120/150,280,100//"pom.html","B016")
DEF VAR4C = (R3/-360,360//,$89438,"c",$89068/LI3/"\\sh050.png"/"KORC[0]"/5,300,120/150,300,100//"pom.html","B017")

def brojbrus=(i////wr4//"brusbroj")

VS1=($89512,,se1)
VS2=($89531,,se1)
vs3=($89647,se1)
;VS5=("PLUS",,se1)
;VS6=("MINUS",,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif

osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif

END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif

END_PRESS

PRESS(VS3)

OSCA=2
LM("PetiPU","cdodatak.com")

END_PRESS



CHANGE(IZPUNOG)
 IF(IZPUNOG==0)
   dodgrub.wr=1
 ELSE
   dodgrub.wr=2
 ENDIF
END_CHANGE

CHANGE(ugao)
     IF (ugao==1) 
        ugao.hlp="\\sh044.png"
     ELSE 
        ugao.hlp="\\sh042.png"
     ENDIF
END_CHANGE

LOAD
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"

  tipbrus.VAR = "BRUS["<<BROJBRUS<<"]"
  VAR1.VAR = "MERAX["<<BROJBRUS<<"]"
  VAR2.VAR = "BROB["<<BROJBRUS<<"]"
  DODGRUB.VAR = "DOD1["<<BROJBRUS<<"]"
  VAR8.VAR = "KOR1["<<BROJBRUS<<"]"
  VAR6.VAR = "DOD2["<<BROJBRUS<<"]"
  VAR9.VAR = "KOR2["<<BROJBRUS<<"]"
  IZBR1.VAR = "IZBR["<<BROJBRUS<<"]"
  Ugao.VAR = "NAVOJ["<<BROJBRUS<<"]"
  VAR11.VAR = "prekid["<<BROJBRUS<<"]"
  VAR45.VAR = "KORX["<<BROJBRUS<<"]"
  VAR46.VAR = "KORZ["<<BROJBRUS<<"]"
  VAR4C.VAR = "KORC["<<BROJBRUS<<"]"
  PRIMICANJE.VAR = "PRIM["<<BROJBRUS<<"]"
  PRIMICANJE2.VAR = "PRIM2["<<BROJBRUS<<"]"
  IZPUNOG.VAR = "IZPUNOG["<<BROJBRUS<<"]"

  RECT(240,10,300,361,128,130,1)
  RECT(0,250,230,95,128,132,1)
  RECT(0,10,230,230,128,133,1)

  hd = $89444 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)  
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  hs7.se=3
  HLP="//brusnavoscil.png"
END_LOAD

//END


//M(PetiNU/$89444////10,20)
;navoj sa usecanjem
def osca = (I/*0=$89522,1=$89523,2=$89079,3=$89081,4=$89635//$89400,"-",,/wr1///250,15,180/415,15,120//"pom.html","B002")
DEF VAR1 = (R3///,$89434,"x",$89068/WR4//"MERAX[0]"/250,,180/415,,120//"pom.html","B101")

DEF VAR2 = (R1///,$89107,"Ng",$89069///"BROB[0]"/250,,180/415,,120//"pom.html","B102")
DEF VAR8 = (r1///,$89568,"Sg","obr"///"KOR1[0]"/250,,180/415,,120//"pom.html","B103")
DEF VAR9 = (r1///,$89569,"Sz","obr"///"KOR2[0]"/250,,180/415,,120//"pom.html","B104")
DEF NACBRUS = (IDD////wr4//"NACBRUS[0]")
DEF var0 = (IDD////wr4//"NACABRIHT[0]")

DEF VAR45 = (R3/-10,10//,$89438,"x",$89068/Li3//"KORX[0]"/5,260,120/150,260,100//"pom.html","B105")
DEF VAR46 = (R3/-10,10//,$89438,"z",$89068/LI3//"KORZ[0]"/5,280,120/150,280,100//"pom.html","B106")
DEF VAR4C = (R3/-10,10//,$89438,"c",$89068/LI3//"KORC[0]"/5,300,120/150,300,100//"pom.html","B107")

;DEF SLIKA = (I/* 1="\\sh041.png", 2="\\sh042.png", 3="\\sh043.png", 4="\\sh044.png", 5="\\sh045.png", 6="\\sh046.png", 7="\\sh047.png", 8="\\sh048.png", 9="\\sh049.png", 10="\\sh050.png",  11="\\sh053.png", 22="\\sh022.png", 23="\\sh023.png"//////10,20,210,210/10,20,210,210)
def brojbrus=(i////wr4//"brusbroj")

VS1=($89512,,se1)
VS2=($89531,,se1)
vs3=($89647,se1)
;VS5=("PLUS",,se1)
;VS6=("MINUS",,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS3)

  OSCA=1
  LM("PetiNO","cdodatak.com")

END_PRESS

LOAD
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  VAR1.VAR = "MERAX["<<BROJBRUS<<"]"
  VAR2.VAR = "BROB["<<BROJBRUS<<"]"
  VAR8.VAR = "KOR1["<<BROJBRUS<<"]"
  VAR9.VAR = "KOR2["<<BROJBRUS<<"]"
  VAR45.VAR = "KORX["<<BROJBRUS<<"]"
  VAR46.VAR = "KORZ["<<BROJBRUS<<"]"
  VAR4C.VAR = "KORC["<<BROJBRUS<<"]"
  var0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  RECT(240,10,300,361,128,130,130)
  RECT(0,250,230,95,128,132,132)
  RECT(0,10,230,230,128,133,133)

  hd = $89444 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)  
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  hs7.se=3
  HLP="//brusnavusec.png"

END_LOAD

//END


//M(PetiPO/$89444////10,20)
;prečnik sa oscilacijama

DEF tipbrus = (I/* 0=$89152, 3=$89432,1=$89430,2=$89431,4=$89433//,"Nacin brusenja",,/WR4//"BRUS[0]"/250,15,180/415,15,120//"pom.html","B201")
def osca = (I/*0=$89522,1=$89523,2=$89079,3=$89081,4=$89635//$89400,"-",,/wr1///250,,180/415,,120//"pom.html","B002")
DEF VAR1 = (R3///,$89434,"x",$89068/WR4//"MERAX[0]"/250,,180/415,,120//"pom.html","B202")
DEF VARD = (R3/-450,450//,$89409,"D1",$89068/LI3,//"PREC1[0]"/250,,180/415,,120//"pom.html","M004")
DEF VAR2 = (R1///,$89107,"Ng",$89069///"BROB[0]"/250,,180/415,,120//"pom.html","B203")
DEF VAR10 = (R1///,$89112,"Vg",$89070///"BRZ1[0]"/250,,180/415,,120//"pom.html","B204")
DEF PRIMICANJE = (I/*0=$89156,1=$89158,-1=$89157//,$89159,,////250,,180/415,,120//"pom.html","B205")
DEF DODGRUB = (R3///,$89108,"Dg",$89068///"DOD1[0]"/250,,180/415,,120//"pom.html","B206")
DEF VAR8 = (r3///,$89116,"Sg",$89068///"KOR1[0]"/250,,180/415,,120//"pom.html","B207")
DEF VAR6 = (R3///,$89109,"Dz",$89068///"DOD2[0]"/250,,180/415,,120//"pom.html","B208")
DEF VAR9 = (r3///,$89117,"Sz",$89068///"KOR2[0]"/250,,180/415,,120//"pom.html","B209")
DEF IZBR1 = (I///,$89121,"Ig","hod"///"IZBR[0]"/250,,180/415,,120//"pom.html","B210")
DEF NACBRUS = (IDD////wr4//"NACBRUS[0]")

DEF VAR11 = (R3///,$89437,"w",$89068/WR4//"prekid[0]"/250,,180/415,,120//"pom.html","B211")
DEF var0 = (IDD/* 0="Navoj",1="Cilindar"//,"Tip brusenja","-","."/WR4//"NACABRIHT[0]"/250,,180/415)

DEF VAR45 = (R3/-10,10//,$89438,"x",$89068/Li3//"KORX[0]"/5,260,120/150,260,100//"pom.html","B211")
DEF VAR46 = (R3/-10,10//,$89438,"z",$89068/LI3//"KORZ[0]"/5,280,120/150,280,100//"pom.html","B212")
DEF VAR4C = (R3/-10,10//,$89438,"c",$89068/LI3//"KORC[0]"/5,300,120/150,300,100//"pom.html","B213")

;DEF SLIKA = (I/* 1="\\sh041.png", 2="\\sh042.png", 3="\\sh043.png", 4="\\sh044.png", 5="\\sh045.png", 6="\\sh046.png", 7="\\sh047.png", 8="\\sh048.png", 9="\\sh049.png", 10="\\sh050.png",  11="\\sh053.png", 22="\\sh022.png", 23="\\sh023.png"//////10,20,210,210/10,20,210,210)
def brojbrus=(i////wr4//"brusbroj")

VS1=($89512,,se1)
VS2=($89531,,se1)
vs3=($89647,se1)
;VS5=("PLUS",,se1)
;VS6=("MINUS",,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS3)

  OSCA=4
  LM("Obaranje","cdodatak.com")

END_PRESS

PRESS(VS5)
VAR11=VAR11+VAR8
END_PRESs

PRESS(VS6)
VAR11=VAR11-VAR8
END_PRESS

LOAD
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
VARD.VAR ="PREC1["<<BROJBRUS<<"]"
  tipbrus.VAR = "BRUS["<<BROJBRUS<<"]"
  VAR1.VAR = "MERAX["<<BROJBRUS<<"]"
  VAR2.VAR = "BROB["<<BROJBRUS<<"]"
  VAR10.VAR = "BRZ1["<<BROJBRUS<<"]"
  DODGRUB.VAR = "DOD1["<<BROJBRUS<<"]"
  VAR8.VAR = "KOR1["<<BROJBRUS<<"]"
  VAR6.VAR = "DOD2["<<BROJBRUS<<"]"
  VAR9.VAR = "KOR2["<<BROJBRUS<<"]"
  IZBR1.VAR = "IZBR["<<BROJBRUS<<"]"
  VAR11.VAR = "prekid["<<BROJBRUS<<"]"
  VAR45.VAR = "KORX["<<BROJBRUS<<"]"
  VAR46.VAR = "KORZ["<<BROJBRUS<<"]"
  VAR4C.VAR = "KORC["<<BROJBRUS<<"]"
  PRIMICANJE.VAR = "PRIM["<<BROJBRUS<<"]"
  var0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  RECT(240,10,300,361,128,133,1)
  RECT(0,250,230,95,128,132,1)
  RECT(0,10,230,230,128,130,1)

  hd = $89444 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)  
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  hs7.se=3
  HLP="//brusoscil.png"
END_LOAD

//END


//M(PetiPU/$89444////10,20)
; precnik usecanjem

DEF tipbrus = (I/* 0=$89152, 3=$89432,1=$89430,2=$89431,4=$89433//,"Nacin brusenja",,/WR4//"BRUS[0]"/250,15,180/415,15,120//"pom.html","B301")
def osca = (I/*0=$89522,1=$89523,2=$89079,3=$89081,4=$89635//$89400,"-",,/wr1///250,,180/415,,120//"pom.html","B002")
DEF VAR1 = (R3///,$89434,"x",$89068/WR4//"MERAX[0]"/250,,180/415,,120//"pom.html","B302")
DEF VARD = (R3/-450,450//,$89409,"D1",$89068/LI3,//"PREC1[0]"/250,,180/415,,120//"pom.html","M004")
DEF VAR2 = (R1///,$89107,"Ng",$89069///"BROB[0]"/250,,180/415,,120//"pom.html","B303")
DEF DODGRUB = (R3///,$89108,"Dg",$89068///"DOD1[0]"/250,,180/415,,120//"pom.html","B304")
DEF VAR8 = (r3///,$89110,"Sg",$89070///"KOR1[0]"/250,,180/415,,120//"pom.html","B305")
DEF VAR6 = (R3///,$89109,"Dz",$89068///"DOD2[0]"/250,,180/415,,120//"pom.html","B306")
DEF VAR9 = (r3///,$89111,"Sz",$89070///"KOR2[0]"/250,,180/415,,120//"pom.html","B307")
DEF IZBR1 = (R1///,$89113,"Ig",$89071///"IZBR[0]"/250,,180/415,,120//"pom.html","B308")
DEF NACBRUS = (IDD////wr4//"NACBRUS[0]")
DEF VAR11 = (R3///,$89437,"w",$89068/WR4//"prekid[0]"/250,,180/415,,120//"pom.html","B309")
DEF var0 = (IDD////wr4//"NACABRIHT[0]"/250,,180/415)

DEF VAR45 = (R3/-10,10//,$89438,"x",$89068/Li3//"KORX[0]"/5,260,120/150,260,100//"pom.html","B310")
DEF VAR46 = (R3/-10,10//,$89438,"z",$89068/LI3//"KORZ[0]"/5,280,120/150,280,100//"pom.html","B311")
DEF VAR4C = (R3/-10,10//,$89438,"c",$89068/LI3//"KORC[0]"/5,300,120/150,300,100//"pom.html","B312")

;DEF SLIKA = (I/* 1="\\sh041.png", 2="\\sh042.png", 3="\\sh043.png", 4="\\sh044.png", 5="\\sh045.png", 6="\\sh046.png", 7="\\sh047.png", 8="\\sh048.png", 9="\\sh049.png", 10="\\sh050.png",  11="\\sh053.png", 22="\\sh022.png", 23="\\sh023.png"//////10,20,210,210/10,20,210,210)
def brojbrus=(i////wr4//"brusbroj")

VS1=($89512,,se1)
VS2=($89531,,se1)
vs3=($89647,se1)
;VS5=("PLUS",,se1)
;VS6=("MINUS",,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS3)

  OSCA=3
  LM("PetiPO","cdodatak.com")

END_PRESS

PRESS(VS5)
VAR11=VAR11+VAR8
END_PRESS

PRESS(VS6)
VAR11=VAR11-VAR8
END_PRESS


LOAD
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
VARD.VAR ="PREC1["<<BROJBRUS<<"]"
  tipbrus.VAR = "BRUS["<<BROJBRUS<<"]"
  VAR1.VAR = "MERAX["<<BROJBRUS<<"]"
  VAR2.VAR = "BROB["<<BROJBRUS<<"]"
  DODGRUB.VAR = "DOD1["<<BROJBRUS<<"]"
  VAR8.VAR = "KOR1["<<BROJBRUS<<"]"
  VAR6.VAR = "DOD2["<<BROJBRUS<<"]"
  VAR9.VAR = "KOR2["<<BROJBRUS<<"]"
  IZBR1.VAR = "IZBR["<<BROJBRUS<<"]"
  VAR11.VAR = "prekid["<<BROJBRUS<<"]"
  VAR45.VAR = "KORX["<<BROJBRUS<<"]"
  VAR46.VAR = "KORZ["<<BROJBRUS<<"]"
  VAR4C.VAR = "KORC["<<BROJBRUS<<"]"
  var0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  RECT(240,10,300,361,128,133,1)
  RECT(0,250,230,95,128,132,1)
  RECT(0,10,230,230,128,130,1)

  hd = $89444 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)  
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  hs7.se=3
  HLP="//brususec.png"

END_LOAD

//END

//M(OBARANJE/$89444////10,20)
; prITUPLJENJE 
def osca = (I/*0=$89522,1=$89523,2=$89079,3=$89081,4=$89635//$89400,"-",,/wr1///250,20,180/415,20,120//"pom.html","B002")
DEF PRITUP = (IDD/*1=$89549,0=$89550,2=$89373//,$89634///"PRITUP[0]"/250,,180/415,,120//"pom.html","B401")
DEF POZ1P = (R3///,$89648,"Z1P",$89068/WR2//"sirkom[0]"/250,,180/415,,120//"pom.html","B403")
DEF POZC1 = (R3///,$89649,"C1",$89072/WR2//"POZC1[0]"/250,,180/415,,120//"pom.html","B407")
DEF POZC2 = (R3///,$89650,"C2",$89072/WR2//"POZC2[0]"/250,,180/415,,120//"pom.html","B407")
DEF VAR1 = (R3///,$89434,"x",$89068/WR4//"MERAX[0]"/250,,180/415,,120//"pom.html","B408")
DEF VAR10 = (R1///,$89112,"Vg",$89070///"BRZ1[0]"/250,,180/415,,120//"pom.html","B409")
DEF VAR8 = (r3///,$89116,"Sg",$89068///"KOR1[0]"/250,,180/415,,120//"pom.html","B410")
DEF IZBR1 = (R1///,$89121,"Ig","HOD"///"IZBR[0]"/250,,180/415,,120//"pom.html","B411")
DEF NACBRUS = (IDD////wr4//"NACBRUS[0]")
DEF VAR11 = (R3///,$89437,"w",$89068/WR4//"prekid[0]"/250,,180/415,,120//"pom.html","B412")
DEF var0 = (IDD////wr4//"NACABRIHT[0]"/250,,180/415)

DEF VAR45 = (R3/-10,10//,$89438,"x",$89068/Li3//"KORX[0]"/5,260,120/150,260,100//"pom.html","B413")
DEF VAR46 = (R3/-10,10//,$89438,"z",$89068/LI3//"KORZ[0]"/5,280,120/150,280,100//"pom.html","B414")
DEF VAR4C = (R3/-10,10//,$89438,"c",$89068/LI3//"KORC[0]"/5,300,120/150,300,100//"pom.html","B415")

def brojbrus=(i////wr4//"brusbroj")
DEF ZMCS = (R3///,"Pozicija ose Z",,$89067/WR4//"$AA_IW[2]"/250,,180/415,,125)
DEF CMCS = (R3///,"Pozicija ose Z",,$89067/WR4//"$AA_IW[1]"/250,,180/415,,125)
DEF COFF = (R3///,"Offset C",,$89067/WR4//"$P_UIFR[1,2,TR]"/250,,180/415)
def ZOFF = (R3///,"Offset Z",,$89068/wr4//"$P_UIFR[2,2,TR]"/250,,180/415)

VS1=($89512,,se1)
VS2=($89531,,se1)
vs3=($89647,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
osca.VAR = "osca["<<BROJBRUS<<"]"

IF((OSCA==0))
  LM("PetiNU","cdodatak.com")
endif

IF((OSCA==1))
  LM("PetiNO","cdodatak.com")
endif

IF((OSCA==2))
  LM("PetiPU","cdodatak.com")
endif

IF((OSCA==3))
  LM("PetiPO","cdodatak.com")
endif

IF(OSCA==4)
  LM("Obaranje","cdodatak.com")
endif
END_PRESS

PRESS(VS3)

  OSCA=0
  LM("PetiNU","cdodatak.com")

END_PRESS

LOAD
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  VAR1.VAR = "MERAX["<<BROJBRUS<<"]"
  VAR10.VAR = "BRZ1["<<BROJBRUS<<"]"
  VAR8.VAR = "KOR1["<<BROJBRUS<<"]"
  IZBR1.VAR = "IZBR["<<BROJBRUS<<"]"
  VAR11.VAR = "prekid["<<BROJBRUS<<"]"
  VAR45.VAR = "KORX["<<BROJBRUS<<"]"
  VAR46.VAR = "KORZ["<<BROJBRUS<<"]"
  VAR4C.VAR = "KORC["<<BROJBRUS<<"]"
  var0.VAR = "NACABRIHT["<<BROJBRUS<<"]"

  PRITUP.VAR = "PRITUP["<<BROJBRUS<<"]"
  POZ1P.VAR = "sirkom["<<BROJBRUS<<"]"
  POZC1.VAR = "POZC1["<<BROJBRUS<<"]"
  POZC2.VAR = "POZC2["<<BROJBRUS<<"]"
  RECT(240,10,300,361,128,130,1)
  RECT(0,250,230,95,128,130,1)
  RECT(0,10,230,230,128,130,1)

  hd = $89444 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)  
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  hs7.se=3
HLP="//pritupljenje.png"
END_LOAD

//END
