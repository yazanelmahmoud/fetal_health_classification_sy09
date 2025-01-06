# Fetal Health Classification (SY09)

This repository contains:
- **Paper (LaTeX + PDF)**: `paper/src/`, `paper/paper.pdf`
- **poster (LaTeX + PDF)**: `poster/src/`, `poster/poster.pdf`
- **Notebook**: `notebooks/analysis.ipynb`

**Dataset**: Fetal Health Classification (cardiotocography). Download from Kaggle and place files under `data/` (see `data/README.md`).

**Goal**: explore CTG features and classify fetal health into *normal*, *suspect*, *pathological*.

## Project structure
```
paper/
  src/           # LaTeX sources of the paper (main.tex, biblio.bib, figures/)
  paper.pdf      # built PDF
poster/
  src/           # LaTeX sources of the defense poster
  poster.pdf     # built PDF
notebooks/
  analysis.ipynb # main notebook (with stripped outputs)
data/
  README.md      # how to get the dataset (we don't commit raw data)
env/
  requirements.txt
.gitignore
.gitattributes
.pre-commit-config.yaml
CITATION.cff
LICENSE
README.md
README.fr.md
```

## Reproducibility
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r env/requirements.txt

# Build documents (requires TeX Live or MikTeX + latexmk)
make paper
make poster
```

## Citation
See `CITATION.cff`.
