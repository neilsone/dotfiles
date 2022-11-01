Assumes caps lock is remapped to ctrl. That's right, you read that right. Just do it. Once you get used to it, you'll thank me. 

Directories within the `vim/bundle` directory are subtrees.
Each subtree's repo is added as a remote with the same name as the repo. For example:
`git remote add -f vim-colors-solarized https://github.com/altercation/vim-colors-solarized.git`

The command to update the subtree is:
`git subtree pull --prefix vim/bundle/vim-colors-solarized vim-colors-solarized master --squash`
