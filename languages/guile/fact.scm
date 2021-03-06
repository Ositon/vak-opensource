#!/opt/local/bin/guile -q -s
!#
;;; Commentary:

;;; This is a command-line factorial calculator.  Run like this:
;;;
;;; ./fact 5
;;;
;;; to calculate the factorial of 5

;;; Author: Martin Grabmueller
;;; Date: 2001-05-29

;;; Code:

(use-modules (ice-9 getopt-long))

;; This is the grammar for the command line synopsis we expect.
;;
(define command-synopsis
  '((version (single-char #\v) (value #f))
    (help    (single-char #\h) (value #f))))

;; Display version information and exit.
;;
(define (display-version)
  (display "fact 0.0.1\n"))

;; Display the usage help message and exit.
;;
(define (display-help)
  (display "Usage: fact [options...] number\n")
  (display "  --help, -h           Show this usage information\n")
  (display "  --version, -v        Show version information\n"))

;; Interpret options, if --help or --version was given, print out the
;; requested information and exit.  Otherwise, calculate the factorial
;; of the argument.
;;
(define (main options)
  (let ((help-wanted (option-ref options 'help #f))
	(version-wanted (option-ref options 'version #f))
	(args (option-ref options '() '())))
    (cond
      ((or version-wanted help-wanted)
       (if version-wanted
	 (display-version))
       (if help-wanted
	 (display-help)))
      ((not (= (length args) 1))
       (display-help))
      (else
       (display (fact (string->number (car args))))
       (newline)))))

;; Calculate the factorial of n.
;;
(define (fact n)
  (if (< n 2)
    1
    (* n (fact (- n 1)))))

;; Call the main program with parsed command line options.
;;
(main (getopt-long (command-line) command-synopsis))

;; Local variables:
;; mode: scheme
;; End:
