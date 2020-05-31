" Set colorscheme
colorscheme evening

" Set relative + absolute line num
se rnu
se nu

" Enable syntax colors
filetype on
syntax on

" Allows hidden buffers
se hid

" Better command-line completion (qith a pretty menu)
se wildmenu

" Indentation settings
se autoindent
"se shiftwidth=2
"se softtabstop=2
"se expandtab

" Usefull buffer browsing util maps.
  " Next buffer:
    map <C-b> :bnext<Enter>
    im <C-b> <C-o>:bnext<Enter>
 
" preserve cursor position when switching between buffers
autocmd BufEnter * silent! normal! g`"

" vim-plug section
call plug#begin('~/.vim/plugged')

" CSApprox - gvim colorschemes in terminal
Plug 'godlygeek/csapprox'

" Sorround plugin
Plug 'tpope/vim-surround'

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree
Plug 'preservim/nerdtree'

" Emmet
Plug 'mattn/emmet-vim'

" The illegal Git plugin
Plug 'tpope/vim-fugitive'

call plug#end()

" vim-airline
" Please use "apt-get install fonts-powerline" to install powerline fonts
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

" emmet
" Only on html and css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" NERDtree
" enable line numbers
let NERDTreeShowLineNumbers=1
