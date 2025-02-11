# Dotfiles ⚙️

This is my personal configuration for **MacOS, Ghostty, Fish, Neovim, etc.**

## Install 📀

Clone this repo in `~/.config`. If you have anything there make a backup and remove.

```sh
git clone git@github.com:billvog/dotfiles.git ~/.config
```

### MacOS 💻

To enable my MacOS settings, run the `setup-mac.sh` script.

### Brew 🍺

To install my formulas and casks with Brew, run `brew bundle install`.

Brew will find the Brewfile, since we've set `HOMEBREW_BUNDLE_FILE` on the fish configuration (`fish/config.fish`).
However, if that fails append `--file="~/.config/Brewfile"` to the command above.

### Neovim 🪄

The Neovim configuration is written from scratch, following [this YouTube video](https://www.youtube.com/watch?v=6pAG3BHurdM) from [Josean Martinez](https://www.youtube.com/@joseanmartinez).

I've applied minor changes to better fit my needs.

### Rectangle 🪟

I'm using Rectangle Pro, _which is paid software_. I'm not aware if the settings can be imported on the free version.

Rectangle's config has to be loaded manually from the app's settings unfortunately.

## Don't contribute 🤓

These are my personal dotfiles. If you want to make a change, make a fork, but don't submit a PR.

You're more than welcome to start your own setup from here 🙂
