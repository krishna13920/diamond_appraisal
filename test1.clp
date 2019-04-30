(deftemplate diamond
   (slot color)
   (slot clarity)
   (slot cut)
   (slot carat)
   )
(defrule get-diamond-details
   =>
   (printout t "what is the color of the diamond?----- possible answers (D- Blue white, E) ")
   (bind ?diamond-color (read))
   (printout t "what is the clarity of the diamond?----- possible answers (D- Blue white, E) ")
   (bind ?diamond-clarity (read))
   (printout t "what is the cut of the diamond?----- possible answers (D- Blue white, E) ")
   (bind ?diamond-cut (read))
   (printout t "what is the weight of the diamond in carats ?----- possible answers (D- Blue white, E) ")
   (bind ?diamond-carats (read))
   (assert(diamond (color ?diamond-color)
                     (clarity ?diamond-clarity)
                     (cut ?diamond-cut)
                     (carat ?diamond-carats))))
;(defrule diamond-appraisal
   ;(diamond
         ;(color ?diamond-color1)
         ;(clarity ?diamond-clarity1)
        ; (cut ?diamond-cut1)
         ;(carat ?diamond-carats1))
;=>
;(printout t "The diamond data recieved" crlf))

(defrule diamond-value-1
	(diamond (color  D ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 41.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-2
	(diamond (color  E ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 35.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-3
	(diamond (color  f ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 31.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-4
	(diamond (color  G ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 26.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-5
	(diamond (color  H ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 25.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-6
	(diamond (color  I ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 22.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-7
	(diamond (color  D ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 37.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-8
	(diamond (color  E ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 33.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-9
	(diamond (color  F ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 29.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-10
	(diamond (color  G ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 26.2 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-11
	(diamond (color  H ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 24.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-12
	(diamond (color  I ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-13
	(diamond (color  D ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 28.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-14
	(diamond (color  E ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 26.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-15
	(diamond (color  F ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 26.2 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-16
	(diamond (color  G ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 24.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-17
	(diamond (color  H ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 23.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-18
	(diamond (color  I ) (clarity  VS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 19.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-19
	(diamond (color  D ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 23.1 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-20
	(diamond (color  E ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-21
	(diamond (color  F ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-22
	(diamond (color  G ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.1 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-23
	(diamond (color  H ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 20.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-24
	(diamond (color  I ) (clarity  SI ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-25
	(diamond (color  D ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 28.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-26
	(diamond (color  E ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 23.2 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-27
	(diamond (color  f ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-28
	(diamond (color  G ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-29
	(diamond (color  H ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 20.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-30
	(diamond (color  I ) (clarity  IF ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 19.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-31
	(diamond (color  D ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 25.1 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-32
	(diamond (color  E ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 22.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-33
	(diamond (color  F ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 20.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-34
	(diamond (color  G ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-35
	(diamond (color  H ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-36
	(diamond (color  I ) (clarity  VVS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.1 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-37
	(diamond (color  D ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-38
	(diamond (color  E ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 20.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-39
	(diamond (color  F ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 19.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-40
	(diamond (color  G ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 17.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-41
	(diamond (color  H ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 17.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-42
	(diamond (color  I ) (clarity  VS ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 15.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-43
	(diamond (color  D ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-44
	(diamond (color  E ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.2 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-45
	(diamond (color  F ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 15.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-46
	(diamond (color  G ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 15.1 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-47
	(diamond (color  H ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 14.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-48
	(diamond (color  I ) (clarity  SI ) (cut semi-round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 12.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-49
	(diamond (color  D ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 23.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-50
	(diamond (color  E ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 22.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-51
	(diamond (color  f ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 20.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-52
	(diamond (color  G ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 19.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-53
	(diamond (color  H ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-54
	(diamond (color  I ) (clarity  IF ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 15.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-55
	(diamond (color  D ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 21.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-56
	(diamond (color  E ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-57
	(diamond (color  F ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 18.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-58
	(diamond (color  G ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 17.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-59
	(diamond (color  H ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-60
	(diamond (color  I ) (clarity  VVS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 14.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-61
	(diamond (color  D ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 19.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-62
	(diamond (color  E ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 17.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-63
	(diamond (color  F ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 17.3 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-64
	(diamond (color  G ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-65
	(diamond (color  H ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 15.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-66
	(diamond (color  I ) (clarity  VS ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 13.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-67
	(diamond (color  D ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 16.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-68
	(diamond (color  E ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 14.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-69
	(diamond (color  F ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 14.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-70
	(diamond (color  G ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 13.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-71
	(diamond (color  H ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 13.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-72
	(diamond (color  I ) (clarity  SI ) (cut square) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 0.60 12.7 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-73
	(diamond (color  D ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 122 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-74
	(diamond (color  E ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 94 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-75
	(diamond (color  f ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 83 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-76
	(diamond (color  G ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 69 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-77
	(diamond (color  H ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 63 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-78
	(diamond (color  I ) (clarity  IF ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 52 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-79
	(diamond (color  D ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 104 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-80
	(diamond (color  E ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 89 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-81
	(diamond (color  F ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 81 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-82
	(diamond (color  G ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 68 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-83
	(diamond (color  H ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 61 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-84
	(diamond (color  I ) (clarity  VVS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 51 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-85
	(diamond (color  D ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 79 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-86
	(diamond (color  E ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 71 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-87
	(diamond (color  F ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 69 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-88
	(diamond (color  G ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 62 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-89
	(diamond (color  H ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 57 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-90
	(diamond (color  I ) (clarity  VS ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 49 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-91
	(diamond (color  D ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 57 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-92
	(diamond (color  E ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 56 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-93
	(diamond (color  F ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 55 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-94
	(diamond (color  G ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 52 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-95
	(diamond (color  H ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-96
	(diamond (color  I ) (clarity  SI ) (cut round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 45 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-97
	(diamond (color  D ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 81 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-98
	(diamond (color  E ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 70 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-99
	(diamond (color  f ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 60 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-100
	(diamond (color  G ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 48 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-101
	(diamond (color  H ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 42 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-102
	(diamond (color  I ) (clarity  IF ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 36 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-103
	(diamond (color  D ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 72 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-104
	(diamond (color  E ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 66 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-105
	(diamond (color  F ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 57 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-106
	(diamond (color  G ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 47 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-107
	(diamond (color  H ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 40 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-108
	(diamond (color  I ) (clarity  VVS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 34 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-109
	(diamond (color  D ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 51 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-110
	(diamond (color  E ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 48 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-111
	(diamond (color  F ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 46 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-112
	(diamond (color  G ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 44 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-113
	(diamond (color  H ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 36 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-114
	(diamond (color  I ) (clarity  VS ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 33 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-115
	(diamond (color  D ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 38 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-116
	(diamond (color  E ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 38 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-117
	(diamond (color  F ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 34 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-118
	(diamond (color  G ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 33 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-119
	(diamond (color  H ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 31 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-120
	(diamond (color  I ) (clarity  SI ) (cut semi-round) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 28 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-121
	(diamond (color  D ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 67 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-122
	(diamond (color  E ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 48 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-123
	(diamond (color  f ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 41 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-124
	(diamond (color  G ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 35 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-125
	(diamond (color  H ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 31 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-126
	(diamond (color  I ) (clarity  IF ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 27 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-127
	(diamond (color  D ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-128
	(diamond (color  E ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 46 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-129
	(diamond (color  F ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 39 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-130
	(diamond (color  G ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 34 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-131
	(diamond (color  H ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 30 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-132
	(diamond (color  I ) (clarity  VVS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 27 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-133
	(diamond (color  D ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 40 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-134
	(diamond (color  E ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 38 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-135
	(diamond (color  F ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 35 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-136
	(diamond (color  G ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 31 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-137
	(diamond (color  H ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 29 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-138
	(diamond (color  I ) (clarity  VS ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 26 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-139
	(diamond (color  D ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 28 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-140
	(diamond (color  E ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 27 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-141
	(diamond (color  F ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 26 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-142
	(diamond (color  G ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 26 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-143
	(diamond (color  H ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 25 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-144
	(diamond (color  I ) (clarity  SI ) (cut square) (carat 1.00|1.05|1.10|1.15|1.20|1.25|1.30|1.35|1.40|1.45|1.50))
=>
(bind ?value (* 1.25 22 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule diamond-value-145
   (diamond (color  D ) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 250 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-146
   (diamond (color  E) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 197 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-147
   (diamond (color  F) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 176 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-148
   (diamond (color  G) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 142 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-149
   (diamond (color  H) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 115 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-150
   (diamond (color  G) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 91 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-151
   (diamond (color  D) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 209 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-152
   (diamond (color  E) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 175 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-153
   (diamond (color  F) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 152 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-154
   (diamond (color  G) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 131 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-155
   (diamond (color  H) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 112 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-156
   (diamond (color  I) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 85 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-157
   (diamond (color  D) (clarity  VS1 ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 138 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))