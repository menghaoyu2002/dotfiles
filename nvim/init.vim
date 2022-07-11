set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'lewis6991/spellsitter.nvim'

Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'romgrk/barbar.nvim'
Plug 'terrortylor/nvim-comment'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
lua require('config')

set mouse=a
set laststatus=0

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
nnoremap <C-b>X :bd!<CR>

" NERDTree Keybinds
nnoremap <C-t>t :NvimTreeToggle<CR>
nnoremap <C-t>f :NvimTreeFocus<CR>
nnoremap <C-t>x :NvimTreeClose<CR>

nnoremap <C-/> :CommentToggle<CR>
xnoremap <C-/> :'<,'>CommentToggle<CR>

" one tab is four spaces, don't @ me
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set number
syntax on

" Set theme
set background=dark
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1 
