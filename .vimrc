set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Additional Plugins
Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'preservim/nerdcommenter'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'raimondi/delimitmate'

call vundle#end()            " required
filetype plugin indent on    " require

" Custom Keybinds
inoremap kj <ESC>
" Map Ctrl-Backspace to delete the previous word in insert mode.
inoremap <C-BS> <C-w>

" NERDTree Keybinds
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set ts=4 sw=4
set autoindent
set number

syntax on

" Set theme
set background=dark
colorscheme onedark
let g:airline_theme='onedark'

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

if &term =~ '256color'
	set t_ut=
endif
