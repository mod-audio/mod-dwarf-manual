# Drag & Replace Plugin

!!! warning "Pending implementation — content not final"
    This feature is on the OS backlog and hasn't shipped yet. The description below reflects the intended behavior from the feature spec, not a verified device. Rewrite this page against the real UI once it ships, and confirm the IO type mapping (FX, Instrument, MIDI, Meter, Audio-generator, MIDI-generator) with the dev team before publishing.

Drag & replace lets you swap one plugin for another in a pedalboard by dropping the new plugin directly on top of the one you want to replace — without manually rebuilding the connections around it.

The intent is that dropping a compatible plugin onto an existing one:

1. Removes the old plugin.
2. Inserts the new one in its place.
3. Reconnects the surrounding audio/MIDI/CV cables automatically, based on matching IO types.

Replacement only makes sense between plugins of compatible IO type (for example, an FX plugin for another FX plugin, an Instrument for another Instrument) — dropping a Meter onto an Audio-generator, for instance, wouldn't have a sensible connection mapping. The exact rules for which types are considered compatible are still being finalized.

---

Next: [Backup & Restore](backup-restore.md)
