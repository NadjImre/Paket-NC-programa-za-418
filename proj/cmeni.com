
//S(menu)

HS1=($89150,,se1)
HS2=($89136,,se1)
HS3=($89592,,se1)
HS4=("",SE2);ISKLJUCENO JER NEMA NAVOJA
;HS4=("Ulazak u nit%nnavoja",,se1)
HS5=("",,se2)
HS6=("",,se2)
HS7=("",,se2)
HS8=("",,se2)

PRESS(HS1)
   LM("Opste","copste.com")
END_PRESS

PRESS(HS2)
   LM("Oil","copste.com")
END_PRESS

PRESS(HS3)
   LM("servis","cservis.com")
END_PRESS

PRESS(HS4)
  LM("UlazakUNitNavoja","cnavoj.com")
END_PRESS
//end
