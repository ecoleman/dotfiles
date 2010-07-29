
syntax on

" searching
set hlsearch
set incsearch

set nocompatible
set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set expandtab

set number
set nowrap

" autocomplete funcs and identifiers for languages
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

