
//M(puz/$89687////10,20)

DEF Modul = (R0/0,100//,$89688,"m",$89068/LI3,//"PUZNIMODUL[0]"/230,,210/430,,140//"pom.html","9000")
DEF PuzniBroj = (IDD/0,100//,$89689,"q","."/LI3,//"PUZNIBROJ[0]"/230,,210/430,,140//"pom.html","9000")
DEF BrojPocetaka = (IDD/1,10//,$89690,"z","."/LI3,//"BROJPOCETAKA[0]"/230,,210/430,,140//"pom.html","9000")
DEF Faktor = (R0/0,100//,$89700,"c2","."/LI3,//"PUZNIFAKTOR[0]"/230,,210/430,,140//"pom.html","9000")
DEF TipPuza = (IDD/* 0=$89694,1=$89695,2=$89696,3=$89697,4=$89698//,$89699,,"."///"TIPPUZA[0]"/230,,210/430,,140//"pom.html","9000")
def brojbrus=(i///,"broj brusenja"/wr4//"brusbroj")
DEF Precnik = (R3/,//,$89691,"D",$89068/LI3,WR1//"PUZPREC[0]"/230,,210/430,,140//"pom.html","9000")
DEF Precnik1 = (R3/,//,,"D1",$89068/LI3,WR1//"PUZPREC1[0]"/230,,210/430,,140//"pom.html","9000")
DEF Precnik2 = (R3/,//,,"D2",$89068/LI3,WR1//"PUZPREC2[0]"/230,,210/430,,140//"pom.html","9000")
DEF Korak = (R3/,//,$89692,"P",$89068/LI3,WR1//"PUZKORAK[0]"/230,,210/430,,140//"pom.html","9000")
DEF Slika = (I///,,,/wr1///0,0,250,330/0,320,25,2)
VS8=($89693,,se1)

PRESS(VS8)
WNP("PREC["<<BROJBRUS<<"]",PRECNIK)
WNP("PREC1["<<BROJBRUS<<"]",PRECNIK1)
WNP("PREC2["<<BROJBRUS<<"]",PRECNIK2)
WNP("BROJPOCET["<<BROJBRUS<<"]",BROJPOCETAKA)
WNP("ALFA1["<<BROJBRUS<<"]",20)
WNP("ALFA2["<<BROJBRUS<<"]",20)
WNP("KORAK["<<BROJBRUS<<"]",Korak)
WNP("PROFIL["<<BROJBRUS<<"]",1)
LM("prvi","cmaska.com")
END_PRESS
LOAD
  Modul.var = "PUZNIMODUL["<<BROJBRUS<<"]"
  PuzniBroj.var = "PUZNIBROJ["<<BROJBRUS<<"]"
  BrojPocetaka.VAR = "BROJPOCETAKA["<<BROJBRUS<<"]" 
  Faktor.VAR = "PUZNIFAKTOR["<<BROJBRUS<<"]"
  TipPuza.VAR = "TIPPUZA["<<BROJBRUS<<"]"
  Precnik.VAR = "PUZPREC["<<BROJBRUS<<"]"
  Precnik1.VAR = "PUZPREC1["<<BROJBRUS<<"]"
  Precnik2.VAR = "PUZPREC2["<<BROJBRUS<<"]"
  Korak.VAR = "PUZKORAK["<<BROJBRUS<<"]"
slika.st = "\\puz.png"
  
 call("RacunanjeFormula")
 call("UpisPrecUGud")
 
END_LOAD

CHANGE(Modul)
 call("RacunanjeFormula")
  call("UpisPrecUGud")
END_CHANGE

CHANGE(PuzniBroj)
   call("RacunanjeFormula")
    call("UpisPrecUGud")
END_CHANGE

CHANGE(BrojPocetaka)
   call("RacunanjeFormula")
   call("UpisPrecUGud")
END_CHANGE

CHANGE(Faktor)
   call("RacunanjeFormula")
   call("UpisPrecUGud")
END_CHANGE

CHANGE(TipPuza)
   call("RacunanjeFormula")
    call("UpisPrecUGud")
END_CHANGE

SUB(RacunanjeFormula)
  Precnik2=Modul*PuzniBroj
  Precnik=Precnik2+2*Modul
  Precnik1=Precnik2-2*(Modul+Faktor)
  Korak=Modul*3.14
END_SUB
SUB(UpisPrecUGud)
WNP("PUZPREC["<<BROJBRUS<<"]",PRECNIK)
WNP("PUZPREC1["<<BROJBRUS<<"]",PRECNIK1)
WNP("PUZPREC2["<<BROJBRUS<<"]",PRECNIK2)
WNP("PUZKORAK["<<BROJBRUS<<"],KORAK)
END_SUB
//END
