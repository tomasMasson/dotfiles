Plug 'cocopon/iceberg.vim'

augroup IcebergOverrides
    autocmd!
    autocmd User PlugLoaded ++nested colorscheme iceberg
augroup end
