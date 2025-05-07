#!/bin/bash
# Simple compilation script for elegant-notebook.tex (without bibliography processing)

echo "Compiling document: elegant-notebook.tex (simplified version, no bibliography)"
echo "-------------------------------------------------------------------"

# Run pdflatex twice to resolve references
echo "First pdflatex run..."
pdflatex -interaction=nonstopmode elegant-notebook.tex || { echo "Error in pdflatex run. Aborting."; exit 1; }

echo "Second pdflatex run for references..."
pdflatex -interaction=nonstopmode elegant-notebook.tex || { echo "Error in second pdflatex run. Aborting."; exit 1; }

echo "-------------------------------------------------------------------"
echo "Compilation successful! Output file: elegant-notebook.pdf"
echo "NOTE: This is a simplified compilation without bibliography processing."
echo "For full bibliography support, install 'biber' and use the compile.sh script."
echo "-------------------------------------------------------------------" 