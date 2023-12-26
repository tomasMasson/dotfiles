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

Plug 'shaunsingh/nord.nvim'                                     " Nord colorscheme
Plug 'dense-analysis/ale'                                       " Asynchronous syntac checking
Plug 'itmammoth/doorboy.vim'                                    " Auto closing brackets/quatations
Plug 'junegunn/goyo.vim'                                        " Distraction-free writing in Vim
Plug 'nvim-lualine/lualine.nvim'                                " Neovim statusline
Plug 'nvim-tree/nvim-web-devicons'                              " Neovim statusline icons
Plug 'ryanoasis/vim-devicons'                                   " Vim plugin icons
Plug 'Yggdroot/indentline'                                      " Display vertical lines at each indentation level
Plug 'airblade/vim-gitgutter'                                   " Shows git diff markers
Plug 'tpope/vim-commentary'                                     " Comment stuff out
Plug 'ap/vim-css-color'                                         " Color name highlighter
Plug 'raivivek/vim-snakemake'                                   " Snakemake syntax highlight
Plug 'mhinz/vim-startify'                                       " Fancy start screen
Plug 'nvie/vim-flake8'                                          " Flake8 checker
Plug 'nvim-lua/plenary.nvim'                                    " Telescope dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }        " Fuzzy finder
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}     " Tree-sitter interface for Neovim
Plug 'preservim/nerdtree'                                       " Tree explorer plugin
"source ~/.config/nvim/plugins/coc.vim

call plug#end()

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
set omnifunc=ale#completion#OmniFunc
set splitbelow
set splitright
filetype plugin indent on
set number
syntax on
syntax enable
set spelllang=en,es 
set laststatus=2
set noshowmode
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
set updatetime=100
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
colorscheme nord 

" Set statusline"
lua << END
require('lualine').setup()
options = {theme = 'nord'}
END
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''


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

"Find files using Telescope command-line sugar"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
