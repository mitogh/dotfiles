filetype off
" Configure pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700
set nocompatible
set modelines=0
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
" Change the leader to be the ',' key
let mapleader=","
let g:mapleader=","
" Block the arrow keys 
map <left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Turn on the WiLd menu
set wildmenu
" Ignore compiled files
if has("win16") || has("win32")
    set wildignore+="/.git/","/.hg/","/.svn/",",.DS_Store
else
    set wildignore+=".git\*,.hg\*,.svn"
endif
" Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid
" A configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" No anoyying sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting the theme for the editor
syntax enable
colorscheme xoria256
set t_Co=256
set background=dark
" Show number of lines
set number
set numberwidth=4
" Choose a custom typeface and fontsize
set guifont=menlo\ for\ powerline:h14
" Removes top toolbar
set guioptions-=T 
" Removes right hand scroll bar
set guioptions-=r 
" Removes left hand scroll bar
set go-=L 
" Set the space between the lines
set linespace=5
" Show cursor line
set cursorline
" Set utf8 as standar encoding
set encoding=utf8
" Enable mouse usage
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmode
set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs, windows, spaces and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk
" A buffer becomes hidden when it is abandoned
set hid
" Smart Tabs
set smarttab
set shiftround
set autoindent
set copyindent
" Use spaces insted of tabs
set expandtab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
" Distance from the right margin 
set wrapmargin=10
" Hide the mouse when characters are typed
set mousehide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings for plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toogle NerdTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>
" Toogle NerdTree with Ctrl + N
map <C-N> :NERDTreeToggle<CR>
"See help completion for source,
""Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
  else
        return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"
set visualbell

" Fast save
nmap <leader>w :w!<cr>