set hidden
set hlsearch "Highlight search terms"
set incsearch "Highlight search as you type"
set ruler "Show the ruler"
set number "Show line numbers
set showcmd "Show incomplete commands"
set wildmenu "Shows tab completion menu for commands"
set termguicolors "Apply terminal GUI colorschemes"
set scrolloff=10 "Leave 10 lines before for zz center command"
set updatetime=100 "Set UI refresh time to 0.1 sec for gitgutter"
set linebreak
set showbreak=↪\ 
set listchars=tab:→-\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"set list
set ignorecase
set makeprg=./gradlew
set nocompatible
set directory=$HOME/.vim/swap
set undolevels=10000
set history=10000
set undodir=$HOME/.vim/undo
set undofile
set spelllang=en_gb
set spellfile=~/.vim/spell/en.utf-8.add
set encoding=utf-8
syntax on

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
"Plug 'dbeniamine/cheat.sh-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'mbbil/undotree'
Plug 'unblevable/quick-scope'
Plug 'flazz/vim-colorschemes'
"Plug 'hdiniz/vim-gradle'

"Themes
Plug 'chiendo97/intellij.vim'
Plug 'vim-scripts/lithochromatic'
Plug 'morhetz/gruvbox'				"3-Light or Dark
Plug 'leafOfTree/vim-svelte-theme'
Plug 'macguirerintoul/night_owl_light.vim'
Plug 'vim-scripts/tango-morning.vim'
Plug 'trevordmiller/nova-vim'			"1 Darkish
Plug 'yuttie/inkstained-vim'			"2 Light
call plug#end()

"Set colorscheme"
let g:impact_transbg=1
"let g:gruvbox_italic=1
let g:qs_highlight_on_keys = ['f','F','t','T']

colorscheme iceberg
set background=dark
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"Switch relative and absoluste line numbers for modes"
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END        
"REPLACES: set relativenumber Show line nums relative to current line"
"

"map <TAB><TAB>	:bnext<CR>
map <TAB>t	:tabnext<CR>
map <TAB>n 	:tabnew<CR>
map <TAB>w	:
map <TAB>e	:NERDTree<CR>
map <silent> <leader>f 	:FZF<CR>
map <silent> <leader>F 	:FZF ~<CR>
map <leader>sc	:set list!<CR>
map <leader>un  :UndotreeToggle<CR>
map <leader>s	:set spell!<CR>
map <leader>sf	z=
map <leader>n   :NERDTreeToggle<CR>
imap jk		<ESC>
map <leader>bg	:colorscheme inkstained<CR>
map <leader>rn	:set relativenumber!<CR>
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>
let g:airline_theme='base16_seti'
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep='<'
let g:airline_left_sep='>'


"Different quickscope highlight colors
highlight QuickScopePrimary guifg='#fa26a0' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#11dd11' gui=underline ctermfg=81 cterm=underline

