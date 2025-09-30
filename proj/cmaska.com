
//M(Prvi/$89440/"\\sh031.png"///10,20)
;definicija profila navoja i oblika ledne obrade
;masina FB229/FB230

DEF NACBRUS = (IDD/* 0=$89401,1=$89402//,$89400,,"."///"NACBRUS[0]"/250,15,170/405,15,170//"pom.html","M001")
DEF VAR0 = (IDD/* 0=$89463,1=$89577,2=$89635//,$89578,"-","."/wr1//"NACABRIHT[0]"/250,,170/405,,170//"pom.html","M002")
DEF PROFIL = (IDD/* 0=$89579, 1=$89580,2=$89581,3=$89405, 4=$89408, 5=$89582, 6=$89583, 7=$89261//,$89403,"-","."///"PROFIL[0]"/250,,170/405,,170//"pom.html","M003")
DEF VAR1 = (R3/-450,450//,$89409,"D",$89068/LI3,//"PREC[0]"/250,,170/405//"pom.html","M004")
DEF VARD1 = (R3/-450,450//,,"D1",$89068///"PREC1[0]"/250,,170/405//"pom.html","M005")
DEF VARD2 = (R3/-450,450//,,"D2",$89068///"PREC2[0]"/250,,170/405//"pom.html","M006")
DEF VARD3 = (R3/-450,450//,,"D3",$89068///"PREC3[0]"/250,,170/405//"pom.html","M016")
DEF VAR2 = (R4/0.25,80//,$89410,"P",$89068/LI3//"KORAK[0]"/250,,170/405//"pom.html","M007")
DEF VAR3 = (IDD/* 0=$89413,1=$89412//,$89411,"L","."//"\\sh037.png"/"SMER[0]"/250,,170/405//"pom.html","M008")
DEF VAR4 = (IDD///,$89414,"n","."//"\\sh018.png"/"BROJPOCET[0]"/250,,170/405//"pom.html","M009")
DEF VAR5 = (R3/-10,10//,$89415,"K",$89068/LI3/"\\sh014.png"/"KONUS[0]"/250,,170/405//"pom.html","M010")
DEF VAR6 = (R1/0,50//,$89416,"A1",$89072/LI3,//"ALFA1[0]"/250,,170/405//"pom.html","M011")
DEF VAR7 = (R1/0,50//,$89417,"A2",$89072/LI3,//"ALFA2[0]"/250,,170/405//"pom.html","M012")
DEF VAR8 = (R3///,$89418,"R1",$89068///"RADIJUS[0]"/250,,170/405//"pom.html","M013")
DEF VAR18 = (R3///,,"R2",$89068///"RADIJUS[0]"/250,,170/405//"pom.html","M014")
;DEF VAR45 = (S///,$89267,"",///"PROFPROF[0]"/250,,170/405//"pom.html","0062")
DEF VAR9 = (R0/0.2,10//,$89419,"H1",$89068/LI3,/"\\sh032.png"/"VIS1[0]"/250,,170/405//"pom.html","M015")
DEF VAR45 = (S///,$89267,"",///"ProgProf[0]"/250,,170/405//)


def brojbrus=(i///,"broj brusenja"/wr4//"brusbroj")
def osca = (I///,"oscilacije"/WR4)
DEF SIRINAVRHA = (R3///,,"c"/WR4)
DEF VISINA = (R3///,,"h"/WR4)

VS1=($89512,,se1)
VS2=($89531,,se1)
VS5=($89600,,se1)
VS6=($89686,,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
  LM("prvi","cmaska.com")
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
  LM("prvi","cmaska.com")
END_PRESS

PRESS(VS5)
LM("ledjni","cledjno.com")
END_PRESS

PRESS(VS6)
LM("puz","cpuz.com")
END_PRESS
;promena navoj-cilindar
CHANGE (VAR0)
   call("Vidljivost")
END_CHANGE

;promene profila
CHANGE(PROFIL) 
   call("Vidljivost")
END_CHANGE

;trouglasti navoj alfa1=alfa2
CHANGE(VAR6)
    IF(PROFIL==0)
        VAR7 = VAR6
    ENDIF
END_CHANGE

CHANGE(VAR2)
    IF(PROFIL==0)
      IF(NACBRUS==0)
        SIRINAVRHA = 0.5*VAR2-(VARD2-VARD1)*TAN(SRAD(VAR6))
        VISINA = 0.5*SIRINAVRHA*TAN(SRAD(0.5*(90-VAR6)))
        VAR8 = SIRINAVRHA/(2*SIN(SRAD(90-VAR6)))
        VARD3 = VARD1-2*VISINA
      ELSE
        SIRINAVRHA = 0.5*VAR2-(VAR1-VARD2)*TAN(SRAD(VAR6))
        VISINA = 0.5*SIRINAVRHA*TAN(SRAD(0.5*(90-VAR6)))
        VAR8 = SIRINAVRHA/(2*SIN(SRAD(90-VAR6)))
        VARD3 = VAR1+2*VISINA
      ENDIF
    ENDIF
END_CHANGE

;promena spoljno-unutrasnje
CHANGE (NACBRUS) 
   call("Vidljivost")
END_CHANGE

LOAD
  ls("menus","cmeni.com",1)
  lb("Funkcije","cmaska.com")
  HS1.SE=3
  hd =$89440 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  hlp="sh032.png"
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  PROFIL.VAR = "PROFIL["<<BROJBRUS<<"]"
  VAR1.VAR = "PREC["<<BROJBRUS<<"]"
  VARD1.VAR = "PREC1["<<BROJBRUS<<"]"
  VARD2.VAR = "PREC2["<<BROJBRUS<<"]"
  VARD3.VAR = "PREC3["<<BROJBRUS<<"]"
  VAR2.VAR = "KORAK["<<BROJBRUS<<"]"
  VAR3.VAR = "SMER["<<BROJBRUS<<"]"
  VAR4.VAR = "BROJPOCET["<<BROJBRUS<<"]"
  VAR5.VAR = "KONUS["<<BROJBRUS<<"]"
  VAR6.VAR = "ALFA1["<<BROJBRUS<<"]"
  VAR7.VAR = "ALFA2["<<BROJBRUS<<"]"
  VAR8.VAR = "RADIJUS["<<BROJBRUS<<"]"
  VAR18.VAR = "RADIJUS2["<<BROJBRUS<<"]"
  VAR9.VAR = "VIS1["<<BROJBRUS<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  var45.Var = "progprof["<<BrojBrus<<"]"
  RECT(230,10,316,320,128,85)
  RECT(0,10,230,240,128,4)


END_LOAD

//END

//M(Drugi/$89441/"sh007.png"///0,5)
;FB230

DEF NASLOV1 = (R3///,$89615,,/WR1///230,10,280/415,10,125/)

DEF PrecToc = (R0/10,500//,$89059,"D",$89068/LI3,//"$TC_DP3[1,1]"/230,,210/430,,140//"pom.html","M101")
DEF MinPrecToc = (R0/0,500//,$89061,"Dmin",$89068/LI3,//"$TC_tPg3[1]"/230,,210/430,,140//"pom.html","M102")
DEF SirToc = (R0/1,50//,$89060,"B",$89068/LI3,//"$TC_DP4[1,1]"/230,,210/430,,140//"pom.html","M103")
Def DuzNas = (R0/6,150//,$89645,"L",$89068/LI3,//"$TC_DP4[1,1]"/230,,210/430,,140//"pom.html","M104")
DEF MinSirToc = (R0/0,50//,$89584,"Bmin",$89068/LI3,//"$TC_tpg4[1]"/230,,210/430,,140//"pom.html","M105")
DEF VAR3 = (R1/1,50//,$89063,"Vc",$89074/LI3,//"brzkam[0]"/230,,210/430,,130//"pom.html","M106")
DEF brzkam_a = (R1/1,50//,$89658,"Va",$89074/LI3,//"brzkam_a[0]"/230,,210/430,,130//"pom.html","M106")

DEF NASLOV2 = (R3///,$89614,,/WR1///230,220,280/415,220,125/)
DEF SPOSPRAV = (IDD/* 0=$89585,1=$89586,2=$89587//,$89165///"SPOSPRAV[0]"/230,,210/360,,180//"pom.html","M107")

DEF VAR8 = (IDD///,$89428,,$89069///"MW46"/230,,210/420,,130//"pom.html","M108")

DEF precROL1 = (R0/100,500//,"precnik rolne","D1",$89068/LI3,WR4//"$TC_DP3[2,1]"/50,,180/215,,110//"pom.html","0070"),
precrol2 = (R0/100,500//,,"D2",$89068/LI3,WR4//"$TC_DP3[2,2]"/250,,180/415,,110//"pom.html","0070")
DEF sirROL1 = (R0/100,500//,"sirina rolne","b1",$89068/LI3,WR4//"$TC_DP4[2,1]"/50,,180/215,,110//"pom.html","0070"),
sirrol2 = (R0/100,500//,,"b2",$89068/LI3,WR4//"$TC_DP4[2,2]"/250,,180/415,,110//"pom.html","0070")
DEF radROL1 = (R0/100,500//,"radijus rolne","r1",$89068/LI3,WR4//"$TC_DP6[2,1]"/50,,180/215,,110//"pom.html","0070"),
radrol2 = (R0/100,500//,,"r2",$89068/LI3,WR4//"$TC_DP6[2,2]"/250,,180/415,,110//"pom.html","0070")

def brojbrus=(i////wr2//"brusbroj"/250,,180/405,,55)
def osca = (I////WR2)
DEF VAR0 = (I////WR2)
DEF NACBRUS = (I////WR2)
def BrojTocila=(Idd///,"Broj tocila"/wr2//"BrojTocila[0]")
def BrojRolne=(Idd///,"Broj rolna"/wr2//"BrojRolne[0]")

VS1=($89512,,se1)
VS2=($89531,,se1)
VS6=("",,se2)

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

   BrojRolne.Var = "BrojRolne["<<(3*NacBRUS+SposPrav)<<"]"

   PrecRol1.Var="$TC_DP3["<<BrojRolne<<",1]"
   SirRol1.Var="$TC_DP4["<<BrojRolne<<",1]"
   RadRol1.Var="$TC_DP6["<<BrojRolne<<",1]"   

   PrecRol2.Var="$TC_DP3["<<BrojRolne<<",2]"
   SirRol2.Var="$TC_DP4["<<BrojRolne<<",2]"
   RadRol2.Var="$TC_DP6["<<BrojRolne<<",2]"   

   if (sposprav==0)
      sposprav.hlp="alat_dveostrice.png"
      var8.hlp="alat_dveostrice.png"
   else 
      if (sposprav==1)
         sposprav.hlp="alat_jednaostrica.png"
         var8.hlp="alat_jednaostrica.png"
      else
         sposprav.hlp="alat_profilisan.png"
         var8.hlp="alat_profilisan.png"
      endif
   endif

END_CHANGE

CHANGE(BROJTOCILA)

  PrecToc.Var="$TC_DP3["<<BrojTocila<<",1]"
  MinPrecToc.Var = "$TC_TPG3["<<BrojTocila<<"]"
  SirToc.Var = "$TC_TPG5["<<BrojTocila<<"]"
  DuzNas.Var = "$TC_DP4["<<BrojTocila<<",1]"
  MinSirToc = "$TC_TPG4["<<BrojTocila<<"]"

END_CHANGE

LOAD
  ls("menus","cmeni.com",1)
  HS2.SE=3
  hd = $89441 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"

  VAR3.VAR = "brzkam["<<BROJBRUS<<"]"
  brzkam_a.var = "brzkam_a["<<BROJBRUS<<"]"
;  brojtocila.var = "BrojTocila["<<"BrojBrus<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  BrojTocila.Var = "BrojTocila["<<NacBrus<<"]"
  SPOSPRAV.VAR = "SPOSPRAV["<<BROJBRUS<<"]"
  if(nacbrus==0)
    hlp="tocilo.png"
  else
    hlp="tocilo_unutrasnje.png"
  endif
  RECT(225,5,320,190,128,133,1)
  RECT(225,195,320,100,128,130,1)
  RECT(0,5,225,230,128,4,1)
END_LOAD

//END


//M(Cetvrti/$89442////10,20)

DEF NASLOV1 = (R3///,$89616,,/WR1///250,10,280/415,10,125/)
DEF POZ1 = (R3///,$89103,"Z1=",$89068///"POZ1[0]"/250,,180/415,,125//"pom.html","M201")
DEF POZ2 = (R3///,$89105,"Z2=",$89068///"POZ2[0]"/250,,180/415,,125//"pom.html","M202")
DEF NASLOV2 = (R3///,$89617,,/WR1///250,75,180/415,75,125/)
DEF KONUSDEF = (I/* 0=$89559, 1=$89621//,$89622, ///"KONUSDEF[0]"/250,,180/415,,120//"pom.html","M203")
DEF POZO = (R3///,$89105,"Z0",$89068//"konnav.png"/"POZO[0]"/250,,180/415,,125//"pom.html","M204")
DEF UGAOFI = (R3///,$89105,"Fi",$89068//"konnav.png"/"Konusa[0]"/250,,180/415,,125//"pom.html","M205")
DEF KONUS = (R3/-10,10//,$89415,"K",$89068/LI3/"sh014.png"/"KONUS[0]"/250,,180/415,,120//"pom.html","M206")
DEF NASLOV3 = (R3///,"- PARAMETRI ZA OBORENU IVICU -",,/WR4///250,180,280/415,180,125/)
DEF POZC1 = (R3///,$89103,"C1",$89068/WR4//"POZC1[0]"/250,,180/415,,125//"pom.html","0104")
DEF POZC2 = (R3///,$89105,"C2",$89068/WR4//"POZC2[0]"/250,,180/415,,125//"pom.html","0104")
DEF NASLOV4 = (R3///,$89618,,/WR1///250,245,180/415,245,125/)
DEF VAR8 = (R3/1,5000//,$89057,"Vp",$89070/LI3,//"RABHOD[0]"/250,,180/415,,125//"pom.html","M207")
DEF VAR5 = (R3/0,10//,$89058,"Sx",$89068/LI3,WR4//"PODHOD[0]"/250,,180/415,,125//"pom.html","M208")
DEF VAR1 = (R3/-1700,750//,$89181,"Z0",$89068///"BEZPOZZ[0]"/250,,180/415,,125//"pom.html","M209")
DEF Ckorekcija = (R3///,$89619,,$89067/WR2//""/250,330,280/250,350,150)

DEF ZMCS = (R3///,"Pozicija ose Z",,$89067/WR4//"$AA_IM[2]"/250,,180/415,,125)
DEF ZwCS = (R3///,"Pozicija ose Z",,$89067/WR4//"$AA_Iw[2]"/250,,180/415,,125)
DEF POZC = (R3///,"Pozicija ose C",,$89067/WR4//"$AA_IM[1]"/250,,180/415,125)
DEF nkorak = (R2////wr4//"KORAK[0]"/250,,180/415)
DEF COFF = (R3///,"Offset C",,$89067/WR4//"$P_UIFR[1,2,TR]"/250,,180/415)
DEF NACBRUS = (IDD////wr4//"NACBRUS[0]"/250,,180/415)
def ZOFF = (R3///,"Offset Z",,$89068/wr4//"$P_UIFR[2,2,TR]"/250,,180/415)
DEF VARD = (R3/0,1000//,$89308,"X",$89068/LI3,wr4//"PREC[0]"/250,,180/415)
DEF XMCS = (R3///,"Pozicija ose X",,$89068/wr4//"$AA_IM[0]"/250,,180/415)
DEF XOFF = (R3///,"Offset X",,$89068/wr4//"$P_UIFR[2,0,TR]"/250,,180/415)

DEF NASLOV5 = (R3///,$89620,,/WR1///5,260,180/415,210,125/)
DEF Konmer1 = (R3/0,1000//,$89659,"x1",$89068/Li3/"korkon.png"/"konmer1"/5,280,180/165,280,100//"pom.html","0109")
DEF Konmer2 = (R3/0,1000//,$89660,"x2",$89068/Li3/"korkon.png"/"konmer2"/5,300,180/165,300,100//"pom.html","0109")
DEF konduz = (R3/0,100//,$89594,"z",$89068/LI3/"korkon.png"/"konduz"/5,320,180/165,320,100//"pom.html","0109")
DEF konkor = (R3/-10,10//,$89227,"c",$89068/LI3/"korkon.png"/"konkor"/5,340,180/165,340,100//"pom.html","0109")
def brojbrus=(i////wr4//"brusbroj"/5,360,120/150,360,50)
def osca = (I////WR4)
DEF VAR0 = (I////WR4)
def tasteri = (I////WR4)
DEF SirToc = (R0/1,50//,$89060,"B",$89068/WR2//"$TC_DP4[1,1]"/230,,210/430,,140//"pom.html","M103")

VS1=($89512,,se1)
VS2=($89531,,se1)
VS4=($89502,,se1)
VS5=($89504,,se1)
VS6=($89183,,se1)
VS7=($89589,se1)
vs8=($89590,se1)

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
   IF (TASTERI==0)
      POZ1 = ZMCS-ZOFF-SIRTOC
   ELSE
      POZC1 = POZC-COFF
   ENDIF
END_PRESS

PRESS(VS5)
  IF (TASTERI==0)
     POZ2 = ZMCS-ZOFF-SIRTOC
  ELSE
     POZC2=POZC-COFF
  ENDIF
END_PRESS

PRESS(VS6)
  IF (tasteri==0)
     var1 = ZMCS
  else
     ckorekcija=(pozc-360*((ZWCS-ZOFF-POZ1)/nkorak)) mod 360 
     IF (CKOREKCIJA<0)
        CKOREKCIJA=CKOREKCIJA+360
     ENDIF
  ENDIF
END_PRESS

press(vs7)
   if (tasteri==0)
      konkor=(POZ2-POZ1)*(konmer2-konmer1)/konduz
   endif
end_press

press(vs8)
   if (tasteri==0)
      TASTERI=1
   eLSE
      Tasteri=0
   Endif
end_press

CHANGE(TASTERI)
   if (tasteri<>0)
      vs4.st="";"Polo aj%nC1"
      vs5.st="";"Polo aj%nC2"
      vs6.st=$89589
      vs7.st=""
      vs8.st=">>>"
   eLSE
      vs4.st=$89502
      vs5.st=$89504
      vs6.st=$89183
      vs7.st=$89590
      vs8.st="<<<"
   Endif
END_CHANGE

CHANGE(KONUSDEF)
  IF(KONUSDEF==0)
    konus.wr=2
    ugaofi.wr=1
    pozo.wr=1
    konusdef.hlp="korkon.png"
  Else
    konus.wr=1
    ugaofi.wr=2
    pozo.wr=2
    konusdef.hlp="konnav.png"
  EndIf
END_CHANGE

Change(NACBRUS)
    if(nacbrus==0)
       var1.wr=1
    else
       var1.wr=2
    endif
End_Change

LOAD  
  ls("menus","cmeni.com",1)
  HS3.SE=3
  hd = $89442 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  POZ1.VAR = "POZ1["<<BROJBRUS<<"]"
  POZ2.VAR = "POZ2["<<BROJBRUS<<"]"
  POZc1.VAR = "POZC1["<<BROJBRUS<<"]"
  POZc2.VAR = "POZC2["<<BROJBRUS<<"]"
  POZO.VAR = "POZO["<<BROJBRUS<<"]"
  UGAOFI.VAR = "UGAOFI["<<BROJBRUS<<"]"
  KONUS.VAR = "KONUS["<<BROJBRUS<<"]"
  KONUSDEF.VAR = "KONUSDEF["<<BROJBRUS<<"]"
  nkorak.VAR = "KORAK["<<BROJBRUS<<"]"
  VAR8.var = "RABHOD["<<BROJBRUS<<"]"
  VAR5.var = "PODHOD["<<BROJBRUS<<"]"
  VAR1.var = "BEZPOZZ["<<BROJBRUS<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  if(nacbrus==0)
    hlp="sh016.png"
  else
    hlp="sh020.png"
  endif
  var1.hlp="sh013.png"
  RECT(240,8,300,65,128,130,1)
  RECT(240,73,300,177,128,133,1)
  RECT(240,178,300,65,128,130,1)
  RECT(240,243,300,85,128,133,1)
  RECT(240,328,300,43,128,130,1)

  RECT(0,8,240,235,128,4,1)
  RECT(0,243,240,128,128,130,1)

  IF(NACBRUS<>0)
    XOFF.VAR = "$P_UIFR[1,0,TR]"
    COFF.VAR = "$P_UIFR[1,1,TR]"
    ZOFF.VAR = "$P_UIFR[1,2,TR]"
    SIRTOC.VAR = "$TC_DP4[5,1]"
  ELSE
    XOFF.VAR = "$P_UIFR[2,0,TR]"
    COFF.VAR = "$P_UIFR[2,1,TR]"
    ZOFF.VAR = "$P_UIFR[2,2,TR]"
    SIRTOC.VAR = "$TC_DP4[1,1]"
  ENDIF      
  TASTERI=0
END_LOAD

//END

//M{popup,W=250,H=205,X=0,Y=0}
    DEF RETURNDIST = (R3//0/"",$89912///"RETURNDIST"/10,10,100/110,10,50//)
    DEF DIAMCORR = (R3//0/"",$89913,"X"///"DIAMCORR"/10,,100/110,,50//)
    DEF POSCORR = (R3//0/"",$89914,"Z"///"POSCORR"/10,,100/110,,50//)
    DEF PRECPEKIDA = (R5///"",$89915,"X"/WR1//"$R[50]"/10,,100/110,,50//)
    DEF POZICIJAPEKIDA = (R5///"",$89816,"Z"/WR1//"$R[51]"/10,,100/110,,50//)
    DEF TEKST = (S///"",$89917////10,130,300/0,,0//)
    DEF TEKST2 = (S///"",$89918////10,150,300/0,,0//)


    ;DEF BUTTONACCEPT = (W///,"slesstdcw.SlEsTouchButton"/////250,110,25,25/0,0,0,0)
    DEF BUTTONDECLINE = (W///,"slesstdcw.SlEsTouchButton"/////225,0,25,25/0,0,0,0)

    LOAD
 
        ;WRITECWPROPERTY("BUTTONACCEPT","Text","Accept")
        ;WRITECWPROPERTY("BUTTONACCEPT","TextColor","#FFFFFF")
        ;WRITECWPROPERTY("BUTTONACCEPT","ButtonStyle","1")
        ;WRITECWPROPERTY("BUTTONACCEPT","BackColor","#ECF0F5")
        ;WRITECWPROPERTY("BUTTONDECLINE","Text","Close")
        ;WRITECWPROPERTY("BUTTONDECLINE","TextColor","#FFFFFF")
        ;WRITECWPROPERTY("BUTTONDECLINE","ButtonStyle","1")
        ;WRITECWPROPERTY("BUTTONDECLINE","BackColor","#ECF0F5")
        WRITECWPROPERTY("BUTTONDECLINE","Picture","close.png")
        WRITECWPROPERTY("BUTTONDECLINE","PictureAlignment",128)
    END_LOAD
    
    SUB(on_BUTTONDECLINE_clicked)
        EXIT
    END_SUB
//END

//B(Funkcije)

SUB(VIDLJIVOST)

        VAR1.WR=2
        VARD1.wr=2
        VARD2.WR=2
        VARD3.WR=4
        VAR2.WR=2
        VAR3.WR=2
        VAR4.WR=2
        VAR5.WR=2
        PROFIL.WR=2
        VAR6.WR=1
        VAR45.WR=4

        IF(PROFIL==0) ; trougao
          vard3.wr=1
          var6.wr=2
          var7.wr=1
          var9.wr=1
          var8.wr=1
          var18.wr=1
          if(nacbrus==0)
            hlp="nav_trougao.png"
          else
            hlp="nav_trougao_unut.png"
          endif
        Endif

        if (profil==1) ;trapez
           var6.wr=2
           var7.wr=2
           var9.wr=1
           var8.wr=2
           var18.wr=2
           if(nacbrus==0)
             hlp="nav_trapez.png"
           else
             hlp="nav_trapez_unut.png"
           endif
        Endif

        if (profil==2) ; zaobljeni
           var6.wr=2
           var7.wr=2
           var9.wr=1
           var8.wr=2
           var18.wr=2
           if(nacbrus==0)
             hlp="nav_obli.png"
           else
             hlp="nav_obli_unut.png"
           endif
        Endif

        if (profil==3) ; testerasti
           var6.wr=2
          var7.wr=2
          var9.wr=1
          var8.wr=2
          var18.wr=2
          if(nacbrus==0)
            hlp="nav_testera.png"
          else
            hlp="nav_testera_unut.png"
          endif
        Endif
   
        if (profil==4) ; NE IDE
           var6.wr=2
           var7.wr=2
           var9.wr=2
           var8.wr=1
           var18.wr=1
           if(nacbrus==0)
             hlp="nav_trougaoizlaz.png"
           else
             hlp="nav_trougaoizlaz_unut.png"
           endif
        Endif

        if (profil==5) ;testerasti NE IDE
           var6.wr=2
           var7.wr=2
           var9.wr=2
           var8.wr=1
           var18.wr=1
           if(nacbrus==0)
             hlp="nav_testeraizlaz.png"
           else
             hlp="nav_testeraizlaz_unut.png"
           endif
        Endif

        if (profil==6) ;KVZ
           var6.wr=1
           var7.wr=1
           var9.wr=1
           var8.wr=2
           var18.wr=1
           if(nacbrus==0)
             hlp="nav_radijus.png"
           else
             hlp="nav_radijus_unut.png"
           endif
       Endif

       if (profil==7) ;KORISNICKI
           var6.wr=1
           var7.wr=1
           var9.wr=1
           var8.wr=1
           var18.wr=1
           VAR45.WR=2
           hlp=""
       Endif
END_SUB


//END
