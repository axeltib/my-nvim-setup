call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-sensible'

" Language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Autocompletion
Plug 'dense-analysis/ale'

" TOC and trees
Plug 'nvim-tree/nvim-tree.lua'
Plug 'ludovicchabant/vim-gutentags'
Plug 'rking/ag.vim'

" Git related
Plug 'tpope/vim-fugitive'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Icons
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

set updatetime=250

" Theme
colorscheme catppuccin-latte

" Settings
set history=100
set number
set foldmethod=indent
set foldlevel=1

" REMAPS
" 	Sets ctrl-space to confirm autocmplete selction
inoremap <silent><expr> <c-space> coc#pum#confirm()

" command remaps
cmap gs Git status
cmap nt NvimTreeOpen

" goto remaps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Lua setups
" lua require('setup_lua')
lua require("nvim-tree").setup()
lua require("toggleterm").setup()

" nvim tree setup

" git stuff

" go lang support
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:LanguageClient_serverCommands = {'go': ['gopls']}
let g:ale_linters = {'go': ['gopls']}

" autocmd BufWrite *.go :call LanguageClient#textDocument_formatting_sync()




