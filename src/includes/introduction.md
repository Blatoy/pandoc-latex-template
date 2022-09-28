## Abstract

Image with caption which can be referenced [\ref{mse_logo}] in the text

![MSE Logo\label{mse_logo}](../images/mse_logo.png)


### Some tables

Citations can be done easily like this [@HESSOAccueilHaute]. The key can easily be generated using [Zotero Better BibTeX.](https://retorque.re/zotero-better-bibtex/installation/)

| Name     | Pricing | Remarks               |
| -------- | ------- | --------------------- |
| Pandoc   | Free    | Seems to work goodly  |
| Markdown | Free    | Not as fancy as LaTeX |

### Code

```sh
# Note: this may not be the latest version

#!/bin/sh
pandoc \
    src/main.md \
    --to latex \
    --from markdown \
    --template src/templates/eisvogel-mse.latex \
    --csl src/templates/ieee.csl \
    --filter pandoc-include \
    --filter pandoc-crossref \
    --citeproc \
    --pdf-engine pdflatex \
    --output build/report.pdf
```