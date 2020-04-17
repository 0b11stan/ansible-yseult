set number
set expandtab
set tabstop=4
set shiftwidth=4

noremap m l
noremap l k
noremap k j
noremap j h

noremap <C-m> <C-w>l
noremap <C-l> <C-w>k
noremap <C-k> <C-w>j
noremap <C-j> <C-w>h

" Plugins installation with vim-plug
call plug#begin(stdpath('data') . '/plugged')
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTree' }
  Plug 'sheerun/vim-polyglot'
  Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'vim-scripts/vim-autopep8', { 'on': 'Autopep8' }
  Plug 'rhysd/vim-clang-format',
  Plug 'zchee/deoplete-clang'
  Plug 'junegunn/goyo.vim'
call plug#end()

call deoplete#enable()

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
