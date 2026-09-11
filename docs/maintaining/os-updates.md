# Installing OS Updates

Regular OS updates are installed through the Web UI, not the device menu.

## From the Web UI (normal path)

<!-- IMAGE NEEDED: The Reboot & Update panel under Web UI Settings → Basic, with the "check for update" / install button
     No exact wiki source found — the wiki shows the parent "Basic" settings page (https://wiki.mod.audio/images/5/56/MODWebGUI_SettingsPage.png, from "MOD Web GUI User Guide") but not a screenshot of the Reboot & Update panel itself; needs a fresh screenshot of that specific panel
     Suggested: docs/assets/maintaining/reboot-update-panel.png -->

1. Open Settings → Reboot & Update.
2. Follow the prompts to check for and install the latest release.
3. The device reboots automatically when done.

Back up first — see [Backing Up Before You Update](backups.md).

## Manual update (maintenance / recovery path)

![The System Upgrade settings screen on the device](../assets/maintaining/Dwarf_SystemUpgradeMenu.png)

Use this only if the Web UI update path isn't available. From the device: Settings → System Upgrade. This is intended for maintenance situations; in normal use, updates go through the Web UI.

If the device gets stuck mid-update or won't boot afterward, see [Factory Reset & Reinstall](factory-reset.md) — the Dwarf can always be reinstalled, it isn't software-brickable.

## Trying a test release

!!! warning "Pending implementation — content not final"
    MOD is preparing a Testing channel: release candidates (for example 1.14 RC1) go out to
    testers before the final release. Details below describe the plan; confirm against the
    announcement once the first candidate is published.

Test releases are announced on the MOD forum and by email. There are two ways to get one:

- **Registered device:** if your Dwarf is registered and MOD has added it to the testing
  group, the candidate shows up in Settings → Reboot & Update like a normal update.
- **Manual install:** download the candidate image from the announcement and install it
  from the device: Settings → System Upgrade, then copy the file to the Dwarf when it
  appears as a USB drive. This is the same path as any manual update.

Going back is the same manual install with the current stable image (1.13.5). The Dwarf
accepts an older image without complaint. Back up first either way — see
[Backing Up Before You Update](backups.md).

---

Next: [Backing Up Before You Update](backups.md)
