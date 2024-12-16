#!/bin/bash

# Convert Markdown to Word 
docker run --platform linux/amd64 --rm -v "$(pwd):/data" pandoc/latex /data/cv.md -o /data/cv.docx --reference-doc=/data/templates/custom.docx

# Convert Markdown to PDF
docker run --platform linux/amd64 --rm -v "$(pwd):/data" pandoc/latex /data/cv.md -o /data/cv.pdf --template=/data/templates/custom.latex

echo "Conversion complete! Check cv.docx and cv.pdf in your directory."