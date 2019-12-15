set number

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
call plug#end()

call deoplete#enable()

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
