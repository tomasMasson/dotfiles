"-----------------------------------------------------------
" Vim-plug automatic installation
"-----------------------------------------------------------

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"-----------------------------------------------------------
" Plugins
"-----------------------------------------------------------

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/iceberg.vim
source ~/.config/nvim/plugins/indentLine.vim
source ~/.config/nvim/plugins/doorboy.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/flake8.vim
source ~/.config/nvim/plugins/semshi.vim
source ~/.config/nvim/plugins/snakemake.vim
source ~/.config/nvim/plugins/gitgutter.vim
source ~/.config/nvim/plugins/css_color.vim
source ~/.config/nvim/plugins/goyo.vim
source ~/.config/nvim/plugins/markdown_preview.vim
source ~/.config/nvim/plugins/pandoc.vim
source ~/.config/nvim/plugins/startify.vim

call plug#end()

doautocmd User PlugLoaded

let g:startify_custom_header = [
\ '▀█▄   ▀█▀                           ██             ', 
 \ ' █▀█   █    ▄▄▄▄    ▄▄▄   ▄▄▄▄ ▄▄▄ ▄▄▄  ▄▄ ▄▄ ▄▄   ',
 \ ' █ ▀█▄ █  ▄█▄▄▄██ ▄█  ▀█▄  ▀█▄  █   ██   ██ ██ ██  ',
 \ ' █   ███  ██      ██   ██   ▀█▄█    ██   ██ ██ ██  ',
 \ '▄█▄   ▀█   ▀█▄▄▄▀  ▀█▄▄█▀    ▀█    ▄██▄ ▄██ ██ ██▄ ',
 \ ]


"-----------------------------------------------------------
" General settings
"-----------------------------------------------------------

let g:python3_host_prog = '/home/tmasson/miniconda3/bin/python'
set splitbelow
set splitright
filetype plugin indent on
set number
syntax on
syntax enable
set spelllang=en,es 
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'icebergDark',
      \ }
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
set expandtab
set autoindent
autocmd FileType html setlocal shiftwidth=2 tabstop=2
set updatetime=100
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
set t_Co=256


"-----------------------------------------------------------
" Key-bindings
"-----------------------------------------------------------

let mapleader = " "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ht :split <bar> term <cr>
nnoremap <leader>vt :vsplit <bar> term <cr>
inoremap jk <esc>
tnoremap qq <C-\><C-n>
nnoremap <Enter> o<Esc>
nnoremap <S-Enter> O<Esc>
nnoremap <leader>ts Go<Esc>oLast modified: <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
