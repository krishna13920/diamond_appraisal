(deftemplate knowledge
   (slot color(type SYMBOL))
   (slot clarity(type SYMBOL))
   (slot carat (type FLOAT)(range 0.0 10.0))
   (slot cut ( allowed-values  Rounds Seme-Round Square))
   )


   

(defrule cost
  =>
(printout t "enter color ")
(bind ?colors (ready))
(printout t "enter Clarity ")
(bind ?claritys (read))
(printout t "enter carats ")
(bind ?carats (read))
(printout t "enter cut ")
(bind ?cuts (read))
(assert (knowledge ( color ?colors) ( clarity ?claritys) ( carat ?carats)( cut ?cuts))))

( defrule cut 1.0

(knowledge
	(color D )
	(clarity F )
   (carat  1.0)
	(cut Rounds )
)
=>
(?price (*(  1.0  85000)))
(printout t " price is  " ?price crlf)

)
