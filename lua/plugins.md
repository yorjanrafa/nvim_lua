
" dense analisis ale

call plug#begin('~/.config/nvim/plugins/plugins/plugged')




Plug 'Vimjas/vim-python-pep8-indent'
Plug 'dyng/ctrlsf.vim'

Plug 'nvim-pack/nvim-spectre'

Plug 'cshuaimin/ssr.nvim'


"Plug 'MunifTanjim/nui.nvim'
"Plug 'folke/noice.nvim'
"Plug 'feline-nvim/feline.nvim'
"Plug 'rcarriga/nvim-notify'

Plug 'nvim-lualine/lualine.nvim'

Plug 'junegunn/fzf'

Plug 'junegunn/fzf.vim'

Plug 'lewis6991/gitsigns.nvim'
"Plug 'sainnhe/everforest'

Plug 'p00f/nvim-ts-rainbow'

Plug 'tpope/vim-fugitive'
Plug 'vim-autoformat/vim-autoformat'

"Plug 'MunifTanjim/nui.nvim'


"Plug 'sainnhe/edge'


"Plug 'nvim-neo-tree/neo-tree.nvim'


" Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

   
"Plug 'hhsnopek/vim-sugarss'
"Plug 'batsuev/csscomb-vim'
"Plug 'sscomb/vim-csscomb'

" ___________________________________________________
" --------------Themes and appearance---------------|
" --------------------------------------------------|
  Plug 'kyazdani42/nvim-web-devicons'             " | Icons wiht colours 
"  Plug 'catppuccin/nvim', {'as': 'catppuccin'}    " | Theme (SEXY)
  Plug 'sainnhe/sonokai'                          " | Theme gruvbox awesome
  Plug 'sainnhe/gruvbox-material'                          " | Theme gruvbox awesome
  Plug 'sainnhe/everforest'                          " | Theme gruvbox awesome
  " Plug 'morhetz/gruvbox'                          " | Theme gruvbox  
  Plug 'kaicataldo/material.vim'
  Plug 'olimorris/onedarkpro.nvim'

" Plug 'codehearts/mascara-vim'                   " | Italic configuration
"---------------------------------------------------



" __________________________________________________
" ------------Autocompletions and others------------|
" --------------------------------------------------|
"  Plug 'neovim/nvim-lspconfig'                    " | LSP (Definition?? xdd)
  "Plug 'nvim-lua/completion-nvim'                 " | Square completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " | Completions languajes
"  "Plug 'terrortylor/nvim-comment'                 " | Comments
  Plug 'jiangmiao/auto-pairs'                   " | Auto close ({[
  "Plug 'onsails/lspkind-nvim'                    " | Symbols in completion
"  Plug 'ray-x/lsp_signature.nvim'                 " | Information code
"---------------------------------------------------



" __________________________________________________
" ---------------Bars and complemets UI-------------|
" --------------------------------------------------|
"  Plug 'dense-analysis/ale'                       " | required for lightline-ale
  " Plug 'itchyny/lightline.vim'                    " | Status line
  " Plug 'spywhere/lightline-lsp'
 " Plug 'maximbaz/lightline-ale'                   " | Lightline with steroids
  Plug 'lukas-reineke/indent-blankline.nvim'      " | Ident awesome
  Plug 'akinsho/bufferline.nvim'                  " | Tabs with button close (buffer) in line
  Plug 'Pocco81/TrueZen.nvim'                     " | Zen mode (Util)
"---------------------------------------------------



" __________________________________________________
" ------------------- Utilities --------------------|
" --------------------------------------------------|
  Plug 'voldikss/vim-floaterm'                    " | Float terminal
  "Plug 'tmhedberg/simpylfold'                    " | Folding
  Plug 'pseewald/vim-anyfold'                     " | Folding
  Plug 'ervandew/supertab'                        " | Select whitout tab Ctrl+n
  Plug 'mg979/vim-visual-multi'                   " | Folding
  Plug 'karb94/neoscroll.nvim'                    " | Scroll sweet
  Plug 'metakirby5/codi.vim'                      " | PlayGroud code 
"---------------------------------------------------



" __________________________________________________
" -----------Fuzzy finder (telescope)---------------|
" --------------------------------------------------|
"   Plug 'nvim-telescope/telescope.nvim'          " | Fuzzy finder, project gestor (and more)
"   Plug 'nvim-lua/popup.nvim'                    " |
"   Plug 'nvim-lua/plenary.nvim'                  " |
"   Plug 'ahmedkhalf/project.nvim'                " |
"   Plug 'nvim-telescope/telescope-media-files.nvim'
"---------------------------------------------------



" __________________________________________________
" ----------------- Web Frontend -------------------|
" --------------------------------------------------|
  "Plug 'bkaney/vim-postcss-sorting'
  " Plug 'Oldenborg/vim-px-to-rem'
"  Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"  Plug 'turbio/bracey.vim'                         " | live-server
  Plug 'KabbAmine/vCoolor.vim'                     " | Color picker           
  Plug 'mattn/emmet-vim'                           " | Emmet
Plug 'norcalli/nvim-colorizer.lua'
"---------------------------------------------------



" ________________________________________________
" ------------------ Snippets --------------------|
" ------------------------------------------------|
  Plug 'SirVer/ultisnips'
  "Plug 'grvcoelho/vim-javascript-snippets'
  Plug 'tweekmonster/django-plus.vim'
  Plug 'honza/vim-snippets'
  Plug 'rafamadriz/friendly-snippets'   
"---------------------------------------------------



" ________________________________________________
" ------------------- Syntax ---------------------|
" ------------------------------------------------|
 Plug 'sheerun/vim-polyglot'                    " |
 "Plug 'pangloss/vim-javascript'                " |
 Plug 'nvim-treesitter/nvim-treesitter'         " | Syntax correct color
"-------------------------------------------------
Plug 'tpope/vim-commentary'

"Plug 'josa42/vim-lightline-coc'
Plug 'majutsushi/tagbar'
" Plug 'glepnir/dashboard-nvim'

"Plug 'norcalli/nvim-base16.lua'

"Plug 'projekt0n/github-nvim-theme'
"Plug 'marko-cerovac/material.nvim'
"Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim'


Plug 'nvim-lua/plenary.nvim'
Plug 'rest-nvim/rest.nvim'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'themaxmarchuk/tailwindcss-colors.nvim'

call plug#end()



let g:python3_host_prog="/bin/python3"


set termguicolors



