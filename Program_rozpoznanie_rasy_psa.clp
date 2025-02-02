(deffunction dalej ()
	(printout t "Czy wykonac rozpoznanie ponownie:  ")
		(bind ?kolejne (readline))
		(if (= 0 (str-compare "tak" ?kolejne)) then
			(assert (initial-fact))
			)
)

(defrule rozpoznanie
	(initial-fact)
=>
   (printout t ".-----------------------------------------." crlf)
   (printout t "|                                         |" crlf)
   (printout t "|    		Rozpoznanie rasy psa 		  |" crlf)
   (printout t "|           					          |" crlf)
   (printout t "|                                         |" crlf)
   (printout t "|       autor: Rafal Pankowski            |" crlf)
   (printout t "|                                         |" crlf)
   (printout t "`-----------------------------------------'" crlf)
   (retract  *)
   
   (printout t "Jaka dlugosc ma tulow Panskiego piesa (Dlugi,Proporcjonalny,Krotki): ")
	(bind ?odp_tulow (readline))
	(assert (tulow ?odp_tulow))
)

(defrule tulow_dl
	(tulow "Dlugi")
=>
	(printout t "Jaki ksztalt glowy ma Panski pies (Proporcjonalny, Klinowaty): ")
	(bind ?odp_glowa (readline))
	(assert (glowa ?odp_glowa))
)

(defrule tulow_dl_klin
	(tulow "Dlugi")
	(glowa "Klinowaty")
=>
	(printout t "Twoj pies to Jamnik!" crlf)
	(dalej)
)

(defrule tulow_dl_prop
	(tulow "Dlugi")
	(glowa "Proporcjonalny")
=>
	(printout t "Jaki ksztalt ogona ma Panski pies (Prosty, Sierpowaty): ")
	(bind ?odp_ogon (readline))
	(assert (ogon ?odp_ogon))
)

(defrule tulow_dl_prop_prost
	(tulow "Dlugi")
	(glowa "Proporcjonalny")
	(ogon "Prosty")
=>
	(printout t "Twoj pies to Dalmatynczyk!" crlf)
	(dalej)
)

(defrule tulow_dl_prop_sierp
	(tulow "Dlugi")
	(glowa "Proporcjonalny")
	(ogon "Sierpowaty")
=>
	(printout t "Twoj pies to Golden Retriver!" crlf)
	(dalej)
)

(defrule tulow_prop
	(tulow "Proporcjonalny")
=>
	(printout t "Jaki wysokosc ma Panski pies (Wysoki,Sredni,Niski): ")
	(bind ?odp_wys (readline))
	(assert (wys ?odp_wys))
)

(defrule tulow_prop_niski
	(tulow "Proporcjonalny")
	(wys "Niski")
=>
	(printout t "Twoj pies to Pudel!" crlf)
	(dalej)
)

(defrule tulow_prop_sredni
	(tulow "Proporcjonalny")
	(wys "Sredni")
=>
	(printout t "Twoj pies to Husky!" crlf)
	(dalej)
)

(defrule tulow_prop_wys
	(tulow "Proporcjonalny")
	(wys "Wysoki")
=>
	(printout t "Jaki ksztalt uszu ma Panski pies (Stojace, Zwisajace): ")
	(bind ?odp_uszy (readline))
	(assert (uszy ?odp_uszy))
)

(defrule tulow_prop_wys_stojace
	(tulow "Proporcjonalny")
	(wys "Wysoki")
	(uszy "Stojace")
=>
	(printout t "Twoj pies to Owczarek niemiecki!" crlf)
	(dalej)
)

(defrule tulow_prop_wys_zwis
	(tulow "Proporcjonalny")
	(wys "Wysoki")
	(uszy "Zwisajace")
=>
	(printout t "Twoj pies to Labrador Retriver!" crlf)
	(dalej)
)

(defrule tulow_krotki_ogon
	(tulow "Krotki")
=>
	(printout t "Jaki ksztalt ogona ma Panski pies (Zakrecony, Prosty): ")
	(bind ?odp_ogon (readline))
	(assert (ogon ?odp_ogon))
)

(defrule tulow_krotki_ogon_zakrecony
	(tulow "Krotki")
	(ogon2 "Zakrecony")
=>
	(printout t "Twoj pies to Chihuahua!" crlf)
	(dalej)
)

(defrule tulow_krotki_ogon_prosty
	(tulow "Krotki")
	(ogon "Prosty")
=>
	(printout t "Jaki ksztalt uszu ma Panski pies (Zwisajace, Stojace): ")
	(bind ?odp_uszy (readline))
	(assert (uszy ?odp_uszy))
)

(defrule tulow_krotki_ogon_prosty_uszy_zwis
	(tulow "Krotki")
	(ogon "Prosty")
	(uszy "Zwisajace")
=>
	(printout t "Twoj pies to Beagle!" crlf)
	(dalej)
)

(defrule tulow_krotki_ogon_prosty_uszy_stojace
	(tulow "Krotki")
	(ogon "Prosty")
	(uszy "Stojace")
=>
	(printout t "Twoj pies to Buldog francuski!" crlf)
	(dalej)
)