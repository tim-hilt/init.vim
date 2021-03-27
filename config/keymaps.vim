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
