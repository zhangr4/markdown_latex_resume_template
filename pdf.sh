#! /usr/bin/env bash

find . -name "*.pdf" -print0 | xargs -0 rm -f

for f in resume_markdown/*.md; 
do pandoc "$f" -s -f markdown+yaml_metadata_block \
--template resume_template/resume_template.latex -o "${f%.md}.pdf"; 
done

for f in resume_markdown/*.pdf; 
do mv "$f" resume_pdf; 
done 