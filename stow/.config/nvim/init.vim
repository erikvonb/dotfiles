let mapleader=","

" Line wrapping etc
set wrap
set linebreak
set breakindent

" Display stuff
set number
set relativenumber
set scrolloff=2

" Indenting
set shiftwidth=4
set expandtab

" Folding
set foldmethod=indent
set foldcolumn=2

" Misc insert mode maps
inoremap jk <esc>

" Tab switching
nnoremap <c-h> :tabprevious<cr>
nnoremap <c-l> :tabnext<cr>

" Misc normal mode maps
nnoremap + <end>
nnoremap <leader>sv :source $MYVIMRC<cr>

