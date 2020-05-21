" Undo
set undofile
set undodir=~/.vim/undo/

" ---------- システム系 ----------
set clipboard+=unnamed " システムとクリップボードを共有
set nowritebackup " バックアップは本体を保存したら消去
set number " 行番号表示
set showmatch " 括弧入力時の対応する括弧を表示

" 入力モード中に素早くqqと入力した場合はESCとみなす
inoremap qq <Esc>

noremap! <D-Up> {
noremap! <D-Down> }
noremap! <D-Left> ^
noremap! <D-Right> $

noremap <D-Up> {
noremap <D-Down> }
noremap <D-Left> ^
noremap <D-Right> $


" シンタックス
set t_Co=256
syntax on
set title
colorscheme jellybeans

" 文字化け
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" デフォルトのファイラー
let g:vimfiler_as_default_explorer=1
noremap ff :VimFiler -split -simple -winwidth=35 -no-quit<CR>

" バックスペースが機能しない問題の対策
" https://qiita.com/aki_55p/items/8b30f0d56ec7d70051a8
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
