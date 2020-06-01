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

" Syntax checker
Plug 'vim-syntastic/syntastic'

" GitGutter
Plug 'airblade/vim-gitgutter'

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

""" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" JS linter
let g:syntastic_javascript_checkers = ['closurecompiler']
let g:syntastic_javascript_closurecompiler_script = '/usr/bin/closure-compiler'

" C linter
let g:syntastic_c_checkers = ['gcc']

" Sign Column appearance
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
hi link SyntasticErrorSign cleared
hi link SyntasticWarningSign cleared
hi link SyntasticStyleErrorSign cleared
hi link SyntasticStyleWarningSign cleared
hi clear SignColumn

" GitGutter
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghf <Plug>(GitGutterFold)
nmap gn <Plug>(GitGutterNextHunk)
nmap gp <Plug>(GitGutterPrevHunk)
se updatetime=100
hi GitGutterAdd term=bold cterm=bold gui=bold guifg=Green
hi GitGutterChange term=bold cterm=bold gui=bold guifg=White
hi GitGutterDelete term=bold cterm=bold gui=bold guifg=Red
