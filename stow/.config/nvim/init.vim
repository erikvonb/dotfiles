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

" Search case sensitivity
set ignorecase
set smartcase

" System clipboard
set clipboard+=unnamedplus

" Misc insert mode maps
inoremap jk <esc>

" Tab switching
nnoremap <c-h> :tabprevious<cr>
nnoremap <c-l> :tabnext<cr>

" Don't jump when searching
nnoremap * *N

" Close quickfix window
nnoremap <leader>q :cclose<cr>

" fugitive maps
nnoremap <leader>gb :Git blame<cr>

" LSP maps
nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap go <cmd>lua vim.lsp.buf.type_definition()<cr>
nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <leader>le <cmd>lua vim.diagnostic.open_float()<cr>

" Misc normal mode maps
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :edit $MYVIMRC<cr>

" End-of-line with +
nnoremap + <end>
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

let s:colorschemes=getcompletion("", "color")
if index(s:colorschemes, "gruvbox-material") >= 0
    colorscheme gruvbox-material
elseif index(s:colorschemes, "gruvbox") >= 0
    colorscheme gruvbox
endif

" Simple way to allow an additional local dotfile.
if filereadable(expand("~/.nvimrc.local"))
    source ~/.nvimrc.local
endif
