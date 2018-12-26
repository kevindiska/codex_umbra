" Plugins {{{
call plug#begin('~/.vim/plugged')
" Colours and Rainbows {{{

Plug 'luochen1990/rainbow'
" }}}
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'gregsexton/matchtag'
Plug 'itchyny/calendar.vim'
Plug 'rstacruz/sparkup'
Plug 'dikiaap/minimalist'
Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'thaerkh/vim-workspace'
" Code Completion Plugin {{{
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
 	Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" }}}

" Snippet plugin {{{
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" }}}

call plug#end()
" }}}
" Plugin Configuration {{{
" autoload {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:user_emmet_leader_key='<C-E>'		" this changes emmet shortcut to Ctrl+e+<Comma>
let g:deoplete#enable_at_startup = 1
" }}}
"autocmd {{{
autocmd FileType html,css EmmetInstall	" 	be used on html & css only
autocmd FileType vim set foldmethod=marker
" }}}

" Vim-workspace
let g:workspace_session_name = 'Session.vim'
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_autosave = 1



" }}}
" Vim Configuration {{{
" Search tweaks {{{
set hlsearch
set ignorecase
set smartcase
set incsearch
" }}}
" TAB settings {{{
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" }}}
" User Experience {{{
set wildmenu
syntax on
set noshowmode
set showmatch
set mouse=a
set cursorline
set number
set nowrap
" Theme ???
colorscheme gruvbox
" }}}
" {{{
set hidden
set confirm
" }}}
" External Source {{{
source ~/.vim/function/NERDTree.vim
" }}}
" autocmd {{{
autocmd VimEnter * NERDTree
autocmd VimLeavePre * NERDTreeClose
" }}}
" }}}
" Mapping {{{
inoremap jk <ESC>
nmap <leader>] :nohlsearch<CR>
nmap <F12> :Calendar<CR>

" Window shortcut
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" HARDCORE MODE !!!
noremap <RIGHT> <NOP>
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>

" Plugin Mapping
nmap <F4> :NERDTreeToggle<CR>
nmap <C-S-A><PageUp> :bprevious<CR>
nmap <C-S-A><PageDown> :bnext<CR>
" }}}
