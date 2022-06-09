# A repo for creating resume from markdown to pdf

## pre-requisite

install pandoc

familiar with latex

## workflow

1. write resume with markdown file
2. check or update resume_template.latex file for layout
3. use pandoc convert markdown to pdf file

## how to use it

customize your resume under ./resume_markdown

under `./`, run `. pdf.sh` can pass file name as args like `. pdf.sh resume.md` while `./resume_markdown` has a file name resume.md

### use docker

the docker file follow [github repository](https://github.com/john-bokma/resume-pandoc) of John Bokma

run

```sh
    docker build -t pandoc .
```

then move your resume file to current directory, name it resume.md and run

```sh
    docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) pandoc \
    resume.md -s -f markdown+yaml_metadata_block \
    --template resume_template/resume_template.latex -o resume.pdf;
```

## YAML Meta Block

name
: the name on the resume.

contact-info
: email and phone number, etc. use "|" connect by default

fontsize
: default `10pt`.

fontenc
: default `T1`.

urlcolor
: used in PDF, default `blue`.

linkcolor
: used in PDF, default `magenta`.

numbersections
: number sections, default off. Can also be controlled using the
`pandoc` option `-N, --number-sections`.

name-color
: the SVG name of the font color used for your name on the
resume. For example `DarkSlateGray`. Note that this option
also changes the font used for your name to bold and sans serif.

section-color
: the SVG name of the font color used for sections. For example
`Tomato`. Note that this option also changes the section font to
bold and sans serif.

Regarding the last two options: if you just want to change the font to
sans serif bold you can just use the color `black`.

## copyright

This project is developed based on LaTeX Resume Pandoc Template jb2resume.latex from John Bokma [https://github.com/john-bokma/resume-pandoc](https://github.com/john-bokma/resume-pandoc)，Copyright (c) 2016-2017, John Bokma
