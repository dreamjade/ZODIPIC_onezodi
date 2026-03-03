# ZODIPIC 1-Zodi Simulations

This documentation explains how to generate and visualize 2D simulated images of a Solar System-like zodiacal dust cloud using the ZODIPIC IDL package.

### Generating the Data

To model the surface brightness of a standard 1-zodi dust cloud at a specific inclination (e.g., face-on, 0°), you can run a single command sequence in IDL:

```idl
zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=0
SAVE, FILENAME = '1zodi0.sav', inu

```

**Automating with IDL Scripts (`.pro` files)**
To automatically generate the full suite of 1-zodi images across all viewing angles (0° to 90°), you can use the provided IDL scripts: **`1zodi_72.pro`** and **`1zodi_56875.pro`**.

To use these files, launch your IDL environment, compile the script, and execute the procedure. For example:

```idl
IDL> .compile 1zodi_72.pro
IDL> run_1zodi_loop

```

---

### ZODIPIC Parameters Breakdown

* **`zodipic`**: The core IDL function that synthesizes images of 1-zodi exozodiacal dust by calculating scattered starlight and thermal emission from dust grains.
* **`inu`**: The output variable storing the 2D image array of specific intensity ($I_\nu$), unit: Jy/pixel.
* **Pixel Scale (mas/pixel)**: Defines the spatial scale of the simulation for a 6 m telescope observing at 575 nm. The two scripts use the following scales:
* **1.2547439995901082**: Corresponds to a field of view of 56.875 $\lambda/D$.
* **1.5884231731074778**: Corresponds to a field of view of 72 $\lambda/D$.


* **`0.575`**: The observing wavelength in micrometers. At 0.575 µm (V band), the image is entirely dominated by scattered starlight.
* **`pixnum=896`**: Specifies the output array dimensions as an 896x896 pixel grid.
* **`inc` (Inclination)**: The viewing angle in degrees (`inc=0` is face-on, `inc=90` is edge-on).

> **Special Case (`1zodi.sav`)**: This specific output file contains the data for the 56.875 $\lambda/D$ case, uniquely configured with a 0.1 au inner radius truncation.

---

### Visualizing the Output

Once your IDL scripts have generated the `.sav` files, you can use the **`show_zodipic.ipynb`** Jupyter Notebook to visualize them. The notebook reads the IDL `.sav` files into Python, applies the correct physical scaling and units (Jy/as^2), and plots the 2D simulated images of the exozodiacal dust.
