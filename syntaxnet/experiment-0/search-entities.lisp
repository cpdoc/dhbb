(ql:quickload :cl-conllu)
(ql:quickload :alexandria)
(ql:quickload :split-sequence)
(ql:quickload :cl-fad)

(defpackage :search-entities
  (:use :cl :cl-conllu :alexandria :split-sequence))

(in-package :search-entities)

(defparameter *dictionary* nil)

(defun trim (string)
  (string-trim 
   #(#\Space #\Newline #\Backspace #\Tab 
     #\Linefeed #\Page #\Return #\Rubout) string))

(defun read-dictionary (filename)
  (setf *dictionary* (make-hash-table :test #'equal))
  (with-open-file (stream filename)
    (do ((line (read-line stream nil)
               (read-line stream nil)))
        ((null line))
      (let ((cols (split-sequence #\; line)))
        (setf (gethash (second cols) *dictionary*) (first cols))))))

(defun sentence->list (sentence)
  (mapcar (lambda (tk) (slot-value tk 'cl-conllu::form))
          (cl-conllu::sentence-tokens sentence)))

(defun entity->list (string)
  (split-sequence #\Space string))

(defun search-entity (entity string)
  (search entity string :test #'string=))

;;; extremely inefficient: we are checking for entities that may have
;;; the same prefix over and over.
(defun search-conll (filename filename-out)
  (let ((entities (sort (hash-table-keys *dictionary*) #'< :key #'length))
        (conllu (read-conllu filename)))
    (write-conllu
     (mapc (lambda (s)
             (let ((str (sentence->list s)))
               (dolist (e entities)
                 (let ((pos (search-entity (entity->list e) str)))
                   (when pos
                     (setf (slot-value (nth pos (cl-conllu::sentence-tokens s)) 'cl-conllu::misc) 
                           (format nil "dhbb-entity:~a,type:~a"
                                   (substitute #\= #\Space e)
                                   (gethash e *dictionary*)))))))) conllu)
     filename-out)))

(defun do-all ()
  (read-dictionary #p"dictionary.csv")
  (cl-fad:walk-directory #p"conll" 
                         (lambda (f)
                           (when (string-equal "conll" (pathname-type f))
                             (search-conll f (make-pathname :directory '(:relative "conll+entities")
                                                            :name (pathname-name f) :type (pathname-type f)))))))
