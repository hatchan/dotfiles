# dotfiles

Font: [FiraCode Nerd Font](https://archlinux.org/packages/extra/any/ttf-firacode-nerd/)

## VS Code

### Keyring issue

The current version of VS Code is not able to auto detect gnome-keyring.
Probably because I'm using sway. With `gnome-keyring` installed, you still have
to manually tell VS Code to use gnome using the following instructions:

- `ctrl+shift+p` -> "Preferences: Configure Runtime Arguments"
- Add: `"password-store":"gnome"`
