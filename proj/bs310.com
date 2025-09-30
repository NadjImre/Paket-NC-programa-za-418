
//M(bs310)

DEF PRECNIK = (I//100/$89100,$89101,"D",$89068)
DEF POZICIJA = (I//0/$89102,$89103,"Z",$89068)
DEF UGAO_B = (R4//0/"Ugao koji zauzima B osa u toku brusenja","Ugao B","B",$89072)
DEF BROB = (R1//100/$89106,$89107,"n",$89069)
DEF DODATAKV = (R3//5/,"Dodatak vazduh", "Dv" , $89068)
DEF POMAKV = (R3//100/,"Pomak vazduh", "Sv" , $89070)
DEF DODATAKG = (R3//0.5/,"Dodatak grubo", "Dg" , $89068)
DEF POMAKG = (R3//1/,"Pomak grubo", "Sg" , $89070)
DEF DODATAKF = (R3//0.2/,"Dodatak fino", "Df" , $89068)
DEF POMAKF = (R3//0.4/,"Pomak fino", "Sf" , $89070)
DEF DODATAKZ = (R3//0.1/,"Dodatak zavrsno", "Dz" , $89068)
DEF POMAKZ = (R3//0.2/,"Pomak zavrsno", "Sz" , $89070)
DEF IZBRUSAVANJE = (R1//3/,$89113,"t",$89071)
DEF DUZINA = (R1//0/,"Duzina oscilovanja","L",$89068)
DEF BRZINA = (R1//300/,"Brzina oscilovanja","v",$89072)
DEF KOREKCIJAX = (R4,//0/,"Korakcija","x",$89068)
DEF KOREKCIJAZ = (R4,//0/,"Korakcija","z",$89068)

VS7=("OK",,se1)
VS8=("Cancle",,se1)

OUTPUT(NCCODE1)
  "BS310(" PRECNIK "," POZICIJA "," UGAO_B "," BROB "," DODATAKV "," POMAKV "," DODATAKG "," POMAKG "," DODATAKF "," POMAKF "," DODATAKZ "," POMAKZ "," IZBRUSAVANJE "," DUZINA "," BRZINA "," KORAKCIJAX "," KORAKCIJAZ ")"
END_OUTPUT

PRESS(VS7)
  GC("NCCODE1")
END_PRESS

PRESS(VS8)
  EXIT
END_PRESS

//END