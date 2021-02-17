;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ejemplo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Ejercicio 1

(/
(+ (expt 5 2) (sqrt 7) (-(expt 8 7 ))
   )
(+ (expt 6 2) (expt 7 4) (- ( sqrt(/ (expt 8 9)(expt 7 6) ) ) )
   )
 )

;Ejercicio 2
(/
    (+ (expt 5 (sqrt 4)) (expt 5 8)  (- (/ 7 (sqrt 6))) (expt 8 (sqrt (/ 5 (expt 2 8)) )) (-(expt 6 4)))
    (+( expt 7 8)
      (sqrt(+ 4 (sqrt (/ 5 6)) (-(expt 4 8))(expt 6 9))))
    )

;Ejercicio 3

(/
    (+ (expt 5 (/ 8 6))
       (sqrt (+ (sqrt 5) (/ (+ (sqr 8) (sqrt 7) (/ 9 6)) (+ (expt 5 8) (- (expt 5 (sqrt 7))) (expt 5 9) (- (expt 8 (expt 10 2)))  ))
                ))
       )
    (sqrt(+ (expt (expt 5 2)(/ 1 3)) (-(/ 8 (sqrt (expt 7 9)) )) (/ 8 13) (-(/ (+ 8 7 4) (+ (sqrt 5) (-(sqrt 4)) (sqrt (sqrt (sqrt 3))) ) )) )
     )

 )

;Ejercicio 4

(/
 (+ (expt 4 8) (- (expt 5 (sqrt 7))) (sqrt (/ (+ 8 7)(+ 5 (- (expt 3 2)) ) ))
    )
 (expt
  (+ 8 (expt (+ (expt 6 7) (- (expt 5 2 ))  6) 2) (- (/ 5 (+ 8 (expt 7 2) ) )))
  (/ 1 3)
  )
 )

