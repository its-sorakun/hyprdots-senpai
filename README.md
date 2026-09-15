# hyprdots-senpai 🌸

A personal Hyprland ricing setup featuring the **Catppuccin Mocha** color theme. This repository contains all the configuration files needed to recreate this desktop environment on Arch Linux.

> ⚠️ **Note:** This project is currently a work in progress. Things may change over time!

---

## 📦 What's Included

This repo contains configuration files for the following tools:

| Folder | Tool | What It Does |
|---|---|---|
| `hypr/` | Hyprland | The core window manager — controls how windows open, move, and animate |
| `waybar/` | Waybar | The status bar shown on the desktop (clock, workspaces, etc.) |
| `kitty/` | Kitty | The terminal emulator |
| `rofi/` | Rofi | The app launcher (like a Start menu) |
| `cava/` | Cava | A music audio visualizer in the terminal |
| `fastfetch/` | Fastfetch | Displays system info in the terminal beautifully |
| `neofetch/` | Neofetch | Another system info display tool |
| `hyprlock/` | Hyprlock | The lock screen |
| `swaync/` | SwayNC | The notification center |
| `waypaper/` | Waypaper | A wallpaper manager with a GUI picker |
| `wlogout/` | Wlogout | A logout / power menu |
| `nwg-look/` | nwg-look | Controls GTK app theming on Wayland |
| `fish/` | Fish | The modern interactive shell |

---

## 🎨 Theme

This setup uses the **Catppuccin Mocha** color palette throughout — applied to Hyprland, Waybar, and other tools via shared `mocha.conf` and `mocha.css` files.

---

## 🛠️ Setup Guide for Arch Linux

Follow these steps carefully. You don't need to be a Linux expert — just follow along one step at a time!

### Step 1 — Install Hyprland and all required packages

Open your terminal and run the following command to install everything you need:

```bash
sudo pacman -S hyprland waybar kitty rofi waypaper swaync wlogout hyprlock cava fastfetch neofetch nwg-look brightnessctl hyprshot xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland playerctl eza zoxide bat starship
```

> 💡 If `pacman` says a package is not found, it may be available in the **AUR**. Use an AUR helper like `yay` in that case.

---

### Step 2 — Install a Wayland-compatible wallpaper backend

Waypaper needs a backend to actually set the wallpaper. Install `swww`:

```bash
sudo pacman -S swww
```

---

### Step 3 — Clone this repository

```bash
git clone https://github.com/fetchthesauce/hyprdots-senpai.git
```

Then navigate into it:

```bash
cd hyprdots-senpai
```

---

### Step 4 — Back up your existing configs (recommended!)

Before copying anything, it's a good idea to back up your current configs so you don't lose them:

```bash
cp -r ~/.config/hypr ~/.config/hypr.bak
cp -r ~/.config/waybar ~/.config/waybar.bak
cp -r ~/.config/kitty ~/.config/kitty.bak
```

Repeat for any other folders you want to back up.

---

### Step 5 — Copy the config files

Now copy each folder from this repo into your `~/.config/` directory:

```bash
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp -r rofi ~/.config/
cp -r cava ~/.config/
cp -r fastfetch ~/.config/
cp -r neofetch ~/.config/
cp -r hyprlock ~/.config/
cp -r swaync ~/.config/
cp -r waypaper ~/.config/
cp -r wlogout ~/.config/
cp -r nwg-look ~/.config/
```

---

### Step 6 — Launch Hyprland

If you are at a TTY (text login screen), simply type:

```bash
Hyprland
```

If you use a display manager like **SDDM**, select **Hyprland** from the session menu before logging in.

---

## ⌨️ Keyboard Shortcuts

All shortcuts use the `SUPER` key (the Windows key on most keyboards).

| Shortcut | Action |
|---|---|
| `SUPER + T` | Open terminal (Kitty) |
| `SUPER + B` | Open Firefox browser |
| `SUPER + E` | Open file manager (Dolphin) |
| `SUPER + R` | Open app launcher (Rofi) |
| `SUPER + Q` | Close the active window |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + V` | Toggle floating window |
| `SUPER + L` | Lock the screen (Hyprlock) |
| `SUPER + M` | Open logout/power menu (Wlogout) |
| `SUPER + W` | Open wallpaper picker (Waypaper) |
| `SUPER + SHIFT + W` | Set a random wallpaper |
| `SUPER + I` | Restart Waybar |
| `SUPER + G` | Center the active window |
| `SUPER + 1 to 9` | Switch to workspace 1–9 |
| `SUPER + SHIFT + 1 to 9` | Move active window to workspace 1–9 |
| `SUPER + TAB` | Go to next workspace |
| `SUPER + SHIFT + TAB` | Go to previous workspace |
| `SUPER + Arrow Keys` | Move focus between windows |
| `Print` | Screenshot (copied to clipboard) |
| `SUPER + Print` | Screenshot a selected region (clipboard) |
| `SHIFT + Print` | Screenshot saved to `~/Pictures/Screenshots` |
| Volume Up/Down/Mute | Media keys on keyboard |
| Brightness Up/Down | Brightness keys on keyboard |

---

## 📁 Configuration Details

### Hyprland (`hypr/`)
- **Layout:** Dwindle (windows tile automatically like a binary tree)
- **Animations:** Smooth bezier curve animations for window open/close/workspace switch
- **Visuals:** 20px rounded corners, inactive window dimming, no drop shadows
- **Gaps:** 5px between windows, 10px from screen edges
- **XWayland:** Enabled for running older X11 applications

### Waybar (`waybar/`)
- Styled with a clean, fully opaque block aesthetic using Catppuccin Mocha colors.
- Features a flat, borderless design for maximum minimalism.
- Includes a custom Python script (`waybar-media.py`) for showing currently playing media.

### Hyprlock (`hyprlock/`)
- A minimalist, centered "Widget Hub" built natively with geometric shape primitives.
- Features a live media tracker powered by an isolated `playerctl` script.

### Rofi (`rofi/`)
- Used as the application launcher (`rofi -show drun -show-icons`).
- Themed as a perfectly solid, opaque "Floating Islands" 4x3 grid layout using Catppuccin Mocha.

### SwayNC (`swaync/`)
- Notification Center styled with the official Catppuccin Mocha colors.
- Custom flattened UI entirely devoid of drop-shadows, glassmorphism, or transparency.

### Wlogout (`wlogout/`)
- A minimalist, single-column vertical list reminiscent of a GRUB boot menu.
- Uses transparent backgrounds and subtle Catppuccin hover highlights instead of traditional heavy GTK buttons.
- Features a custom static "Matane!" header natively integrated into the layout.

### Fish Shell (`fish/`)
- Modernized according to 2026 standards, prioritizing synchronous initialization to prevent terminal race conditions.
- Integrates native Catppuccin syntax highlighting and smart wrappers for `eza`, `zoxide`, and `bat`.

### Cava (`cava/`)
- Terminal-based audio visualizer
- Themed to match the overall color scheme

---

## 🔧 Troubleshooting

**Waybar not showing up?**
Run this in the terminal to restart it:
```bash
killall waybar && waybar &
```
Or press `SUPER + I` from within Hyprland.

**Wallpaper not loading?**
Make sure `swww` is installed and try running:
```bash
waypaper --restore
```

**Apps look unstyled (GTK apps)?**
Open `nwg-look` and apply your preferred GTK theme. This ensures apps like Thunar and Firefox match the desktop theme.

**Screen not locking?**
Make sure `hyprlock` is installed and run:
```bash
hyprlock -c ~/.config/hyprlock/hyprlock.conf
```

---

## 🤝 Contributing

This is a personal rice — feel free to fork it and make it your own! If you find a bug or have a suggestion, feel free to open an issue.

---

*Made with 💜 using Catppuccin Mocha*
