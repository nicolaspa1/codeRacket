;;Autor: Nicolas Pinzon Aparicio
;;Fecha Creacion: 17-02-2021
;;Contrato: suma2n : numero, numero -> numero
;;Proposito: Este programa recibe dos numeros y retorna su suma
;;Ejemplos
;;(suma 5 2) retorna 7
;;(suma -2 3) retorna 1
(define (suma2n a b)
  (+ a b)
  )
;;Pruebas

(check-expect (suma2n 5 2) 7)
(check-expect (suma2n -2 3) 1)
(check-expect (suma2n 5 5) 10)
(check-expect (suma2n -3 0) -3)


;;Autor: Nicolas Pinzon Aparicio
;;Fecha Creacion: 17-02-2021
;;Contrato: areaCirculo : numero -> numero
;;Proposito: Este programa recibe el radio de un circulo y retorna su area
;;Ejemplos
;;(areaCirculo 5) retorna 78.5
;;(areaCirculo 3) retorna 1

(define (areaCirculo x)
  (* pi (sqr x))
  )

;;Pruebas
(check-within (areaCirculo 2) 12.56 0.1)
(check-within (areaCirculo 5) 78.53 0.1)



;;Autor: Nicolas Pinzon Aparicio
;;Fecha: 17-02-2021
;;Contrato: calculaDistancia: numero,numero,numero,numero -> numero
;;Proposito: La uncion retorna la distancia entre dos puntos ubicados en el plano cartesiano
;;(calculaDistancia 1 1 2 2) 1.4142
;;(calculaDistancia 0 0 2 2) 2.828
;;(calculaDistancia 3 2 4 5) 3.1622

(define (calculaDistancia x0 y0 x1 y1)
  (sqrt(+ (cuadradoResta x1 x0) (cuadradoResta y1 y0 ) ))
  )
;; pruebas
(check-within(calculaDistancia 1 1 2 2) 1.4142 0.1)
(check-within(calculaDistancia 0 0 2 2) 2.828 0.1)
(check-within(calculaDistancia 3 2 4 5) 3.1622 0.1)


;;Contrato cuadradoResta: numero, numero -> numero
;;Ejemplos
;;(cuadradoResta 1 2) 1
;;(cuadradoResta 0 2) 4
;;(cuadradoResta 2 5) 9

(define (cuadradoResta a b)
  (sqr (-  a b) )
  )

;;Pruebas

(check-expect (cuadradoResta 1 2) 1)
(check-expect (cuadradoResta 0 2) 4)
(check-expect (cuadradoResta 2 5) 9)



;;Autor: Nicolas Pinzon Aparicio
;;Fecha: 17-02-2021
;;Contrato: calculoHipotenusa: numero, numero, numero
;;Proposito: Dados las medidas de dos catetos se calcula la hipotenusa de un triangulo
;;Ejemplos:
;;(calculoHipotenusa 3 5) 5.83095
;;(calculoHipotenusa 4 5) 6.4031
;;(calculoHipotenusa 8 9) 12.041

(define (calculoHipotenusa A B)
  (sqrt(+ (sqr A) (sqr B) ))
  )

(check-within (calculoHipotenusa 3 5) 5.83095 0.1)
(check-within (calculoHipotenusa 4 5) 6.4031 0.1)
(check-within (calculoHipotenusa 8 9) 12.041 0.1) 



;Autor: Nicolas Pinzon Aparicio
;Fecha 17-02-2021
;Contrato: f : numero, numero, numero -> numero
;Proposito: Esta funcion toma tres numeros y aplica una operacion
;Ejemplo:
;(f 1 2 3) 5.29150
;(f 2 4 5) 9.819805

(define (f x y z)
  (/ (+ (sqr x)(sqr y)(sqr z) )
     (sqrt (+ (* 2 x) (* -2 y) (sqr z) ) )
     )
)

;Prueba
(check-within (f 1 2 3) 5.29150 0.01)
(check-within (f 2 4 5) 9.819805 0.01)

;Autor: Nicolas Pinzon Aparicio
;Fecha 17-02-2021
;Contrato: g : numero, numero -> numero
;Proposito: Esta funcion toma dos numeros y aplica una operacion que depende de f
;Ejemplo:
;(g 1 3) #i-11.959785341910377-0.0i
;(g 2 3)#i0.0-22.970533800744295i

(define (g x y )
  (/ (* (f x y (sqr x) ) (f (sqr x)(sqr y)(sqrt x) ) )
     (+ (f x y (+ x y) ) (sqrt (f (+ (sqr x) y ) y (sqr x ) ) ) ) )
  )

(check-within (g 1 3) #i-11.959785341910377-0.0i 0.01)
(check-within (g 2 3)#i0.0-22.970533800744295i 0.01)

;Autor: Nicolas Pinzon Aparicio
;Fecha 17-02-2021
;Contrato: h : numero, numero -> numero
;Proposito: Esta funcion toma dos numeros y aplica una operacion que depende de g
;Ejemplo:
;(g 1 2) #i-90.87370099106076+276.6201448551484i
;(g -1 4) #i18403.376493145457+353.19556226040254i


(define (h a b)
  (+ (g (f  a b (sqr a) )   b )
     (g (f (sqr a) b (sqr b) ) (sqrt (+ a b) ) )
   )
 )

;;Pruebas
(check-within(h 1 2) #i-90.87370099106076+276.6201448551484i 0.01)
(check-within (h -1 4) #i18403.376493145457+353.19556226040254i 0.01)

