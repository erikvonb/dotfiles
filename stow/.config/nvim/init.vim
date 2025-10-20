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
set foldlevel=99

" Splits
set splitright
set splitbelow

" Show special characters
set listchars=tab:→\ ,trail:·,nbsp:+
set list
highlight Whitespace ctermfg=6

" Misc insert mode maps
inoremap jk <esc>

" Tab switching
nnoremap <c-h> :tabprevious<cr>
nnoremap <c-l> :tabnext<cr>

" Misc normal mode maps
nnoremap + <end>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :edit $MYVIMRC<cr>

" Misc visual mode maps
vnoremap + <end>

augroup filetype_haskell
    autocmd FileType haskell setlocal shiftwidth=2
    autocmd FileType cabal setlocal shiftwidth=2
augroup END

" fzf setup
if isdirectory(expand("~/.fzf"))
    set rtp+=~/.fzf
    nnoremap <leader>ff :FZF<cr>
endif

" Simple way to allow an additional local dotfile.
if filereadable(expand("~/.nvimrc.local"))
    source ~/.nvimrc.local
endif
