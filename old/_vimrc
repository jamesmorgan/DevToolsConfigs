set nocompatible
source $VIMRUNTIME/mswin.vim
behave mswin

call pathogen#runtime_append_all_bundles()

syntax enable
colorscheme desert
set nu

"set cursorline
set scrolloff=5

"enable spell check
set nospell spelllang=en_gb

set history=100

syntax enable
set syntax=on

set paste
"toggle paste when in insert mode
set pastetoggle=<F11>

set noexpandtab
set softtabstop=0
set shiftwidth=4
set tabstop=4

"automatically indent
set ai
set smartindent
set cindent

set hlsearch
set incsearch
"case insensitive search
set ignorecase
"revert to case sensitive if search contains capitals
set smartcase
set infercase
set nowrap

"make it so mouse and keyboard don't exit select mode.
"this makes it so we can select with the mouse and then act on that block.
set selectmode=""

"completion menu.  
set wildmenu
set wildmode=list:longest

"list options
"tabs as >---
"end of lines as $
"tailing as _
set listchars=tab:>-,eol:$,trail:_

"always show the status line
set laststatus=2
set ruler

" show matching brackets
set showmatch

"plugins
"omni completion
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

