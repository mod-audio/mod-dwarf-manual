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
- Pages marked with a "Needs SME confirmation" or "Pending implementation" admonition have unverified or not-yet-shipped content — see `CONTRIBUTING.md`.

## Publishing

Pushes to `main` build and deploy automatically via GitHub Actions (`.github/workflows/deploy.yml`) to GitHub Pages.

## Maintenance

See **[CONTRIBUTING.md](CONTRIBUTING.md)** for the full guide: local setup, how to edit and add pages, the writing style, image handling, and the checklist to work through on every OS release.

## Toolchain note

MkDocs 1.x (the version this site is built on) is unmaintained upstream, and MkDocs 2.0 — a separate, incompatible rewrite with no plugin system — is in pre-release from a different maintainer. The Material for MkDocs team (whose theme and plugins this site depends on) has forked their own path forward as [Zensical](https://zensical.org), aiming for drop-in compatibility with existing `mkdocs.yml` projects like this one.

`requirements.txt` pins `mkdocs<2` so builds won't silently break. No action needed now — this is written down so whoever picks up maintenance later knows why, and can evaluate switching the build engine to Zensical once it's stable, without needing to restructure the content.
