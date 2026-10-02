# USB Audio (Dwarf as an Audio Interface)

!!! warning "Pending implementation — content not final"
    The port names on this page ("USB From Computer", "USB To Computer") arrive with MOD OS 1.14, which is a test release for now (1.14 RC4). On 1.13.5 the same ports are called "USB Audio Capture" and "USB Audio Playback". Remove this box once 1.14 is the stable release.

With USB audio turned on, the Dwarf shows up on your computer as a sound card, over the same USB cable you use for the Web UI. You can play sound from the computer into a pedalboard, and record a pedalboard on the computer. It carries two channels in each direction, at 48 kHz.

## Turning it on

!!! warning "Needs SME confirmation"
    The exact name and place of the USB audio setting in the device menu has not been checked against a Dwarf screen for this page. Confirm it on a device, add a screenshot, and remove this box.

Turn USB audio on in the device's USB settings, then restart the Dwarf with the USB cable connected to the computer.

## Connecting it on the pedalboard

Four extra ports appear on the pedalboard, next to the normal inputs and outputs:

| Port | What it carries |
|---|---|
| USB From Computer 1 / 2 | What the computer plays (left / right) |
| USB To Computer 1 / 2 | What the computer records (left / right) |

They work like any other input or output: nothing happens until you draw a cable.

- To hear the computer through the Dwarf, connect **USB From Computer 1 / 2** to the outputs, or to a plugin first.
- To record your pedalboard, connect the end of your chain to **USB To Computer 1 / 2** as well as to the outputs.

## What your computer calls the Dwarf

!!! warning "Needs SME confirmation"
    Names checked on macOS and on one Linux desktop with MOD OS 1.14 RC4. Windows has not been checked. Proper names are planned for a later release; update this table when they ship.

| Computer | Name you will see |
|---|---|
| macOS | Two devices: "Playback Inactive" (the output) and "Capture Inactive" (the input) |
| Linux desktop | "Multifunction Composite Gadget" |

The names are odd, but it is the Dwarf. "Inactive" is only part of the name; it does not mean the sound is off.

## If you hear nothing

- Check the cables on the pedalboard first: the USB ports do nothing until they are connected.
- Check the output volume in [Settings](../settings/audio-io.md). The output LEDs show the level before the output volume, so they can light up while nothing comes out. See [LED Meters](../playing-live/led-meters.md).
- The first fraction of a second of a sound can be missing while the Dwarf locks onto the computer's clock. That is normal.

---

Next: [Settings & Configuration](../settings/audio-io.md)
