#!/usr/bin/bash

# TRUE=0
# FALSE=1
NVIM_DIR="$HOME/.config/nvim"
NVIM_PACK_DIR="$NVIM_DIR/pack"
NVIM_COLORSCHEME_DIR="$NVIM_PACK_DIR/default/start"

# ask() {
#     local name="$1"
#     read -p "Install ${name}? (y/n) "
#     case $REPLY in
#         [Yy]*)
#             echo "Installing..."
#             return $TRUE
#             ;;
#         [Nn]*)
#             echo "Skipping"
#             ;;
#         *)
#             echo "Unknown answer, skipping"
#             ;;
#     esac
#     return $FALSE
# }

echo "Stowing mandatory files..."
stow -v -t ~ stow/
echo "Done."

echo ""

echo "==== Optionals: ===="
echo "nvim: gruvbox"
echo "git clone https://github.com/morhetz/gruvbox $NVIM_COLORSCHEME_DIR/gruvbox/"
echo "git clone https://github.com/sainnhe/gruvbox-material $NVIM_COLORSCHEME_DIR/gruvbox-material/"

echo "nvim: fugitive"
echo "git clone https://tpope.io/vim/fugitive.git $NVIM_PACK_DIR/tpope/start/fugitive/"

echo "nvim: vinegar"
echo "git clone https://github.com/tpope/vim-vinegar.git $NVIM_PACK_DIR/tpope/start/vinegar/"

echo "nvim: obsession"
echo "git clone https://github.com/tpope/vim-obsession.git $NVIM_PACK_DIR/tpope/start/obsession/"

echo "nvim: lsp"
echo "git clone https://github.com/neovim/nvim-lspconfig $NVIM_PACK_DIR/nvim/start/nvim-lspconfig"

echo "nvim: fzf.vim"
echo "git clone https://github.com/junegunn/fzf.vim.git $NVIM_PACK_DIR/junegunn/start/fzf.vim"

