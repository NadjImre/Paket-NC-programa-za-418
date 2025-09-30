
//M(MernaGlava/$89150////)
;FB271 i FB272
;jun 2019

DEF NAS11 = (IDW///,$89588/WR1///100,,150),
NAS12 = (IDW///,$89589/WR1///250,,150),
NAS13 = (IDW///,$89590/WR1///400,,150)

DEF VAR11_K = (r3///,"K"/FS2//"Impuls_glave[4]"//60,,149),
VAR12_K = (r3///,""/FS2//"Nominalno_glava[4]"//210,,149),
VAR13_K = (r3///,""/FS2//"Greska_glave[4]"//360,,149)

DEF VAR41 = (r3///,"3"/FS2//"Impuls_glave[3]"//60,,149),
VAR42 = (r3///,""/FS2//"Nominalno_glava[3]"//210,,149),
VAR43 = (r3///,""/FS2//"Greska_glave[3]"//360,,149)

DEF VAR11 = (r3///,"2"/FS2//"Impuls_glave[2]"//60,,149),
VAR12 = (r3///,""/FS2//"Nominalno_glava[2]"//210,,149),
VAR13 = (r3///,""/FS2//"Greska_glave[2]"//360,,149)

DEF VAR21 = (r3///,"1"/FS2//"Impuls_glave[1]"//60,,149),
VAR22 = (r3///,""/FS2//"Nominalno_glava[1]"//210,,149),
VAR23 = (r3///,""/FS2//"Greska_glave[1]"//360,,149)

DEF VAR31 = (r3///,"0"/FS2//"Impuls_glave[0]"//60,,149),
VAR32 = (r3///,""/FS2//"Nominalno_glava[0]"//210,,149),
VAR33 = (r3///,""/FS2//"Greska_glave[0]"//360,,149)

HS1=($89385,,se1)
HS2=("",,se2)
HS3=($89584,,se1)
HS4=("",,se2)
HS5=($89585,,se1)
HS6=("",,se2)
HS7=($89586,,se3)
HS8=("",,se2)

VS2=("",,se2)
VS3=("",,se2)
;vs4=($89587,,se1)
vs4=(,,se2)
vs6=("",,se2)
VS7=("",,SE2)
VS8=("",,SE2)

PRESS(HS1)
  LM("BRUSEnje","cBRUsEnje.com")
END_PRESS

PRESS(HS3)
  LM("rezimi","crezimi.com")
END_PRESS

PRESS(HS5)
  LM("navoj","cnavoj.com")
END_PRESS

Press(HS7)
  LM("mernaglava","cglava.com")
END_PRESS

PRESS(VS4)
  VAR12=Var11
  Var22=Var21
  VAR32=Var31
  VAR13=0
  VAR23=0
  VAR33=0
END_PRESS

LOAD

END_LOAD

//END

