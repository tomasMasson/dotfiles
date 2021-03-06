let g:plugged_home = '~/.vim/plugged'

" Setting python providers inside conda environments
let g:python3_host_prog = '/home/tmasson/miniconda3/bin/python'
"let g:python3_host_prog = '/usr/bin/python3.8'

" Plugins List
call plug#begin(g:plugged_home)

  " Airline
  Plug 'vim-airline/vim-airline'

  " Add colorschemes
  Plug 'cocopon/iceberg.vim'
  Plug 'morhetz/gruvbox'
  Plug 'arcticicestudio/nord-vim'

  " Better Visual Guide for Indentation
  Plug 'Yggdroot/indentLine'

  " Brackets auto closing
  Plug 'itmammoth/doorboy.vim'

  " Asynchronous Lint Engine (automatic; requires a Lint provider like flake8)
  Plug 'dense-analysis/ale'

  " Static Syntax checker for Python (manual; requires flake8 from pip)
  Plug 'nvie/vim-flake8'

  " Syntax highlight
  Plug 'vim-python/python-syntax'

  " Snakemake syntax support
  Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}
  "Plug 'raivivek/vim-snakemake'

  " Keep track of Git source code changes
  Plug 'airblade/vim-gitgutter'

  " Display hex colors
  Plug 'ap/vim-css-color'

  " Goyo distraction-free writing
  Plug 'junegunn/goyo.vim'

  " Browser preview for Markdown
  Plug 'suan/vim-instant-markdown', {'for': 'markdown'} 

  " Pandoc citation and syntax support
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'

  " HTML syntax support 
  Plug 'othree/html5.vim'

call plug#end()

" Configurations Part

" Set leader key
let mapleader = " "

" Quick .vimrc opening
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Quick .vimrc sourcing
nnoremap <leader>sv :source $MYVIMRC<cr>
" Set quick escape in insert mode
inoremap jk <esc>
"Quick comment in Python
noremap <leader>c 0i#<esc>
"Quick uncomment in Python
noremap <leader>u 0x

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

" Don't open Markdown preview as start
let g:instant_markdown_autostart = 0

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" Changes update time
set updatetime=100

" Snamake syntax support
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake

" Set 256 colors support
set t_Co=256

" Set colorscheme
colorscheme nord
"colorscheme gruvbox
set background=dark
