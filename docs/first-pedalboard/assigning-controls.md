# Assigning Controls

Assigning lets you map a plugin parameter to a physical control — an encoder, a footswitch, a MIDI controller, or a Control Chain device — so you can tweak it live without opening the Web UI.

## Creating an assignment

![The row of icons on top of each plugin in the Constructor (gear, info, etc.), and the parameter window it opens (1/2)](../assets/first-pedalboard/PluginIcons.png)
![The row of icons on top of each plugin in the Constructor (gear, info, etc.), and the parameter window it opens (2/2)](../assets/first-pedalboard/PluginParameterWindow.png)

![The gear icon above a plugin, and the assign icon on a parameter box](../assets/first-pedalboard/CogwheelPlugins.png)

1. Click the gear icon above the plugin whose parameter you want to assign.
2. Click the assign icon (bottom-right corner of the parameter box). This opens the assignment dialog.

![The assignment dialog box with its Device / MIDI / Control Chain / CV tabs](../assets/first-pedalboard/AssignmentsWindow.png)

3. Pick the tab for where you want the control to live: **Device**, **MIDI**, **Control Chain**, or **CV**.

Not every parameter can go to every interface type — the dialog only shows valid options for that parameter.

## Assigning to the Dwarf's own controls

Select the **Device** tab. The Dwarf uses a pagination system: 8 main pages, each with 3 encoder sub-pages, so the three encoders can each hold up to 24 parameters and the footswitches up to 8 each.

1. Select the control you want to assign to, and — for encoders — the sub-page.
2. Click Save.

![The Device tab's page/sub-page picker for a Dwarf assignment (1/2)](../assets/first-pedalboard/DWARF_AssigningPluginsParametersToControls1.png)
![The Device tab's page/sub-page picker for a Dwarf assignment (2/2)](../assets/first-pedalboard/DWARF_AssigningPluginsParametersToControls2.png)

See [Controls Overview](../playing-live/controls-overview.md) for how pages and sub-pages work on the device itself.

## Assigning to a MIDI controller

1. Select the **MIDI** tab and click Save.
2. Move the control on your MIDI controller (turn the knob, press the button) — the assignment locks in as soon as the Dwarf sees the MIDI message.

![The MIDI tab mid-assignment, and the "move a control to learn" pop-up (1/2)](../assets/first-pedalboard/AssigmentToMIDIController.png)
![The MIDI tab mid-assignment, and the "move a control to learn" pop-up (2/2)](../assets/first-pedalboard/MIDIAssignmentPopUp.png)

This works for controllers connected via the MIDI input port or the USB-A host port.

## Assigning to a Control Chain device

![The Control Chain tab with a connected device listed in the dropdown (1/2)](../assets/first-pedalboard/AssigningToControlChain.png)
![The Control Chain tab with a connected device listed in the dropdown (2/2)](../assets/first-pedalboard/AssigningToNOControlChain.png)

Select the **Control Chain** tab and pick the interface from the dropdown. If nothing's listed, no Control Chain device is currently connected.

## Assigning CV

CV assignment is a two-step process:

1. Enable a CV output from a CV-generating plugin already in your pedalboard (click the CV ports button, check the outputs you want, label them).

![The "Manage CV Ports" button and the resulting checkbox/label list (1/2)](../assets/first-pedalboard/ManageCVPortsButton.png)
![The "Manage CV Ports" button and the resulting checkbox/label list (2/2)](../assets/first-pedalboard/LabelCV.png)

2. In the target parameter's assignment dialog, select the **CV** tab and pick the labeled output.

For shaping the CV signal itself and driving several parameters from one source, see [Using CV (Control Voltage)](../pedalboards-snapshots/using-cv.md).

---

Next: [Snapshots](snapshots.md)
