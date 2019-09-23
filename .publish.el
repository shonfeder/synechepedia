(require 'org)
(require 'ox-rss)

;; Configuration

;; Toggle to true to only reload changed files
(setq org-publish-use-timestamps-flag 'f)

;; HTML Bits

(defvar synechepedia-html-head
  "<link rel='stylesheet' href='/static/css/style.css' type='text/css'/>")

(defvar synechepedia-html-preamble
  "<h1 class='title'>
    <a href='/index.html'>
      <img id='banner' src='/static/img/logo.svg'
           alt='Synechist-trichotomic logo. Designed by Shon Feder'/>
      <span class='title-text'>Synechepedia</span>
    </a>
   </h1>
<div class='nav'>
<ul>
</ul>
</div>
")

(defvar synechepedia-html-postamble
  "<div class='footer'>
Copyright 2018 %a.<br>
Last updated %C. <br>
Built with %c.
</div>")

;; Build bits

(defvar source-dir "~/Dropbox/synechepedia/org/")
(defvar target-dir "~/Dropbox/synechepedia/shonfeder.github.io")

(defvar synechepedia-notes
  (list "synechepedia-notes"
        :base-directory source-dir
        :base-extension "org"
        :publishing-directory target-dir
        ;; Exclude files with the extension .draft.org
        :exclude ".*\.draft\.org"
        :recursive t
        :publishing-function 'org-html-publish-to-html
        :headline-levels 4             ; Just the default for this project.
        :section-numbers nil
        :with-toc        nil
        :html-head       synechepedia-html-head
        :html-preamble   synechepedia-html-preamble
        :html-postamble  synechepedia-html-postamble))

(defvar synechepedia-static
  (list "synechepedia-static"
        :base-directory source-dir
        :base-extension "css\\|js\\|png\\|jpg\\|svg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
        :publishing-directory target-dir
        :recursive t
        :publishing-function 'org-publish-attachment))

(defun synechepedia-format-entry (entry style project)
  "Format an ENTRY for a log in PROJECT, ignoring STYLE."
  (format "[[file:%s][%s]] --- %s"
          entry
          (org-publish-find-title entry project)
          (format-time-string "%Y-%m-%d" (org-publish-find-date entry project))))

(defvar recurse-center-logs
  (list "synechepedia-articles"
        :base-directory (concat source-dir "/logs/recurse-center/")
        :base-extension "org"
        :publishing-directory (concat target-dir "/logs/recurse-center/")

        :html-head       synechepedia-html-head
        :html-preamble   synechepedia-html-preamble
        :html-postamble  synechepedia-html-postamble

        :makeindex nil
        :auto-sitemap t
        :sitemap-filename "index.org"
        :sitemap-title "Recurse Center Logs"
        :sitemap-style 'list
        :sitemap-sort-files 'anti-chronologically
        :sitemap-format-entry 'synechepedia-format-entry
        :with-toc nil
        :section-numbers nil

        :publishing-function 'org-html-publish-to-html
        :recursive t))

(defvar synechepedia
  '("synechepedia" :components ("synechepedia-notes"
                                "synechepedia-static"
                                "synechepedia-articles")))

;; The publishing list variable

(setq org-publish-project-alist
      (list synechepedia-notes
            synechepedia-static
            recurse-center-logs
            synechepedia))
