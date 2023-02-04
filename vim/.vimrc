" Sets the font
set guifont=JetBrainsMono\ Nerd\ Font:h12

" enable soft wrapping at the edge of the screen
set wrap

" make it not wrap in the middle of a word
set linebreak

" Show relative line numbers
set number relativenumber

" Speed up scrolling in Vim
set ttyfast

" Uses the clipboard as the default register
set clipboard=unnamed

" Set shift width to 4 spaces.
set shiftwidth=4

" Insert 4 spaces when tab is pressed
set softtabstop=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Set the commands to save in history default number is 20.
set history=1000

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Turn syntax highlighting on.
syntax on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
" Enable plugins and load plugin for the detected file type.
" Load an indent file for the detected file type.
filetype plugin indent on

" PLUGINS {{{
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'
Plug 'psliwka/vim-smoothie'
Plug 'ap/vim-css-color'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
call plug#end()
" }}}

" BINDINGS {{{

" }}}

" Set the color scheme.
colorscheme gruvbox-material
if has('termguicolors')
    set termguicolors
endif
set background=dark

" Enables transparent background
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
let g:gruvbox_transparent_bg = 1

" Sets the airline color scheme
let g:airline_theme = 'gruvbox_material'

" Enable ALE integration with airline.
let g:airline#extensions#ale#enabled = 1

" Enables powerline font symbols
let g:airline_powerline_fonts = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Enable completion where available.
let g:ale_completion_enabled = 1
