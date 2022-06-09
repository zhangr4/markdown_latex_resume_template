#! /usr/bin/sh

# find . -name "*.pdf" -print0 | xargs -0 rm -f

# $# indicate the length of variables 
if [ $# -eq 0 ] 
then
  for f in resume_markdown/*.md; 
    do pandoc "$f" -s -f markdown+yaml_metadata_block \
    --template resume_template/resume_template.latex -o "${f%.md}.pdf"; 
  done
  echo "converted all markdown file";
else
  pandoc "resume_markdown/$1" -s -f markdown+yaml_metadata_block --template resume_template/resume_template.latex -o "resume_markdown/${1%.md}.pdf"; 
  echo "converted $1";
fi

for f in resume_markdown/*.pdf; 
do mv "$f" resume_pdf; 
done 
echo "done";