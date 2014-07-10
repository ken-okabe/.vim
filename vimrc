"https://github.com/Shougo/neobundle.vim
"sudo npm -g install jshint
"sudo npm -g install js-beautify


nnoremap ; :
nnoremap : ;

nnoremap j h
nnoremap i k
nnoremap k j

nnoremap <c-i> i
inoremap <c-j> <esc>

nnoremap h <c-/>

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"---------------------------
" Start Neobundle Settings.
"---------------------------
" Neobundle dir
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle itself is mangaed/fetched
NeoBundleFetch 'Shougo/neobundle.vim'

" Packages

NeoBundle 'scrooloose/syntastic'
NeoBundle 'maksimr/vim-jsbeautify' 
NeoBundle 'marijnh/tern_for_vim', {
  \ 'build': {
  \   'others': 'npm install'
  \}}



call neobundle#end()

" Required:
filetype plugin indent on

"  ask if install new pakage
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

let g:syntastic_mode_map = {
      \  'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': []
      \ }
