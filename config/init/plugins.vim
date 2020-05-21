if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplete.vim'

" scala
NeoBundle 'derekwyatt/vim-scala'

" color
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()

NeoBundleCheck


filetype plugin indent on
