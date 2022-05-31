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

    under ./, run . pdf.sh

    if you want to change the layout, customize the template file nder ./resume_template

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
 `Tomato`.  Note that this option also changes the section font to
 bold and sans serif.

Regarding the last two options: if you just want to change the font to
sans serif bold you can just use the color `black`.

## copyright

This project is developed based on LaTeX Resume Pandoc Template jb2resume.latex from John Bokma [https://github.com/john-bokma/resume-pandoc](https://github.com/john-bokma/resume-pandoc)，Copyright (c) 2016-2017, John Bokma
