call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-sensible'
" https://github.com/tpope/vim-sleuth
Plug 'tpope/vim-sleuth'

" Easily install and manage LSP servers, DAP servers, linters, and formatters.
" TODO: autoinstall at least gopls and golangci-lint-lsp
" https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#configuration
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Plug 'fatih/vim-go'
" TODO recommended configuration
" https://github.com/neovim/nvim-lspconfig#suggested-configuration
Plug 'neovim/nvim-lspconfig'

" https://github.com/hrsh7th/nvim-cmp
" autocompletion
" TODO
Plug 'hrsh7th/nvim-cmp'

Plug 'nvim-lua/plenary.nvim'
" https://github.com/nvim-telescope/telescope.nvim
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://gitlab.com/davvid/telescope-git-grep.nvim'

" https://github.com/ap/vim-css-color
Plug 'ap/vim-css-color'
"
" TODO
" https://github.com/folke/trouble.nvim

" TODO
" statusbar
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

"
"
" Themes
" https://github.com/mhartington/oceanic-next
Plug 'mhartington/oceanic-next'
" https://github.com/morhetz/gruvbox?tab=readme-ov-file
Plug 'morhetz/gruvbox'
" https://github.com/navarasu/onedark.nvim?tab=readme-ov-file
Plug 'navarasu/onedark.nvim'
" https://github.com/sainnhe/everforest/?tab=readme-ov-file
Plug 'sainnhe/everforest'
" https://github.com/ray-x/starry.nvim
" TODO multiple themes
Plug 'ray-x/starry.nvim'
"



call plug#end()

" telescope
" https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file
" :Telescope git_files
" :Telescope find_files
" :Telescope buffers
" https://github.com/davvid/telescope-git-grep.nvim
" :Telescope git_grep

lua <<EOF
require('telescope').setup()
require('telescope').load_extension('git_grep')
EOF

lua <<EOF
require("mason").setup()
require("mason-lspconfig").setup()
EOF

runtime treesitter.vim
