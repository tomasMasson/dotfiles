let g:plugged_home = '~/.vim/plugged'

" Setting python providers inside conda environments
let g:python3_host_prog = '/home/tmasson/miniconda3/bin/python'

" Plugins List
call plug#begin(g:plugged_home)

  " Airline
  Plug 'vim-airline/vim-airline'

  " Add colorschemes
  Plug 'cocopon/iceberg.vim'
  Plug 'morhetz/gruvbox'

  " Better Visual Guide for Indentation
  Plug 'Yggdroot/indentLine'

  " Brackets auto closing
  Plug 'itmammoth/doorboy.vim'

  " Asynchronous Lint Engine (requires a Lint provider like flake8)
  Plug 'dense-analysis/ale'

  " Static Syntax checker for Python (requires flake8 from pip)
  Plug 'nvie/vim-flake8'

  " Syntax Semantic Highlighting for Python
  Plug 'numirias/semshi'

  " Snakemake syntax support
  Plug 'raivivek/vim-snakemake'

  " Keep track of Git source code changes
  Plug 'airblade/vim-gitgutter'

  " Display hex colors
  Plug 'ap/vim-css-color'

  " Goyo distraction-free writing
  Plug 'junegunn/goyo.vim'

  " Browser preview for Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " Pandoc citation and syntax support
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

  " HTML syntax support 
  Plug 'othree/html5.vim'

call plug#end()

" Remap leader key to space bar
let mapleader = " "

" Quick vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Quick vimrc sourcing
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quick escape from interactive mode
inoremap jk <esc>

" Quick escape from vim terminal
tnoremap kj <C-\><C-n>

" Navigation keybindings

nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Set default splits to right and bottom
set splitbelow
set splitright

" UI configuration
filetype plugin indent on
set number
syntax on
syntax enable
set spelllang=en,es 

" Lightline configuration
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'icebergDark',
      \ }

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set autoindent

" Set HTML indentation
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Changes update time
set updatetime=100

" Snamake syntax support
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake

" Set 256 colors support
set t_Co=256

" Set colorscheme
colorscheme iceberg
"colorscheme gruvbox
set background=dark
