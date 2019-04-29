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

(defrule diamond-value
	(diamond (color  D ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60))
=>
(bind ?value (* 22.3 1000))
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