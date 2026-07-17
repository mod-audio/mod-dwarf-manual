# Maintaining the MOD Dwarf Manual

This is the working guide for whoever keeps this manual up to date — written for João, but should work for anyone who picks it up after him. No prior experience with this specific toolchain assumed; basic comfort with a terminal is.

## What this is

The manual is a set of Markdown files (`docs/`) built into a website by MkDocs Material, and published automatically to GitHub Pages whenever `main` is pushed. There's no separate "publish" step — editing a file and pushing it live is the whole workflow.

## One-time setup

You need Python 3 and git installed. Then, from a terminal:

```bash
git clone git@github.com:mod-audio/mod-dwarf-manual.git
cd mod-dwarf-manual
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Repeat the `source .venv/bin/activate` step every time you come back to a new terminal session — it's what makes the `mkdocs` command available.

## Making a change

1. Activate the environment (`source .venv/bin/activate`, from inside the repo folder).
2. Open the relevant file in `docs/` and edit it — it's plain Markdown.
3. Preview locally: `mkdocs serve`, then open `http://127.0.0.1:8000`. It live-reloads as you save.
4. When it looks right: `git add -A`, `git commit -m "describe what changed"`, `git push`.
5. Check the Actions tab on GitHub for a green check, then check the live site (allow a minute or two — GitHub's CDN can lag slightly behind a fresh deploy).

## Adding a new page

1. Create the `.md` file in the right subfolder of `docs/` (follow the existing folder names — they map to the manual's sections).
2. Add it to the `nav:` list in `mkdocs.yml`, in the position you want it to appear. This file is the single source of truth for the site's navigation — a page not listed here won't show up in the menu even if it exists.
3. Give it a "Next: [...]" link at the bottom pointing to whatever page should come after it, matching the pattern used everywhere else.

## Writing style

The manual is organized by what the reader is trying to do, not by which part of the product (device vs. Web UI) happens to be involved — a single page should walk through both where needed. A few things that keep it consistent:

- Write like you're explaining it to someone standing next to the Dwarf, not like a reference manual entry. Short, direct sentences.
- Don't invent specifics you haven't verified — a wrong instruction in a hardware manual is worse than a missing one. If you're writing about something you haven't confirmed on a real unit, flag it rather than guess (see below).
- Cross-link liberally with relative Markdown links (`../settings/audio-io.md`) instead of repeating content that lives on another page.

### Flagging unverified or unfinished content

A few pages already use this pattern — copy it when you're in the same situation:

```
!!! warning "Needs SME confirmation"
    Explain what's unverified and who should confirm it.
```

or for features that haven't shipped yet:

```
!!! warning "Pending implementation — content not final"
    Explain what's speculative and what needs to be confirmed once it ships.
```

Search the repo for `Needs SME confirmation` and `Pending implementation` periodically — those are the open items waiting on someone (usually you, or Gianfranco) to verify against a real device and then delete the admonition once confirmed.

## Images and screenshots

- Store images under `docs/assets/`, or in a subfolder next to the page that uses them — either is fine, just keep it findable.
- Reference them with standard Markdown: `![alt text](../assets/whatever.png)`. Clicking an image opens a lightbox automatically (no extra markup needed).
- Keep source images reasonably high-resolution (1200px wide or more) even though the site displays them smaller — a future print/PDF export will need that headroom, and it's much easier to keep one good image than to maintain two versions.
- Screenshots go stale the moment the Web UI changes. There's no automatic check for this — it's a manual judgment call each release (see below).

## Every OS release

This is the part that actually keeps the manual honest. When a new Dwarf OS version ships, work through this before considering the manual "caught up":

1. **Read the release notes / changelog** for what shipped — new features, bug fixes, UI changes.
2. **Update or write pages for anything new.** Check `pedalboards-snapshots/drag-replace.md` and any other page marked "Pending implementation" — if it just shipped, rewrite it against the real UI and remove the warning.
3. **Re-check flagged pages.** Search for `Needs SME confirmation` — if this release (or someone with hands-on access) can confirm those details now, lock them in and remove the flag.
4. **Review screenshots** on any page whose relevant UI changed. There's no tooling to catch this automatically — it means actually looking.
5. **Check for removed/renamed features** that might leave a page describing something that no longer exists.
6. **Build and preview locally** (`mkdocs serve`) before pushing, to catch broken links or formatting issues — `mkdocs build --strict` will fail loudly on a broken internal link, which is worth running once before you push.
7. **Push, confirm the Actions run is green, spot-check the live site.**

If ALABS Starless features get merged into an official release, they'll need new pages under Playing Live and Working with Pedalboards & Snapshots — that scope hasn't been decided yet, so don't write speculative content for them until Gianfranco confirms what's actually shipping.

## Who to ask

- **Scope or copy decisions** (what the manual should say, what's in/out): Gianfranco.
- **Technical accuracy on the OS/stack itself**: falkTX, or whoever owns the relevant backlog item.
- **Community-facing tone questions**: check how the forum and existing marketing material talk about the same feature, for consistency.

## Toolchain

See the "Toolchain note" in `README.md` for the current state of MkDocs vs. MkDocs 2.0 vs. Zensical — worth a skim if you're setting up a new machine and something doesn't install the way you expect.
