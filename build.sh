#!/bin/sh

pandoc \
    src/main.md \
    --to latex \
    --from markdown \
    --template src/templates/eisvogel-mse.latex \
    --listings \
    --csl src/templates/ieee.csl \
    --filter pandoc-include \
    --filter pandoc-crossref \
    --citeproc \
    --pdf-engine pdflatex \
    --output pdfs/report.pdf
