" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  set termguicolors
endif
if ($THEME ==? "light")
	set background=light
elseif ($THEME ==? "dark")
	set background=dark
else
	set background=light
endif
let base16colorspace=256
set termguicolors
syntax on
" Make sure the background of nvim is transparent

colorscheme dot_light

hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE 
hi Normal guibg=NONE ctermbg=NONE

