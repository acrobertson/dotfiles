# dotfiles

Collecting the various configs, settings & snippets I have set up. Trying to track my changes like a responsible person.

## How to set all of this up from scratch

### Step 1: clone this repo

You know the drill.

## Step 2: install apps & frameworks

To use everything included here, you'll need to install:

- [Oh My ZSH](https://ohmyz.sh/) – framework for managing ZSH config
- [Homebrew](https://brew.sh/) – macOS package manager
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/) - app for keyboard customization

## Step 3: set up the symlinks

```zsh
# assuming you cloned into ~/github/dotfiles
cd ~

ln -s ~/github/dotfiles/.zshrc .zshrc
ln -s ~/github/dotfiles/Brewfile Brewfile
ln -s ~/github/dotfiles/karabiner.edn karabiner.edn
```

## Step 4: install packages

Install all the Homebrew packages at once with `brew bundle`.

## Step 5: compile Karabiner bindings

Now that [Goku](https://github.com/yqrashawn/GokuRakuJoudo) is installed, compile the Karabiner config by running `goku`. If you want to run the service in the background to recompile anytime the Goku file is edited, run `brew services start goku`.

