# g0Dots - Personal Dotfiles Configuration

A collection of my personal dotfiles for Arch Linux with Hyprland, designed for a modern, efficient, and visually appealing desktop environment.

## 🖥️ Overview

This repository contains configuration files for various applications and tools I use daily on my Arch Linux setup. The main focus is on a Wayland-based environment using Hyprland as the compositor.

## 📦 What's Included

### Window Manager & Desktop Environment
- **[Hyprland](https://hyprland.org/)** - Dynamic tiling Wayland compositor
  - Custom keybindings and window rules
  - Multi-monitor support
  - Hyprlock for screen locking
  - Hyprpaper for wallpaper management

### Status Bar & Launchers
- **[Waybar](https://github.com/Alexays/Waybar)** - Highly customizable Wayland bar
- **[Rofi](https://github.com/davatorium/rofi)** - Application launcher and dmenu replacement

### Terminal Emulators
- **[Ghostty](https://ghostty.org/)** - Modern, fast GPU-accelerated terminal
- **[Kitty](https://sw.kovidgoyal.net/kitty/)** - The fast, feature-rich, GPU based terminal emulator

### Notification & System Info
- **[Dunst](https://dunst-project.org/)** - Lightweight notification daemon
- **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** - System information tool

### Shell & Editor
- **[Zsh](https://www.zsh.org/)** - Powerful shell with Oh My Zsh
  - Plugins: git, fzf-tab, zsh-autosuggestions, zsh-syntax-highlighting, fast-syntax-highlighting
  - Custom aliases and environment variables
- **[Micro](https://micro-editor.github.io/)** - Modern and intuitive terminal-based text editor

### Code Editor
- **[Zed](https://zed.dev/)** - High-performance, multiplayer code editor

## 🚀 Installation

### Prerequisites

Make sure you have the following installed:
- Arch Linux (or Arch-based distribution)
- Git
- Stow (recommended for managing dotfiles)

### Install Required Packages

- hyprland 
- hyprpaper 
- hyprlock 
- waybar 
- rofi 
- ghostty or kitty 
- zsh 
- dunst 
- fastfetch 
- micro
- zed 
- git 
- wl-clipboard 
- stow 
- clipvault 
- starship


### Install Oh My Zsh and Plugins

Follow the instructions is this [link](https://gist.github.com/seungjulee/d72883c193ac630aac77e0602cb18270)

## Install extra deps

I personally use `fnm` (Fast Node Manager), `docker` and `golang`. You can install it via the oficial documentations, but if dont want to use it, just skip this step, and remove references from the `.zshrc` file after deploying the dotfiles.

### Clone and Deploy

1. Clone this repository:
```bash
git clone https://github.com/yourusername/g0Dots.git ~/g0Dots
cd ~/g0Dots
```

2. **Option A: Using GNU Stow (Recommended)**
```bash
# Deploy individual configurations
stow -t ~ hypr
stow -t ~ waybar
stow -t ~ zsh
stow -t ~ kitty
stow -t ~ ghostty
stow -t ~ rofi
stow -t ~ wofi
stow -t ~ dunst
stow -t ~ fastfetch
stow -t ~ micro
stow -t ~ zed

# Or deploy all at once
stow -t ~ */
```

3. **Option B: Manual Installation**
```bash
# Copy configuration files manually
cp -r hypr/.config/hypr ~/.config/
cp -r waybar/.config/waybar ~/.config/
cp -r zsh/.zshrc ~/
# ... repeat for other configs
```

### Configure Environment Variables

1. Navigate to the Hyprland config directory:
```bash
cd ~/.config/hypr
```

2. Copy the environment template:
```bash
cp env.template.conf env.conf
```

3. Edit `env.conf` with your specific settings:
```bash
micro env.conf  # or your preferred editor
```

## ⚙️ Configuration

### Hyprland

The Hyprland configuration includes:
- **Dual monitor setup** (HDMI-A-1 and eDP-1 at 1920x1080@60Hz)
- **Autostart programs**: Waybar, Hyprpaper, and clipboard manager (clipvault)
- Custom keybindings and window rules
- Environment variables loaded from `env.conf`

Edit the main config:
```bash
micro ~/.config/hypr/hyprland.conf
```

### Zsh

The Zsh configuration includes:
- Oh My Zsh framework
- Useful plugins for git, fzf, autosuggestions, and syntax highlighting
- Go environment setup
- fnm (Fast Node Manager) integration
- Micro as default editor

To customize:
```bash
micro ~/.zshrc
```

### Waybar

Customize your status bar by editing:
```bash
micro ~/.config/waybar/config
micro ~/.config/waybar/style.css
```

## 🎨 Theming

Wallpapers are stored in:
```
~/.config/hypr/walls/
```

Configure wallpaper settings in:
```bash
micro ~/.config/hypr/hyprpaper.conf
```

## 🤝 Contributing

Feel free to fork this repository and customize it for your own use! If you have suggestions or improvements, pull requests are welcome.

## 📄 License

These dotfiles are provided as-is for personal use. Feel free to use, modify, and distribute as you see fit.

## 🙏 Acknowledgments

- [Hyprland](https://hyprland.org/) - Amazing Wayland compositor
- [Oh My Zsh](https://ohmyz.sh/) - Zsh framework
- The Arch Linux and open-source communities

## 📚 Additional Resources

- [Hyprland Wiki](https://wiki.hyprland.org/)
- [Arch Wiki - Dotfiles](https://wiki.archlinux.org/title/Dotfiles)
- [r/unixporn](https://www.reddit.com/r/unixporn/) - For inspiration

---

**Note**: Remember to backup your existing configurations before applying these dotfiles!
