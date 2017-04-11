;; Regras positivas para o DHBB
;; Atualização: 8 de fevereiro de 2017

;; PALAVRAS QUE DEVEM SER ANOTADAS COMO ORGANIZAÇÃO


(=> ((?a (= lemma "ingressar")) (?b (= lemma "em")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= form "membro")) (?b (= lemma "de")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> (?a (= lemma "estudar")) (?b (= lemma "em")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN"))
    (?d (+ misc "sem=org")))


(=> ((?a (= lemma "integrar")) (?b (~ form "^a$|^b$")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=org")))


(=> ((?a (= form "chapa")) (?b (= lemma "de")) (?c (= lemma "o")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= lemma "professor")) (?b (= lemma "de")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= lemma "cadete")) (?b (~ lemma "^na$|^da$")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=org")))


(=> ((?a (= lemma "cadete")) (?b (= lemma "a") (= upostag "ADP"))
     (?c (= lemma "o") (= upostag "DET")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= lemma "aluno")) (?b (~ lemma  "^de$|^em$")) (?c (~ lemma "^a$|^o$"))  (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= form "oficial")) (?b (~ lemma  "^de$|^em$")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


(=> ((?a (= form "dirigente")) (?b (~ lemma  "^de$|^em$")) (?c (~ lemma "^a$|^o$")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=org")))


;; PALAVRAS QUE DEVEM SER ANOTADAS COMO PESSOA


(=> ((?a (= upostag "PROPN")) (?b (= lemma "nascer")) (?c (= lemma "em")) ? (?d (~ lemma "^a$|^o$")) (?e (= upostag "PROPN")))
    ((?a (+ misc "sem=Pessoa|tipo=Individuo")) (?e (+ misc "sem=Espaco|tipo=Politico"))))


(=> ((?a (= lemma "filho")) (?b (= lemma "de")) (?c (= upostag "PROPN")) ? (?d (= form "e")) ? (?e (= form "de")))
    ((?c (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "seu")) (?b (~ form "^av.*$")) ? (?c (= form ",")) ? (?d (~ form "^paterno$|^materno$")) ? (?e (= form ",")) (?f (= upostag "PROPN")))
    (?f (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu")) (?b (~ form "^tia$|^tio$")) ? (?c (= form ","))  (?d (= upostag "PROPN" )))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu")) (?b (~ form "^irmã$|^irmão$")) ? (?c (= form ",")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu")) (?b (~ form "^primo$|^prima$")) ? (?c (= form ",")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu")) (?b (~ form "^filh.*$")) ? (?c (= form ",")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu")) (?b (~ form "^colega.*$")) ? (?c (= form ",")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "casar")) ? (?b (= form "se")) (?c (= form "com")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "ser"))  (?b (~ form "^casad.*$")) (?c (= form "com")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "seu"))  (?b (~ form "^suvessor.*$")) ? (?c (= form ",")) (?d (= upostag "PROPN")))
    (?d (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= form "candidatura")) (?b (= form "de")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "eleição")) (?b (= form "de")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= form "autoria")) (?b (= form "de")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "nomeação")) (?b (= form "de")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "substituição")) (?b (= form "de")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= lemma "renúncia")) (?b (= form "de")) (?c (= upostag "PROPN")))
    ((?c (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "substituir")) (?b (= form "por")) (?c (= upostag "PROPN")))
    (?c (+ misc "sem=Pessoa|tipo=Individuo")))


(=> ((?a (= upostag "PROPN")) (?b (+ lemma "renunciar"))) ((?a (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "general")) (?b (= upostag "PROPN"))) ((?b (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "capitão")) (?b (= upostag "PROPN"))) ((?b (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "major")) (?b (= upostag "PROPN"))) ((?b (+ misc "sem=Pessoa|tipo=Individuo"))))


(=> ((?a (= lemma "tenente")) (?b (= upostag "PROPN"))) ((?b (+ misc "sem=Pessoa|tipo=Individuo"))))


;;  PALAVRAS QUE DEVEM SER ANOTADAS COMO ESPAÇO


(=> ((?a (= lemma "nascer")) (?b (= lemma "em")) ? (?c (= lemma  "o")) (?d (= upostag "PROPN")))
    ((?d (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= lemma "prefeito")) (?b (= lemma "de")) ? (?c (= form "o")) (?d (= upostag "PROPN")))
    ((?d (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= lemma "governador")) (?b (= lemma "de")) ? (?c (= lemma "o")) (?d (= upostag "PROPN")))
    ((?d (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= lemma "vereador")) (?b (= lemma "de")) (?c (= form "a")) (d? (= form "cidade")) (?e (= upostag "PROPN")))
    ((?e (+ misc "sem=Espaço|tipo=Politico"))))


;; Se eu não especificar o "no" abaixo, teremos muitas ocorrências de Organizações,
;; por ex. Companhia Eletrica do Estado do Rio de Janeiro...


(=> ((?a (= lemma "em")) (?b (= form "o")) (?c (= form "estado")) (?d (= lemma "de")) ? (?e (= lemma "o")) (?f (= upostag "PROPN")))
    ((?f (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= form "cidade")) (?b (= lemma "de")) ? (?c (= lemma "o")) (?d (= upostag "PROPN")))
    ((?d (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= lemma "visitar")) ?  (?b (= lemma "o")) (?c (= upostag "PROPN")))
    ((?c (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= upostag "PROPN")) (?b (= lemma "viajar")) (?c (= lemma "a")) ? (?d (= lemma "o")) (?e(= upostag "PROPN")))
    ((?a (+ misc "sem=Pessoa|tipo=Individuo")) (?e (+ misc "sem=Espaço|tipo=Politico"))))


(=> ((?a (= lemma "sediar")) (?b (= lemma "em")) (?c (= upostag "PROPN")))
    ((?c (+ misc "sem=Espaço|tipo=Politico"))))


(=> (? (a? (= lemma "em")) (?b (= lemma "o")) (?c (= lemma "arredores")) (?d (= lemma "de")) ? (?e (= lemma "o")) (?f (= upostag "PROPN")))
    ((?f (+ misc "sem=Espaço|tipo=Politico"))))
