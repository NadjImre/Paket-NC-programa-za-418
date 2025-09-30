
//M(snimanje/"Snimanje programa")

DEF VAR0 = (I/* 0="SNIMI SVE", 1="SNIMI PRECNIK BROJ:"//,"Nacin snimanja",,///"savemode"/180,20,130/310,20,130),
VAR1 = (idd//////"savenum"/440/450,20,60)
DEF VAR2 = (s///,"Naziv programa:",":",///"savename"/180,40,130/310,40,200)
def var3 = (s///,"pritisni START za pocetak snimanja"/wr1///180,60,320)
def brojbrus=(i////wr4//"brusbroj")

CHANGE(VAR0)
  if(var0==0)
    var1.wr=1
  else
    var1.wr=2
  endif
END_CHANGE

LOAD
  RECT(170,10,370,75,128,129,1)

END_LOAD

//END


