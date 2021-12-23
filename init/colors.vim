" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif
set background=dark
let base16colorspace=256
" colorscheme base16-gruvbox-dark-hard
colorscheme gruvbox
syntax on
" Make sure the background of nvim is transparent
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=none 
hi Normal guibg=NONE ctermbg=NONE
