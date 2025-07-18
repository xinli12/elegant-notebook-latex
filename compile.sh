#!/bin/bash
# Elegant Notebook - Compilation Script
# This script compiles the LaTeX document with proper bibliography support

# Default document name
DOCUMENT="elegant-notebook"

# Check if a document name was provided
if [ "$#" -eq 1 ]; then
    DOCUMENT="$1"
fi

# Display information
echo "Compiling document: $DOCUMENT.tex"
echo "This will run pdflatex and biber to ensure proper bibliography processing."
echo "-------------------------------------------------------------------"

# Initial pdflatex run
echo "First pdflatex run..."
pdflatex -interaction=nonstopmode "$DOCUMENT" || { echo "Error in first pdflatex run. Aborting."; exit 1; }

# Biber run for bibliography
echo "Running biber for bibliography processing..."
biber "$DOCUMENT" || { echo "Error in biber run. Aborting."; exit 1; }

# Second pdflatex run to incorporate bibliography
echo "Second pdflatex run..."
pdflatex -interaction=nonstopmode "$DOCUMENT" || { echo "Error in second pdflatex run. Aborting."; exit 1; }

# Final pdflatex run to resolve all references
echo "Final pdflatex run..."
pdflatex -interaction=nonstopmode "$DOCUMENT" || { echo "Error in final pdflatex run. Aborting."; exit 1; }

# Clean up auxiliary files (optional)
echo "Cleaning up auxiliary files..."
rm -f "$DOCUMENT.aux" "$DOCUMENT.log" "$DOCUMENT.toc" "$DOCUMENT.out" "$DOCUMENT.bbl" "$DOCUMENT.bcf" "$DOCUMENT.blg" "$DOCUMENT.run.xml" "$DOCUMENT.lof" "$DOCUMENT.lot"

echo "-------------------------------------------------------------------"
echo "Compilation successful! Output file: $DOCUMENT.pdf"
echo "-------------------------------------------------------------------" 