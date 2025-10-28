#!/usr/bin/bash

NVIM_DIR="$HOME/.config/nvim"
NVIM_PACK_DIR="$NVIM_DIR/pack"
NVIM_COLORSCHEME_DIR="$NVIM_PACK_DIR/default/start"

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

echo "nvim: lsp"
echo "git clone https://github.com/neovim/nvim-lspconfig $NVIM_PACK_DIR/nvim/start/nvim-lspconfig"
