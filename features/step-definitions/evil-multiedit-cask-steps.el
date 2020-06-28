;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I switch to buffer$"
  (lambda ()
   (get-buffer-create "test.c")))

(And "^I prepare modes$"
  (lambda ()
    (evil-mode) (c-mode)))

(And "^I clear the buffer$"
  (lambda ()
    (erase-buffer)))

(And "^I insert the text$"
  (lambda ()
    (insert "int\nint\nint")))
    ;; (insert "int\nint\nint")))

(And "^I go to the beginning of the buffer$"
  (lambda ()
    (call-interactively 'beginning-of-buffer)))

(And "^I bind key \"\\([^\"]+\\)\" to \"\\([^\"]+\\)\"$"
  (lambda (key fn-name)
    (global-set-key (kbd key) (intern fn-name))))

(When "^I change the multiple items$"
  (lambda ()
    ;; ...
    (call-interactively 'evil-multiedit-match-and-next)
    (call-interactively 'evil-multiedit-match-and-next)
    (call-interactively 'evil-multiedit-match-and-next)
    (call-interactively 'evil-multiedit--substitute)
    (insert "foo")
    ))

;; (Then "^I should see \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; (string= something "foo\nfoo\nfoo")))
;;     (string= something "foo")))

;; (Given "^I have \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; ...
;;     ))

;; (When "^I have \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; ...
;;     ))

;; (Then "^I should have \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; ...
;;     ))

;; (And "^I have \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; ...
;;     ))

;; (But "^I should not have \"\\(.+\\)\"$"
;;   (lambda (something)
;;     ;; ...
;;     ))
