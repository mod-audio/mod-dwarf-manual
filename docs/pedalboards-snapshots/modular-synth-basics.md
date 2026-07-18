# Modular Synth Basics

This walks through building a simple modular-style synth voice on the Dwarf, entirely with plugins — no physical CV hardware needed. Read [Using CV (Control Voltage)](using-cv.md) first if you haven't already; this page assumes you know how to enable and assign a CV port.

## The building blocks

The Plugin Store's Control Voltage category includes a full modular toolkit (the AMS suite, ported from the open-source AlsaModularSynth project) alongside MOD's own CV utilities. The pieces relevant to a basic patch:

**Sound source**

- **AMS VCO3** — oscillator. Multiple waveforms (sine, square, triangle, sawtooth), with CV inputs for frequency and pulse-width modulation, plus sync.

**Shaping**

- **AMS VCF** — voltage-controlled filter. Several low-pass and band-pass flavors, plus high-pass and notch. Frequency and resonance can both be CV-modulated.
- **AMS VCA Lin** — linear voltage-controlled amplifier. This is what turns a CV envelope into audible volume changes.

**Modulation sources**

- **AMS Envelope** — a CV envelope generator (attack, decay, sustain, release), with extra hold, delay, and time-scale controls.
- **AMS LFO2** — a low-frequency oscillator for slow, repeating modulation (filter sweeps, vibrato, tremolo).
- **Random CV Generator** — outputs a new random value each time it's triggered, within a min/max range you set. Good for generative patches.

**Playing and utility**

- **Multi Button to CV** — turns a button press into a CV trigger, with hold-time and double-press detection. This is how you "play" a patch without a MIDI keyboard.
- **MIDI to CV mono / MIDI to CV Poly** — converts incoming MIDI notes into pitch, velocity, and gate CV, if you'd rather play from a MIDI keyboard.
- **CV Parameter Modulation** — shapes a CV signal (base value + modulation depth) before it hits a target parameter. Covered in more depth in [Using CV](using-cv.md).
- **Slew Rate Limiter** — smooths sudden CV jumps into a ramp, useful for portamento-style pitch glides or softening a Random CV Generator's steps.
- **CV Meter** — a visual level meter for a CV signal, handy for checking a patch is actually doing what you think it is while you build it.

## Building a basic voice

This patch: press a button, hear a note with a shaped envelope and a filter sweep.

1. **Add AMS VCO3** to your pedalboard and connect its audio output to the Dwarf's output.
2. **Add Multi Button to CV.** This will be your "key." Assign it to a footswitch (see [Assigning Controls](../first-pedalboard/assigning-controls.md)) so you can trigger it live from the device.
3. **Add AMS Envelope.** Connect the Multi Button's press-output to the Envelope's gate/trigger input.
4. **Add AMS VCA Lin.** Route the audio from AMS VCO3 through it, then connect AMS Envelope's CV output to the VCA's CV input. Now the button press shapes the note's volume over time instead of just switching it on and off.
5. **Add AMS VCF** between the VCO and the VCA (or after the VCA, if you prefer to filter the shaped signal). Route the audio through it.
6. **Add AMS LFO2** and connect its CV output to the VCF's Frequency CV input, for a slow filter sweep. Turn down the LFO's depth if the effect is too strong — or route it through [CV Parameter Modulation](using-cv.md#cv-parameter-modulation) first for more control over the range.
7. Save the pedalboard, then trigger your footswitch and listen.

From here, swapping VCO3's waveform, changing the envelope's attack/release, or adding a second LFO into the mix gets you a long way toward a proper synth voice — all without leaving the pedalboard.

## Going further

- **Play it from a MIDI keyboard** instead of a footswitch: swap Multi Button to CV for **MIDI to CV mono**, connect a USB or DIN MIDI keyboard (see [MIDI Controllers & Expression Pedals](../connecting-gear/midi-expression.md)), and route its Pitch and Gate outputs into your VCO and Envelope instead.
- **Generative/random patches**: feed a **Random CV Generator**, triggered periodically, into a pitch or filter parameter — pair it with a **Slew Rate Limiter** so pitch jumps glide instead of stepping abruptly.
- **Macro control**: once a patch has several modulation sources, use **Control to CV** to tie multiple parameters to one physical knob — see [Using CV](using-cv.md#macro-controls).
- **Debugging a patch**: if something isn't moving the way you expect, drop a **CV Meter** on the signal in question to confirm it's actually present and in the range you think it is.

## Reference patches

The community has shared full synth pedalboards built this way — worth loading one and taking it apart to see how the routing works:

- [MOD CV Drum Machine](https://pedalboards.moddevices.com/pedalboards/5e4ff5672564d41c3fe1b5a1) — a standalone drum machine built from CV plugins.
- The GSYNTH series ([Bass](https://pedalboards.moddevices.com/pedalboards/62700e60e17f17a179fe75ab), [Lead](https://pedalboards.moddevices.com/pedalboards/62700f87656fdba0ab347107), [Chords](https://pedalboards.moddevices.com/pedalboards/62700f07e17f17a179fe75ac), [Flexible](https://pedalboards.moddevices.com/pedalboards/62700cff656fdba0ab347093)) — guitar-into-synth patches built around the same AMS modules used above.

---

Next: [Connecting Gear](../connecting-gear/midi-expression.md)
