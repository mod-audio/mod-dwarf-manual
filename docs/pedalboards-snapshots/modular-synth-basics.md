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
- **AMS LFO2** — a low-frequency oscillator for slow, repeating modulation (filter sweeps, vibrato, tremolo). Comes in a free-running (Freq) and tempo-synced variant.
- **AMS Noise2** — a noise source (multiple noise types) that also doubles as a random CV generator (Random Rate, Random Level controls).
- **AMS Sample&Hold** — samples whatever CV is at its input each time it receives a trigger, and holds that value until the next trigger. The classic modular way to turn noise into stepped random CV — feed AMS Noise2 into it.
- **AMS Sequencer** — a proper CV step sequencer, in 8/12/16/24/32-step sizes. Each step has its own pitch, gate on/off, and velocity, plus its own BPM and gate-time controls. Runs on its own internal clock rather than the Dwarf's tempo tool.
- **Random CV Generator** (MOD) — a simpler alternative to Noise2 + Sample&Hold: outputs one new random value, within a min/max range, each time it's triggered.

**Playing and utility**

- **Multi Button to CV** — turns a button press into a CV trigger, with hold-time and double-press detection. This is how you "play" a patch without a MIDI keyboard.
- **MIDI to CV mono / MIDI to CV Poly** — converts incoming MIDI notes into pitch, velocity, and gate CV, if you'd rather play from a MIDI keyboard.
- **CV Parameter Modulation** — shapes a CV signal (base value + modulation depth) before it hits a target parameter. Covered in more depth in [Using CV](using-cv.md).
- **Slew Rate Limiter** — smooths sudden CV jumps into a ramp, useful for portamento-style pitch glides or softening a stepped random source.
- **CV Meter** — a visual level meter for a CV signal, handy for checking a patch is actually doing what you think it is while you build it.

**Also in the AMS suite, for when you want to go beyond the basics** — extra oscillator flavors (VCO2, additive "dynamic waves" and "vcorgan" oscillator banks), a second filter type (Moog-style low-pass), several more envelope shapes (percussive, advanced, and two-stage variants), voltage-controlled delay and panning, a ring modulator, an FFT vocoder, and mono/stereo mixers for combining multiple oscillators. All ported from the same open-source AlsaModularSynth project, all usable the same way as the modules below.

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

## Adding a step sequence

Instead of triggering one note by hand, let AMS Sequencer play a repeating pattern into the voice you just built:

1. **Add AMS Sequencer** (pick a step count — 8 or 16 is a reasonable starting size). Set its BPM and Gate Time controls to taste; each step has its own Pitch, Gate (on/off), and Velocity.
2. **Connect its pitch output to AMS VCO3's pitch/frequency CV input**, replacing (or alongside) manual pitch control.
3. **Connect its gate output to AMS Envelope's trigger input**, replacing the Multi Button. Each step with its gate turned on will now fire the envelope automatically as the sequence plays.
4. Turn individual steps' gates off to build rests into the pattern, and dial in different pitches per step to shape a melody.

The sequencer runs on its own internal clock, not the Dwarf's Tempo tool — set its BPM control directly.

**A generative alternative**, if you'd rather not hand-program a pattern: connect **AMS Noise2** into **AMS Sample&Hold**, and trigger the Sample&Hold periodically (an LFO or the sequencer's own gate output both work as a trigger source). Each trigger grabs a new random value from the noise and holds it — feed that into your VCO's pitch input for a wandering, generative melody instead of a fixed one. Add a **Slew Rate Limiter** afterward to glide between the random steps instead of jumping.

## Going further

- **Play it from a MIDI keyboard** instead of a footswitch or sequencer: swap Multi Button to CV for **MIDI to CV mono**, connect a USB or DIN MIDI keyboard (see [MIDI Controllers & Expression Pedals](../connecting-gear/midi-expression.md)), and route its Pitch and Gate outputs into your VCO and Envelope instead.
- **Macro control**: once a patch has several modulation sources, use **Control to CV** to tie multiple parameters to one physical knob — see [Using CV](using-cv.md#macro-controls).
- **Debugging a patch**: if something isn't moving the way you expect, drop a **CV Meter** on the signal in question to confirm it's actually present and in the range you think it is.

## Reference patches

The community has shared full synth pedalboards built this way — worth loading one and taking it apart to see how the routing works:

- [MOD CV Drum Machine](https://pedalboards.moddevices.com/pedalboards/5e4ff5672564d41c3fe1b5a1) — a standalone drum machine built from CV plugins.
- The GSYNTH series ([Bass](https://pedalboards.moddevices.com/pedalboards/62700e60e17f17a179fe75ab), [Lead](https://pedalboards.moddevices.com/pedalboards/62700f87656fdba0ab347107), [Chords](https://pedalboards.moddevices.com/pedalboards/62700f07e17f17a179fe75ac), [Flexible](https://pedalboards.moddevices.com/pedalboards/62700cff656fdba0ab347093)) — guitar-into-synth patches built around the same AMS modules used above.

---

Next: [Connecting Gear](../connecting-gear/midi-expression.md)
