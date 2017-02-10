
;;; a:[lema="ingressar"] b:[word="na|no"] c:[pos="PROP"] >> c:[ner sema="Organizacao"]

;; 2. não pegamos se o campo misc do token d já tiver algum valor,
;; vamos perder ==> implementar operadores nas conditions. Note que
;; temos que lidar com contrações.

(=> ((a (= lema "ingressar")) (b (= form "em")) (c (= lemma "a"))
     (d (= upostag "PROPN")))
    (d (+ misc "sem=org")))

;; 1. nomes compostos => regras recursivas em arquivo separado como
;; abaixo. Note ainda os operadores de negação:

(=> ((a (~ misc "sem=org") (= upostag "PROPN")) (b (= upostag "PROPN") (!~ misc "sem=org")))
    (b (+ misc "sem=org")))

