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

## Toolchain note

MkDocs 1.x (the version this site is built on) is unmaintained upstream, and MkDocs 2.0 — a separate, incompatible rewrite with no plugin system — is in pre-release from a different maintainer. The Material for MkDocs team (whose theme and plugins this site depends on) has forked their own path forward as [Zensical](https://zensical.org), aiming for drop-in compatibility with existing `mkdocs.yml` projects like this one.

`requirements.txt` pins `mkdocs<2` so builds won't silently break. No action needed now — this is written down so whoever picks up maintenance later knows why, and can evaluate switching the build engine to Zensical once it's stable, without needing to restructure the content.
