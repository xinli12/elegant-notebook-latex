#!/bin/bash
# Test Themes Compilation Script
# This script compiles the test-themes.tex document.

# Document name
DOCUMENT="test-themes"

echo "Compiling document: $DOCUMENT.tex"
echo "-------------------------------------------------------------------"

# Run pdflatex twice to resolve references
echo "First pdflatex run..."
pdflatex -interaction=nonstopmode "$DOCUMENT.tex" || { echo "Error in first pdflatex run. Aborting."; exit 1; }

echo "Second pdflatex run for references..."
pdflatex -interaction=nonstopmode "$DOCUMENT.tex" || { echo "Error in second pdflatex run. Aborting."; exit 1; }

# Clean up auxiliary files
echo "Cleaning up auxiliary files..."
rm -f "$DOCUMENT.aux" "$DOCUMENT.log" "$DOCUMENT.toc" "$DOCUMENT.out" "$DOCUMENT.bbl" "$DOCUMENT.bcf" "$DOCUMENT.blg" "$DOCUMENT.run.xml" "$DOCUMENT.lof" "$DOCUMENT.lot"

echo "-------------------------------------------------------------------"
echo "Compilation successful! Output file: $DOCUMENT.pdf"
echo "-------------------------------------------------------------------" 