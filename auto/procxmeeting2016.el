(TeX-add-style-hook
 "procxmeeting2016"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("confproc" "a4" "10pt" "oneside" "onesidepapers" "electronic" "papers=final" "paperselec=all" "hyperref={bookmarksdepth=1,bookmarksopen,bookmarksopenlevel=0,%
    linkcolor=blue,urlcolor=blue}" "colorheaders=black" "colorfooters=black" "geometry={text={175truemm,226truemm},% A4 & letter
    inner=0.805in,top=29.15mm,bottom=24.5mm,footskip=9.68mm,voffset=-5mm}" "letter")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("nth" "super")))
   (TeX-run-style-hooks
    "latex2e"
    "proctext"
    "posters"
    "confproc"
    "confproc10"
    "fontenc"
    "mathptmx"
    "nth"
    "titlesec"
    "blindtext"
    "color")
   (TeX-add-symbols
    "hsp")
   (LaTeX-add-color-definecolors
    "gray75"))
 :latex)

