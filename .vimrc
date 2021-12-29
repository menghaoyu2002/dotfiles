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
filetype plugin indent on    " required

" Custom Keybinds
inoremap kj <ESC>
 
" Rebind undo to ctrl + z
nnoremap <C-z> u
inoremap <C-z> <C-o>u

" open new splits at the bottom right
set splitbelow
set splitright

" Split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

" Split Resizing
nnoremap <C-w><C-L> :vertical res -5<CR>
nnoremap <C-w><C-H> :vertical res +5<CR>
noremap <C-w><C-K> :res -5<CR>
noremap <C-w><C-J> :res +5<CR>

" Split rearranging
nnoremap <C-r>l <C-w>r
nnoremap <C-r>h <C-w>R
nnoremap <C-r>e <C-w>x

" Buffer navigation
nnoremap <C-b>h :bp<CR>
nnoremap <C-b>l :bn<CR>
nnoremap <C-b>b :ls<CR>

" Close buffer 
nnoremap <C-b>x :bd<CR>

" NERDTree Keybinds
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" one tab is four spaces, don't @ me
set expandtab
set tabstop=4
set shiftwidth=4

set number
syntax on

" YouCompleteMe Settings
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Set theme
set background=dark
colorscheme onedark
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

if &term =~ '256color'
	set t_ut=
endif
