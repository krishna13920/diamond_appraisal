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
(bind ?value (* 41.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-2
	(diamond (color  E ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 35.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-3
	(diamond (color  f ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 31.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-4
	(diamond (color  G ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 26.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-5
	(diamond (color  H ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 25.0 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-6
	(diamond (color  I ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 22.9 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-7
	(diamond (color  D ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 37.6 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-8
	(diamond (color  E ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 33.5 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-9
	(diamond (color  F ) (clarity  IF ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 29.8 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-10
	(diamond (color  G ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 26.2 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-11
	(diamond (color  H ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 24.4 1000))
(printout t "The value of the diamond with the given specifications is---$" ?value ))

(defrule diamond-value-12
	(diamond (color  I ) (clarity  VVS ) (cut round) (carat 0.5|0.51|0.52|0.53|0.54|0.55|0.56|0.57|0.58|0.59|0.60|0.61|0.62|0.63|0.64|0.65|0.66|0.67|0.68|0.69))
=>
(bind ?value (* 21.4 1000))
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