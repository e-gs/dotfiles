
"------------------------------------------------------------------------------
" General Settings
"------------------------------------------------------------------------------
set number
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set mouse=a
set shell=/bin/zsh
set list
set listchars=tab:▸\ ,trail:·
set termguicolors
set hidden
" set spell
set title
set ignorecase
set smartcase
set nowrap
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set splitbelow
set clipboard=unnamedplus
set updatetime=300 " Rdeuce time for highlighting other references
set redrawtime=1000 " Allow more time for loading syntax on large files
set inccommand=nosplit
" set guicursor=
" set autoindent
" set wildmode=longest:full,full

"------------------------------------------------------------------------------
" Key maps
"------------------------------------------------------------------------------

let mapleader = "\<space>"

" quick access to settings
nmap <leader>ve :e ~/.config/nvim/init.vim<CR>
nmap <leader>cm :e ~/.config/nvim/plugins/coc.vim<CR>
nmap <leader>vc :e ~/.config/nvim/coc-settings.json<CR>
nmap <leader>vr :source ~/.config/nvim/init.vim<CR>

" Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

" reset search highlight
nmap <leader>/ :nohlsearch<CR>

" duplicate current line
nmap <leader>d yyp

" open files (also new non-existent)
map gf :e <cfile><CR>

" reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" keep centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z


"------------------------------------------------------------------------------
" Modifications
"------------------------------------------------------------------------------

" set working directory to path of file in buffer on buffer enter
autocmd BufEnter * silent! lcd %:p:h

"------------------------------------------------------------------------------
" Plugins (don't forget :PlugInstall and :PlugClean)
"------------------------------------------------------------------------------
" plugin storage path
call plug#begin('~/.local/share/nvim/plugged')

source ~/.config/nvim/plugins/coc.vim             " language server
source ~/.config/nvim/plugins/doge.vim            " doc string generator
source ~/.config/nvim/plugins/polyglot.vim        " sytax highlighting
source ~/.config/nvim/plugins/airline.vim         " status bar
source ~/.config/nvim/plugins/nerdcommenter.vim   " code comments
source ~/.config/nvim/plugins/floaterm.vim        " floating terminal window
source ~/.config/nvim/plugins/nord.vim            " color theme
source ~/.config/nvim/plugins/highlightedyank.vim " yank selection highlight
source ~/.config/nvim/plugins/nerdtree.vim        " file explorer
source ~/.config/nvim/plugins/fzf.vim             " fuzzy file search
source ~/.config/nvim/plugins/fugitive.vim        " git integration
source ~/.config/nvim/plugins/tabular.vim         " text alignment utility
source ~/.config/nvim/plugins/unimpaired.vim      " command shortcuts :h unimpaired
source ~/.config/nvim/plugins/markdown.vim        " markdown support incl folding

call plug#end()
doautocmd User PlugLoaded " autocmd for commands to execute after plugins loaded

