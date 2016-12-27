;; Matz' emacs configuration file
;;

(package-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://www.emacswiki.org/emacs/TransparentEmacs

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
 (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
 (add-to-list 'default-frame-alist '(alpha . (85 . 50)))


(defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(85 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (global-set-key (kbd "C-b") 'goto-line)
 (global-set-key (kbd "C-x o") 'ace-window)


 (global-linum-mode 1)
 (global-undo-tree-mode 1)

 (indent-guide-global-mode)
 (indent-guide-global-mode)


 (fset 'yes-or-no-p 'y-or-n-p)

 (setq undo-tree-auto-save-history t)


;; open layout for each session
 (desktop-save-mode 1)


(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)



(defun eshell-clear-buffer ()
  "Clear terminal"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))
(add-hook 'eshell-mode-hook
      '(lambda()
          (local-set-key (kbd "C-l") 'eshell-clear-buffer)))

;; (add-to-list 'auto-mode-alist '("" . linum-mode))



(setq dionysos-backend 'vlc
      dionysos-notify-p t
      dionysos-volume-cmd 'pamixer)


;; under construction, will not work atm
(setq explicit-shell-file-name
      "E:\\Program Files (x86)\\Git\\bin\\git-bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "E:\\Program Files (x86)\\Git\\bin\\")



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)



(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))


 (add-to-list 'load-path "~/path/to/matlab_dot_el")
    (load-library "matlab-load")
    ;; Enable CEDET feature support for MATLAB code. (Optional)
    (matlab-cedet-setup)


(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode)) ;;1/3~12


(add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")



(tool-bar-mode -1)
;; (global-set-key) [F1] 'find-grep-dired)
;;ctrl-x o

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(beacon-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes
   (quote
    ("5436e5df71047d1fdd1079afa8341a442b1e26dd68b35b7d3c5ef8bd222057d1" "3c98d13ae2fc7aa59f05c494e8a15664ff5fe5db5256663a907272869c4130dd" "71182be392aa922f3c05e70087a40805ef2d969b4f8f965dfc0fc3c2f5df6168" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "42ba25fad91db26bfa0130161412d49804ff27e6a09bf45f1a8268511300d981" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" default)))
 '(fci-rule-color "#14151E")
 '(package-selected-packages
   (quote
    (glsl-mode sexy-monochrome-theme virtualenvwrapper firefox-controller ample-theme afternoon-theme ace-window dionysos indent-guide jabber python-cell w3 abyss-theme google-this jedi anaconda-mode undo-tree multiple-cursors minimap matlab-mode)))
 '(show-paren-mode t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Lucida Console")))))
;;Courier New
  (cond
       (window-system
        (set-default-font "-*-Lucida Console-normal-r-*-*-15-*-15-15-c-*-iso8859-1")
        ));;We set the font to be used in cmd (so we get едц) [obsolete]    


;; ========== Enable Line and Column Numbering ==========

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)


;;mouse wheel
(define-key global-map [mouse-4] (lambda () (interactive) (scroll-down 3)))
(define-key global-map [mouse-5] (lambda () (interactive) (scroll-up 3)))

;;nice colors, since -r doesn't work
(set-background-color "black")
;;(set-face-background 'default "black")
;;(set-face-background 'region "black")
(set-face-foreground 'default "gray80")
;;(set-face-foreground 'region "gray60")
(set-foreground-color "white")
(set-cursor-color "red")

;;yes or no is now y or n
(fset 'yes-or-no-p 'y-or-n-p)


;;(prefer-coding-system 'UTF-8)


;; Make Emacs UTF-8 compatible for both display and editing:
;;We want everything in GNU/EMACS to be encoded using UTF-8.
;;Thunderbird encodes from and to UTF-8

(set-language-environment 'swedish)
;;(set-default-coding-systems             'UTF-8)
;;(setq file-name-coding-system           'UTF-8);; latin-1-dos //must have
;;(setq default-buffer-file-coding-system 'UTF-8)
;;(setq coding-system-for-write           'UTF-8);;
;;(set-keyboard-coding-system             'UTF-8)
;;(set-terminal-coding-system             'UTF-8)
;;(set-clipboard-coding-system            'UTF-8)
;;(set-selection-coding-system            'UTF-8)



;;Alarm clock
(defvar alarm-clock-timer nil
"Keep timer so that the user can cancel the alarm")

 (defun alarm-clock-message (text)
   "The actual alarm action"
   (message-box text))

 (defun alarm-clock ()
   "Set an alarm.
 The time format is the same accepted by `run-at-time'.  For
 example \"11:30am\"."
   (interactive)
   (let ((time (read-string "Time: "))
         (text (read-string "Alarm message: ")))
     (setq alarm-clock-timer (run-at-time time nil 'alarm-clock-message text))))

 (defun alarm-clock-cancel ()
   "Cancel the alarm clock"
   (interactive)
   (cancel-timer alarm-clock-timer)) 



;;;;;;;;;;;;;;;;;;

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
 (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))

(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
   (if buffer-file-name
      (concat "#" (file-name-nondirectory buffer-file-name) "#")
    (expand-file-name
     (concat "#%" (buffer-name) "#")))))

;;http://snarfed.org/space/gnu%20emacs%20backup%20files
;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;[15i12~09]
;; ====================
;; insert date and time
;;http://stackoverflow.com/questions/251908/how-can-i-insert-current-date-and-time-into-a-file-using-emacs

(defvar current-date-time-format "%ei%m~%y_%H%M" 
  ;;Matz "ascii format" [16i12~09_2215]
  "Format of date to insert with `insert-current-date-time' func
See help of `format-time-string' for possible replacements")

(defun insert-current-date-time ()
  "insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
       (interactive)
;       (insert (let () (comment-start)))
       (insert (format-time-string current-date-time-format (current-time)))
       
       )

(global-set-key "\C-c\C-d" 'insert-current-date-time)


;;http://www.crsr.net/Notes/Emacs.html
;;; Use "%" to jump to the matching parenthesis.
(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert
the character typed."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
    ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
    (t                    (self-insert-command (or arg 1))) ))
(global-set-key "%" `goto-match-paren)




(autoload 'mma-mode "mma.el" "Mathematica package file mode" t)
     (setq auto-mode-alist
           (cons '("\\.m\\'" . mma-mode) auto-mode-alist))
;; printing
(setenv "GS_LIB" "C:\Program\gs\gs8.64\lib;")
   (setq ps-lpr-command "C:\Program\gs\gs8.64\bingswin32c.exe")
   (setq ps-lpr-switches '("-q" "-dNOPAUSE" "-dBATCH" "-sDEVICE=mswinpr2"))
   (setq ps-printer-name t)

;; June 2010
(defun start-another-shell ()
"start a new instance of shell;
if buffer \"*shell*\" already exists, rename it and start a new instance.
The older shell will be marked \"\", counter-intuitively...."
(interactive)
(setq shell-name "*shell*")
(if (get-buffer shell-name)
(progn
(switch-to-buffer shell-name)
(rename-buffer (generate-new-buffer-name shell-name))))
(shell))

;;http://mjtsai.com/blog/2003/01/02/multiple_emacs_shell_buff/



;; (global-set-key (kbd "sa") (fset 'selectall
  ;; [?\M-< ?\C-  ?\M->]))
   

   
