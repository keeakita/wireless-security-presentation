all: slides.pdf
debug: slides.tex slides.pdf

slides.pdf: security.markdown template.latex Makefile
	pandoc security.markdown -t beamer --latex-engine xelatex -o slides.pdf --template=template.latex -f markdown+lists_without_preceding_blankline

# Useful for debugging
slides.tex: security.markdown template.latex Makefile
	pandoc security.markdown -t beamer --latex-engine xelatex -o slides.tex --template=template.latex -f markdown+lists_without_preceding_blankline

clean:
	rm slides.pdf
