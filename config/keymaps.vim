" Remap leader key
let g:mapleader = "\<Space>"

" The following mappings are concerned with insert-mode
inoremap jk <ESC>
inoremap <S-CR> <ESC>o
inoremap <C-b> <ESC>:w<CR>:Buffers<CR>

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" The following mappings are concerned with normal-mode
nnoremap <SPACE> <Nop>
nnoremap <C-b> :w<CR>:Buffers<CR>
nnoremap ! :w<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

lua << EOF
local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils= {}

vim.g.completion_confirm_key = ""
MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
    if vim.fn.complete_info()["selected"] ~= -1 then
      vim.fn["compe#confirm"]()
      return npairs.esc("<c-y>")
    else
      vim.defer_fn(function()
        vim.fn["compe#confirm"]("<cr>")
      end, 20)
      return npairs.esc("<c-n>")
    end
  else
    return npairs.check_break_line_char()
  end
end


remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
EOF
