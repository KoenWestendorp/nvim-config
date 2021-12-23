call plug#begin('~/.config/nvim/plugged')
" ## Colorschemes
Plug 'morhetz/gruvbox'
Plug 'lifepillar/gruvbox8'
Plug 'itchyny/lightline.vim'
Plug 'owozsh/amora'
" ## Functionality
" ### Quality of life
Plug 'Raimondi/delimitMate'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
Plug 'justinmk/vim-sneak'
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'
" ### Completion and snippets
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Semantic language support
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
Plug 'ray-x/lsp_signature.nvim'

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'

" ### Utilities
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'tweekmonster/startuptime.vim'
" ## Language support
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
"Plug 'keith/swift.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
"Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'davidoc/taskpaper.vim'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
call plug#end()
