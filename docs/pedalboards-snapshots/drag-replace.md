# Drag & Replace Plugin

!!! info "New in 1.14"
    On earlier releases, swapping a plugin meant removing it, adding the new one and drawing the cables again.

Drag & replace swaps one plugin on your pedalboard for another, keeping the cables around it.

1. In the Web UI, find the new plugin in the [Plugins Bar](../first-pedalboard/building.md).
2. Drag it onto the plugin you want to replace. When the drop will work, the plugin on the board is highlighted.
3. Let go. The old plugin is removed, the new one takes its place, and the audio and MIDI cables are connected again.

## Which plugins can replace each other

Only plugins of the same kind:

- a mono effect (one audio input, one audio output) for another mono effect;
- a stereo effect (two audio inputs and two audio outputs) for another stereo effect;
- an instrument (MIDI in, audio out) for another instrument;
- a MIDI effect (MIDI in, MIDI out) for another MIDI effect.

If the plugin on the board is not highlighted, the two are not the same kind: add the new plugin next to it instead.

## What carries over

- **Audio and MIDI cables** are reconnected by position: what went into the old plugin's first input goes into the new plugin's first input, and so on. If the new plugin has fewer inputs or outputs, the extra cables are left out, and the Web UI shows "Failed to automatically reconnect all ports" if some could not be made.
- **CV cables, knob settings and control assignments** do not carry over: the new plugin starts from its own defaults. Set it up and assign its controls again, then save the pedalboard.

<!-- IMAGE NEEDED: A before/after screenshot of dragging a replacement plugin onto an existing one
     Suggested: docs/assets/pedalboards-snapshots/drag-replace.png -->

---

Next: [Backup & Restore](backup-restore.md)
