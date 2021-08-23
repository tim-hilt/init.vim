" Modular approach to vimrc
source /home/$USER/.config/nvim/config/plug.vim
source /home/$USER/.config/nvim/config/misc.vim
source /home/$USER/.config/nvim/config/autostart.vim
source /home/$USER/.config/nvim/config/keymaps.vim

lua << EOF
prefix = "/home/" .. os.getenv("USER")
dofile(prefix .. "/.config/nvim/lua/theme.lua")
dofile(prefix .. "/.config/nvim/lua/lsp.lua")
dofile(prefix .. "/.config/nvim/lua/compe-config.lua")
dofile(prefix .. "/.config/nvim/lua/treesitter.lua")
EOF

