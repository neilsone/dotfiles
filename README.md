Assumes caps lock is remapped to ctrl

Directories within the `vim/bundle` directory are subtrees.
Each subtree's repo is added as a remote with the same name as the repo:
`git remote add -f vim-colors-solarized https://github.com/altercation/vim-colors-solarized.git`

Then the command to update the subtree is:
`git subtree pull --prefix vim/bundle/vim-colors-solarized vim-colors-solarized master --squash`
