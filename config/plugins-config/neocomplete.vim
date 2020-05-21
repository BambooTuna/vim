" 起動時に有効
let g:neocomplete#enable_at_startup = 1
" ポップアップメニューで表示される候補の数
let g:neocomplete#max_list = 50
" キーワードの長さ、デフォルトで80
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_ignore_case = 1
highlight Pmenu ctermbg=6
highlight PmenuSel ctermbg=3
highlight PMenuSbar ctermbg=0
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"



