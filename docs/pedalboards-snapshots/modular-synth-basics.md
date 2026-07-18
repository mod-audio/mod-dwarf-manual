# Modular Synth Basics

!!! note "Scope of this page"
    This page covers CV techniques confirmed available on the **Stable** update channel today. A fuller "build an oscillator/filter/amplifier synth voice from scratch" tutorial would need the AMS modular plugin suite (oscillators, filters, VCAs, envelopes, a sequencer), which isn't on Stable yet — see [Confirming Stable availability](#confirming-stable-availability) below before adding anything from that suite to this page.

This walks through modular-style CV patching on the Dwarf using only what's confirmed on Stable — no physical CV hardware needed, and no plugins that require enabling beta visibility in the Web UI. Read [Using CV (Control Voltage)](using-cv.md) first if you haven't already; this page assumes you know how to enable and assign a CV port.

Since Stable doesn't currently include a CV-driven oscillator, filter, or VCA, this isn't "build a synth from nothing" — it's closer to what a lot of guitarists and electronic players actually want anyway: using CV to make your existing pedalboard react and move on its own, driven by your playing or by a generator, instead of everything sitting at fixed values.

## The building blocks (confirmed on Stable)

**Turning something into CV**

- **Audio to CV** — converts an audio signal's amplitude into a CV signal.
- **Audio to CV Pitch** — tracks the pitch of an incoming audio signal (your guitar, say) and outputs it as CV.
- **MIDI to CV mono / MIDI to CV Poly** — converts incoming MIDI notes into pitch, velocity, and gate CV.

**Shaping and generating CV**

- **CV Parameter Modulation** — takes a CV signal and applies it to a base value with an adjustable modulation depth, so you can dial in how strongly a source affects a target. Full detail on [Using CV](using-cv.md#cv-parameter-modulation).
- **Random CV Generator** — outputs a new random value, within a min/max range, each time it's triggered.
- **Slew Rate Limiter** — smooths sudden CV jumps into a ramp, useful for gliding between values instead of stepping abruptly.
- **CV Round / CV ABS** — small math utilities for CV signals (rounding a value, or making it always positive).

**Logic, routing, and triggering**

- **Logic Operators** — AND/OR/XOR/NAND/NOR/XNOR/INV logic on CV/gate signals, for combining triggers or gates from more than one source.
- **CV Range Divider** — remaps a CV range, with sample-and-hold and reset-to-zero modes.
- **CV Switchbox** — routes a CV signal between multiple sources/destinations.
- **Multi Button to CV / CV Gate** — turns a button press or gate condition into a CV trigger.

**Monitoring**

- **CV Meter** — a visual level meter for a CV signal, useful for confirming a patch is actually doing what you expect while you build it.

## A patch you can build today: pitch-reactive filtering

This uses your own playing as the modulation source, rather than a synthesized one:

1. Add **Audio to CV Pitch**, and feed it the audio from your guitar or mic input (or from earlier in your chain).
2. Add any filter plugin you'd normally use (an EQ, wah, or filter effect already in your pedalboard) later in the chain.
3. Enable Audio to CV Pitch's CV output (Manage CV Ports), and assign it to the filter's cutoff/frequency parameter — see [Enabling and assigning a CV source](using-cv.md#enabling-and-assigning-a-cv-source).
4. Route that assignment through **CV Parameter Modulation** if you want to dial in exactly how much your pitch pushes the filter, rather than using its full range.

Now the filter tracks what you're playing instead of sitting still — higher notes open the filter, lower notes close it (or the reverse, depending on the range you set).

## A generative patch you can build today

1. Add a **Random CV Generator**, with a sensible min/max range for whatever you're targeting (say, a delay time or filter cutoff).
2. Trigger it periodically — a **Multi Button to CV** you tap by hand, or a MIDI clock/note source through **MIDI to CV mono**, both work as a trigger.
3. Add a **Slew Rate Limiter** after it so the parameter glides between random values instead of jumping.
4. Assign the Slew Rate Limiter's output to your target parameter.

## Confirming Stable availability

Before adding any plugin to this manual as if it's generally available, confirm it's actually on the Stable update channel — don't rely on a plugin's individual store page loading, or on it appearing in search results, since both can reflect plugins that exist in MOD's database without being published to Stable. Ask falkTX or the dev team owning the relevant backlog item to confirm before publishing (see "Who to ask" in `CONTRIBUTING.md`). If a plugin turns out to be beta-only, it's still fine to have it enabled and tested on a personal device (Advanced Settings → User interface → "Show beta plugins"), just don't present it in the manual as generally available until it's confirmed on Stable.

---

Next: [Connecting Gear](../connecting-gear/midi-expression.md)
