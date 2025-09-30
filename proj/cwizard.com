
//M(Nulti/"Pocetak")
;pocetne postavke
;masina FB229/FB230
DEF VAR45 = (S///,"NAZIV KOMADA","",/fs2//"NAIMENOV[0]"/50,15,320/50,55,480//"pom.html","0062")
def brojbrus=(i/0,79//,"broj brusenja"/fs2//"brusbroj"/50,95,270/305,95,70)
DEF NACBRUS = (IDD/* 0="Spoljno",1="Unutrasnje"//,"Vrsta brusenja",,"."/fs2//"NACBRUS[0]"/50,,270/305,,270//"pom.html","0016")
DEF VAR0 = (IDD/* 0="Navoj",1="Cilindar"//,"Tip brusenja","-","."/fs2//"NACABRIHT[0]"/50,,270/305,,270//"pom.html","0018")

hs5=("ucitaj iz%nfajla",,se1)
HS8=("Sledeci",,se1)

PRESS(HS8)
  LM("Prvi","cwizard.com")
END_PRESS

//END

//M(Prvi/"Profil navoja"/"\\sh031.png"///10,20,210,210)
;definicija profila navoja i oblika ledne obrade
;masina FB229/FB230


DEF PROFIL = (IDD/* 0="Trouglasti", 1="Trapezasti",2="Zaobljeni",3="Testerasti", 4="Profil NE IDE", 5="Testerasti NE IDE", 6="Radijusni"//,"Profil navoja","-","."///"PROFIL[0]"/250,15,170/405,15,170//"pom.html","0020")
DEF VAR1 = (R3/-450,450//,"Precnik navoja","D",$89068/LI3,//"PREC[0]"/250,,170/405//"pom.html","0023")
DEF VARD1 = (R3/-450,450//,,"D1",$89068///"PREC1[0]"/250,,170/405//"pom.html","0026")
DEF VARD2 = (R3/-450,450//,,"D2",$89068///"PREC2[0]"/250,,170/405//"pom.html","0030")
DEF VAR2 = (R2/0.5,80//,"Korak navoja","P",$89068/LI3//"KORAK[0]"/250,,170/405//"pom.html","0033")
DEF VAR3 = (IDD/* 0="Desni",1="Levi"//,"Smer navoja","L","."//"\\sh037.png"/"SMER[0]"/250,,170/405//"pom.html","0035")
DEF VAR4 = (IDD///,"Broj pocetaka","n","."//"\\sh018.png"/"BROJPOCET[0]"/250,,170/405//"pom.html","0037")
DEF VAR5 = (R3/-10,10//,"Konus navoja","K",$89068/LI3/"\\sh014.png"/"KONUS[0]"/250,,170/405//"pom.html","0039")
DEF VAR6 = (R1/0,50//,"Ugao boka levo","A1",$89072/LI3,//"ALFA1[0]"/250,,170/405//"pom.html","0042")
DEF VAR7 = (R1/0,50//,"Ugao boka desno","A2",$89072/LI3,//"ALFA2[0]"/250,,170/405//"pom.html","0043")
DEF VAR8 = (R3///,"Radijus prelaza","R1",$89068///"RADIJUS[0]"/250,,170/405//"pom.html","0045")
DEF VAR18 = (R3///,"Radijus prelaza","R2",$89068///"RADIJUS[0]"/250,,170/405)

DEF VAR9 = (R0/0.2,10//,"Visina profila","H",$89068/LI3,/"\\sh032.png"/"VIS1[0]"/250,,170/405//"pom.html","0049")



def brojbrus=(i////wr4//"brusbroj")
def osca = (I)

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)


PRESS(HS1)
  LM("Nulti","cwizard.com")
END_PRESS

PRESS(HS8)
  LM("Drugi","cwizard.com")
END_PRESS

;promene profila
CHANGE(PROFIL) 
   IF(PROFIL==0) ; trougao
     var6.wr=2
     var7.wr=2
     var9.wr=1
     var8.wr=2
     var18.wr=1
     hlp="\\sh031.png"
   Endif

   if (profil==1) ;trapez
     var6.wr=2
     var7.wr=2
     var9.wr=1
     var8.wr=2
     var18.wr=2
     hlp="\\sh055.png"
   Endif

   if (profil==2) ; zaobljeni
     var6.wr=2
     var7.wr=2
     var9.wr=1
     var8.wr=2
     var18.wr=2
     hlp="\\sh054.png"
   Endif

   if (profil==3) ; testerasti
     var6.wr=2
     var7.wr=2
     var9.wr=1
     var8.wr=2
     var18.wr=2
     hlp="\\sh034.png"
   Endif
   
   if (profil==4) ; NE IDE
     var6.wr=2
     var7.wr=2
     var9.wr=2
     var8.wr=1
     var18.wr=1
     hlp="\\sh032.png"
   Endif

   if (profil==5) ;testerasti NE IDE
     var6.wr=2
     var7.wr=2
     var9.wr=2
     var8.wr=1
     var18.wr=1
     hlp="\\sh035.png"
   Endif

   if (profil==6) ;KVZ
     var6.wr=1
     var7.wr=1
     var9.wr=1
     var8.wr=2
     var18.wr=1
     hlp="\\sh056.png"
   Endif
END_CHANGE

;promena levi-desni navoj
CHANGE(VAR3)

END_CHANGE

;promena spoljno-unutrasnje
CHANGE (NACBRUS)

END_CHANGE



LOAD
  hd =$89440 << " - precnik - " << (brojbrus+1)
  hlp="\\sh032.png"
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  PROFIL.VAR = "PROFIL["<<BROJBRUS<<"]"
  VAR1.VAR = "PREC["<<BROJBRUS<<"]"
  VARD1.VAR = "PREC1["<<BROJBRUS<<"]"
  VARD2.VAR = "PREC2["<<BROJBRUS<<"]"
  VAR2.VAR = "KORAK["<<BROJBRUS<<"]"
  VAR3.VAR = "SMER["<<BROJBRUS<<"]"
  VAR4.VAR = "BROJPOCET["<<BROJBRUS<<"]"
  VAR5.VAR = "KONUS["<<BROJBRUS<<"]"
  VAR6.VAR = "ALFA1["<<BROJBRUS<<"]"
  VAR7.VAR = "ALFA2["<<BROJBRUS<<"]"
  VAR8.VAR = "RADIJUS["<<BROJBRUS<<"]"
  VAR18.VAR = "RADIJUS2["<<BROJBRUS<<"]"
  VAR9.VAR = "VIS1["<<BROJBRUS<<"]"
  VAR45.VAR = "NAIMENOV["<<BROJBRUS<<"]"
  LEDJNO.VAR = "LEDJNO["<<BROJBRUS<<"]"
  LEDDUB.VAR = "LEDDUB["<<BROJBRUS<<"]"
  LEDZUB.VAR = "LEDZUB["<<BROJBRUS<<"]"
  LEDUGAO.VAR = "LedUgao["<<BROJBRUS<<"]"
  LEDKORAK.var = "LEDKORAK["<<BROJBRUS<<"]" 
  osca.VAR = "osca["<<BROJBRUS<<"]"
  
  RECT(230,10,316,320,128,129,1)
  RECT(230,330,316,40,128,129,1)
  RECT(0,10,230,240,128,129,1)
  RECT(0,250,230,120,128,129,1)
END_LOAD

//END



//M(Drugi/$89442)


DEF VAR3 = (R3///,"Pocetak navoja","Z1",$89068///"POZ1[0]"/250,15,180/415,15,125//"pom.html","0104")
DEF VAR4 = (R3///,"Kraj navoja","Z2",$89068///"POZ2[0]"/250,,180/415,,125//"pom.html","0104")

DEF VAR26 = (R3///,"Pozicija ose Z",,$89067/WR1//"$AA_IM[2]"/250,,180/415,,125)
DEF POZC = (R3///,"Pozicija ose C",,$89067/WR1//"$AA_IM[1]"/250,,180/415,125)
DEF nkorak = (R2/0.5,80//,$89410,"P",$89068/wr4//"KORAK[0]"/250,,180/415)
DEF VAR27 = (R3///,"Offset C",,$89067/WR1//"$P_UIFR[1,2,TR]"/250,,180/415)

DEF NACBRUS = (IDD/* 0="Spoljno",1="Unutrasnje"//,"NACIN BRUSENJA",,/wr4//"NACBRUS[0]"/250,,180/415)
def GZ55 = (R3///,"Offset Z",,$89068/wr4//"$P_UIFR[2,2,TR]"/250,,180/415)

DEF VAR8 = (R3/1,5000//,"Brzina radnog hoda","Vp",$89070/LI3,//"RABHOD[0]"/250,,180/415,,125//"pom.html","0107")
DEF VAR5 = (R3/0,10//,"Prilaz","Sx",$89068/LI3,//"PODHOD[0]"/250,,180/415,,125//"pom.html","0108")
DEF VAR1 = (R3/-700,750//,"Bezbedna pozicija","Z0",$89068///"BEZPOZZ[0]"/250,,180/415,,125//"pom.html","0106")

DEF VARD = (R3/0,1000//,$89308,"X",$89068/LI3,wr4//"PREC[0]"/250,,180/415)
DEF Ckorekcija = (R3///,"Polozaj C",,$89067/WR1//""/250,,180/415)
DEF XMCS = (R3///,"Pozicija ose X",,$89068/wr4//"$AA_IM[0]"/250,,180/415)
DEF GX55 = (R3///,"Offset X",,$89068/wr4//"$P_UIFR[2,0,TR]"/250,,180/415)

DEF SLIKA = (I/* 1="\\sh039.png", 2="\\sh038.png"//////10,20,210,210/10,20,210,210)

DEF VAR45 = (R3/-1,1//,"konus","x",$89068/Li3//"konmer"/5,260,120/150,260,100//"pom.html","0109")
DEF VAR46 = (R3/0,100//,"duzina","z",$89068/LI3//"konduz"/5,280,120/150,280,100//"pom.html","0109")
DEF VAR4C = (R3/-10,10//,"korekcija","c",$89068/LI3//"konkor"/5,300,120/150,300,100//"pom.html","0109")
def brojbrus=(i////wr4//"brusbroj"/5,320,120/150,320,50)
def osca = (I////WR4)
DEF nacabriht = (I////WR4)

VS1=("Precnik -",,se1)
VS2=("Precnik +",,se1)
VS4=("Zapamti%nZ1",,se1)
VS5=("Zapamti%nZ2",,se1)
VS6=("Pozicija Z0",se1)
VS7=("Pocetak%nnavoja",se1)
vs8=("Proracun%nkorekcije",se1)

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("Prvi","cwizard.com")
END_PRESS

PRESS(HS8)
LM("Treci","cwizard.com")
END_PRESS

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
  LM("cetvrti","cmaska.com")
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
  LM("cetvrti","cmaska.com")
END_PRESS

PRESS(VS4)
if (nacbrus<>0)
   VAR3 = VAR26-VAR27
else
   var3 = VAR26-GZ55
endif
END_PRESS

PRESS(VS5)
if (nacbrus<>0)
   VAR4 = VAR26-VAR27
else
   var4 = VAR26-GZ55
endif
END_PRESS

PRESS(VS6)
if (nacbrus<>0)
   VAR1 = VAR26-VAR27
else
   var1 = VAR26-GZ55
endif
END_PRESS

press(vs7)
if (nacbrus<>0)
   ckorekcija=pozc-(((var26-var27-var3)/nkorak*360)mod 360)
else
   ckorekcija=POZC-(((var26-gz55-var3)/nkorak*360) MOD 360)
endif
end_press

press(vs8)
var4c=(var4-var3)*var45/var46
end_press

FOCUS

  IF (FOC=="VAR3" OR FOC=="VAR4" )
     if (nacbrus<>0)
        SLIKA = 1
     else
        SLIKA=2
     endif
  ENDIF

  IF (FOC=="VAR1" OR FOC=="VAR5" OR FOC=="VAR8")
     if (nacbrus<>0)
        SLIKA = 1
     else
        SLIKA=2
     endif
  ENDIF


END_FOCUS

Change(NACBRUS)
    if(nacbru==0)
       var1.wr=1
    else
       var1.wr=2
    endif
End_Change

LOAD
  hd = $89442 << " - precnik - " << (brojbrus+1)
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  VAR3.VAR = "POZ1["<<BROJBRUS<<"]"
  VAR4.VAR = "POZ2["<<BROJBRUS<<"]"
  nkorak.VAR = "KORAK["<<BROJBRUS<<"]"
  VAR8.var = "RABHOD["<<BROJBRUS<<"]"
  VAR5.var = "PODHOD["<<BROJBRUS<<"]"
  VAR1.var = "BEZPOZZ["<<BROJBRUS<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  nacabriht.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  RECT(240,10,300,190,128,129,1)
  RECT(240,210,300,135,128,129,1)
  RECT(0,10,230,230,128,129,1)
  RECT(0,250,230,95,128,129,1)
END_LOAD

//END


//M(treci/"Alat za poravnavanje"/"\\sh007.png"///10,20,210,210)

DEF SPOSPRAV = (IDD/* 0="ALAT SA DVE IVICE",1="ALAT SA JEDNOM IVICOM",2="PROFILISANI ALAT",3="POSEBAN PROGRAM"//,"Nacin poravnavanja"///"SPOSPRAV[0]"/250,110,180/415,110,120//"pom.html","0076")
DEF VAR0 = (S///,"Program za profilisanje"///"ProgProf[0]"/250,130,180/415,130,120//"pom.html","0078")
def dijamant=(s///,"Naziv rolne"///"Dijamant[0]"/250,,180/415,,120//"pom.html","0072")
DEF VAR8 = (IDD///,"Broj obrtaja",,$89069///"MD4"/250,,180/415,,110//"pom.html","0074")


HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("Drugi","cwizard.com")
END_PRESS

PRESS(HS8)
LM("Cetvrti","cwizard.com")
END_PRESS


//END

//M(cetvrti/"Dimenzije kamena"/"\\sh007.png"///10,20,210,210)
;FB230
def tocilo=(s///,"Naziv tocila"///"Tocilo[0]"/250,15,180/415,15,120//"pom.html","0068")
DEF VAR3 = (R0/10,50//,"Obimna brzina","Vc",$89074/LI3,//"brzkam[0]"/250,,180/415,,110//"pom.html","0070")

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("Treci","cwizard.com")
END_PRESS

PRESS(HS8)
LM("Peti","cwizard.com")
END_PRESS

//END


//M(peti/"Oblik kamena"/"\\sh007.png"///10,20,210,210)
DEF VARX1 = (r3/-1,1//,"Korek. visine podnozja","x1",$89068/LI3,/"\\sh008.png"/"KORX1[0]"/250,220,180/415,220,110//"pom.html","0089")
DEF VARX2 = (R3/-1,1//,"Korek. visine glave","x2",$89068/LI3,/"\\am36.png"/"KORX2[0]"/250,240,180/415,240,110//"pom.html","0091")
DEF VARXR = (R2/0,1.5//,"Radijus podnozja","xR",$89068/LI3,/"\\am36.png"/"KORXR[0]"/250,260,180/415,260,110//"pom.html","0094")
DEF PODHOD = (R3/0,10//,"Prilaz","xS",$89068/LI3,/"\\am36.png"/"PODHOD2[0]"/250,,180/415,,110//"pom.html","0097")
DEF RAST = (R3/0,10//,"Rastojanje","x3",$89068/LI3,/"\\am36.png"/"RAST[0]"/250,,180/415,,110//"pom.html","0096")

DEF NZ = (I/1,30//"Broj zuba na kamenu","Broj zuba","NZ","-"/LI3/"\\am36.png"/"PROFIL7[0]"/5,260,170/160,260,95//"pom.html","0098")
DEF PPX = (I/1,3//"","Multiplikator koraka","m","x"/LI3/"\\am36.png"/"PROFIL6[0]"/5,280,170/160,280,95//"pom.html","0099")
DEF DeltaX = (R3/0,0.30//"","Promena visine zuba","s",$89068/LI3/"\\am36.png"/"PROFIL5[0]"/5,300,170/160,300,95//"pom.html","0100")


def brojbrus=(i////wr4//"brusbroj"/250,,180/405,,55)
def osca = (I////WR4)
DEF nacabriht = (I////WR4)
;DEF SLIKA = (I/* 1="\\sh004.png", 2="\\sh021.png", 3="\\sh007.png", 4="\\sh015.png", 5="\\sh051.png", 6="\\sh052.png"//////10,20,210,210/10,20,210,210)

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("cetvrti","cwizard.com")
END_PRESS

PRESS(HS8)
LM("sesti","cwizard.com")
END_PRESS

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
  LM("drugi","cmaska.com")
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
  LM("drugi","cmaska.com")
END_PRESS

CHANGE(SPOSPRAV)
  IF SPOSPRAV==3
   VAR0.WR=2
  ELSE
   VAR0.WR=1
  ENDIF
END_CHANGE
LOAD

  hd = $89441 << " Precnik - " << (brojbrus+1)
  tocilo.VAR = "tocilo["<<BROJBRUS<<"]"
  dijamant.VAR = "dijamant["<<BROJBRUS<<"]"
  VAR3.VAR = "brzkam["<<BROJBRUS<<"]"
  VAR1.VAR = "BROJA["<<BROJBRUS<<"]"
  VAR2.VAR = "BRZA["<<BROJBRUS<<"]"
  duba.VAR = "DUBA["<<BROJBRUS<<"]"
  SPOSPRAV.VAR = "SPOSPRAV["<<BROJBRUS<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  nacabriht.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  VARX1.VAR = "KORX1["<<BROJBRUS<<"]"
  VARX2.VAR = "KORX2["<<BROJBRUS<<"]"
  VARXR.VAR = "KORXR["<<BROJBRUS<<"]"
  PODHOD.VAR = "PODHOD2["<<BROJBRUS<<"]"
  RAST.VAR = "RAST["<<BROJBRUS<<"]"
  NZ.VAR = "PROFIL7["<<BROJBRUS<<"]"
  PPX.VAR = "PROFIL6["<<BROJBRUS<<"]"
  DELTAX.VAR = "PROFIL5["<<BROJBRUS<<"]"
  RECT(240,10,300,92,128,129,1)
  RECT(240,105,300,107,128,129,1)
  RECT(240,215,300,108,128,129,1)
  RECT(0,10,230,230,128,129,1)
  RECT(0,250,230,73,128,129,1)
END_LOAD

//END



//M(sesti/"Tehnoloski parametri poravnavanja"/"\\sh007.png"///10,20,210,210)
DEF VAR1 = (IDD/0,100//,"Broj prolaza porav","N",$89067/LI3,/"\\sh008.png"/"BROJA[0]"/250,150,180/415,150,110//"pom.html","0080")
DEF VAR2 = (R3/1,1000//,"Brzina poravnavanja","Va",$89070/LI3,/"\\sh008.png"/"BRZA[0]"/250,170,180/415,170,110//"pom.html","0082")
DEF duba = (R3/0.001,0.5//,"Dubina poravnavanja","Sa",$89068/LI3,/"\\sh008.png"/"DUBA[0]"/250,190,180/415,190,110//"pom.html","0084")

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("peti","cwizard.com")
END_PRESS

PRESS(HS8)
LM("sedmi","cwizard.com")
END_PRESS


//END


//M(sedmi/"Ledjno brusenje"/"\\sh007.png"///10,20,210,210)

DEF LEDJNO = (IDD/* 0="Bez",1="Sa"//,"Ledjna obrada","-","."//"\\sh029.png"/"LEDJNO[0]"/5,255,150/155,255,100//"pom.html","0052")
DEF LEDDUB = (R3///"velicina ledjne obrade","Dubina ledjne obr.","K",$89068//"\\sh029.png"/"LEDDUB[0]"/5,275,150/155,275,100//"pom.html","0054");
DEF LEDZUB = (I/2,100//"Broj zuba na kojim se radi leðna obrada", "Broj zuba", "Z", "-"//"\\sh029.png"/"LEDZUB[0]"/5,295,150/155,295,100//"pom.html","0056")
DEF LEDUGAO = (I/10,90//"Procenat dela zuba", "Procenat duzine","-","%"//"\\sh029.png"/"LedUgao[0]"/5,315,150/155,315,100//"pom.html","0058")
DEF LEDKORAK = (R4///"Korak spirale za alat sa spiralnim zubima 0 za prave zube","Korak spirale","H",$89068///"LEDKORAK[0]"/5,335,150/155,335,100//"pom.html","0060")

HS1=("Prethodni",,se1)
HS8=("Sledeci",,se1)

PRESS(HS1)
LM("sesti","cwizard.com")
END_PRESS

PRESS(HS8)
LM("osmi","cwizadr.com")
END_PRESS


//END
