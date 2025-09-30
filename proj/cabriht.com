//M(abriht/$89441/"\\sh007.png"///10,20)

DEF VAR0 = (IDD/* 0=$89463,1=$89577,2="Konus"//,$89165,"-","."/wr2//"NACABRIHT[0]"/250,5,170/405,5,170//"pom.html","M002")
DEF NASLOV2 = (R3///,$89631,,/WR1///230,28,280/415,28,125/)
DEF VARX1 = (r3/-1,2//,$89438,"x1",$89068/LI3,//"KORX1[0]"/235,,195/425,,110//"pom.html","A001")
DEF VARX2 = (R3/-1,1//,,"x2",$89068/LI3,//"KORX2[0]"/235,,195/425,,110//"pom.html","A002")
DEF PODHOD = (R3/0,10//,$89058,"xS",$89068/LI3,WR1//"PODHOD2[0]"/235,,195/425,,110//"pom.html","A003")
DEF RAST = (R3/0,10//,$89422,"x3",$89068/LI3,//"RAST[0]"/235,,195/425,,110//"pom.html","A004")
DEF korxb = (R3/-10,10//,$89646,"xB",$89068/LI3,//"KORXB[0]"/235,,195/425,,110//"pom.html","A004")
DEF NZ = (I/1,30//,$89423,"NZ","-"/LI3//"PROFIL7[0]"/235,,195/425,,95//"pom.html","A005")
DEF PPX = (I/1,3//"",$89555,"PPX","x"/LI3//"PROFIL6[0]"/235,,195/425,,95//"pom.html","A006")
DEF DeltaX = (R3/0,0.30//"",$89556,"DX",$89068/LI3//"PROFIL5[0]"/235,,195/425,,95//"pom.html","A007")
DEF NASLOV1 = (R3///,"- KONTROLNI PARAMETRI PORAVNAVANJA -",,/WR4///230,220,280/415,220,125/)
DEF SIRB=(R3///,,"B"/WR1),
SIRH=(R3///,,"H"/WR1)
DEF SIRB2=(R3///,,"B2"/WR1),
SIRB1=(R3///,,"B1"/WR1)
DEF SIRH2=(R3///,,"H2"/WR1),
SIRHX=(R3///,,"Hx"/WR1)
DEF SIRH0=(R3///,,"Ho"/WR1),
SIRH1=(R3///,,"H3"/WR1)

DEF RMAX1=(R3///,,"R1","max"/wr1)
def RMAX2=(R3///,,"R2","max"/wr4)
;DEF duzkon = (R3/0,80//,$89657,"L",$89068/LI3,//"duzkon[0]"/5,310,180/160,310,100//"pom.html","A004")
DEF ugaokon = (R3/10,40//,$89656,"U",$89072/LI3,//"ugaokon[0]"/5,330,180/160,330,100//"pom.html","A004")

DEF VAR1 = (IDD/0,100//,$89124,"N",$89067/LI3,wr4/"\\sh008.png"/"BROJA[0]"/250,,180/415,,110//"pom.html","A008")
DEF VAR2 = (R3/1,1000//,$89125,"Va",$89070/LI3,wr4/"\\sh008.png"/"BRZA[0]"/250,,180/415,,110//"pom.html","A009")
DEF duba = (R3/0.0,0.5//,$89123,"Sa",$89068/LI3,wr4/"\\sh008.png"/"DUBA[0]"/250,,180/415,,110//"pom.html","A010")

DEF VARXR = (R2/0,1.5//,"Radijus podnozja","xR",$89068/LI3,wr4//"KORXR[0]"/250,,180/415,,110//"pom.html","A011")
def brojbrus=(i////wr4//"brusbroj")
def osca = (I////wr4)
DEF PROFIL = (IDD///,$89403,"-","."/wr4//"PROFIL[0]")
DEF NACBRUS = (IDD///,$89400,,"."/WR4//"NACBRUS[0]")
DEF VARD = (R3///,$89409,"D",$89068/WR4//"PREC[0]")
DEF VARD1 = (R3///,,"D1",$89068/WR4//"PREC1[0]")
DEF VARD2 = (R3///,,"D2",$89068/WR4//"PREC2[0]")
DEF KORAK = (R3///,$89410,"P",$89068/WR4//"KORAK[0]")
DEF alfa = (R1/0,50//,$89416,"A1",$89072/LI3,WR4//"ALFA1[0]")
DEF beta = (R1/0,50//,$89417,"A2",$89072/LI3,WR4//"ALFA2[0]")
DEF Vish1 = (R0/0.2,10//,$89419,"H1",$89068/WR4//"VIS1[0]")

SUB(VIDLJIVOST)


if (var0<>0)
   varx1.wr=1
   varx2.wr=1
   rast.wr=1
   nz.wr=1
   ppx.wr=1
   deltax.wr=1
   KORXB.WR=1
ugaokon.wr=2
duzkon.wr=2
   hlp="//kamcil.png"
else if (var0==0)
 ugaokon.wr=2
duzkon.wr=2
   varx1.wr=2
   varx2.wr=2
   rast.wr=2
   KORXB.WR=2
   nz.wr=2
   if (nz>1)
      ppx.wr=2
      deltax.wr=2
      hlp="//kamviseprofilni.png"
   else
      ppx.wr=1
      deltax.wr=1
      if (profil==0)
         hlp="//kamnavtro.png"
      endif
      if (profil==1)
         hlp="//kamnavtrap.png"
      endif
      if (profil==2)
         hlp="//kamnavobl.png"
      endif
      if (profil==3)
         hlp="//kamnavtest.png"
      endif
      if (profil==4)
         hlp="//kamnaviz.png"
      endif
      if (profil==5)
         hlp="//kamnavtestiz.png"
      endif
      if (profil==6)
         hlp="//kamnavrad.png"
      endif
   endif

endif

END_SUB

change(nz)
  CALL("VIDLJIVOST")
end_change

CHANGE(VAR0)
  CALL("VIDLJIVOST")
END_CHANGE

LOAD
  ls("menus","cmeni.com",1) 
  VAR1.VAR = "BROJA["<<BROJBRUS<<"]"
  VAR2.VAR = "BRZA["<<BROJBRUS<<"]"
  duba.VAR = "DUBA["<<BROJBRUS<<"]"
  NACBRUS.VAR = "NACBRUS["<<BROJBRUS<<"]"
  osca.VAR = "osca["<<BROJBRUS<<"]"
  PROFIL.VAR = "PROFIL["<<BROJBRUS<<"]"
  VAR0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
  VARD.VAR = "PREC["<<BROJBRUS<<"]"
  VARD1.VAR = "PREC1["<<BROJBRUS<<"]"
  VARD2.VAR = "PREC2["<<BROJBRUS<<"]"
  KORAK.VAR = "KORAK["<<BROJBRUS<<"]"
  alfa.VAR = "ALFA1["<<BROJBRUS<<"]"
  beta.VAR = "ALFA2["<<BROJBRUS<<"]"
  VARX1.VAR = "KORX1["<<BROJBRUS<<"]"
  VARX2.VAR = "KORX2["<<BROJBRUS<<"]"
  KORXB.VAR = "KORXB["<<BROJBRUS<<"]"
  VARXR.VAR = "KORXR["<<BROJBRUS<<"]"
  PODHOD.VAR = "PODHOD2["<<BROJBRUS<<"]"
  RAST.VAR = "RAST["<<BROJBRUS<<"]"
  NZ.VAR = "PROFIL7["<<BROJBRUS<<"]"
  PPX.VAR = "PROFIL6["<<BROJBRUS<<"]"
  DELTAX.VAR = "PROFIL5["<<BROJBRUS<<"]"
  profil.VAR = "PROFIL["<<BROJBRUS<<"]"
  VisH1.VAR = "VIS1["<<BROJBRUS<<"]"
UGAOKON.VAR= "UGAOKON["<<BROJBRUS<<"]"
DUZKON.VAR= "DUZKON["<<BROJBRUS<<"]"  
hs6.se=3
  hd=" (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  RECT(230,25,316,190,128,127,1)
  RECT(230,215,316,170,128,133,1)
  RECT(0,5,230,300,128,4,1)
  SIRB=KORAK/2

  sirh=0.5*(vard-vard1) ;visina zuba bez korekcije
  sirhx=0.5*(vard-vard1)+varx1+varx2 ; visina zuba sa korekcijom
  If (nacbrus==0)
     sirh1=0.5*(vard2-vard1)+varx2 ;visina glave zuba
     sirh2=0.5*(vard-vard2)+varx1 ;visina noge zuba
  else
     sirh1=0.5*(vard-vard2)+varx2 ;visina glave zuba
     sirh2=0.5*(vard2-vard1)+varx1 ;visina noge zuba
  endif
  
  ;teorijska visina zuba
  if((alfa+beta)==0)
    sirh0=sirh
  else
    sirh0=korak*cos(srad(alfa))*cos(srad(beta))/sin(srad(alfa+beta)) 
  endif
  ;sirina podnozja zuba
  sirb1=sirb+sirh2*tan(srad(alfa))+sirh2*tan(srad(beta))
  if((profil==4) or (profil==5)) ;profil sa izlazom
    ;sirina vrha zuba  
    sirb2=sirb1-(vish1+varx1)*(tan(srad(alfa))+tan(srad(beta)))
  else
    ;sirina vrha
    sirb2=sirb1-sirhx*tan(srad(alfa))-sirhx*tan(srad(beta))
  endif
    ;radijus zaobljenja
  rmax1=(0.5*sirh0-sirh1)*sin(srad((alfa+beta)/2))/( cos(srad((alfa-beta)/2)) - sin(srad((alfa+beta)/2)) )
    ;radijus zaobljenja
  rmax2=(0.5*sirh0-sirh2)*sin(srad((alfa+beta)/2))/( cos(srad((alfa-beta)/2)) - sin(srad((alfa+beta)/2)) )
END_LOAD

//END
