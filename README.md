# dotfiles

Collecting the various configs, settings & snippets I have set up. Trying to track my changes like a responsible person.

I've switched from manually maintaining symlinks to using [chezmoi](https://www.chezmoi.io/).

## How to set all of this up from scratch

### Step 1: clone this repo

If you haven't installed chezmoi already, follow the [installation instructions](https://www.chezmoi.io/docs/install/) to install and initialize this repo. It should be something like this:

```zsh
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply acrobertson"
```

If you already have chezmoi install, either init with `chezmoi init https://github.com/acrobertson/dotfiles.git` or if you've already done that apply the dotfiles with `chezmoi update`.

### Step 2: install apps & frameworks

To use everything included here, you'll need to install:

- [Oh My ZSH](https://ohmyz.sh/) – framework for managing ZSH config
- [Homebrew](https://brew.sh/) – macOS package manager
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/) - app for keyboard customization

### Step 3: install packages

Make sure you've got the `Brewfile` in your home directory and then install all the Homebrew packages at once with `brew bundle`.

EDIT: I've temporarily removed the Brewfile until I find a better way to manage it.

### Step 4: compile Karabiner bindings

Now that [Goku](https://github.com/yqrashawn/GokuRakuJoudo) is installed, compile the Karabiner config by running `goku`. If you want to run the service in the background to recompile anytime the Goku file is edited, run `brew services start goku`.

