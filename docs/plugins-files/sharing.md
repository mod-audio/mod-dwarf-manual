# Sharing Presets & Pedalboards

!!! warning "Pending implementation — content not final"
    Export and import of presets and pedalboards arrive with MOD OS 1.15, which is a test release for now (1.15 RC1). On 1.14 there are no Export / Import buttons. Remove this box once 1.15 is the stable release.

You can save a plugin preset or a whole pedalboard as a file on your computer, and load it on another Dwarf, a Duo X, a Duo, or MOD Desktop. Handy for moving boards between units, keeping a copy of a board you're proud of, or sending a preset to a friend or to the plugin's developer.

- A plugin preset becomes a **.modpreset** file.
- A pedalboard becomes a **.modpedalboard** file.

## Turning the buttons on

The buttons are off by default. Turn on **Export and Import of presets and pedalboards** in Settings → User Interface (see [Web UI Settings](../settings/web-ui-settings.md#user-interface)), then go back to the main screen. If you had Developer Mode on in 1.14, it is already on. MOD Desktop always shows them.

## Plugin presets

<!-- IMAGE NEEDED: A plugin's settings window with the EXP and IMP buttons in its preset bar
     Suggested: docs/assets/plugins-files/preset-exp-imp.png -->

In a plugin's settings window, the preset bar gets two buttons:

- **EXP** saves the plugin's current settings to a file named after the plugin and the preset, for example `Shiroverb-Big room.modpreset`. Your preset list doesn't change.
- **IMP** loads a .modpreset file as a new **user preset** of that plugin, and selects it. A preset with the same name as one you already have is added next to it; nothing is overwritten.

A preset file holds the plugin's settings only. If the preset uses files (a NAM model, an IR, a sample), they are not included: copy them over separately, and the Dwarf tells you so when you export or import.

When importing, the Dwarf warns you if the preset was made with another version of the plugin, and refuses a preset made for a different plugin or by a newer MOD OS.

## Pedalboards

<!-- IMAGE NEEDED: The Pedalboards Library with the EXP link on a pedalboard and the "Import pedalboard..." button in the header
     Suggested: docs/assets/plugins-files/pedalboard-exp-import.png -->

In the Pedalboards Library:

- Each pedalboard gets an **EXP** link next to the delete button. It saves the **last saved version** of the pedalboard to a .modpedalboard file. If the open pedalboard has unsaved changes, save it first, or the file won't have them. Factory pedalboards can be exported too.
- **Import pedalboard...** at the top of the library loads a .modpedalboard file.

The file holds the whole pedalboard: plugins and their settings, cables, snapshots, assignments and its picture. It does **not** hold the plugins themselves or your user files.

An imported pedalboard opens as an **unsaved** pedalboard, in place of the one you had open: "Imported "<title>": save it to add it to your pedalboards". Save it to keep it.

- **Missing plugins** are offered for install from the Plugin Store, like when you load any pedalboard.
- **Missing user files** (NAM models, IRs, ...) are listed in a message. Copy them to the Dwarf with the same names (see [Loading Files into Plugins](plugin-files.md)).

A pedalboard made by a newer MOD OS than yours is refused: update the Dwarf first.

## Pedalboards from a newer MOD OS

From 1.15 on, each saved pedalboard records the version of the pedalboard format. If you open a pedalboard saved by a newer MOD OS (for example one copied from another unit), the Web UI warns you: it plays as usual, but saving it on your Dwarf drops what your version doesn't know. Update the Dwarf before saving over it.

---

Next: [Connecting Gear](../connecting-gear/midi-expression.md)
