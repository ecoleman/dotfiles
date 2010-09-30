
set nocompatible 

syntax on

" searching
set hlsearch
set incsearch

" Tabs
set softtabstop=2       "Tabs are 2-spaces...using instead of 'tabstop' as per:
                        "  'Tabs should always be displayed as mod-8 horizontal spaces so that your
                        "  code looks the same in less/more as in your editor; not everyone is going to
                        "  be using the same tab width setting as you, so using ?set sts? to get what you
                        "  want for indentation is a much better strategy and will let other people work
                        "  with your code easily, too.'
                        "   -Comment by 'Jeremy' in"  Jamis Buck's 'VIM Follow-up'
                        "    article, http://bit.ly/BRG8 

set shiftwidth=2        "Number of spaces to use for each step of (auto)indent
set expandtab           "Replace "tab" characters with the number of  spaces defined
                        " by "tabstop" (aka: "soft tabs")

set smarttab            "When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop'
                        " or 'softtabstop' is used in other places

set cindent             "Get the amount of indent for line according the C indenting rules
                 
"set autoindent
"set smartindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

set ruler                       "Displays line number, column number, and %-location of
                                " cursor in file (on bottom of screen)

set number                      "Displays line numbers on the sidebar

set showmatch                   "When a bracket is inserted, briefly jump to the matching one.
set matchtime=1                 "Tenths of a second to show the matching paren, when 'showmatch' is set
set backspace=indent,eol,start  "Allows backspacing over autoindents and line breaks, allows deletion from before the point
                                " where the current insertion began

"set cursorline                  "Highlights the line the cursor is currently on.

set nowrap

colorscheme desert

set mouse-=a

" Mappings
noremap <C-d> :NERDTreeToggle<CR>

" Super Tab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<C-x><C-o>"

" autocomplete funcs and identifiers for languages
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

