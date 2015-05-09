# make pdf: compile to a pdf file, name with date stamp, and move to compiled
# folder.
pdf:
	#@echo '******************** building figures ********************'
	#@make -C figures figures
	@echo '******************** compiling the paper ********************'
	@pdflatex main.tex
	pdflatex main.tex
	@mv main.pdf compiled/`date +'%m_%d_%Y'`.pdf
	@echo 'done'

# make clean: clean the repo of all .aux, .log, and .out files
clean:
	@echo 'removing .aux, .log, .out files from ./ and ./lib/...'
	@rm -f *.aux *.log *.out lib/*.aux lib/*.log lib/*.out
	@echo 'done'

figures:
	@echo '******************** building figures ********************'
	@pdflatex figures/figures.tex
	pdflatex figures/figures.tex
	@mv figures.pdf compiled/`date + '%m_%d_%Y'`.pdf
	@echo 'done'
