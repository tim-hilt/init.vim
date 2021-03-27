" Modular approach to vimrc

source /home/tim/.config/nvim/config/misc.vim
source /home/tim/.config/nvim/config/keymaps.vim
source /home/tim/.config/nvim/config/plug.vim
source /home/tim/.config/nvim/config/treesitter.vim
source /home/tim/.config/nvim/config/autostart.vim

lua dofile('/home/tim/.config/nvim/lua/lsp.lua')
lua dofile('/home/tim/.config/nvim/lua/compe-config.lua')
