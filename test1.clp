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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule diamond-value-145
   (diamond (color  D ) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 250 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-146
   (diamond (color  E) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 197 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-147
   (diamond (color  F) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 176 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-148
   (diamond (color  G) (clarity  IF ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 142 2.50 1000))
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
(bind ?value (* 91 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-151
   (diamond (color  D) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 209 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-152
   (diamond (color  E) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 175 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-153
   (diamond (color  F) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 152 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-154
   (diamond (color  G) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 131 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-155
   (diamond (color  H) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 112  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-156
   (diamond (color  I) (clarity  VVS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 85 2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-157
   (diamond (color  D) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 138  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-158
   (diamond (color  D) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 138  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-159
   (diamond (color  E) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 135  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-160
   (diamond (color  F) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 124  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-161
   (diamond (color  G) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 104  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-162
   (diamond (color  H) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 93  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-163
   (diamond (color  I) (clarity  VS ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 74  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-164
   (diamond (color  D) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 100  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))
;******************************************************
(defrule diamond-value-165
   (diamond (color  E) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 97  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-166
   (diamond (color  F) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 94  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-168
   (diamond (color  F) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 94  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-169
   (diamond (color  G) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 85  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-170
   (diamond (color  H) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 76  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-171
   (diamond (color  I) (clarity  SI ) (cut round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 68  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-172
   (diamond (color  D) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 153  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-173
   (diamond (color  E) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 132  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-173
   (diamond (color  F) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 123  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-174
   (diamond (color  G) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 105  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-175
   (diamond (color  H) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 84  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-176
   (diamond (color  D) (clarity  IF ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 67  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-177
   (diamond (color  D) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 138  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-178
   (diamond (color  E) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 125  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-179
   (diamond (color  F) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 115  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-180
   (diamond (color  G) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 97  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-181
   (diamond (color  H) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 82  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-182
   (diamond (color  I) (clarity  VVS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 65  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-183
   (diamond (color  D) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 120  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-184
   (diamond (color  E) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 99  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-185
   (diamond (color  F) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 94  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-186
   (diamond (color  G) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 87  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-187
   (diamond (color  H) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 73  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-188
   (diamond (color  I) (clarity  VS ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 61  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-189
   (diamond (color  D) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 87  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-190
   (diamond (color  E) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 82  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-191
   (diamond (color  F) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 81  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-192
   (diamond (color  G) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 75  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-193
   (diamond (color  H) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 69  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

;******************************************************
(defrule diamond-value-194
   (diamond (color  I) (clarity  SI ) (cut semi-round) (carat 2.00|2.10|2.20|2.30|2.40|2.50|2.60|2.70|2.80|2.90|2.99))  
=>
(bind ?value (* 56  2.50 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))