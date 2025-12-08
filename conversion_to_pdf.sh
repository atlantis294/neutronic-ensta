#!/bin/bash

echo "Conversion IPYNB → HTML..."
jupyter nbconvert --to html exercices/*.ipynb

echo "Conversion HTML → PDF..."
for f in exercices/*.html; do
    base=$(basename "${f%.html}")   # ex: 01_physique_nucleaire
    wkhtmltopdf "$f" "FARNAULT_${base}.pdf"
done

echo "✔ Conversion terminée !"
