#!/bin/bash

# Compile the test document
pdflatex test-themes.tex
pdflatex test-themes.tex

# Open the PDF if on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    open test-themes.pdf
fi

echo "Theme test document compiled. You can find it at test-themes.pdf" 