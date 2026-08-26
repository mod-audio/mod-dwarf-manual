# Maintaining the MOD Dwarf Manual — A Guide for João (or Whoever's Next)

Welcome! This document assumes you've never touched this project before. If you get stuck anywhere, that's normal — ask Gianfranco, and consider adding a note here so the next person doesn't hit the same wall.

There are two ways to work on this manual, and you don't need to pick just one:

- **Easy mode** — edit files directly on the github.com website. No installs, no terminal. Best for small text fixes and adding images.
- **Terminal mode** — work on your own computer, so you can preview your changes before anyone else sees them. Best for bigger edits, or once you're comfortable.

Start with Easy mode. Move to Terminal mode whenever a change feels big enough that you'd like to double-check it first.

## A few words you'll run into

- **Repository (or "repo")** — the project folder itself, including its full history. This one lives at `github.com/mod-audio/mod-dwarf-manual`.
- **Markdown** — the plain-text format the manual is written in. It looks like normal text with a few symbols (`#` for a heading, `**bold**` for bold). You don't need to learn it all at once — copy the pattern from a page that already looks the way you want.
- **Commit** — one saved change, with a short message describing what changed. Think of it like a save point.
- **Push** — sending your commits from your computer up to github.com, where they become real.
- **Terminal** — the text-based command window on your computer (Terminal on macOS, PowerShell/Git Bash on Windows). Only needed for Terminal mode.

## Easy mode: editing text on github.com

No installation needed. Do this in a web browser, while logged into GitHub.

1. Go to `github.com/mod-audio/mod-dwarf-manual` and open the `docs` folder, then click through to the file you want to change (they're organized by section — `getting-started`, `playing-live`, and so on, matching the manual itself).
2. Click the **pencil icon** (top-right of the file view) to edit it.
3. Make your change directly in the text box. It's plain text, so just type normally.
4. Scroll down to "Commit changes." Write a short, plain description of what you changed (e.g. "Fix typo in tuner instructions").
5. Click "Commit directly to the `main` branch," then the green "Commit changes" button.

That's it — within a minute or two, the live site updates automatically. No extra step required.

## Easy mode: adding an image on github.com

1. In the repo, navigate into `docs/assets/`, then into the subfolder for the relevant section (e.g. `docs/assets/playing-live/`). If the subfolder doesn't exist yet, you can create it in step 2 by typing a folder name before the file name.
2. Click **Add file → Upload files** (top right).
3. Drag your image in, or click to browse for it. Give it a clear, descriptive filename before uploading if you can — lowercase, words separated by dashes, like `tuner-tool-screen.png` — rather than whatever cryptic name it came with.
4. Commit the upload the same way as a text change (see above).
5. Now go edit the Markdown page where the image should appear (same process as above) and add this line wherever you want it to show up:

   ```
   ![Short description of the image](../assets/playing-live/tuner-tool-screen.png)
   ```

   The path starts with `../assets/` because you're linking from inside a page one folder below `docs/`. Copy the pattern from a page that already has an image if unsure. Readers can click any image to see it full-size.

## Terminal mode: one-time setup

Do this once, on whichever computer you'll be working from.

You need two programs installed: **git** and **Python 3**. If you're not sure whether you have them, open a terminal and type `git --version` and `python3 --version` — if you see a version number back, you're set; if you see "command not found," install them first (Gianfranco or a search for "install git on Mac/Windows" will get you there).

Then, in the terminal:

```bash
git clone git@github.com:mod-audio/mod-dwarf-manual.git
cd mod-dwarf-manual
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

What this does, line by line: downloads a copy of the repo to your computer; moves your terminal into that folder; creates an isolated space for this project's tools so they don't interfere with anything else on your machine; switches into that space; installs the tools the manual needs to build a preview.

Every time you come back to work in a new terminal window, re-run just this one line first:

```bash
source .venv/bin/activate
```

## Terminal mode: making a change

1. Make sure you've run `source .venv/bin/activate` (see above).
2. Open the file you want to edit in any text editor (VS Code, TextEdit, whatever you're comfortable with) — it's just `docs/...` followed by the section and filename.
3. Preview your change before anyone else sees it: run `mkdocs serve`, then open `http://127.0.0.1:8000` in your browser. The preview updates automatically each time you save the file.
4. Once it looks right, press Ctrl+C in the terminal to stop the preview, then run these three commands:

   ```bash
   git add -A
   git commit -m "describe what you changed here"
   git push
   ```

5. On github.com, click the "Actions" tab and wait for a green checkmark — that means the live site has finished updating. Then check the real site to confirm.

## Adding a brand new page

Whichever mode you're using:

1. Create the new `.md` file in the right subfolder of `docs/`.
2. Open `mkdocs.yml` and add the new page to the `nav:` list, in the spot you want it to appear in the menu. **This step is easy to forget** — if a page isn't listed here, it won't show up on the site even though it exists.
3. Add a line like `Next: [Page Title](../folder/file.md)` at the bottom, pointing to whatever page should logically come after it — every existing page does this.

## How to write for this manual

The manual is organized around what the reader is trying to do (get sound out of the box, build a pedalboard, connect gear...) rather than around the product's internal parts. A few guidelines:

- Write like you're standing next to someone's Dwarf, talking them through it — short, direct sentences, not formal reference-manual language.
- If you're not sure a detail is correct, don't guess. Flag it instead (see below) so it doesn't quietly become wrong information in a hardware manual.
- If the same information already lives on another page, link to it (`[Settings](../settings/audio-io.md)`) instead of retyping it. Easier to keep one true copy updated than several.

### Flagging something you're not sure about

Copy this pattern into a page when you're documenting something you haven't personally verified:

```
!!! warning "Needs SME confirmation"
    Explain what's unverified and who should confirm it.
```

Or for a feature that hasn't shipped yet:

```
!!! warning "Pending implementation — content not final"
    Explain what's speculative and what needs confirming once it ships.
```

These show up as an orange callout box on the page, so nobody mistakes it for confirmed fact. Once you've verified it against a real device, rewrite the section properly and delete the box.

## Getting images from the old wiki

The old wiki (`wiki.mod.audio`) has plenty of existing photos and diagrams of the Dwarf that are perfectly reusable here — no need to take new ones from scratch for things that haven't changed.

One thing to know: don't just copy the image's web address and link straight to the wiki. Save a real copy and upload it into this repo instead (see "adding an image" above). If the wiki page ever gets edited or reorganized, a linked image can silently disappear from this manual — a copy here can't.

**Getting the best-quality version:** wiki image pages usually show you a shrunk-down preview. To get the full-size original, look at the image's web address — it'll look something like this:

```
https://wiki.mod.audio/images/thumb/b/b1/Dwarf_FrontPanel.png/500px-Dwarf_FrontPanel.png
```

Delete the `thumb/` part and the `500px-` part, and you get the original full-size file:

```
https://wiki.mod.audio/images/b/b1/Dwarf_FrontPanel.png
```

Open that address in your browser, right-click the image, and save it — that's the file to upload.

### Where the missing images are marked

Most of this is done. The wiki-sourced images have been downloaded (via `download-wiki-images.sh`) and wired into the pages as real `![description](../assets/section/filename.png)` lines — **107 images across the manual**.

What's left are **7 genuine content gaps** — spots where no wiki source ever existed (a fresh device photo, or a screen that hasn't shipped yet), each still marked with an invisible HTML comment in the page's source:

```
<!-- IMAGE NEEDED: what the image should show
     No wiki source found — needs a fresh screenshot/photo
     Suggested: docs/assets/section/filename.png -->
```

To find them: search the `docs/` folder for the text `IMAGE NEEDED` (same way you'd search for "Needs SME confirmation" — see "Every OS release" below). Currently these are:

- `pedalboards-snapshots/backup-restore.md` and `maintaining/os-updates.md` — the wiki only shows the parent Settings page, not the specific Backup & Restore / Reboot & Update panel; needs a fresh screenshot of each panel.
- `pedalboards-snapshots/modular-synth-basics.md` — a screenshot of the finished example patch, once it's built and verified on a real Dwarf.
- `pedalboards-snapshots/drag-replace.md` — a before/after screenshot, once Drag & Replace Plugin actually ships.
- `connecting-gear/control-chain.md` — this one's really a content gap, not just an image: the Device Updates panel for Control Chain peripheral firmware isn't documented at all yet.
- `maintaining/factory-reset.md` — a photo of the device in recovery mode (blue LEDs).
- `playing-live/led-meters.md` — a close-up photo of the LED color states.

For each: take the photo/screenshot, upload it to the suggested path under `docs/assets/` (see "Easy mode: adding an image" above), then replace the HTML comment with a real image line.

## Every OS release

This is what actually keeps the manual accurate over time. When a new Dwarf OS version ships, work through this list:

1. **Read what changed** in the release — new features, bug fixes, anything visual.
2. **Write up anything new.** Check for pages marked "Pending implementation" (search for that phrase across the `docs/` folder) — if the feature just shipped, replace the placeholder with real, verified content.
3. **Re-check flagged pages.** Search for "Needs SME confirmation" — if you or someone with the device can now confirm those details, do so and remove the flag.
4. **Look at screenshots** on any page whose on-screen UI changed. Nothing will warn you automatically here — it just needs a look. Also worth a search for "IMAGE NEEDED" — if the release added or changed a screen that already has a marker, this is a natural time to knock a few out.
5. **Check nothing describes a feature that's been removed or renamed.**
6. **Preview before pushing.** Run `mkdocs build --strict` in the terminal — it'll fail loudly if you've left a broken link, which is much better to catch now than after it's live.
7. **Push, wait for the green checkmark on Actions, spot-check the live site.**

If ALABS Starless features get merged into an official release, they'll need new pages — that scope hasn't been decided yet, so hold off writing anything for them until Gianfranco confirms what's actually shipping.

## Who to ask

- **Should the manual say X, or is this in scope?** — Gianfranco.
- **Is this technical detail actually correct?** — falkTX, or whoever owns that part of the OS.
- **Does this match how we talk about the product elsewhere?** — check the forum and marketing material for the same feature.

## If something feels like you broke it

You didn't, probably. Every change is a commit, which means every past version is still saved — nothing is ever truly lost. If a page looks wrong after you pushed, you can always go back into it and fix it the same way you edited it the first time. When in doubt, ask before worrying.

## Toolchain

See the "Toolchain note" in `README.md` for the current state of MkDocs vs. MkDocs 2.0 vs. Zensical — worth a skim if you're setting up on a new machine and something doesn't install the way you'd expect.
