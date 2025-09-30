;//M(MASKE2/"Interface to robot"/"interface_1.png"/0.0.560.450//)
//M(dijagnoza/"Dijagnoza")

;ULAZI
DEF TXT1 = (I///,"Stop linija"/WR0,FS1///50,15,200),ARR1=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,20,200/165,30,0,15//)
DEF TXT2 = (I///,"Temperatura ormana visoka"/WR0,FS1///50,35,200),ARR2=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,40,200/165,30,0,15//)
DEF TXT3 = (I///,"NC spreman"/WR0,FS1///50,55,200),ARR3=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,60,200/165,30,0,15//)
DEF TXT4 = (I///,"Aspirator ukljucen"/WR0,FS1///50,75,200),ARR4=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,80,200/165,30,0,15//)
DEF TXT5 = (I///,"Emulzija ukljucena"/WR0,FS1///50,95,200),ARR5=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,100,200/165,30,0,15//)
DEF TXT6 = (I///,"Dijamantska rolna spremna"/WR0,FS1///50,115,200),ARR6=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,120,200/165,30,0,15//)
DEF TXT7 = (I///,"Dijamantska rolna alarm"/WR0,FS1///50,135,200),ARR7=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,140,200/165,30,0,15//)
DEF TXT8 = (I///,"Pritisak pneumatike rolne"/WR0,FS1///50,155,200),ARR8=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,160,200/165,30,0,15//)
DEF TXT9 = (I///,"Pritisak pneumatike masine"/WR0,FS1///50,175,200),ARR9=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,180,200/165,30,0,15//)
DEF TXT10 = (I///,"Hladjenje tocila aktivno"/WR0,FS1///50,195,200),ARR10=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,200,200/165,30,0,15//)
DEF TXT11 = (I///,"Temperatura tocila normalna"/WR0,FS1///50,215,200),ARR11=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,220,200/165,30,0,15//)
DEF TXT12 = (I///,"Hladjenje C ose aktivno"/WR0,FS1///50,235,200),ARR12=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,240,200/165,30,0,15//)
DEF TXT13 = (I///,"Temperatura C ose normalna"/WR0,FS1///50,255,200),ARR13=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,260,200/165,30,0,15//)
DEF TXT14 = (I///,"Renishaw sonda podignuta"/WR0,FS1///50,275,200),ARR14=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,280,200/165,30,0,15//)
DEF TXT15 = (I///,"Hladnjak Chilly ukljucen"/WR0,FS1///50,295,200),ARR15=(S12///,"\\led_off.png",,/wr2,fs1,al0,///220,300,200/165,30,0,15//)

;IZLAZI
DEF IZLAZ1 = (I///,"Izlaz papirnog precistaca"/WR0,FS1///240,15,200),IZL1=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,20,200/165,30,0,15//)
DEF IZLAZ2 = (I///,"Izlaz magnetnog precistaca"/WR0,FS1///240,35,200),IZL2=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,40,200/165,30,0,15//)
DEF IZLAZ3 = (I///,"Izlaz Hladnjak Chilly"/WR0,FS1///240,55,200),IZL3=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,60,200/165,30,0,15//)
DEF IZLAZ4 = (I///,"Ukljucenje napajanja regulatora rolne"/WR0,FS1///240,75,200),IZL4=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,80,200/165,30,0,15//)
DEF IZLAZ5 = (I///,"Izlaz za ukljucenje hidraulicne pumpe"/WR0,FS1///240,95,200),IZL5=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,100,200/165,30,0,15//)
DEF IZLAZ6 = (I///,"Izlaz za pumpu rashladne tecnosti"/WR0,FS1///240,115,200),IZL6=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,120,200/165,30,0,15//)
DEF IZLAZ7 = (I///,"Izlaz za ukljucenje aspiratora"/WR0,FS1///240,135,200),IZL7=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,140,200/165,30,0,15//)
DEF IZLAZ8 = (I///,"Izlaz za ventil za centralno podmazivanje"/WR0,FS1///240,155,200),IZL8=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,160,200/165,30,0,15//)
DEF IZLAZ9 = (I///,"Izlaz za ventil za hladjenje rolne"/WR0,FS1///240,175,200),IZL9=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,180,200/165,30,0,15//)
DEF IZLAZ10 = (I///,"Izlaz za ventil a otpustanje kocnice A ose"/WR0,FS1///240,195,200),IZL10=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,200,200/165,30,0,15//)
DEF IZLAZ11 = (I///,"Izlaz za ventil za pojacanu silu stezanja A ose"/WR0,FS1///240,215,200),IZL11=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,220,200/165,30,0,15//)
DEF IZLAZ12 = (I///,"Izlaz za ventil podizanja pozicionera"/WR0,FS1///240,235,200),IZL12=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,240,200/165,30,0,15//)
DEF IZLAZ13 = (I///,"Izlaz za elektromagnet zakljucavanja vrata"/WR0,FS1///240,255,200),IZL13=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,260,200/165,30,0,15//)
DEF IZLAZ14 = (I///,"Izlaz za ventil otvaranja konjica"/WR0,FS1///240,275,200),IZL14=(S12///,"\\led_off.png",,/wr2,fs1,al0,///470,280,200/165,30,0,15//)





;ULAZI
DEF stop_linija=(B////wr0//"I32.0"/0,0,0/0,0,0,0//);Kontrola stop linije-Modul
DEF temp=(B////wr0//"I32.5"/0,0,0/0,0,0,0//);Temperatura ormara
DEF nc=(B////wr0//"I33.0"/0,0,0/0,0,0,0//);NC Ready
DEF aspirator=(B////wr0//"I33.7"/0,0,0/0,0,0,0//);Aspirator 
DEF emulzija=(B////wr0//"I33.6"/0,0,0/0,0,0,0//);Pumpa rashladne tenosti
DEF rolnaReady=(B////wr0//"I34.0"/0,0,0/0,0,0,0//);
DEF rolnaAlarm=(B////wr0//"I34.1"/0,0,0/0,0,0,0//);
DEF vazduhRolna=(B////wr0//"I35.0"/0,0,0/0,0,0,0//);
DEF pritisakVazduh=(B////wr0//"I35.1"/0,0,0/0,0,0,0//)
DEF hladjenjeSp=(B////wr0//"I52.0"/0,0,0/0,0,0,0//);
DEF tempSp=(B////wr0//"I52.1"/0,0,0/0,0,0,0//);
DEF hladjenjeC=(B////wr0//"I52.3"/0,0,0/0,0,0,0//);
DEF tempC=(B////wr0//"I52.4"/0,0,0/0,0,0,0//);
DEF sondaGore=(B////wr0//"I53.0"/0,0,0/0,0,0,0//);
DEF chilly=(B////wr0//"I33.3"/0,0,0/0,0,0,0//);

;IZLAZI
DEF papirni=(B////wr0//"Q40.1"/0,0,0/0,0,0,0//);
DEF magnetni=(B////wr0//"Q40.2"/0,0,0/0,0,0,0//);
DEF chilly1=(B////wr0//"Q40.3"/0,0,0/0,0,0,0//);
DEF napajanjeRolne=(B////wr0//"Q40.4"/0,0,0/0,0,0,0//);
DEF hidraulicnaPumpa=(B////wr0//"Q40.5"/0,0,0/0,0,0,0//);
DEF rashladnaTecnost=(B////wr0//"Q40.6"/0,0,0/0,0,0,0//);
DEF aspiratorOn=(B////wr0//"Q40.7"/0,0,0/0,0,0,0//);
DEF centralnoPodmazivanje=(B////wr0//"Q44.1"/0,0,0/0,0,0,0//);
DEF vazduhRolna1=(B////wr0//"Q44.2"/0,0,0/0,0,0,0//);
DEF otpustanjeKocnice=(B////wr0//"Q44.3"/0,0,0/0,0,0,0//);
DEF pojacanaSila=(B////wr0//"Q44.4"/0,0,0/0,0,0,0//);
DEF sondaVentil=(B////wr0//"Q44.5"/0,0,0/0,0,0,0//);
DEF zakljucavanjeVrata=(B////wr0//"Q44.6"/0,0,0/0,0,0,0//);
DEF konjic=(B////wr0//"Q44.7"/0,0,0/0,0,0,0//);




HS1=($89075,,se1)
HS2=("",,se2)
HS3=("",,se2)
HS4=("",,se2)
HS5=("",,se2)
HS6=("",,se2)
HS7=("",,se2)
HS8=("",,se2)



PRESS(HS1)
LM("Glavni","cglavni.com")
END_PRESS

VS1=("")
VS2=("")
VS3=("")

VS4=("")
VS5=("")
VS6=("")
VS7=("")
VS8=("")


LOAD
;REG[0]="$AA_IW[AX1]"
;DLGL("Wert_R1"<<RNP("$R[1]"))
;DLGL("Wert_R1"<<RNP("$AA_IM[AX1]"))
;WNP("$R[1]",var3)
END_LOAD

;ULAZI
CHANGE(stop_linija)
IF stop_linija==1 
ARR1.st="\\led_gr.png"
ELSE
ARR1.st="\\led_red.png"
ENDIF
END_CHANGE

CHANGE(temp)
IF temp==1  
ARR2.st="\\led_red.png"
ELSE
ARR2.st="\\led_gr.png"
ENDIF
END_CHANGE

CHANGE(nc)
IF nc==1   
ARR3.st="\\led_gr.png"
ELSE
ARR3.st="\\led_red.png"
ENDIF
END_CHANGE


CHANGE(aspirator)
IF aspirator==1   
ARR4.st="\\led_gr.png"
ELSE
ARR4.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(emulzija)
IF emulzija==1   
ARR5.st="\\led_gr.png"
ELSE
ARR5.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(rolnaReady)
IF rolnaReady==1   
ARR6.st="\\led_gr.png"
ELSE
ARR6.st="\\led_red.png"
ENDIF
END_CHANGE

CHANGE(rolnaAlarm)
IF rolnaAlarm==1   
ARR7.st="\\led_red.png"
ELSE
ARR7.st="\\led_gr.png"
ENDIF
END_CHANGE

CHANGE(vazduhRolna)
IF vazduhRolna==1   
ARR8.st="\\led_gr.png"
ELSE
ARR8.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(pritisakVazduh)
IF pritisakVazduh==1   
ARR9.st="\\led_gr.png"
ELSE
ARR9.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(hladjenjeSp)
IF hladjenjeSp==1   
ARR10.st="\\led_gr.png"
ELSE
ARR10.st="\\led_red.png"
ENDIF
END_CHANGE

CHANGE(tempSp)
IF tempSp==1  
ARR11.st="\\led_gr.png"
ELSE
ARR11.st="\\led_red.png"
ENDIF
END_CHANGE

CHANGE(hladjenjeC)
IF hladjenjeC==1   
ARR12.st="\\led_gr.png"
ELSE
ARR12.st="\\led_red.png"
ENDIF
END_CHANGE


CHANGE(tempC)
IF tempC==1   
ARR13.st="\\led_gr.png"
ELSE
ARR13.st="\\led_red.png"
ENDIF
END_CHANGE


CHANGE(sondaGore)
IF sondaGore==1   
ARR14.st="\\led_gr.png"
ELSE
ARR14.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(chilly)
IF chilly==1   
ARR15.st="\\led_gr.png"
ELSE
ARR15.st="\\led_off.png"
ENDIF
END_CHANGE

;IZLAZI

CHANGE(papirni)
IF papirni==1   
IZL1.st="\\led_gr.png"
ELSE
IZL1.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(magnetni)
IF magnetni==1   
IZL2.st="\\led_gr.png"
ELSE
IZL2.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(CHILLY1)
IF chilly1==1   
IZL3.ST="\\led_gr.png"
ELSE
IZL3.ST="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(napajanjeRolne)
IF napajanjeRolne==1   
IZL4.st="\\led_gr.png"
ELSE
IZL4.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(hidraulicnaPumpa)
IF hidraulicnaPumpa==1   
IZL5.st="\\led_gr.png"
ELSE
IZL5.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(rashladnaTecnost)
IF rashladnaTecnost==1   
IZL6.st="\\led_gr.png"
ELSE
IZL6.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(aspiratorOn)
IF aspiratorOn==1   
IZL7.st="\\led_gr.png"
ELSE
IZL7.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(centralnoPodmazivanje)
IF centralnoPodmazivanje==1   
IZL8.st="\\led_gr.png"
ELSE
IZL8.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(vazduhRolna1)
IF vazduhRolna1==1   
IZL9.st="\\led_gr.png"
ELSE
IZL9.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(otpustanjeKocnice)
IF otpustanjeKocnice==1   
IZL10.st="\\led_gr.png"
ELSE
IZL10.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(pojacanaSila)
IF pojacanaSila==1   
IZL11.st="\\led_gr.png"
ELSE
IZL11.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(sondaVentil)
IF sondaVentil==1   
IZL12.st="\\led_gr.png"
ELSE
IZL12.st="\\led_off.png"
ENDIF
END_CHANGE
CHANGE(zakljucavanjeVrata)
IF zakljucavanjeVrata==1   
IZL13.st="\\led_gr.png"
ELSE
IZL13.st="\\led_off.png"
ENDIF
END_CHANGE

CHANGE(konjic)
IF konjic==1   
IZL14.st="\\led_gr.png"
ELSE
IZL14.st="\\led_off.png"
ENDIF

PRESS(VS8)
EXIT
END_PRESS

PRESS(VS7)
EXIT
END_PRESS

//END

