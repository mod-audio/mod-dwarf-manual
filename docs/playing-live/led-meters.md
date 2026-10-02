# LED Meters

Every audio input and output has an LED that shows signal level at a glance, with smooth color transitions:

| Level | LED |
|---|---|
| Below -40dB | Off |
| -40dB to -6dB | Green, fading in |
| -6dB to -1dB | Green, fading toward yellow |
| -1dB to 0dB | Red |
| 0dB (clipping) | Strong blinking red |

<!-- IMAGE NEEDED: A close-up photo of the input/output LEDs lit up, ideally showing a couple of the color states from the table above
     No wiki source found — needs a fresh photo (the wiki describes the LED behavior in text only, no photo found)
     Suggested: docs/assets/playing-live/led-meters.png -->

The LEDs show what goes into and out of the pedalboard. The output LEDs sit before the output volume, so turning the output volume down in Settings does not change them and does not cure a red LED: lower the level inside the pedalboard instead. It also means the LEDs can show signal while the output volume is turned all the way down.

Keep outputs mostly green, occasionally yellow, never red — if you're seeing red, back off the source level or the relevant gain stage. See [Troubleshooting](../maintaining/troubleshooting.md) for more on gain staging and noise.

---

Next: [Working with Pedalboards & Snapshots](../pedalboards-snapshots/banks.md)
