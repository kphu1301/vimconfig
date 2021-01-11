set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on
set splitright
set splitbelow

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

if &t_Co > 1
   syntax enable
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

let g:ale_linters = {
\  'javascript': ['eslint'],
\}
let g:ale_fixers = {
      \  'javascript': ['prettier', 'eslint'],
      \  'css': ['prettier'],
      \  'html': ['prettier', 'eslint'],
      \}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
map <F2> :NERDTreeToggle<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
