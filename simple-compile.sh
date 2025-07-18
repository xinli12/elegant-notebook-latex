#!/bin/bash
# Simple compilation script for elegant-notebook.tex (without bibliography processing)

# Document name
DOCUMENT="elegant-notebook"

echo "Compiling document: $DOCUMENT.tex (simplified version, no bibliography)"
echo "-------------------------------------------------------------------"

# Run pdflatex twice to resolve references
echo "First pdflatex run..."
pdflatex -interaction=nonstopmode "$DOCUMENT.tex" || { echo "Error in pdflatex run. Aborting."; exit 1; }

echo "Second pdflatex run for references..."
pdflatex -interaction=nonstopmode "$DOCUMENT.tex" || { echo "Error in second pdflatex run. Aborting."; exit 1; }

# Clean up auxiliary files
echo "Cleaning up auxiliary files..."
rm -f "$DOCUMENT.aux" "$DOCUMENT.log" "$DOCUMENT.toc" "$DOCUMENT.out" "$DOCUMENT.bbl" "$DOCUMENT.bcf" "$DOCUMENT.blg" "$DOCUMENT.run.xml" "$DOCUMENT.lof" "$DOCUMENT.lot"

echo "-------------------------------------------------------------------"
echo "Compilation successful! Output file: $DOCUMENT.pdf"
echo "NOTE: This is a simplified compilation without bibliography processing."
echo "For full bibliography support, install 'biber' and use the compile.sh script."
echo "-------------------------------------------------------------------" 