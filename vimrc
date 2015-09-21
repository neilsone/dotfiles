set nocompatible " not vi compatible

"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

set background=dark
"let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
" assumes terminal colors are also solarized, otherwise uncomment above line
colorscheme solarized 

filetype plugin indent on " enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------

set nu " number lines
" Relative line numbers to start with. Absolute when in insert mode.
set rnu " relative line numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
exec "set listchars=tab:>>,nbsp:~"
set lbr " line break
set ruler " show current position in file
set scrolloff=5 " show lines above and below cursor (when possible)
set noshowmode " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

"--------------------
" Misc configurations
"--------------------

" Searching. Highlight search results while typing. 
" To be used with following <leader><space> to quickly clear
" highlighting once search term is found.
set incsearch " incremental search (as string is being typed)
set showmatch
set hls " highlight search
nnoremap <leader><space> :noh<cr>


" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
" Ideally the capslock key is mapped to Ctrl for super easy navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" disable arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" toggle relative numbering
nnoremap <C-n> :set rnu!<CR>

" save read-only files
command -nargs=0 Sudow w !sudo tee % >/dev/null

"---------------------
" Plugin configuration
"---------------------

" NERDTree
" autocmd vimenter * NERDTree
