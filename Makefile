.PHONY: paper poster clean

paper:
	cd paper/src && latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex && \
	cp main.pdf ../paper.pdf

poster:
	cd poster/src && latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex && \
	cp main.pdf ../poster.pdf

clean:
	cd paper/src && latexmk -C || true
	cd poster/src && latexmk -C || true
