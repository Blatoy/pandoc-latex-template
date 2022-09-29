
# Markdown to LaTeX with Pandoc

This repository explains how to setup a workflow to convert Markdown files to LaTeX using Pandoc and how to setup Zotero for adding citations easily.

This is a WIP. The default values work well if you want to use the Eisvogel template adapted for the HES-SO requirements.

The basic setup and most command will be the same if you use another template so feel free to use this as a base for your work.

## Building the report

After completing the installation, just run `build.bat` or `build.sh`. I did not use Make because I wanted to keep the setup as simple as possible on Windows too.

## Installation

### Programs

- Install Pandoc: https://pandoc.org/installing.html
- Install TeX Live: https://www.tug.org/texlive/
- Install Zotero: https://www.zotero.org/download/
- Install Python 3.9 (for pandoc-include) and add it to path: https://www.python.org/

### Pandoc filters

- Install **pandoc-include** via pip (`pip install --user pandoc-include`, https://github.com/DCsunset/pandoc-include)
  - Make sure the location of the `pandoc-include` executable is in your path (e.g. `C:\Users\USERNAME\AppData\Roaming\Python\Python39\Scripts`)
- Install **pandoc-crossref** (https://github.com/lierdakil/pandoc-crossref)
  - Make sure to move the executable in a location that is in your path (e.g. `C:\Users\USERNAME\AppData\Local\Pandoc\`)
- Install **citeproc** (https://github.com/jgm/citeproc)
  - Make sure to move the executable in a location that is in your path (e.g. `C:\Users\USERNAME\AppData\Local\Pandoc\`)

## Setup Zotero

Syncing Zotero is usually done using an online account, however to keep everything at the same place, the database of Zotero is moved into a local git repository.

The two downside are that this setup does not work well if you have multiple project in Zotero and the database is in binary format, so it will not work for multi-user setups.

`Edit > Preferences > Advanced > Files and Folders > Data Directory Location` and set it to the `zotero` folder of this repo.

### Zotero addons

- Download and install https://retorque.re/zotero-better-bibtex/installation/
  - This allows to easily generate citation key, which does not seem possible without it
  - To make is easier to drag and drop for pandoc, in Zotero, go to `Edit > Preferences > Better BibTeX > Quick Copy` and set `Quick Copy Format` to `Pandoc Citation`
  - To make it auto-generate the `bibliography.bib` file, in Zotero, go to `File > Export Library` and set `Format` to `Better BibTeX`, tick `Keep updated`. You can then overwrite the existing `bibliography.bib` file in the `src` folder.
  
### Suggested VSCode extensions

If you use VSCode to edit your files, the following extensions can be useful:

- `LTeX`: a smart grammer/spell checker which takes LaTeX (and apparently Markdown) syntax into account
- `LaTeX Workshop`: PDF preview, LaTeX autocomplete and highlighting (for tex files only)
- `Markdown All in One`: MD preview, shortchuts, auto-format
- `Markdown Table`: tool for markdown table
