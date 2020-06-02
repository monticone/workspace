# My VIM configuration
This folder contains my personal VIM configuration.
See the `.vimrc` file for more details.

# Setup
 1. Set the `~/.vimrc` file using a symbolic link for example.
 2. Install [vim-plug](https://github.com/junegunn/vim-plug) on your `~/.vim` folder.
 3. Launch `:PlugInstall` in command mode on your vim instance.

(Install *fonts-powerline* for a better appearance.)

# Plugin list
 - [vim-plug](https://github.com/junegunn/vim-plug)
 - [CSApprox](https://github.com/godlygeek/csapprox)
 - [vim-surround](https://github.com/tpope/vim-surround)
 - [vim-airline](https://github.com/vim-airline/vim-airline)
 - [NERDTree](https://github.com/preservim/nerdtree)
 - [Emmet](https://github.com/mattn/emmet-vim)
 - [vim-fugitive](https://github.com/tpope/vim-fugitive)
 - [syntastic](https://github.com/vim-syntastic/syntastic)
 - [gitgutter](https://github.com/airblade/vim-gitgutter)

# Linter
Various syntax checkers for a lot of languges can be found
[here](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt)
(`:help syntastic-checkers` in Vim).

I'm currently using:
 - JavaScript: closurecompiler
 - C: gcc

# Fugitive
Fugitive map bindings
 -  `gs`: Status
 -  `gc`: Commit
 -  `gk`: Push
 -  `gj`: Pull

# Git Gutter
Gitgutter map bindings
 - `gn`: Next hunk
 - `gp`: Previous hunk
 - `ghp`: Preview current hunk
 - `ghs`: Stage current hunk
 - `ghu`: Undo current hunk
 - `ghf`: Fold all unchanged lines (Toggle)

# Some documentation
 - Emmet:
 	[cheatsheet](https://docs.emmet.io/cheat-sheet/)
 - Fugitive cheatsheet:
 	[commands](https://github.com/yanick/cheatsheets/blob/master/vim/fugitive.mkd)
 - vim-surround:
 	[readme](https://github.com/tpope/vim-surround/blob/master/README.markdown)

# Other usefull pointers
 - The [Vim Tips Wiki](https://vim.fandom.com/wiki/Vim_Tips_Wiki)
 - An exaustive vim plugin collection: [VimAwesome](https://vimawesome.com/)
 - The official [vim website](https://www.vim.org/)
 - A pretty vim [cheatsheet](https://devhints.io/vim)
