" Modular approach to vimrc

source $HOME/.config/nvim/config/misc.vim
source $HOME/.config/nvim/config/keymaps.vim
source $HOME/.config/nvim/config/plug.vim
lua require('config/lsp')
source $HOME/.config/nvim/config/treesitter.vim
source $HOME/.config/nvim/config/autostart.vim
