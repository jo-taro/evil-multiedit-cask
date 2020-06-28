(require 'f)

(defvar evil-multiedit-cask-support-path
  (f-dirname load-file-name))

(defvar evil-multiedit-cask-features-path
  (f-parent evil-multiedit-cask-support-path))

(defvar evil-multiedit-cask-root-path
  (f-parent evil-multiedit-cask-features-path))

(add-to-list 'load-path evil-multiedit-cask-root-path)

;; Ensure that we don't load old byte-compiled versions
(let ((load-prefer-newer t))
  (require 'espuds)
  (require 'ert))

(require 'undo-tree)
(require 'evil)
(require 'evil-multiedit)

(Setup
 ;; Before anything has run
  ;; (evil-mode)
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
