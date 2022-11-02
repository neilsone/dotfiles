# Neilson's Dotfile Management and New Mac Setup

This project uses [Dotbot](https://github.com/anishathalye/dotbot) to manage 
dotfiles. This repo is configured for my personal preferences, but also serves
as a starting point for others. 

The main thing these dotfiles do is configure vim and tmux to use very similar
movement keys. The core of this scheme is based on the following configuration:

  - Map tmux prefix key to `ctrl-a`
  - Map vim command key to `ctrl-w`
  - Remap ctrl key on your keyboard to the caps lock key

This puts the tmux prefix and vim command keys right next to each other. 
Mapping the ctrl key to caps lock makes hitting those keys a bit easier on the
hands. 

With these basic settings, the rest of the dot files configure tmux to behave
a bit like vim when it comes to moving and splitting panes. 

For example, after starting tmux, with these dot files in place, to create a 
vertical split, from the shell, use `ctrl-a v`. Note that is similar to the vim
keybinding to create a vertical split within vim, which is `ctrl-w v`.

Same with movement keys. To move around tmux panes within a window, use the 
vim movement keys but with the `ctrl-a` prefix. 

# Subtrees

Directories within the `vim/bundle` directory are subtrees.

Each subtree's repo is added as a remote with the same name as the repo. For example:
`git remote add -f vim-colors-solarized https://github.com/altercation/vim-colors-solarized.git`

The command to update the subtree is:
`git subtree pull --prefix vim/bundle/vim-colors-solarized vim-colors-solarized master --squash`

It's important that when merging branches, don't squash the commits specific to adding the subtree. The subtree code uses those commits in the log to find out what subtree commit is in the project. 

# New Computer Setup Notes

The following notes are how I set up a new Mac. These instructions also work
to set up a new linux home dir with just a few tweaks. 

## Terminal Configuration

Install iterm2

Download [Solarized](https://github.com/altercation/solarized)

I organize code I download using the following organization schemes. 
For third party code that I download, like solarized above, it would be cloned
from the following location:

`~/src/third-party/altercation.github.com` 

For code that I've authored or related to teams I collaborate with, I use the 
following scheme to organize projects:

`~/src/neilsone.github.com`
`~/src/yo-yodyne.gitlab.com`

Add the iterm color profile from the Solarized project and set iterm to use it. 
This is important when it comes to getting vim to look good.

### Install Terminal Font

I like the [Mono font from Jet Brains](https://www.jetbrains.com/lp/mono/#how-to-install)

# Install Utilities

Install homebrew
	
This may include downloading some xcode command line tools.

Use Homebrew to install the following utilities:

```
brew install zsh
brew install gnupg
brew install tmux
```

# Configure Shell

Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Edit the `~/.zshrc` file to set the oh-my-zsh theme to ZSH_THEME="eastwood", 
or whatever your preferred theme is. 

# Configure Git

Generate [gpg key and install into github.com](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)

You might need to comment out `no-tty` in `~/.gnupg/gpg.conf` to get gpg to 
work with these instructions.

Generate [ssh key and install into sshagent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), and then add this to your github.com account.

