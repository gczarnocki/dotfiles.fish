" Vim settings

set nocompatible               " Vim compatibility mode

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

set backspace=indent,eol,start " Allow backspacing over indentation, EOLs
set ruler                      " Line and column information in status bar
set showcmd
set incsearch                  " Search on each keystroke when searching
set hlsearch                   " Highlight all the matches when searching
set hidden                     " Hide buffers instead of closing them

syntax on

set mouse=a                    " Mouse mode enabled (highlighting, scrolling etc.)

filetype plugin indent on

" ===== Plugin-specific settings =====

set background=dark
colorscheme solarized

" ----- vim-airline/vim-airline -----
" Always show status bar
set laststatus=2
" Use Powerline-patched fonts
let g:airline_powerline_fonts=1
" Show 'PASTE' when in 'paste' mode
let g:airline_detect_paste=1
" Show airline for tabs (buffers)
let g:airline#extensions#tabline#enabled=1
" Solarized theme for airline
let g:airline_theme='solarized'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree tabs with \t
"nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" Open NERDTree always open on startup
"let g:nerdtree_tabs_open_on_console_startup=1
