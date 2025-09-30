
//S(Start)
;FB271 i FB272
;jun 2019

;vertikalni softverski tasteri
;======================
;VS1=("",,se2) ;se1 - ok , se2 - sivo , se3 - selekt
;VS2=("",,se2)
;VS3=("",,se2)
;VS4=("",,se2)
;VS5=("",,se2)
;VS6=("",,se2)
;VS7=("",,se2)
;VS8=("",,se2)
;======================

;horizontalni softverski tasteri
;======================
;HS1=("",,se2)
;HS2=("",,se2)
;HS3=("",,se2)
;HS4=("",,se2)
;HS5=("",,se2)
;HS6=("",,se2)
HS7=("Set WO%nGFRAME",,se1)
;HS8=("",,se1)
;HS9=("",,se2)
;HS10=("",,se2)
;HS11=("",,se2)
;HS12=("",,se2)
;HS13=("",,se2)
;HS14=("",,se2)
;HS15=("",,se2)
;HS16=("",,se2)
;======================

;PRESS vertikalni softverski tasteri
;======================

;======================

;PRESS horizontalni softverski tasteri
;======================

PRESS(HS7)
  LM("WO_GFRAME")
END_PRESS

;======================
  
;PRESS izlaz tasterom recal
;======================
PRESS(RECALL)
   EXITLS
   EXIT
END_PRESS
;======================
//END

;Work offset GFRAME
;==============================================
//M(WO_GFRAME/"Work offset GFRAME"/"prazna.PNG")
;DEF VAR1 = (V////WR0,)
DEF _WO= (I//1/"Work offset","Work offset                 GFRAME",," number"/wr2/"gframe.png"//220,,200///)
DEF _T_SPISAK = (I/* 0=" - "//"Tool name","Tool name",," tool"/wr2/"tool_list.png"//220,,200/350,,190///)
DEF _DD=(I//1/"Cutting edge number","Cutting edge number",," number"/wr2/"cuting_list.png"//220,,200//)
DEF PRAZNA_0 = (V////WR0,)

DEF _TARGET_X= (R3//0/"Target X","Target - X",," mm/dia"/wr2/"target_x.png"//220,,200///)
DEF _TARGET_Z= (R3//0/"Target Z","Target - Z",," mm"/wr2/"target_z.png"//220,,200///)

DEF PRAZNA_1 = (V////WR0,)
DEF _GFRAME1_X= (R3///"GFRAME - X","GFRAME - X",," mm"/wr2/"gframe_x.png"//220,,200//)
DEF _GFRAME1_Z= (R3///"GFRAME - Z","GFRAME - Z",," mm"/wr2/"gframe_z.png"//220,,200//)

DEF _T= (S//"Tool name"/"Tool name","Tool name",," 32 char."/wr4///220,,200/350,,200/)
DEF _FRAME_X
DEF _FRAME_Z

DEF HLP_STR_1
DEF HLP_STR_2
DEF HLP_STR_3
DEF HLP_STR_4
DEF HLP_STR_5
DEF HLP_STR_6
DEF HLP_STR_7
DEF HLP_STR_8
DEF HLP_STR_9
DEF HLP_STR_10
DEF HLP_STR_11
DEF HLP_STR_12
DEF HLP_STR_13
DEF HLP_STR_14
DEF HLP_STR_15
DEF HLP_STR_16
DEF HLP_STR_17
DEF HLP_STR_18
DEF HLP_STR_19
DEF HLP_STR_20
DEF HLP_STR_21
DEF HLP_STR_22
DEF HLP_STR_23
DEF HLP_STR_24
DEF HLP_STR_25
DEF HLP_STR_26
DEF HLP_STR_27
DEF HLP_STR_28
DEF HLP_STR_29
DEF HLP_STR_30
DEF HLP_STR_31
DEF HLP_STR_32
DEF HLP_STR_33
DEF HLP_STR_34
DEF HLP_STR_35
DEF HLP_STR_36
DEF HLP_STR_37
DEF HLP_STR_38
DEF HLP_STR_39
DEF HLP_STR_40
DEF HLP_STR_41
DEF HLP_STR_42
DEF HLP_STR_43
DEF HLP_STR_44
DEF HLP_STR_45
DEF HLP_STR_46
DEF HLP_STR_47
DEF HLP_STR_48
DEF HLP_STR_49
DEF HLP_STR_50

VS1=("",,) ; se1 - ok , se2 - sivo , se3 - selekt
VS2=("",,)
VS3=("",,)
VS4=("Set X",,se1)
VS5=("Set Z",,se1)
VS6=("",,)
VS7=("",,)
VS8=("",,)

;HS1=("",,se2)
;HS2=("",,se2)
;HS3=("",,se2)
;HS4=("",,se2)
;HS5=("",,se2)
;HS6=("",,se2)
HS7=("Set WO%nGFRAME",,se3)
;HS8=("",,se1)
;HS9=("",,se2)

LOAD
   _FRAME_X=1+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")
   _FRAME_Z=3+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")

   ;_GFRAME_X.val=RNP("NT_GFRAME_X["<<_WO.VAL<<"]")
   ;_GFRAME_Z.val=RNP("NT_GFRAME_Z["<<_WO.VAL<<"]")
   _GFRAME1_X.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]")
   _GFRAME1_Z.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]")

   HLP_STR_1= FORMAT("""%s""", RNP("$TC_TP2[1]"))
   HLP_STR_2= FORMAT("""%s""", RNP("$TC_TP2[2]"))
   HLP_STR_3= FORMAT("""%s""", RNP("$TC_TP2[3]"))
   HLP_STR_4= FORMAT("""%s""", RNP("$TC_TP2[4]"))
   HLP_STR_5= FORMAT("""%s""", RNP("$TC_TP2[5]"))
   HLP_STR_6= FORMAT("""%s""", RNP("$TC_TP2[6]"))
   HLP_STR_7= FORMAT("""%s""", RNP("$TC_TP2[7]"))
   HLP_STR_8= FORMAT("""%s""", RNP("$TC_TP2[8]"))
   HLP_STR_9= FORMAT("""%s""", RNP("$TC_TP2[9]"))
   HLP_STR_10= FORMAT("""%s""", RNP("$TC_TP2[10]"))
   HLP_STR_11= FORMAT("""%s""", RNP("$TC_TP2[11]"))
   HLP_STR_12= FORMAT("""%s""", RNP("$TC_TP2[12]"))
   HLP_STR_13= FORMAT("""%s""", RNP("$TC_TP2[13]"))
   HLP_STR_14= FORMAT("""%s""", RNP("$TC_TP2[14]"))
   HLP_STR_15= FORMAT("""%s""", RNP("$TC_TP2[15]"))
   HLP_STR_16= FORMAT("""%s""", RNP("$TC_TP2[16]"))
   HLP_STR_17= FORMAT("""%s""", RNP("$TC_TP2[17]"))
   HLP_STR_18= FORMAT("""%s""", RNP("$TC_TP2[18]"))
   HLP_STR_19= FORMAT("""%s""", RNP("$TC_TP2[19]"))
   HLP_STR_20= FORMAT("""%s""", RNP("$TC_TP2[20]"))
   HLP_STR_21= FORMAT("""%s""", RNP("$TC_TP2[21]"))
   HLP_STR_22= FORMAT("""%s""", RNP("$TC_TP2[22]"))
   HLP_STR_23= FORMAT("""%s""", RNP("$TC_TP2[23]"))
   HLP_STR_24= FORMAT("""%s""", RNP("$TC_TP2[24]"))
   HLP_STR_25= FORMAT("""%s""", RNP("$TC_TP2[25]"))
   HLP_STR_26= FORMAT("""%s""", RNP("$TC_TP2[26]"))
   HLP_STR_27= FORMAT("""%s""", RNP("$TC_TP2[27]"))
   HLP_STR_28= FORMAT("""%s""", RNP("$TC_TP2[28]"))
   HLP_STR_29= FORMAT("""%s""", RNP("$TC_TP2[29]"))
   HLP_STR_30= FORMAT("""%s""", RNP("$TC_TP2[30]"))
   HLP_STR_31= FORMAT("""%s""", RNP("$TC_TP2[31]"))
   HLP_STR_32= FORMAT("""%s""", RNP("$TC_TP2[32]"))
   HLP_STR_33= FORMAT("""%s""", RNP("$TC_TP2[33]"))
   HLP_STR_34= FORMAT("""%s""", RNP("$TC_TP2[34]"))
   HLP_STR_35= FORMAT("""%s""", RNP("$TC_TP2[35]"))
   HLP_STR_36= FORMAT("""%s""", RNP("$TC_TP2[36]"))
   HLP_STR_37= FORMAT("""%s""", RNP("$TC_TP2[37]"))
   HLP_STR_38= FORMAT("""%s""", RNP("$TC_TP2[38]"))
   HLP_STR_39= FORMAT("""%s""", RNP("$TC_TP2[39]"))
   HLP_STR_40= FORMAT("""%s""", RNP("$TC_TP2[40]"))
   HLP_STR_41= FORMAT("""%s""", RNP("$TC_TP2[41]"))
   HLP_STR_42= FORMAT("""%s""", RNP("$TC_TP2[42]"))
   HLP_STR_43= FORMAT("""%s""", RNP("$TC_TP2[43]"))
   HLP_STR_44= FORMAT("""%s""", RNP("$TC_TP2[44]"))
   HLP_STR_45= FORMAT("""%s""", RNP("$TC_TP2[45]"))
   HLP_STR_46= FORMAT("""%s""", RNP("$TC_TP2[46]"))
   HLP_STR_47= FORMAT("""%s""", RNP("$TC_TP2[47]"))
   HLP_STR_48= FORMAT("""%s""", RNP("$TC_TP2[48]"))
   HLP_STR_49= FORMAT("""%s""", RNP("$TC_TP2[49]"))
   HLP_STR_50= FORMAT("""%s""", RNP("$TC_TP2[50]"))

;TOOL lista
;===============================
   IF HLP_STR_1=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 1, HLP_STR_1)
   ENDIF

   IF HLP_STR_2=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 2, HLP_STR_2)
   ENDIF
 
   IF HLP_STR_3=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 3, HLP_STR_3)
   ENDIF

   IF HLP_STR_4=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 4, HLP_STR_4)
   ENDIF

   IF HLP_STR_5=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 5, HLP_STR_5)
   ENDIF
 
   IF HLP_STR_6=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 6, HLP_STR_6)
   ENDIF

   IF HLP_STR_7=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 7, HLP_STR_7)
   ENDIF

   IF HLP_STR_8=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 8, HLP_STR_8)
   ENDIF
 
   IF HLP_STR_9=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 9, HLP_STR_9)
   ENDIF

   IF HLP_STR_10=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 10, HLP_STR_10)
   ENDIF

   IF HLP_STR_11=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 11, HLP_STR_11)
   ENDIF

   IF HLP_STR_12=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 12, HLP_STR_12)
   ENDIF
 
   IF HLP_STR_13=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 13, HLP_STR_13)
   ENDIF

   IF HLP_STR_14=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 14, HLP_STR_14)
   ENDIF

   IF HLP_STR_15=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 15, HLP_STR_15)
   ENDIF
 
   IF HLP_STR_16=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 16, HLP_STR_16)
   ENDIF

   IF HLP_STR_17=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 17, HLP_STR_17)
   ENDIF

   IF HLP_STR_18=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 18, HLP_STR_18)
   ENDIF
 
   IF HLP_STR_19=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 19, HLP_STR_19)
   ENDIF

   IF HLP_STR_20=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 20, HLP_STR_20)
   ENDIF

   IF HLP_STR_21=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 21, HLP_STR_21)
   ENDIF

   IF HLP_STR_22=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 22, HLP_STR_22)
   ENDIF
 
   IF HLP_STR_23=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 23, HLP_STR_23)
   ENDIF

   IF HLP_STR_24=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 24, HLP_STR_24)
   ENDIF

   IF HLP_STR_25=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 25, HLP_STR_25)
   ENDIF
 
   IF HLP_STR_26=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 26, HLP_STR_26)
   ENDIF

   IF HLP_STR_27=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 27, HLP_STR_27)
   ENDIF

   IF HLP_STR_28=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 28, HLP_STR_28)
   ENDIF
 
   IF HLP_STR_29=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 29, HLP_STR_29)
   ENDIF

   IF HLP_STR_30=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 30, HLP_STR_30)
   ENDIF

   IF HLP_STR_31=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 31, HLP_STR_31)
   ENDIF

   IF HLP_STR_32=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 32, HLP_STR_32)
   ENDIF
 
   IF HLP_STR_33=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 33, HLP_STR_33)
   ENDIF

   IF HLP_STR_34=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 34, HLP_STR_34)
   ENDIF

   IF HLP_STR_35=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 35, HLP_STR_35)
   ENDIF
 
   IF HLP_STR_36=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 36, HLP_STR_36)
   ENDIF

   IF HLP_STR_37=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 37, HLP_STR_37)
   ENDIF

   IF HLP_STR_38=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 38, HLP_STR_38)
   ENDIF
 
   IF HLP_STR_39=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 39, HLP_STR_39)
   ENDIF

   IF HLP_STR_40=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 40, HLP_STR_40)
   ENDIF

   IF HLP_STR_41=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 41, HLP_STR_41)
   ENDIF

   IF HLP_STR_42=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 42, HLP_STR_42)
   ENDIF
 
   IF HLP_STR_43=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 43, HLP_STR_43)
   ENDIF

   IF HLP_STR_44=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 44, HLP_STR_44)
   ENDIF

   IF HLP_STR_45=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 45, HLP_STR_45)
   ENDIF
 
   IF HLP_STR_46=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 46, HLP_STR_46)
   ENDIF

   IF HLP_STR_47=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 47, HLP_STR_47)
   ENDIF

   IF HLP_STR_48=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 48, HLP_STR_48)
   ENDIF

   IF HLP_STR_49=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 49, HLP_STR_49)
   ENDIF

   IF HLP_STR_50=="""0"""
   ELSE
      LISTADDITEM("_T_SPISAK", 50, HLP_STR_50)
   ENDIF

END_LOAD

CHANGE(_WO)

   _FRAME_X=1+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")
   _FRAME_Z=3+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")

   _GFRAME1_X.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]")
   _GFRAME1_Z.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]")

END_CHANGE

PRESS(VS4)

   _FRAME_X=1+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")
   ;_FRAME_Z=3+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")
   
   WNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]",RNP("$AA_IM[X]")-0.5*RNP("$TC_DP3["<<_T_SPISAK.VAL<<","<<_DD.VAL<<"]")-_TARGET_X/2)
   ;WNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]",RNP("$AA_IM[Z]")-RNP("$TC_DP4["<<_T_SPISAK.VAL<<","<<_DD.VAL<<"]")-_TARGET_Z)
   PI_START("/NC,201,_N_SETUFR")
      
   _GFRAME_X.val=RNP("NT_GFRAME_X["<<_WO.VAL<<"]")
   ;_GFRAME_Z.val=RNP("NT_GFRAME_Z["<<_WO.VAL<<"]")
   _GFRAME1_X.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]")
   ;_GFRAME1_Z.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]")

   VS4.SE=3
   VS5.SE=1

END_PRESS

PRESS(VS5)

   ;_FRAME_X=1+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")
   _FRAME_Z=3+(_WO-1)*RNP("/Nck/Configuration/numGlobMachAxes[1]")

   ;WNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]",RNP("$AA_IM[X]")-0.5*RNP("$TC_DP3["<<_T_SPISAK.VAL<<","<<_DD.VAL<<"]")-_TARGET_X/2)
   WNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]",RNP("$AA_IM[Z]")-RNP("$TC_DP4["<<_T_SPISAK.VAL<<","<<_DD.VAL<<"]")-_TARGET_Z)
   PI_START("/NC,201,_N_SETUFR")
   WNP("$R[1]",-RNP("$TC_DP4["<<_T_SPISAK.VAL<<","<<_DD.VAL<<"]")-_TARGET_Z)
      
   ;_GFRAME_X.val=RNP("NT_GFRAME_X["<<_WO.VAL<<"]")
   _GFRAME_Z.val=RNP("NT_GFRAME_Z["<<_WO.VAL<<"]")
   ;_GFRAME1_X.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_X<<"]")
   _GFRAME1_Z.val=RNP("/Channel/GrindingFrame/linShift[u1,"<<_FRAME_Z<<"]")

   VS4.SE=1
   VS5.SE=3
   
END_PRESS

PRESS(RECALL)
  EXIT
END_PRESS

//END
