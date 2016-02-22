#!/bin/bash

# Create directory if it doesn't exist
if [ ! -d "metafiles" ]; then
  mkdir metafiles
fi

# Run pdflatex and biber with metafiles as in-/output directories
pdflatex -output-directory=metafiles main
biber --input-directory=metafiles --output-directory=metafiles main
makeglossaries -d metafiles main
pdflatex -output-directory=metafiles main

# Create a softlink to the output PDF
ln -s metafiles/main.pdf
