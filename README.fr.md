# Classification de la Santé Fœtale (SY09)

Ce dépôt regroupe :
- **Papier (LaTeX + PDF)** : `paper/src/`, `paper/paper.pdf`
- **Soutenance (LaTeX + PDF)** : `poster/src/`, `poster/poster.pdf`
- **Notebook** : `notebooks/analysis.ipynb`

**Données** : jeu *Fetal Health Classification* (cardiotocographie). Téléchargez depuis Kaggle puis placez les fichiers sous `data/` (voir `data/README.md`).  
**Objectif** : analyser les variables CTG et classifier l'état fœtal (*normal*, *suspect*, *pathologique*).

## Reproductibilité
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r env/requirements.txt

# Construction des documents (latexmk requis)
make paper
make poster
```

## Citation
Voir `CITATION.cff`.
