

https://github.com/user-attachments/assets/4c936616-5f8d-4099-8ca9-f575fd22fb4f

# VinZ

**VinZ** (Yes, named after myself :DD) is a procedural terminal graphics engine. It draws mathematical fluid simulations and ASCII art directly into your terminal using 24-bit ANSI colors. It supports both half-block character resolution and dynamically generated ASCII matrices.

It is written in C, fully interactive, and designed to provide a trippy visual experience in the command line.

## Features

- **Interactive UI:** Control palettes and visual styles in real-time.
- **10 Visual Styles:** 
- **20 Color Palettes:** 
- **True Color (24-bit RGB):** Renders incredibly smooth gradients and shadows.
- **Double-Vertical Resolution:** 
- **Fast:** Written in C, using single buffer writes to avoid terminal flickering and achieve high FPS.

## Installation

### The 1-Second Install (Linux / macOS)

Just paste this into your terminal. It will download, compile, and install VinZ automatically:

```bash
curl -sL https://raw.githubusercontent.com/vinz-ux/VinZ/main/install.sh | bash
```

### Manual Install (From Source)

```bash
git clone https://github.com/vinz-ux/VinZ.git
cd VinZ
make
sudo make install
```
*(This will install the executable as `vinz` to your system path).*

## Usage

Run the program simply by typing:

```bash
vinz
```

### Interactive Controls

Once running, use your keyboard to change the visuals:
- **W / S** (or Up/Down Arrows) : Change Visual Style (Pattern)
- **A / D** (or Left/Right Arrows) : Change Color Palette
- **H** : Hide or Show the UI menu at the bottom
- **Q** (or Ctrl+C) : Quit

### Options

You can also start it with specific settings using flags:

```
Usage: vinz [OPTIONS]
Options:
  -s, --speed <float>    Animation speed multiplier (default: 1.0)
  -p, --palette <int>    Starting color palette (0-19)
  -m, --style <int>      Starting style mode (0-9)
  -h, --help             Show help message
```

**Examples:**

Start directly in the "Digital Rain" style with the "Matrix" palette:
```bash
vinz -m 4 -p 1
```

## Requirements
- A modern terminal emulator with true-color (24-bit) support (e.g., Alacritty, Kitty, WezTerm, GNOME Terminal, Konsole).
- A C compiler (`gcc` or `clang`).
