✨ My personal dotfiles for Linux using Gnu Stow as dotfiles manager.

## Features
- 👻 **Ghostty** support: Manage tabs and splits easily
- 🦀 **Helix** support (experimental): Modal edition, ultra fast, pre-configured with language servers, keymaps for a smooth editing experience.

## Dependencies
- Git
- Gnu Stow

> **Note:** To use the configurations for Helix, you need to have the editor installed (Helix >= 25.07.1).

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
