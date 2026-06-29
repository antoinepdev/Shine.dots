✨ My personal dotfiles for Arch Linux using Gnu Stow as dotfiles manager.

## Features
- 👻 **Ghostty** support: Manage tabs and splits easily (recommended if you don't use a window manager)
- 🦀 **Helix** support (experimental): Modal edition, ultra fast, pre-configured with language servers, keymaps for a smooth editing experience.
- 🐚 **Bash**: Terminal alias, fast directory navegation with `zoxide`.
- 🐈 **Kitty** support: Catppuccin theme, designed to work seamlessly with the **Hyprland** ecosystem.
  > **Note:** Since Kitty is intended for use with Hyprland, keyboard shortcuts are not defined in the Kitty config; all window management is handled by Hyprland itself.

## Dependencies
- Git
- Gnu Stow
- A Nerd Font (optional); use `JetBrainsMonoFont` for not extra config.
- Zoxide (only for bash dotflies)

> **Note:** To use the configurations of a program, you need to have the program installed, for example, for Helix config you need (Helix >= 25.07.1).

## Clone dotfiles
```bash
git clone git@github.com:antoinepdev/Shine.dots.git
cd Shine.dots
```
If you want to automatically move dotfiles to their current routes run:
```bash
stow . ## for move all files
stow ghostty ## for an specific stow package
```
