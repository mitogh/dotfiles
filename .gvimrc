set guifont=Hack:h14
set linespace=10
" Remove toolbar and scrollbars from gVim,
" because, frankly, they are a waste of space.
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=R
" Add Vim icon to window, where it is shown depends on platform, windowing
" system, X11 server depth, etc etc.
set guioptions+=i

" Automagically yank to windowing system clipboard on visual select.
" This makes gvim behave like a normal unix application.
set guioptions+=a
" Only remove menubar on non-windows platforms.
" The windows version looks a bit like ass without it,
" somehow, it develops ugly white borders around
" the bottom frame, I have no clue where they come from.
if !has("gui_win32")
  :set guioptions-=m
endif
"syntax on
"let g:rehash256 = 1
"let g:molokai_original = 1
"let g:rehash256 = 1
" Turn on only autoselect, console dialogs and tab pages
" No menubar, toolbar or scrollbars, as minimal as possible
"set guioptions=Ace
" Use smooth, antialiased fonts (OS X Specific)
set antialias

" Turn off beep
set vb t_vb=
" Get Dejavu Sans mono here: http://dejavu-fonts.org/
"set guifont=Dejavu\ Sans\ Mono:h13

" Turn off beep
set vb t_vb=

if has("gui_macvim")
  " fullscreen options (MacVim only), resized window when changed to fullscreen
  "
  " If you are on OSX Lion, and you hate Lion's native full screen, turn it off for macvim:
  "
  "   defaults write org.vim.MacVim MMNativeFullScreen 0
  "
  " Press Ctrl+Cmd+F to go full screen.
  set fuoptions=maxvert,maxhorz

  " Available when using experimental renderer in macvim
  " set transparency=15
end
" annoying shift mistakes
cmap W w
"set guicursor+=n-v-c:blinkon0
colorscheme codeschool
