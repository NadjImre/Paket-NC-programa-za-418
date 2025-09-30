//G(Ledjno/0/12)
 (R4///,"C [step]"///"LED_C[0]"/145/1,1,1)
 (R4///,"X [mm]"///"LED_X[0]"/145/1,1,1)
//END


//M(ledjni/$89440/"\\ledbrus.png"///10,20)

;FB261/FB262/FB229
;Definisanje leðne obrde

DEF LEDJNO = (IDD/*1=$89154,0=$89155,-1=$89662//,$89572,"-","."///"LEDJNO[0]"/25,150,240/245,150,130//"pom.html","L001")
DEF LEDDUB = (R3///,$89573,"K",$89068///"LEDDUB[0]"/25,,240/245,,130//"pom.html","L002");
DEF LEDZUB = (I/2,100//,$89574, "Z", "-"///"LEDZUB[0]"/25,,240/245,,130//"pom.html","L003")
DEF LEDUGAO = (I/10,90//, $89575,"Fi","%"///"LedUgao[0]"/25,,240/245,,130//"pom.html","L004")
DEF LEDKORAK = (R4///,$89576,"H",$89068///"LEDKORAK[0]"/25,,240/245,,130//"pom.html","L005")

def brojbrus=(i////wr4//"brusbroj")
def osca = (I////wr4)
DEF VAR8 = (S///,$89613/WR2//"TABELA[0]"/25,,240/245,,220)
VS1=($89512,,se1)
VS2=($89531,,se1)
vS5=($89600,,se1)

PRESS(VS1)
  brojbrus=brojbrus-1
  if (brojbrus<0)
     brojbrus=79
  endif
  LM("LEDJNI","cledjno.com")
END_PRESS

PRESS(VS2)
  brojbrus=brojbrus+1
  if (brojbrus>79)
     brojbrus=0
  endif
  LM("ledjni","cledjno.com")
END_PRESS

PRESS(VS5)
LM("ledjni","cledjno.com")
END_PRESS

change(ledjno)

if (ledjno>0)
   ledzub.wr=2
   ledugao.wr=2
   ledkorak.wr=2
   leddub.wr=2
else
   ledzub.wr=1
   ledugao.wr=1
   ledkorak.wr=1
   leddub.wr=1
endif

if (ledjno<0)
   var8.wr=2
else
   var8.wr=1
endif

end_change

LOAD
  hd =$89440 << " (" <<  $89001 << "  - " << (BROJbrus+1) <<")"
  ls("menus","cmeni.com",1)
  HS1.SE=3
  VS5.SE=3
  LEDJNO.VAR = "LEDJNO["<<BROJBRUS<<"]"
  LEDDUB.VAR = "LEDDUB["<<BROJBRUS<<"]"
  LEDZUB.VAR = "LEDZUB["<<BROJBRUS<<"]"
  LEDUGAO.VAR = "LedUgao["<<BROJBRUS<<"]"
  LEDKORAK.var = "LEDKORAK["<<BROJBRUS<<"]" 
  VAR8.var = "LEDTABELA["<<BROJBRUS<<"]" 
  osca.VAR = "osca["<<BROJBRUS<<"]"
END_LOAD

//END
