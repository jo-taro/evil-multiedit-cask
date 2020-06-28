;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I switch to buffer \"\\([^\"]+\\)\"$"
  (lambda (buffer-name)
   (get-buffer-create buffer-name)))

(And "^I prepare evil-mode and c-mode$"
  (lambda ()
    (evil-mode) (c-mode)))

(And "^I clear the buffer$"
  (lambda ()
    (erase-buffer)))

(And "^I insert the text$"
  (lambda (contents)
    (insert contents)))

(And "^I go to the beginning of the buffer$"
  (lambda ()
    (call-interactively 'beginning-of-buffer)))

(And "^I bind key \"\\([^\"]+\\)\" to \"\\([^\"]+\\)\"$"
  (lambda (key fn-name)
    (global-set-key (kbd key) (intern fn-name))))

(When "^I input following keystrokes \"\\([^\"]+\\)\"$"
  (lambda (keystrokes)
    (let ((keys (split-string keystrokes "," t split-string-default-separators)))
      (dolist (key keys)
        (call-interactively (global-key-binding (kbd key)))))
    ))

(And "^I insert the \"\\([^\"]+\\)\"$"
  (lambda (contents)
    (insert contents)))
