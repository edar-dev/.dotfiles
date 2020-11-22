

"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
"01100101 01100100 01100001 01110010 

source ~/.config/nvim/plug-config/startify.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/fzf.vim


"************************************************************
""{{{ Plugin
"************************************************************

call plug#begin()

" Theme
Plug 'arcticicestudio/nord-vim'

" True snippet and additional text editing support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FZF {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
"}}}

" {{{ Git
if executable('git')
  " Plug 'airblade/vim-gitgutter'
  Plug 'stsewd/fzf-checkout.vim'
  " https://gist.github.com/voitd/60f606b02724dbb863ed09e7f5679b43
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  " Git commit browser.
  Plug 'junegunn/gv.vim'
  " reveal the hidden message from Git under the cursor quickly
  Plug 'rhysd/git-messenger.vim'
endif
" }}} 

" Fancy start screen
Plug 'mhinz/vim-startify'

" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Cool Icons
Plug 'ryanoasis/vim-devicons'

" Rainbow Parentheses Improved
Plug 'frazrepo/vim-rainbow'

" displaying thin vertical lines at each indentation level for code indented with spaces
Plug 'Yggdroot/indentLine'

" Terminal
Plug 'voldikss/vim-floaterm'

" Closetags
Plug 'alvan/vim-closetag'

"Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'

" Surround
Plug 'machakann/vim-sandwich'

" Auto commentary [gcc]
Plug 'tpope/vim-commentary'

" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'

" View and search LSP symbols, tags
Plug 'liuchengxu/vista.vim'

" Live server
Plug 'turbio/bracey.vim'

" Highlight conflict markers.[x and ]x
" command ct for themselves, co for ourselves, cn for none and cb for both
Plug 'rhysd/conflict-marker.vim'

"Yank something that you want to console.log into your register and then run :Consolate
Plug 'agarrharr/consolation-vim'

" Emmet snippets
Plug 'mattn/emmet-vim'

" Undo time travel
Plug 'mbbill/undotree'

" Rooter changes the working directory to the project root when you open a file or directory.
Plug 'airblade/vim-rooter'

" Motion | replaced by coc-smartf
Plug 'justinmk/vim-sneak'

" How long vim starts
Plug 'dstein64/vim-startuptime'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

" Highlight colors in buffer
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

"************************************************************
""}}}
"************************************************************
                             
"************************************************************
""{{{ Basic setup
"************************************************************

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

"************************************************************
""}}}
"************************************************************

"************************************************************
""{{{ Plugin config
"************************************************************
" Theme
colorscheme nord

"************************************************************
""}}}
"************************************************************

"************************************************************
""{{{ Mapping
"************************************************************

nnoremap <silent><C-p> :call FzfOmniFiles()<CR>

"************************************************************
""}}}
"************************************************************

"************************************************************
""{{{ Visual Settings
"************************************************************
hi! VertSplit guibg=NONE guifg=#001a24
"************************************************************
""}}}
"************************************************************

"************************************************************
""{{{ Next Section
"************************************************************
"************************************************************
""}}}
"************************************************************