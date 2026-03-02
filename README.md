# ZODIPIC_onezodi

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=0
SAVE, FILENAME = '1zodi.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=15
SAVE, FILENAME = '1zodi15.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=30
SAVE, FILENAME = '1zodi30.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=45
SAVE, FILENAME = '1zodi45.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=60
SAVE, FILENAME = '1zodi60.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=75
SAVE, FILENAME = '1zodi75.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=85
SAVE, FILENAME = '1zodi85.sav', inu

```

```bash
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=90
SAVE, FILENAME = '1zodi90.sav', inu

```

## Explanation

This code snippet is a sequence of IDL (Interactive Data Language) commands utilizing the **ZODIPIC** package to model the surface brightness of a standard 1-zodi dust cloud.

By running this sequence, you generate a suite of 2D simulated images of a Solar System-like zodiacal dust cloud at various viewing angles (from face-on to edge-on) and save the resulting intensity arrays for later analysis.

### ZODIPIC Parameters Breakdown

* **`zodipic`**: The core IDL function being called. ZODIPIC synthesizes images of exozodiacal dust clouds by calculating both the scattered starlight and thermal emission from dust grains based on a parameterized density distribution.
* **`inu`**: The output variable. This stores the generated 2D image array representing the specific intensity ($I_\nu$) of the dust cloud. The default output units in ZODIPIC are typically Janskys per steradian (Jy/sr).
* **`1.2547439995901082` (mas/pixel)**: The spatial scale of the simulation. Each pixel in the resulting $I_\nu$ array subtends approximately **1.255 milliarcseconds** on the sky.
* **`0.575` (µm)**: The observing wavelength in micrometers. At **0.575 µm** (the V band), the resulting image is entirely dominated by scattered starlight off the dust grains, rather than the thermal emission that dominates at mid-infrared wavelengths.
* **`pixnum=896`**: The dimensions of the output image. This specifies that the `inu` array will be an 896x896 pixel grid.
* **`inc` (Inclination)**: The viewing angle of the disk in degrees.
* `inc=0` generates a completely face-on view of the cloud.
* `inc=90` generates an edge-on view.
* The script steps through $0^\circ, 15^\circ, 30^\circ, 45^\circ, 60^\circ, 75^\circ, 85^\circ$, and $90^\circ$ to capture the structural changes as the line of sight through the dust column varies.

### File Saving Command

* **`SAVE, FILENAME = '1zodi<angle>.sav', inu`**: A standard IDL command that exports the `inu` variable into an IDL `.sav` file. This allows for easily restoring the 2D arrays in a separate IDL session or reading them into Python (e.g., using `scipy.io.readsav`) for plotting, adding noise, or injecting simulated planets.
