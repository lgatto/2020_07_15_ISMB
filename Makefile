all:
	make slides.html
	mv slides.html index.html

slides.html: slides.Rmd
	Rscript -e "rmarkdown::render('$^')"
