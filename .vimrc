set nocompatible
set t_Co=16
call pathogen#infect()
set background=dark " dark | light "
syntax on
colorscheme solarized
call togglebg#map("<F5>")

filetype plugin indent on
set notitle       " do not update title of terminal.
                  "    prevents 'thanks for flying vim' title on exit
set hidden        " hides buffers instead of closing them, safe :e

set cursorline    " highlight current line
set colorcolumn=80
                  " ruler at 80chars
set number        " always show line numbers
set ruler         " always show cursor position
set nowrap        " don't wrap lines

set tabstop=2     " a tab is two columns wide
set expandtab     " a tab inserts tabstop spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=2  " number of spaces to use for autoindenting, and >>, <<
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell    " don't beep
set noerrorbells  " don't beep

set nobackup      " no vim-based backups
set noswapfile    " no vim-based swap files

set autochdir     " change directory to that of current file

" change the mapleader from \ to ,
let mapleader=","

" up / down soft wraps
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear highlighted search matches
nmap <silent> ,/ :nohlsearch<CR>

" sudo write file
cmap w!! w !sudo tee % >/dev/null


" autocmds
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text,tex setlocal textwidth=78
  autocmd FileType text,tex setlocal tabstop=4

  " Don't syntax highlight markdown because it's often wrong
  autocmd! FileType mkd setlocal syn=off
augroup END
