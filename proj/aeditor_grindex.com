;ki_cnc
;FB271 i FB272
;jun 2019

//S(Start)

;vertikalni softverski tasteri
;=================

;=================

;horizontalni softverski tasteri
;==================

HS4=("Grindex%nciklusi",,se1)
HS5=("Vnutrenno",,se1)
HS6=("Naruzno",,se1)

;==================

;funkcije softverskih tastera
;=================
PRESS(HS4)
  LS("Grindex_ciklusi")
END_PRESS

PRESS(HS5)
 LM("Vnutrenno","Vnutrenno.COM")
END_PRESS
PRESS(HS6)
 LM("Naruzno","Naruzno.COM")
END_PRESS
;=================

;izlaz tasterom recal
;============
PRESS(RECALL)
   EXITLS
END_PRESS
;============

//END


//S(Grindex_ciklusi)

;VS1=(["Rucno%nmerenje","\\step_ico_me_cal_part_mt_rad.png"],se1, pa1, tp1)
;VS2=(["Rucno%nkalibrisanje","\\step_ico_me_cal_part_mt_rad.png"],se1, pa1, tp1)

VS1=("Dressing",,se1)
VS2=("",,se1)
VS3=("",,se2)
VS4=("",,se2)
VS5=("",,se2)
VS6=("",,se2)
VS7=("",,se2)
VS8=("",,se2)

HS1=(SOFTKEY_BACK,,SE1,)
HS2=("",,se2)
HS3=("",,se2)
HS4=("Grindex%nciklusi",,se3)
HS5=("",,se2)
HS6=("",,se2)
HS7=("",,se2)
HS8=("",,se2)

PRESS(VS1)
   LM("Dressing")
END_PRESS

PRESS(HS1)
   EXITLS
END_PRESS

;izlaz tasterom recal
;============
PRESS(RECALL)
   EXITLS
END_PRESS
;============
//END

//M(Rucno_merenje/"Rucno merenje"/"prazna.png"/)
DEF PRAZNA_1 = (V////WR0,)
DEF _RUCNO_MERENJE = (I/* 0="Po X osi", 1="Po Z osi"//,"Rucno merenje",,"x/z"////265)

;se1 - ok , se2 - sivo , se3 - selekt
VS1=("Rucno%nmerenje",se3,,)
VS2=("",,)
VS3=("",,)
VS4=("",,)
VS5=("",,)
VS6=("",,)
VS7=(SOFTKEY_CANCEL,,se1)
VS8=(SOFTKEY_OK,,se1)

HS1=(SOFTKEY_BACK,,SE1,)
HS2=("",,se2)
HS3=("",,se2)
HS4=("Grindex%nciklusi",,se3)

LOAD
   IF _RUCNO_MERENJE.VAL==0
      _RUCNO_MERENJE.hlp = "po_x_osi.png"
   ELSE
      _RUCNO_MERENJE.hlp = "po_z_osi.png"   
   ENDIF
END_LOAD

CHANGE(_RUCNO_MERENJE)
   IF _RUCNO_MERENJE.VAL==0
      _RUCNO_MERENJE.hlp = "po_x_osi.png"
   ELSE
      _RUCNO_MERENJE.hlp = "po_z_osi.png"   
   ENDIF
END_CHANGE

OUTPUT(OUT_RUCNO_MERENJE)
   "MER_R("_RUCNO_MERENJE.val")"
END_OUTPUT

PRESS(VS7)
  EXIT
END_PRESS

PRESS(VS8)
  GC("OUT_RUCNO_MERENJE")
  EXIT
END_PRESS

PRESS(HS1)
  EXIT
END_PRESS

PRESS(RECALL)
  EXIT
END_PRESS

//END

//M(Rucno_kalibrisanje/"Rucno kalibrisanje"/"prazna.png"/)
DEF PRAZNA_1 = (V////WR0,)
DEF _RUCNO_MERENJE = (I/* 0="Po X osi", 1="Po Z osi"//,"Rucno merenje",,"x/z"////265)
DEF _ETALON_X = (R3///,"Diametar X",,"mm/fi"///"ETALON_X"/265)
DEF _ETALON_Z = (R3///,"Pozicija Z",,"mm"///"ETALON_Z"/265)

;se1 - ok , se2 - sivo , se3 - selekt
VS1=("Rucno%nmerenje",se3,,)
VS2=("",,)
VS3=("",,)
VS4=("",,)
VS5=("",,)
VS6=("",,)
VS7=(SOFTKEY_CANCEL,,se1)
VS8=(SOFTKEY_OK,,se1)

HS1=(SOFTKEY_BACK,,SE1,)
HS2=("",,se2)
HS3=("",,se2)
HS4=("Grindex%nciklusi",,se3)

LOAD
   IF _RUCNO_MERENJE.VAL==0
      _RUCNO_MERENJE.hlp = "po_x_osi.png"
   ELSE
      _RUCNO_MERENJE.hlp = "po_z_osi.png"   
   ENDIF
END_LOAD

CHANGE(_RUCNO_MERENJE)
   IF _RUCNO_MERENJE.VAL==0
      _RUCNO_MERENJE.hlp = "po_x_osi.png"
   ELSE
      _RUCNO_MERENJE.hlp = "po_z_osi.png"   
   ENDIF
END_CHANGE

OUTPUT(OUT_RUCNO_MERENJE)
   "MER_XZ_G57("_RUCNO_MERENJE.val")"
END_OUTPUT

PRESS(VS7)
  EXIT
END_PRESS

PRESS(VS8)
  GC("OUT_RUCNO_MERENJE")
  EXIT
END_PRESS

PRESS(HS1)
  EXIT
END_PRESS

PRESS(RECALL)
  EXIT
END_PRESS

//END

//M(Dressing/"Pozivanje dijamanta"/"prazna.png"/)
;DEF PRAZNA_1 = (V////WR0,)

DEF _T= (S//"""Grinding tool name"""/"Tool name of the grinding wheel","Grinding tool name",," 32 char."/wr2///220,,200/350,,200/)
DEF _DD=(I//1/"Cutting edge number of the grinding wheel","Cutting edge number grinding tool",," number"/wr2///220,,200//)

DEF PRAZNA_0 = (V////WR0,)
DEF S_TA=(S//"""Dressing tool name"""/"Dressing tool name","Dressing tool name",," 32 char."/wr2///220,,200/350,,200/)
DEF S_DA=(I//1/"Cutting edge number of the dressing tool","Cutting edge number dressing tool",," number"/wr2///220,,200//)

DEF PRAZNA_1 = (V////WR0,)
DEF _CONTOUR= (S//"Subprogram name"/"Contour subprogram name","Contour subprogram",," 32 char."/wr2///220,,200/350,,200/)

DEF PRAZNA_2 = (V////WR0,)
DEF _AMODE=(I/* 0="dressing", 1="grinding"/1/"Active tool at the end of the cycle 0-dressing  1-grinding","Active tool at the end of the cycle",," 0/1"/wr2///220,,200//)

DEF PRAZNA_3 = (V////WR0,)
;DEF TEKST_1 = (v///"","Dressing parameters",,/wr0///220,,200//)
DEF S_AD=(R3//0.01/"Dressing value - diameter","Dressing value - diameter",," mm/diam"/wr2///220,,200//)
DEF S_AL= (R3//0/"Dressing value - face","Dressing value - face",," mm"/wr2///220,,200//)
DEF _SC= (R3//0/"Lift-off distance for avoiding obstacles, incremental","Lift-off distance",," mm/diam"/wr2///220,,200//)
DEF _F= (R3//0/"Form-truing feedrate","feedrate",," mm/min"/wr2///220,,200//)
DEF S_N=(I//1/"Number of strokes in the form-truing program","number of strokes",," number"/wr2///220,,200//)

DEF NAZIV_FAJLA= (S///"Subprogram name","Subprogram name",,""/wr4///220,,200/350,,200/)


;DEF TEKST_2 = (v///"","      Profiling parameters - Form truing",,/wr0///1,230,250//), TEKST_1 = (v///"","          Dressing parameters",,/wr0///270,230,200//)
;DEF S_PVD= (R3//0/"Form-truing offset - diameter"," offset - diameter",," mm/diam"/wr2///1,,150/150,,100/), PRAZNA_3 = (V////WR0,)
;DEF S_PVL= (R3//0/"Form-truing offset - face"," offset - face",," mm"/wr2///1,,150/150,,100/), PRAZNA_4 = (V////WR0,)
;DEF S_PD= (R3//0/"Form-truing allowance - diameter"," allowance - diameter",," mm/diam"/wr2///1,,150/150,,100/), S_AD=(R3//0.01/"Dressing value - diameter","Dressing value - diameter",," mm/diam"/wr2///270,,200/450,,100/)
;DEF S_PL= (R3//0/"Form-truing allowance - face"," allowance - face",," mm"/wr2///1,,150/150,,100/), S_AL= (R3//0/"Dressing value - face","Dressing value - face",," mm"/wr2///270,,200/450,,100/)

;DEF PRAZNA_5 = (V////WR0,)
;DEF _SC= (R3//0/"Lift-off distance for avoiding obstacles, incremental"," Lift-off distance",," mm/diam"/wr2///1,,150/150,,100/), PRAZNA_6 = (V////WR0,)
;DEF _F= (R3//0/"Form-truing feedrate"," feedrate",," mm/min"/wr2///1,,150/150,,100/), PRAZNA_7 = (V////WR0,)

;se1 - ok , se2 - sivo , se3 - selekt
VS1=("Dressing",se3,,)
VS2=("",se1,)
VS3=("",,)
VS4=("",,)
VS5=("",,)
VS6=("",,)
VS7=(SOFTKEY_CANCEL,,se1)
VS8=(SOFTKEY_OK,,se1)

HS1=(SOFTKEY_BACK,,SE1,)
HS2=("",,se2)
HS3=("",,se2)
HS4=("Grindex%nciklusi",,se3)

LOAD
   NAZIV_FAJLA.VAL="CALL ""/_N_DRS_DIR/_N_"<<_CONTOUR.val<<"_DRS"""
   ;WNP("KOPIRAJ_STRING[0]",NAZIV_FAJLA.VAL)
END_LOAD

CHANGE(_CONTOUR)
   NAZIV_FAJLA.VAL="CALL ""/_N_DRS_DIR/_N_"<<_CONTOUR.val<<"_DRS"""
   ;WNP("KOPIRAJ_STRING[0]",NAZIV_FAJLA.VAL)

END_CHANGE


OUTPUT(Dressing_1)
   "T="_T.val" D"_DD.val""
   "$TC_DP12[$P_TOOLNO,$P_TOOL]=$TC_DP12[$P_TOOLNO,$P_TOOL]-"S_AD.val""
   "GFRAME1"
   "T="S_TA.val" D"S_DA.val""
   "F="_F.val" G41 G64"
   "MIRROR X0 Z0"
   "ATRANS X="S_AD" Z"S_AL.val""
   ""NAZIV_FAJLA.VAL""
END_OUTPUT


PRESS(VS7)
  EXIT
END_PRESS

PRESS(VS8)
  GC("Dressing_1")
  EXIT
END_PRESS

PRESS(HS1)
  EXIT
END_PRESS

PRESS(RECALL)
  EXIT
END_PRESS

//END



