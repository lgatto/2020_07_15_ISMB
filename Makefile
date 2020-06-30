all:
	make slides.html
	mv slides.html README.html

slides.html: slides.Rmd
	Rscript -e "rmarkdown::render('$^')"
