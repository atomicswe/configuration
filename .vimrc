syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set nu
set nuw=10
set laststatus=2

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

if !has('gui_running')
  set t_Co=256
endif

call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'valloric/youcompleteme'
call plug#end()
