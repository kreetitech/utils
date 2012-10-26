(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(autoload 'ruby-mode "ruby-mode" "Ruby editing mode." t)
(setq auto-mode-alist  (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("\\.rhtml$" . html-mode) auto-mode-alist))

(modify-coding-system-alist 'file "\\.erb$" 'utf-8)
(modify-coding-system-alist 'file "\\.rb$" 'utf-8)
(modify-coding-system-alist 'file "\\.rhtml$" 'utf-8)
(modify-coding-system-alist 'file "\\.rxml$" 'utf-8)
(modify-coding-system-alist 'file "\\.yml$" 'utf-8)

(add-hook 'ruby-mode-hook
          (lambda()
            (add-hook 'local-write-file-hooks
                      '(lambda()
                         (save-excursion
                           (untabify (point-min) (point-max))
                           (delete-trailing-whitespace)
                           )))
            (set (make-local-variable 'indent-tabs-mode) 'nil)
            (set (make-local-variable 'tab-width) 2)
            (imenu-add-to-menubar "IMENU")
            (require 'ruby-electric)
            (ruby-electric-mode t)
            ))

;;tabs are evil, don't want tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;tab and indentation
;;the tab key should indent the line and show the possible completions

(add-hook 'html-mode-hook
         (lambda ()
           (setq mmm-classes '(erb-code))
           (mmm-mode-on)))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))

(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                    interpreter-mode-alist))

(setq-default c-basic-offset 2)
(setq-default css-mode-indent-depth 2)
(setq-default js-indent-level 2)

(autoload 'javascript-mode "javascript-mode" "JavaScript mode" t)
(setq auto-mode-alist (append '(("\\.js$" . javascript-mode))
                              auto-mode-alist))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(auto-fill-mode -1)
(remove-hook 'text-mode-hook #'turn-on-auto-fill)
