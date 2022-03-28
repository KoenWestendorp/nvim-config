let mapleader = "\<Space>"

nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>sp :split<CR>
nnoremap tn :tabnew <C-R>=expand("%:p:h") . "/" <CR>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap to :tabonly<CR>


" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" Rust
nnoremap <leader>cr :!cargo run<cr>

" Pandoc conversions of MarkDown
nnoremap <leader>h     <cmd>! pandoc --mathml --standalone --css $HOME/.config/pandoc/style.css --self-contained -i % -o %.html && open %.html<CR>
nnoremap <leader>H     <cmd>! pandoc --pdf-engine=tectonic -i % -o %.pdf && open %.pdf<CR>

" Code navigation shortcuts
" as found in :help lsp
nnoremap <leader><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" rust-analyzer does not yet support goto declaration
" re-mapped `gd` to definition
nnoremap <silent>gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gde    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>rr     <cmd>lua vim.lsp.buf.rename()<CR>

"""" Trigger completion with <tab>
"""" found in :help completion
"""" Use <Tab> and <S-Tab> to navigate through popup menu
"""inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"""inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"""
"""" use <Tab> as trigger keys
"""imap <Tab> <Plug>(completion_smart_tab)
"""imap <S-Tab> <Plug>(completion_smart_s_tab)

" Enable type inlay hints
autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ only_current_line = false }

" Set updatetime for CursorHold
" 1000 ms of no cursor movement to trigger CursorHold
set updatetime=1000
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.diagnostic.open_float()

" Goto previous/next diagnostic warning/error
nnoremap <silent> [e <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]e <cmd>lua vim.lsp.diagnostic.goto_next()<CR>



" Quick-save
nmap <leader>w :w<CR>


" # Keyboard shortcuts
" ; as :
nnoremap ; :

" Ctrl+h to stop searching
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" ### Save all, save and close all
nnoremap <leader>ww <esc>:wa<CR>
nnoremap <leader>wq <esc>:wqa<CR>
nnoremap W <esc>:wa<CR>

" Jump to start and end of line using the home row keys
map H ^
map L $

nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>
" <leader>s for Rg search
noremap <leader>s :Rg<CR>
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow' : printf('fd --type file --follow | proximity-sort %s', shellescape(expand('%')))
endfunction

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, {'source': s:list_cmd(),
  \                               'options': '--tiebreak=index'}, <bang>0)


" Open new file adjacent to current file
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Map cnext and cprev
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprev<CR>

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" <leader>, shows/hides hidden characters
nnoremap <leader>, :set invlist<cr>

" <leader>q shows stats
nnoremap <leader>q g<c-g>

" Keymap for replacing up to next _ or -
noremap <leader>m ct_

" I can type :help on my own, thanks.
map <F1> <Esc>
imap <F1> <Esc>
