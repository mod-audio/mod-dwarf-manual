# Installing OS Updates

Regular OS updates are installed through the Web UI, not the device menu.

## From the Web UI (normal path)

<!-- IMAGE NEEDED: The update icon in the bottom bar of the Web UI with its "An update is available" message, and the update window that opens when you click it ("Download" button)
     No wiki source found — needs a fresh screenshot taken while an update is on offer
     Suggested: docs/assets/maintaining/update-icon.png -->

The Web UI checks for updates by itself every time you open it. Your computer needs to be
connected to the internet, and the Dwarf connected by USB — updating over Bluetooth does
not work.

1. Look at the update icon in the bottom bar of the main screen. When a new release is
   available it says "An update is available, click to learn more".
2. Click the icon, then click **Download**.
3. When the download is complete, click **Upgrade Now**. The Dwarf installs the update
   and restarts.

There is no "check for updates" button in Settings. From 1.15, Settings → Updates shows the
installed version and has **Start update mode** for the manual update below.

Back up first — see [Backing Up Before You Update](backups.md).

## Manual update (maintenance / recovery path)

![The System Upgrade settings screen on the device](../assets/maintaining/Dwarf_SystemUpgradeMenu.png)

Use this only if the Web UI update path isn't available. From the device: Settings → System Upgrade. This is intended for maintenance situations; in normal use, updates go through the Web UI.

If the device gets stuck mid-update or won't boot afterward, see [Factory Reset & Reinstall](factory-reset.md) — the Dwarf can always be reinstalled, it isn't software-brickable.

## Trying a test release

Release candidates go out to testers before each final release, installed the way described
here.

!!! info "New in 1.14"
    The test-release program started with the 1.14 candidates, published on the MOD forum in
    September 2026 — on 1.13.5 and earlier, there was no way to try a release before it went
    stable.

Test releases are announced on the MOD forum and by email. Each one has its own forum topic
with the download links and checksums. You install it by hand:

1. Make sure the Dwarf is already on **1.13.5** — earlier versions cannot install a test
   release file. If it is on an older version, install 1.13.5 first from the
   [Releases](https://wiki.mod.audio/wiki/Releases) page (same manual path), then the test
   release.
2. Download the file for the Dwarf from the announcement.
3. On the device: Settings → System Upgrade, then copy the file to the Dwarf when it appears
   as a USB drive. This is the same path as any manual update.

If the screen briefly shows **"invalid file"** and then goes back to asking for the file to be
copied, the Dwarf is on a version older than 1.13.5. Nothing has been changed on the device —
install 1.13.5 first, then try again.

A test release does not show up on the update icon on its own: the icon only
offers the stable release. The "Report a problem" button in the Web UI opens the test
release's forum topic with your device details ready to paste.

Going back is the same manual install with an earlier image (for example 1.13.5). The Dwarf
accepts an older image without complaint. Back up first either way — see
[Backing Up Before You Update](backups.md).

---

Next: [Backing Up Before You Update](backups.md)
