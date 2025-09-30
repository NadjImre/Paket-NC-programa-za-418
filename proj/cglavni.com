//M(Glavni/$89150////)
;Ver1Rev0
;DEF NAZIV=(i///,"CYCLE NAME:"///"Q40.2"//120,,150)
DEF Abriht = (I/*0="\\sh025.png", 1="\\sh026.png"//,,,/wr1//"radni[4,0]"/50,25/10,25,25,25//"pom.html","C001"),
abriht1 = (I/* 0="-",1=$89075,2=$89077,3=$89571//,,,///"Radni[4,1]"/50,25,210/50,25,120//"pom.html","C002"),
Abriht2 = (I/1,200//,,"Rb",///"Radni[4,2]"/190,25,25/200,25,25//"pom.html","C003")
DEF Abriht3 = (I/1,2000//,$89232,,"x"///"Radni[4,6]"/50,50,45/100,50,80//"pom.html","C004"),
 Abriht4 =(R3/0,1//,,,$89068///"Radni[4,7]"/50,50,45/140,50,90//"pom.html","C005"),
 Abriht5 = (R1///,$89234,,$89070///"Radni[4,8]"/205,50,55/275,50,90//"pom.html","C006")
DEF Abriht6 = (R4/-10,10//,,$89434,$89068///"Radni[4,3]"/45,50,45/90,50,110//"pom.html","C007"),
 Abriht7 =(I/* 0=$89152, 3=$89432,1=$89430,2=$89431, 4=$89433//,,,///"Radni[4,4]"/45,50,45/200,50,170//"pom.html","C008"),
 Abriht8 = (R4///,,$89437,$89068///"radni[4,5]"/385,50,35/420,50,100//"pom.html","C009")

DEF Abriht10 = (I/*0="\\sh025.png", 1="\\sh026.png"//,,,/wr1//"radni[3,0]"/50,100/10,100,25,25//"pom.html","C001"),
abriht11 = (I/* 0="-",1=$89075,2=$89077,3=$89571//,,,///"Radni[3,1]"/50,100,210/50,100,120//"pom.html","C002"),
Abriht12 = (I/1,200//,,"Rb",///"Radni[3,2]"/190,100,25/200,100,25//"pom.html","C003")
DEF Abriht13 = (I/1,2000//,$89232,,"x"///"Radni[3,6]"/50,125,45/100,125,80//"pom.html","C004"),
 Abriht14 =(R3/0,1//,,,$89068///"Radni[3,7]"/50,125,45/140,125,90//"pom.html","C005"),
 Abriht15 = (R1///,$89234,,$89070///"Radni[3,8]"/205,125,55/275,125,90//"pom.html","C006")
DEF Abriht16 = (R4/-10,10//,,$89434,$89068///"Radni[3,3]"/45,125,45/90,125,110//"pom.html","C007"),
 Abriht17 =(I/* 0=$89152, 3=$89432,1=$89430,2=$89431, 4=$89433//,,,///"Radni[3,4]"/45,125,45/200,125,170//"pom.html","C008"),
 Abriht18 = (R4///,,$89437,$89068///"Radni[3,5]"/385,125,35/420,125,100//"pom.html","C009")

DEF Abriht20 = (I/*0="\\sh025.png", 1="\\sh026.png"//,,,/wr1//"radni[2,0]"/50,175/10,175,25,25//"pom.html","C001"),
abriht21 = (I/* 0="-",1=$89075,2=$89077,3=$89571//,,,///"Radni[2,1]"/50,175,210/50,175,120//"pom.html","C002"),
Abriht22 = (I/1,200//,,"Rb",///"Radni[2,2]"/190,175,25/200,175,25//"pom.html","C003")
DEF Abriht23 = (I/1,2000//,$89232,,"x"///"Radni[2,6]"/50,200,45/100,200,80//"pom.html","C004"),
 Abriht24 =(R3/0,1//,,,$89068///"Radni[2,7]"/50,200,45/140,200,90//"pom.html","C005"),
 Abriht25 = (R1///,$89234,,$89070///"Radni[2,8]"/205,200,55/275,200,90//"pom.html","C005")
DEF Abriht26 = (R4/-10,10//,,$89434,$89068///"Radni[2,3]"/45,200,45/90,200,110//"pom.html","C006"),
 Abriht27 =(I/* 0=$89152 , 3=$89432,1=$89430,2=$89431, 4=$89433//,,,///"Radni[2,4]"/45,200,45/200,200,170//"pom.html","C007"),
 Abriht28 = (R4///,,$89437,$89068///"Radni[2,5]"/385,200,35/420,200,100//"pom.html","C008")

DEF Abriht30 = (I/*0="\\sh025.png", 1="\\sh026.png"//,,,/wr1//"radni[1,0]"/50,250/10,250,25,25//"pom.html","C001"),
abriht31 = (I/* 0="-",1=$89075,2=$89077,3=$89571//,,,///"Radni[1,1]"/50,250,210/50,250,120//"pom.html","C002"),
Abriht32 = (I/1,200//,,"Rb",///"Radni[1,2]"/190,250,25/200,250,25//"pom.html","C003")
DEF Abriht33 = (I/1,2000//,$89232,,"x"///"Radni[1,6]"/50,275,45/100,275,80//"pom.html","C004"),
 Abriht34 =(R3/0,1//,,,$89068///"Radni[1,7]"/50,275,45/140,275,90//"pom.html","C005"),
 Abriht35 = (R1///,$89234,,$89070///"Radni[1,8]"/205,275,55/275,275,90//"pom.html","C006")
DEF Abriht36 = (R4/-10,10//,,$89434,$89068///"Radni[1,3]"/45,275,45/90,275,110//"pom.html","C007"),
 Abriht37 =(I/* 0=$89152, 3=$89432,1=$89430,2=$89431, 4=$89433//,,,///"Radni[1,4]"/45,275,45/200,275,170//"pom.html","C008"),
 Abriht38 = (R4///,,$89437,$89068///"Radni[1,5]"/385,275,35/420,275,100//"pom.html","C009")

DEF Abriht40 = (I/*0="\\sh025.png", 1="\\sh026.png"//,,,/wr1//"radni[0,0]"/50,325/10,325,25,25//"pom.html","C001"),
abriht41 = (I/* 0="-",1=$89075,2=$89077,3=$89571//,,,///"Radni[0,1]"/50,325,210/50,325,120//"pom.html","C002"),
Abriht42 = (I/1,200//,,"Rb",///"Radni[0,2]"/190,325,25/200,325,25//"pom.html","C003")
DEF Abriht43 = (I/1,2000//,$89232,,"x"///"Radni[0,6]"/50,350,45/100,350,80//"pom.html","C004"),
 Abriht44 =(R3/0,1//,,,$89068///"Radni[0,7]"/50,350,45/140,350,90//"pom.html","C005"),
 Abriht45 = (R1///,$89234,,$89070///"Radni[0,8]"/205,350,55/275,350,90//"pom.html","C006")
DEF Abriht46 = (R4/-10,10//,,$89434,$89068///"Radni[0,3]"/45,350,45/90,350,110//"pom.html","C007"),
 Abriht47 =(I/* 0=$89152, 3=$89432,1=$89430,2=$89431, 4=$89433//,,,///"Radni[0,4]"/45,350,45/200,350,170//"pom.html","C008"),
 Abriht48 = (R4///,,$89437,$89068///"Radni[0,5]"/385,350,35/420,350,100//"pom.html","C009")

def brojbrus=(i////wr4//"brusbroj"/250,,180/405,,55)
def osca = (I)
DEF var0 = (I)

DEF VODA = (IDD/*1=$89154,0=$89155//,$89137,,$89067/WR4//"TEST")

vs1=($89595,,se1)
vs2=($89596,,se1)
VS3=($89597,,se1)
VS4=($89598,,se1)
VS5=($89599,,se1)
VS6=("test",,se1)
VS7=("",se2)
VS8=("",se2)

Press(VS1)
  if (abriht==0)
     abriht=1
  else
     abriht=0
  endif
END_PRESS

Press(VS2)
  if (abriht10==0)
     abriht10=1
  else
     abriht10=0
  endif
END_PRESS


Press(VS3)
  if (abriht20==0)
     abriht20=1
  else
     abriht20=0
  endif
END_PRESS

Press(VS4)
  if (abriht30==0)
     abriht30=1
  else
     abriht30=0
  endif
END_PRESS

Press(VS5)
  if (abriht40==0)
     abriht40=1
  else
     abriht40=0
  endif
END_PRESS

PRESS(VS6)
     IF (VODA==0) 
        vs6.st="\\sh022.png" 
        voda=1
     ELSE 
        vs6.st="\\sh023.png"
        voda=0
     ENDIF
END_PRESS

change(abriht1)
  if (abriht1==1)
     abriht2.wr=2
     abriht3.wr=4
     abriht4.wr=4
     abriht5.wr=4
     abriht6.wr=2
     abriht7.wr=2
     abriht8.wr=2
  else 
     if(abriht1==2)
        abriht2.wr=2
        abriht3.wr=2
        abriht4.wr=2
        abriht5.wr=2
        abriht6.wr=4
        abriht7.wr=4
        abriht8.wr=4
     else
        abriht2.wr=4
        abriht3.wr=4
        abriht4.wr=4
        abriht5.wr=4
        abriht6.wr=4
        abriht7.wr=4
        abriht8.wr=4
     endif
  endif
  if(abriht1<>0)
        abriht2.wr=2      
  endif
end_change

change(abriht11)
  if (abriht11==1)
     abriht12.wr=2
     abriht13.wr=4
     abriht14.wr=4
     abriht15.wr=4
     abriht16.wr=2
     abriht17.wr=2
     abriht18.wr=2
  else 
     if(abriht11==2)
        abriht12.wr=2
        abriht13.wr=2
        abriht14.wr=2
        abriht15.wr=2
        abriht16.wr=4
        abriht17.wr=4
        abriht18.wr=4
     else
        abriht12.wr=4
        abriht13.wr=4
        abriht14.wr=4
        abriht15.wr=4
        abriht16.wr=4
        abriht17.wr=4
        abriht18.wr=4
     endif
  if(abriht11<>0)
        abriht12.wr=2      
  endif
  endif
end_change

change(abriht21)
  if (abriht21==1)
     abriht22.wr=2
     abriht23.wr=4
     abriht24.wr=4
     abriht25.wr=4
     abriht26.wr=2
     abriht27.wr=2
     abriht28.wr=2
  else 
     if(abriht21==2)
        abriht22.wr=2
        abriht23.wr=2
        abriht24.wr=2
        abriht25.wr=2
        abriht26.wr=4
        abriht27.wr=4
        abriht28.wr=4
     else
        abriht22.wr=4
        abriht23.wr=4
        abriht24.wr=4
        abriht25.wr=4
        abriht26.wr=4
        abriht27.wr=4
        abriht28.wr=4
     endif
  endif
  if(abriht21<>0)
        abriht22.wr=2      
  endif
end_change

change(abriht31)
  if (abriht31==1)
     abriht32.wr=2
     abriht33.wr=4
     abriht34.wr=4
     abriht35.wr=4
     abriht36.wr=2
     abriht37.wr=2
     abriht38.wr=2
  else 
     if(abriht31==2)
        abriht32.wr=2
        abriht33.wr=2
        abriht34.wr=2
        abriht35.wr=2
        abriht36.wr=4
        abriht37.wr=4
        abriht38.wr=4
     else
        abriht32.wr=4
        abriht33.wr=4
        abriht34.wr=4
        abriht35.wr=4
        abriht36.wr=4
        abriht37.wr=4
        abriht38.wr=4
     endif
  endif
  if(abriht31<>0)
        abriht32.wr=2      
  endif
end_change

change(abriht41)
  if (abriht41==1)
     abriht42.wr=2
     abriht43.wr=4
     abriht44.wr=4
     abriht45.wr=4
     abriht46.wr=2
     abriht47.wr=2
     abriht48.wr=2
  else 
     if(abriht41==2)
        abriht42.wr=2
        abriht43.wr=2
        abriht44.wr=2
        abriht45.wr=2
        abriht46.wr=4
        abriht47.wr=4
        abriht48.wr=4
     else
        abriht42.wr=4
        abriht43.wr=4
        abriht44.wr=4
        abriht45.wr=4
        abriht46.wr=4
        abriht47.wr=4
        abriht48.wr=4
     endif
  endif
  if(abriht41<>0)
        abriht42.wr=2      
  endif
end_change

load

line(10,20,450,20,1,2)
line(10,85,450,85,1,2)
line(10,160,450,160,1,2)
line(10,235,450,235,1,2)
line(10,310,450,310,1,2)

osca.VAR = "osca["<<BROJBRUS<<"]"
var0.VAR = "NACABRIHT["<<BROJBRUS<<"]"
ls("menus","cmeni.com",1) 
hs8.se=3

IF (VODA==0) 
   vs6.st="\\sh023.png" 
ELSE 
   vs6.st="\\sh022.png"
ENDIF

end_load

//END


//G(Ledjno/0/16)
 (R4///,"C [step]"///"LED_C[0]"/100/1,1,1)
 (R4///,"X [mm]"///"LED_X[0]"/100/1,1,1)
//END

//G(abriht/0/32)
 (i///,"Inter"///"ainter[0]"/100/1,1,1)
 (R4///,"Z [mm]"///"azpos[0]"/100/1,1,1)
 (R4///,"X [mm]"///"axpos[0]"/100/1,1,1)
 (R4///,"R [mm]"///"arad[0]"/100/1,1,1)
//END


//M(TabelaLed/$89150////)

DEF VAR8 = (V/% Ledjno///////00,00,250,300)


HS1=($89075,,se1)
HS2=("",,se2)
HS3=("",,se2)
HS4=("",,se2)
HS5=("",,se2)
HS6=("",,se2)
HS7=("",,se2)
HS8=("",,se2)

VS2=("",,se2)
VS3=("",,se2)

PRESS(HS1)
LM("Glavni","cglavni.com")
END_PRESS

//END


//M(TabelaAbriht/$89150////)

DEF VAR8 = (V/% Abriht///////00,00,400,350)


HS1=($89075,,se1)
HS2=("",,se2)
HS3=("",,se2)
HS4=("",,se2)
HS5=("",,se2)
HS6=("",,se2)
HS7=("",,se2)
HS8=("",,se2)

VS2=("",,se2)
VS3=("",,se2)

PRESS(HS1)
LM("Glavni","cglavni.com")
END_PRESS

//END


