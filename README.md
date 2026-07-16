# MOD Dwarf Manual

Source for the MOD Dwarf user manual, built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) and published to GitHub Pages.

## Local development

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

Open http://127.0.0.1:8000 to preview.

## Structure

- `docs/` — all manual content, organized by user journey (Getting Started, Your First Pedalboard, Playing Live, etc.) rather than by device vs. Web UI.
- `mkdocs.yml` — site config and navigation.
- Pages marked with a "Status: outline stub" admonition are placeholders — see the open items in the project tracker for what's written vs. pending.

## Publishing

Pushes to `main` build and deploy automatically via GitHub Actions (`.github/workflows/deploy.yml`) to GitHub Pages.

## Maintenance

This manual is updated as part of each Dwarf OS release checklist — content and screenshots should be reviewed for accuracy against the release's actual changes before publishing.
