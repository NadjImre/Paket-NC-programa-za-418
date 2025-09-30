
//M(profil_kontura/////10,20,210,210)
;FB...
;2023

DEF BRTOC = (S//"krug1"/,$89095////235,5,190/375,5,95//"pomoc.html","9007")
DEF DBROJTOC = (I/1,9/1/,,"D1"////500,5,20/505,5,35)
DEF DBROJTOC2 = (I/1,9/2/,,"D2"////500,25,20/505,25,35)

DEF BRAbriht = (S///,$89813////235,45,190/375,45,95//"pomoc.html","9007")
DEF DBROJAbriht = (I/1,9/1/,,"D1"////500,45,20/505,45,35)
DEF DBROJAbriht2 = (I/1,9/2/,,"D2"////500,65,20/505,65,35)

DEF NACABRIHT = (I/* 0=$89135, 300=$89814, 310=$89815, 320=$89816/0/,$89165,,/WR2///235/375,,165/,9/"POMOC.HTML","9302")

DEF BROJABRIHT = (IDD/1,1000/1/$89048,$89232,"N",$89067////235,,190/430,,110//"POMOC.HTML","9303")
DEF BRZABRIHT = (R1/1,3000/300/$89233,$89234,"VA",$89070////235,,190/430,,110//"POMOC.HTML","9304")
DEF VAR3 = (R3/0.0,0.25/0.0/$89230,$89231,"Sa-x",$89068////235,,190/430,,110//"POMOC.HTML","9305")
DEF VAR4 = (R3/0.0,0.25/0/$89230,,"Sa-z",$89068////235,,190/430,,110//"POMOC.HTML","9306")
DEF BRZINA_A = (R3/5,50/10/,$89063,"Va",$89074/LI3,///235,,190/430,,110//"pomoc.html","9044")
DEF Ugao = (R2/0,45/0/,$89453,"G",$89072/WR4///235,,190/430,,110//"POMOC.HTML","9307")
DEF OBLIK = (IDD/* 0=$89401, 1=$89402/0/,$89400,"",/wr2///235,,195/430,,110/,9/"pomoc.html","9005")

Def TIP2=(IDD/* 0=$89642,1=$89643/1/,$89641,"",/WR2///235,,180/430,,110/,9)

DEF _NAZIV_KRIVE_LEVO = (S///,$89852,,".DRS"////235,,200/350,,205)
DEF _NAZIV_KRIVE_DESNO = (S///,$89853,,".DRS"////235,,200/350,,205)

DEF PODHODX = (R1/0,50/3/,$89058,"AX",$89068////235,,200/435,,120)
DEF PODHODZ = (R1/0,50/5/,,"AZ",$89068////235,,200/435,,120)

DEF PRAZNA_1 = (V////WR0,)


DEF KOMADA = (IDD/0,100/0/$89055,$89199,"",$89073////235,,180/430,,110//"POMOC.HTML","9307")
;DEF PREOSTALO = (IDD/0,100/0/,$89167,"",$89073////235,,180/430,,110//"POMOC.HTML","9308")
DEF PREOSTALO = (I/0,100//,$89167,"",$89073///"PREOSTALO[0]"/235,,180/430,,110//"POMOC.HTML","9308")

DEF HLAD_A = (IDD/10,16/12/,$89568,,$89067/WR2,ac2///235,,195/430,,110//"pomoc.html","9011")

DEF KOMENT = (S///,$89569,////235,,90/320,,220//"POMOC.HTML","9017")
DEF Slika = (I///,,,/wr1///0,0,250,360/0,320,25,2)
DEF PRAZNA = (V////WR0,)

DEF PROFIL = (I/* 0=$89191,1=$89192/0/,$89832,,/WR4///255,,200/435,,120)

 
DEF BrojSlike=(I////wr4)

;DEF SLIKA = (I///,,,/WR1///0,0,250,350/0,320,25,32) 
DEF SMER = (I////Wr4)
DEF _PREOSTALO = (I/0,100/0/,$89167,"",$89073/WR4///235,,180/430,,110//"POMOC.HTML","9308")

;VS8=("OK",,SE1)
;VS7=($89842,,SE1)

VS7=(SOFTKEY_CANCEL,,se1)
VS8=(SOFTKEY_OK,,se1)

HS1=($89385,,SE1)

;uvek je unutrasnje brusenje OBLIK=1
OUTPUT(NCCODE4)
  "_WHEEL_KONTURA(" PODHODX "," PODHODZ ",""" _NAZIV_KRIVE_LEVO """,""" _NAZIV_KRIVE_DESNO """)"
  "_KONTURA_DRESSING(""" BRTOC """," DBROJTOC "," DBROJTOC2 ",""" BrAbriht"""," DbrojAbriht ","  DbrojAbriht2 "," NacAbriht "," BrojAbriht "," BrzAbriht "," VAR3 "," VAR4 "," Brzina_A "," Tip2 "," Komada "," _Preostalo "," HLAD_A ",1,""" KOMENT  """)"
END_OUTPUT

PRESS(VS8)
  GC("NCCODE4")
  EXIT
END_PRESS

PRESS(VS7)
  EXIT
END_PRESS


LOAD

IF OBLIK==0
;spolja
  IF NACABRIHT==300
    ;levo
    BrojSlike=600
  ENDIF
  IF NACABRIHT==310
    ;desno
    BrojSlike=601
  ENDIF
  IF NACABRIHT==320
    ;levo i desno
    BrojSlike=604
  ENDIF
ELSE
;unutra
  IF NACABRIHT==300
    ;levo
    BrojSlike=602
  ENDIF
  IF NACABRIHT==310
  ;desno
    BrojSlike=603
  ENDIF
  IF NACABRIHT==320
  ;levo i desno
    BrojSlike=605
  ENDIF
ENDIF

slika.st = "\\am" << BrojSlike << ".png"

END_LOAD

CHANGE(OBLIK)
IF OBLIK==0
;spolja
  IF NACABRIHT==300
    ;levo
    BrojSlike=600
  ENDIF
  IF NACABRIHT==310
    ;desno
    BrojSlike=601
  ENDIF
  IF NACABRIHT==320
    ;levo i desno
    BrojSlike=604
  ENDIF
ELSE
;unutra
  IF NACABRIHT==300
    ;levo
    BrojSlike=602
  ENDIF
  IF NACABRIHT==310
  ;desno
    BrojSlike=603
  ENDIF
  IF NACABRIHT==320
  ;levo i desno
    BrojSlike=605
  ENDIF
ENDIF

slika.st = "\\am" << BrojSlike << ".png"
END_CHANGE

CHANGE(NACABRIHT)
IF OBLIK==0
;spolja
  IF NACABRIHT==300
    ;levo
    BrojSlike=600
  ENDIF
  IF NACABRIHT==310
    ;desno
    BrojSlike=601
  ENDIF
  IF NACABRIHT==320
    ;levo i desno
    BrojSlike=604
  ENDIF
ELSE
;unutra
  IF NACABRIHT==300
    ;levo
    BrojSlike=602
  ENDIF
  IF NACABRIHT==310
  ;desno
    BrojSlike=603
  ENDIF
  IF NACABRIHT==320
  ;levo i desno
    BrojSlike=605
  ENDIF
ENDIF

slika.st = "\\am" << BrojSlike << ".png"
END_CHANGE

//END

N999

