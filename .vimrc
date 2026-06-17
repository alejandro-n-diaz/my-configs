" VIM SETTINGS
set number
set clipboard=unnamed " for Mac
" set clipboard=unnamedplus " for Linux
set splitright 
set splitbelow
set autoindent
set smartindent

set foldmethod=indent " fold based on indentation
set foldlevel=99 " set automatic fold level
set foldnestmax=1 " set max number of nested folds

" change cursor to line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" INSTALL PLUGINS WITH VIM PLUG
call plug#begin()
" convenient functionality
Plug 'tpope/vim-sensible' " set baseline vim preferences
Plug 'tpope/vim-commentary' " toggle comment
Plug 'tpope/vim-surround' "  auto surround selected text with delimiters
Plug 'jiangmiao/auto-pairs' " automatically insert right delimeter when left delimeter is inserted
Plug 'christoomey/vim-tmux-navigator' " navigate between vim and tmux panes

" linting, formatting, autocomplete
Plug 'dense-analysis/ale' " linting and formatting
Plug 'davidhalter/jedi-vim' " python syntax completion
Plug 'ervandew/supertab' " tab completion

" file tree
if has('nvim')
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'
else
	Plug 'preservim/nerdtree'  " file tree for vim
endif

" themes, display, syntax highlighting
Plug 'sheerun/vim-polyglot' " syntax highlighting language support
Plug 'vim/colorschemes' " all vim colorschemes
Plug 'vim-airline/vim-airline' " status bar at bottom of window
Plug 'bling/vim-bufferline' " show active buffers in status bar 

" git
Plug 'tpope/vim-fugitive' " vim git commands
Plug 'rbong/vim-flog' " shows git branch

" fuzzy finder!
Plug 'junegunn/fzf', {'do':{-> fzf#install()}}
Plug 'junegunn/fzf.vim'

" markdown 
Plug 'preservim/vim-markdown' " enable folding 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} " markdown preview in browser 
call plug#end()

" PLUGIN SETTINGS
if !has('nvim') 
	" NERDTree settings
	nnoremap <C-t> :NERDTreeToggle<CR>
	" autocmd StdinReadPre * let s:std_in=1
	" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
endif

" ale settings
let g:ale_linters = {
			\ 'python': ['flake8', 'jedils'],
			\ 'markdown': ['prettier', 'markdownlint']
			\}
let g:ale_fixers = {
			\	'python': ['black', 'isort', 'autoflake'],
			\ 'markdown': ['prettier', 'markdownlint']
			\}
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

" jedi settings
let g:jedi#popup_on_dot = 0

" markdown settings
autocmd FileType markdown setlocal textwidth=80
autocmd FileType markdown setlocal spell spelllang=en_us

colorscheme habamax 
