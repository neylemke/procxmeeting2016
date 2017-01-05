(TeX-add-style-hook
 "example"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("confproc" "letterpaper" "10pt" "twoside" "electronic" "papers=final" "paperselec=all" "hyperref={bookmarksdepth=1,bookmarksopen,bookmarksopenlevel=0,%
    linkcolor=blue,urlcolor=blue}" "geometry={text={175truemm,226truemm},% A4 & letter
    inner=0.805in,top=29.15mm,bottom=24.5mm,footskip=9.68mm,voffset=-5mm}" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("nth" "super")))
   (TeX-run-style-hooks
    "latex2e"
    "proctext"
    "posters"
    "confproc"
    "confproc10"
    "inputenc"
    "fontenc"
    "mathptmx"
    "nth"))
 :latex)

