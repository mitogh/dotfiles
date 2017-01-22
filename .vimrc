" be iMproved
set nocompatible  
" Plugin manager
call plug#begin('~/.vim/plugged')
" Better git status after save
Plug 'git@github.com:airblade/vim-gitgutter.git'
" GUI Colorscheme
Plug 'git@github.com:29decibel/codeschool-vim-theme.git'
" Colorscheme for the terminal
Plug 'git@github.com:tomasr/molokai.git'
" Bar at the bottom
Plug 'git@github.com:vim-airline/vim-airline.git'
" For fast movement
Plug 'git@github.com:easymotion/vim-easymotion.git'
" Neerd treee to explore files
Plug 'git@github.com:scrooloose/nerdtree.git'
" Respect .editorconfig
Plug 'git@github.com:editorconfig/editorconfig-vim.git'
" CHeck on sintax please
Plug 'git@github.com:scrooloose/syntastic.git'
" Add autocompletition for closing of quotes, parenthesis, brackets, etc
Plug 'git@github.com:Raimondi/delimitMate.git'
" This script eases redundant typing when writing html or xml files 
Plug 'git@github.com:docunext/closetag.vim.git'
" Comment lines of code easily
Plug 'git@github.com:tpope/vim-commentary.git'
"Plug 'git@github.com:scrooloose/nerdcommenter.git'
" Search for files more easily
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
" Help sorround text
Plug 'git@github.com:tpope/vim-surround.git'
"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Show indentation lines
Plug 'nathanaelkane/vim-indent-guides'
" ACK in the terminal
Plug 'mileszs/ack.vim'
" Sintax for JSDOC
Plug 'git@github.com:othree/jsdoc-syntax.vim.git'
" Sintax for twig
Plug 'git@github.com:evidens/vim-twig.git'
" Allow to repeat commands
Plug 'git@github.com:tpope/vim-repeat.git'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM PLUGIN FOR BETTER SINTAX HIGHLIGTH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML 5
Plug 'git@github.com:othree/html5-syntax.vim.git'
" JS
Plug 'git@github.com:jelera/vim-javascript-syntax.git'
Plug 'git@github.com:pangloss/vim-javascript.git'
" JSON
Plug 'git@github.com:elzr/vim-json.git'
" Typescript
Plug 'git@github.com:leafgarland/typescript-vim.git'
" React JSX
Plug 'git@github.com:mxw/vim-jsx.git'
" Better indentation for PHP
Plug 'git@github.com:2072/PHP-Indenting-for-VIm.git'
" Add plugins to &runtimepath
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set backspace=indent,eol,start
set complete-=i
set smarttab
" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
""""""""""""""""""""""""""""""
" => Folding
""""""""""""""""""""""""""""""
set foldlevel=1
set foldcolumn=1
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
" Sets how many lines of history VIM has to remember
set history=1000
" use many levels of undo
set undolevels=1000      
" change the terminal's title
set title                
" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on
" Map binds
" Change map leader to space
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
"Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable 
set background=dark
" Use Unix as the standard file type
set ffs=unix,dos,mac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=100
" Set numeric on the left
set nu

set si "Smart indent
set wrap "Wrap lines
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Remove automatic comment next lines
" au FileType * set fo-=c fo-=r fo-=o
" Set the colorschme
" Neerdtree toggle state with ctrl + n
map <C-n> :NERDTreeToggle<CR>
" Send more characters for redraws
set ttyfast
" Show invisible characters
set list
set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
" Sintax check
" Ignore some fileA from Ctrl + p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components\|vendor\|dist\'
"let g:EditorConfig_core_mode = 'external_command'

" Show line to keep 80 columns
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Highlight the current cursor line
set cursorline 
" Use Ctrl + L to turn off searches.
nnoremap <C-L> :nohlsearch<CR><C-L>
" hides buffers instead of closing them. 
set hidden
" always set autoindenting on
set autoindent    
" copy the previous indentation on autoindenting
set copyindent    
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround    
" Disable arrow cursors
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"" It changes behaviour so that it jumps to the next row in the editor (much more natural):
nnoremap j gj
nnoremap k gk
" Relative numbers to the line
set relativenumber 
" Validate ng
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"mx-"]
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ln-"]
let g:used_javascript_libs = 'underscore,jquery,angularjs,angularui,react,requirejs,handlebars'

" Typescript sintax with autocomplete me
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" Colorscheme
colorscheme molokai
" Enable indented guides
autocmd VimEnter * :IndentGuidesEnable

" Configuration of PDV
let g:pdv_template_dir = $HOME . "/.vim/plugged/pdv/templates_snip/"
nnoremap <C-d> :call pdv#DocumentWithSnip()<CR>

"let g:ctrlp_working_path_mod=0
let g:ctrlp_mruf_relative = 1
let g:ctrlp_working_path_mode = 0
