all:
	make slides.html
	make ./docs/index.html

slides.html: slides.Rmd
	Rscript -e "rmarkdown::render('$^')"

./docs/index.html: slides.html
	mv slides.html index.html
