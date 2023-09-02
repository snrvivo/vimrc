"_______________________________________________________________________________

"Settings Enabled by Default
"_______________________________________________________________________________
set nocompatible				"User customised VIMRC compatibility"
set hidden						"Allow buffer switching with unsaved changes"
set autoindent					"Copy indentation from current line to new line"
set hlsearch					"Highlight search terms"
set incsearch					"Highlight search as you type"
set ruler						"Show the ruler"
set number						"Show line numbers
set showcmd						"Show incomplete commands"
set wildmenu					"Shows tab completion menu for commands"
set wildmode=full				"Completion mode (full,longest,list,lastused)
set directory=$HOME/.vim/swap	"Swap file location"
set undolevels=10000			"Number of potential undo steps"
set undofile					"Enable persisted undo"
set undodir=$HOME/.vim/undo		"Location of undo history files"
set history=10000				"Number of items in command history"
set spelllang=en_gb				"Spelling dictionary library"
set spellfile=~/.vim/spell/en.utf-8.add		"New words added to..."
set dictionary="/usr/share/dict/words"		"Dictionary file"
set encoding=utf-8				"Character encoding"
set clipboard=unnamed			"Commands update system cliboard"
set foldcolumn=auto:9			"Default fold columns to display"
set lazyredraw					"Don't redraw during macros (performance)"
set termguicolors				"Apply terminal GUI colorschemes"
set scrolloff=10				"Leave 10 lines before for zz center command"
set updatetime=100				"Set UI refresh time to 0.1 sec for gitgutter"
set mouse=a						"Enables mouse support"
set linebreak					"Wrap long lines"
set cursorcolumn				"Display vertical cursor indicator"
set cursorline					"Display horizontal cursor indicator"
set foldmethod=manual			"Folds are manually created/removed"
set colorcolumn=80				"Textwidth indicator at 80 chars

"Character that indicates a wrapped line":
set showbreak=↪\
set smarttab					"Insert blanks at start of line based on:

"Tab Settings..."
set sts=4 ts=4 sw=4 noexpandtab		
				"SoftTabStop is num spaces is a Tab key or backspace of a Tab"
				"TabStop is num spaces used in a \t character"
				"ShiftWidth is num spaces used in an indent"
				"NoExpandTab means \t is not converted to spaces"
				
"Auto-complete options"
set completeopt=longest,menuone
syntax on

"_______________________________________________________________________________

"Settings Disabled by Default
"_______________________________________________________________________________
"set list					"Show whitespace characters
set listchars=tab:--\→,eol:↲,space:␣,trail:•,extends:⟩,precedes:⟨  "List Chars"
"set virtualedit+=all		"Cursor can move into none-character space in buffer
"set makeprg=./gradlew      "With 'make' binary installed we can use a makefile
"set complete+=kspell		"Include dictionary in autcomplete menu

"_______________________________________________________________________________

"Search Settings
"_______________________________________________________________________________
set path+=**			"Fuzzy file finder from within current dir
set ignorecase			"Searches without capitals are not case sensitive"
set smartcase			"Searches with capitals are case sensitive"

"The following files/directories won't be searched with vimgrep
set wildignore=tags,*.class,*.pyc,*.swp,*.git/*,*/target/*,.idea/*,
				\node_modules/*,.next/*

"Refine what Grep searches for
set grepprg=grep\ -nr\ --exclude-dir={venv,.git,.gitignore,.target,
				\node_modules,.idea,.next}\ --exclude={tags,*.class,*.pyc,
				\*.swp,.gitignore}\ $*\ /dev/null

"_______________________________________________________________________________

"Plugin Pre-Load Settings
"_______________________________________________________________________________
"Set Vimspector Debug Key Map (before loading plugin)
let g:vimspector_enable_mappings='VISUAL_STUDIO'

"_______________________________________________________________________________

"Plugins
"_______________________________________________________________________________
call plug#begin()
		" Surrounding ysw)
		Plug 'tpope/vim-surround'				  
		" NerdTree
		Plug 'preservim/nerdtree' 
		" For Commenting gcc & gc
		Plug 'preservim/nerdcommenter'
		" Plug 'tpope/vim-commentary' 
		" Status bar
		Plug 'vim-airline/vim-airline' 
		" Airline themes
		Plug 'vim-airline/vim-airline-themes' 
		" CSS Color Preview
		Plug 'ap/vim-css-color' 
		" Retro Scheme
		Plug 'rafi/awesome-vim-colorschemes' 
		" Auto Completion
		Plug 'neoclide/coc.nvim' 
		" Developer Icons
		Plug 'ryanoasis/vim-devicons' 
		" Vim Terminal
		Plug 'tc50cal/vim-terminal' 
		" Tagbar for code navigation
		Plug 'preservim/tagbar' 
		" Vimspector code debuger
		Plug 'puremourning/vimspector' 
		" Useful shortcuts
		Plug 'tpope/vim-unimpaired' 
		" Git visual plugin
		Plug 'airblade/vim-gitgutter' 
		" Git command plugin
		Plug 'tpope/vim-fugitive' 
		" Vim wiki and markup
		Plug 'vimwiki/vimwiki' 
		" Visual undo tree
		Plug 'mbbil/undotree' 
		" More themes
		Plug 'flazz/vim-colorschemes' 
		" Register quickview
		Plug 'junegunn/vim-peekaboo' 
		"Telescope dependency
		Plug 'nvim-lua/plenary.nvim'
		"Fuzzy finder of everything
		Plug 'nvim-telescope/telescope.nvim'
		"Startup screen
		Plug 'mhinz/vim-startify'
		"Leader key shortcut panel
		Plug 'liuchengxu/vim-which-key'
		"Zen Mode plugin
		Plug 'folke/zen-mode.nvim'
		" Visual f/t character reference
		Plug 'unblevable/quick-scope'									  

		"Disabled and unused plugins
		"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		"Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
		"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		"Plug 'junegunn/fzf.vim'
		"Plug 'hdiniz/vim-gradle'
		"Plug 'liuchengxu/vista.vim'
		"Plug 'sheerun/vim-polyglot'
		"Plug 'ervandew/supertab'
		"Plug 'nvim-telescope/telescope-vimspector.nvim'
		"Plug 'ninegrid/vim-supertab'
call plug#end()

"_______________________________________________________________________________

"Plugin Post-Load Settings
"_______________________________________________________________________________
syntax on
filetype plugin on  "filetype plugin indent on
"set omnifunc=syntaxcomplete#Complete

"_______________________________________________________________________________

"Display Customisation
"_______________________________________________________________________________
colorscheme gotham		"Use the gotham colorscheme
"set background=dark	"Default to dark mode
let g:impact_transbg=1	"Theme customisation

"Give colorcolumn a subtle highlight:
highlight ColorColumn ctermfg=7 ctermbg=10 guifg=#99d1ce guibg=#0f0f14
"ctermbg=8 guibg=#11151c
"_______________________________________________________________________________

"Custom Kep Mappings
"_______________________________________________________________________________
"Set leader key to spacebar:
let g:mapleader=" "
"Set local leader to comma:
let g:maplocalleader = ','
"WhichKey Leader identifier:
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
"WhichKey Local Leader identifier:
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>

"In insert mode 'jk' escapes to normal mode:
imap jk	<ESC>

"Edit/View Vim Config:
"nnoremap <leader>vce :e $MYVIMRC<CR>		
"Reload Vim Config:
"nnoremap <leader>vcs :source $MYVIMRC<CR>

"Open/Close directory explorer:
" nnoremap <leader>e :NERDTreeToggle<CR>
"Change focus to directory explorer:
" nnoremap <leader>o :NERDTreeFocus<CR>
"Show fuzzy file finder:
nnoremap <leader>ff :Telescope find_files<CR>
"Toggle open/close tagbar:
nmap <leader>ct :TagbarToggle<CR>
"Toggle open/close undotree:
nmap <leader>uu	:UndotreeToggle<CR>

"TODO:
"Number, special chars, spelling, cursor cols, 
"Open quicklist, jumplist, location list
"Termnal, tagbar, 
"Buffers, windows, tabs
"Git next, pre, pull, add, commit, push

"Disable find highlights until next search:
nmap <leader>uh	:noh<CR>
"Toggle dark/light mode theme
nmap <leader>ub yob
"Toggle special characters
nmap <leader>uc yol
"Toggle relative number:
nmap <leader>unr yor
"Toggle number:
nmap <leader>unn yon
"Toggle Spellcheck:
nmap <leader>us yos
"Toggle line wrap
nmap <leader>uw yow
"Toggle crosshairs
nmap <leader>ux yox

"Vimwiki Remaps
:nmap <localleader>ww <Plug>VimwikiIndex
:nmap <localleader>wn <Plug>VimwikiGoto
:nmap <localleader>wr <Plug>VimwikiRenameFile
:nmap <localleader>wt <Plug>VimwikiTabIndex
:nmap <localleader>wi <Plug>VimwikiDiaryIndex

:nmap <localleader>w<Space>i <Plug>VimwikiDiaryGenerateLinks
:nmap <localleader>w<Space>t <Plug>VimwikiTabMakeDiaryNote
:nmap <localleader>w<Space>m <Plug>VimwikiMakeTomorrowDiaryNote
:nmap <localleader>w<Space>w <Plug>VimwikiMakeDiaryNote
:nmap <localleader>w<Space>y <Plug>VimwikiMakeYesterdayDiaryNote


:nmap <localleader>c$ <Plug>NERDCommenterToEOL
:nmap <localleader>ca <Plug>NERDCommenterAltDelims
:nmap <localleader>cA <Plug>NERDCommenterAppend
:nmap <localleader>cb <Plug>NERDCommenterAlignBoth
:nmap <localleader>cc <Plug>NERDCommenterComment
:nmap <localleader>ci <Plug>NERDCommenterInvert
:nmap <localleader>cl <Plug>NERDCommenterAlignLeft
:nmap <localleader>cm <Plug>NERDCommenterMinimal
:nmap <localleader>cn <Plug>NERDCommenterNested
:nmap <localleader>cs <Plug>NERDCommenterSexy
:nmap <localleader>cu <Plug>NERDCommenterUncomment
:nmap <localleader>cv <Plug>NERDCommenterToggle
:nmap <localleader>cy <Plug>NERDCommenterYank


"Comment/uncomment line or selection:
 "nmap <leader>\	:Commentary<CR>
 nmap <leader>\	<Plug>NERDCommenterToggle

"Fold all but last search:
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1
				\)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr
				\ foldlevel=0 foldcolumn=2<CR>

"Tab completion (including for COC)...
"Enter to select:
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"Tab to go to next
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<TAB>"
"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

"_______________________________________________________________________________

"Plugin Customisations
"_______________________________________________________________________________
"WhichKey
set timeoutlen=500

"NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'

"Airline
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep='<'
let g:airline_left_sep='>'
let g:airline#extensions#tabline#buffer_nr_show = 1 

"Quick Scope
let g:qs_highlight_on_keys = ['f','F','t','T']	
let g:qs_filetype_blacklist = ['dashboard', 'startify']
highlight QuickScopePrimary guifg='magenta' gui=underline
				\ ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='yellow' gui=underline 
				\ ctermfg=81 cterm=underline

"Vimwiki config
let g:vimwiki_list = [{'path': '~/Google Drive/My Drive/Backup/vimwiki',
			\ 'path_html': '~/Google Drive/My Drive/Backup/vimwiki_html'}]

"Peekaboo config
let g:peekaboo_window = "vert botright 60new"
let g:peekaboo_compact = 0

"_______________________________________________________________________________

"Script automaters
"_______________________________________________________________________________
autocmd BufWinLeave *.* mkview			"Persist file folds
autocmd BufWinEnter *.* silent loadview "Load persisted folds

"autocmd BufWritePost *.java ctags -R .	"Update ctags when a java file is saved
"autocmd BufWritePost *.py make			"Run make when python file is saved
"autocmd FileType java let b:dispatch = 'javac %' "On opening java filetypes do

" open new split panes to right and below
"set splitright
"set splitbelow

"Open help panels vertically on the right
:cabbrev h vert bo h

"Function to run commands and print output in new buffer
function! RunCommand()
    call inputsave()
    let command = input('Enter Command With Args: ')
    call inputrestore()
    execute 'Terminal '.command
endfunction


"_______________________________________________________________________________

"Which Key Maps
"_______________________________________________________________________________
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

call which_key#register('<Space>', "g:leader_map", 'n')
call which_key#register('<Space>', "g:leader_map_visual", 'v')

let g:leader_map =  {}
let g:leader_map_visual =  {}

"Top Level Key Maps
let g:leader_map[','] 		 = [ ':w'					, 'save' ]
let g:leader_map['q'] 		 = [ ':q'					, 'quit' ]
let g:leader_map['<CR>']	 = [ ':ZenMode'				, 'zen-mode' ]
let g:leader_map[' '] 		 = [ ':Telescope'			, 'telescope' ]
let g:leader_map[';'] 		 = [ ':SSave'				, 'save-session' ]
let g:leader_map['e']		 = [ ':NERDTreeToggle'		, 'file-explorer' ]
let g:leader_map['Q'] 		 = [ ':qa!'					, 'quit-without-saving' ]
let g:leader_map_visual['\'] = [ '<Plug>NERDCommenterToggle', 'comment-line' ]
let g:leader_map['\'] 		 = [ '<Plug>NERDCommenterToggle', 'comment-line' ]

"Mapped behind <Tab> for 'tabs'
let g:leader_map['<Tab>'] = {
						\ 'name': '+tabs' ,
						\ '<Tab>' : ['tabnext'		, 'next-tab']		,
						\ 'n' : ['tabnew'			, 'new-tab']		,
						\ 'p' : ['tabprev'			, 'previous-tab']	,
						\ 'f' : ['tabfirst'			, 'first-tab']		,
						\ 'l' : ['tablast'			, 'last-tab']		,
						\ 'o' : [':tabonly!'		, 'only-this']		,
						\ 's' : ['tabsplit'			, 'split-to-tab']	,
						\ 'v' : ['tabs'				, 'show-tabs']		,
						\ 'c' : [':tabclose!'		, 'close-current-tab'],
						\ }

"Mapped behind b for 'buffers':
let g:leader_map.b = {
						  \ 'name' : '+buffer'		,
						  \ 'n' : [':bn!'			, 'new-buffer']				,
						  \ 'd' : [':bd!'			, 'delete-buffer']			,
						  \ 'X' : [':%bd!|e#'		, 'delete-others']			,
						  \ 'h' : ['bfirst'			, 'first-buffer']			,
						  \ 's' : ['Startify'  		, 'Startify']				,
						  \ 'l' : ['blast'     		, 'last-buffer']			,
						  \ 'j' : ['bnext'     		, 'next-buffer']			,
						  \ 'k' : ['bprevious' 		, 'previous-buffer']		,
						  \ 'v' : [':ls'			, 'show-buffers']			,
						  \ 'b' : [':Telescope buffers'   , 'find-buffer']		,
						  \ }

"Mapped behind c for 'code':
let g:leader_map.c = { 'name' : '+code',
					\ 't' : 'toggle-tagbar',  
					\ 'l' : [':CocList' , 'coc-list' ],
					\ '[' : ['<Plug>(coc-diagnostic-prev)'  , 'prev-diagnostic' ]	,
					\ ']' : ['<Plug>(coc-diagnostic-next)'  , 'next-diagnostic' ]	,
					\ 'd' : ['<Plug>(coc-definition)'		, 'definition' ]		,
					\ 'f' : ['<Plug>(coc-format-selected)'  , 'format' ]			,
					\ 'i' : ['<Plug>(coc-implementation)'	, 'implementation' ]	,
					\ 'r' : ['<Plug>(coc-rename)'			, 'rename-symbol' ]		,
					\ 's' : ['<Plug>(coc-references)'		, 'references' ]		,
					\ 'y' : ['<Plug>(coc-type-definition)'	, 'type-definition' ]	,
					\ 'k' : [':call ShowDocumentation()'	, 'hover-docs' ]		,
					\ 'e' : [':CocDiagnostics'				, 'show-diagnostics' ]	,
					\ 'D' : [':CocDisable'					, 'disable-lsp' ]	,
					\ }


"Mapped behind g for 'git':
let g:leader_map.g = { 'name' : '+git',
						\ 'g' : [':Git'				,	'status']		,
						\ 'c' : [':Git commit'				,	'commit']		,
						\ 'w' : [':Gwrite'				,	'stage-buffer']		,
						\ 'r' : [':Gread'				,	'reset-buffer']		,
						\ '[' : [':GitGutterPrevHunk'	,	'prev-hunk']			,
						\ ']' : [':GitGutterNextHunk'	,	'next-hunk']	,
						\ 'h' : [':GitGutterLineHighlightsToggle'			,	'highlight-lines']	,
						\ 'H' : [':Gdiffsplit'			,	'split-diff']	,
						\ 'u' : [':GitGutterUndoHunk'	,  'undo-hunk']			,
						\ 's' : [':GitGutterStageHunk'	,  'stage-hunk']		,
						\ 'q' : [':execute "GitGutterQuickFix" | copen'	,  'hunk-quickfix']		,
						\ 'l' : [':Git log --oneline --decorate --graph'	,  'log']		,
						\ 'L' : [':Gclog'	,  'log-quickfix']		,
						\ }

"Mapped behind p for 'panels':
let g:leader_map.p = { 'name' : '+panels',
						\ 'p' : [':Telescope'		,	'telescope']		,
						\ 't' : [':TagbarToggle'	,	'tagbar']			,
						\ 'q' : [':copen'			,	'quickfix-list']	,
						\ 'l' : [':lopen'			,	'location-list']	,
						\ 'u' : [':UndotreeToggle'	,  'undotree']			,
						\ 'e' : [':NERDTreeToggle'	,  'file-explorer']		,
						\ 'c' : ['q:'				,  'command-history']	,
						\ 's' : ['q/'				,  'search-history']	,
						\ 'b' : [':TerminalSplit bash'	,	'bash-term']	,
						\ }

"Mapped behind t for 'terminal':
let g:leader_map.t = { 'name' : '+terminal',
						\ 'b' : [':TerminalSplit bash'	,	'bash']			,
						\ 'B' : [':TerminalTab bash'	,	'bash-tab']		,
						\ 'j' : [':TerminalSplit jshell',	'jshell']		,
						\ 'k' : [':TerminalSplit jdb'	,	'java-debug']	,
						\ 'n' : [':TerminalSplit node'	,	'node']			,
						\ 't' : [':TerminalSplit tmux'	,	'tmux']			,
						\ 's' : [':TerminalSplit ssh-keygen' , 'ssh-keygen'],
						\ 'p' : [':TerminalSplit python3'	,	'python3']	,
						\ }

"Mapped behind u for 'UI':
let g:leader_map.u = { 'name' : '+ui',  
						\	'h' : [':noh'			 , 'No Highlight']	    ,
						\	'b' : ['yob' 			 , 'Dark/Light']        ,
						\	'w' : ['yol' 			 , 'Whitespace']        ,
						\	'n' : ['yon' 			 , 'Line Numbers']	    ,
						\	'r' : ['yor' 			 , 'Relative Numbers']  ,
						\	's' : ['yos' 			 , 'Spell Check']	    ,
						\	'l' : ['yow' 			 , 'Line Wrap']		    ,
						\	'x' : ['yox' 			 , 'Crosshairs']	    ,
						\	'u' : [':UndotreeToggle' , 'Undo Tree']		    ,
						\	'c' : [':echo g:colors_name'	, 'Show Colors'],
						\	'1' : [':colorscheme iceberg'	, 'Iceberg']	,
						\	'2' : [':colorscheme gruvbox'	, 'Gruvbox']	,
						\	'3' : [':colorscheme codeschool', 'Apprentice']	,
						\	'4' : [':colorscheme random'	, 'Random']		,
						\	'5' : [':colorscheme stbright'	, 'ST-Bright']	,
						\	'6' : [':colorscheme stnight'	, 'ST-Night']	,
						\	'7' : [':colorscheme stblue'	, 'ST-Blue']	,
						\	'8' : [':colorscheme stmaterial', 'ST-Material'],
						\	'9' : [':colorscheme gotham'	, 'Gotham']		,
						\ }

"Mapped behind v for 'vim':
let g:leader_map.v = { 'name' : '+vim',  
						\	'e' : [':e $MYVIMRC' , 'Edit VimRC']	,
						\	'l' : [':source $MYVIMRC' , 'Reload VimRC'] ,}


"Mapped behind w for 'windows':
let g:leader_map.w = { 'name' : '+windows',  
						  \ 'o' : [':only'		, 'only-this']				,
						  \ 'w' : ['<C-W>w'     , 'other-window']			,
						  \ 'd' : ['<C-W>c'     , 'delete-window']			,
						  \ '-' : ['<C-W>s'     , 'split-window-below']		,
						  \ '|' : ['<C-W>v'     , 'split-window-right']		,
						  \ '2' : ['<C-W>v'     , 'layout-double-columns']	,
						  \ 'h' : ['<C-W>h'     , 'window-left']           	,
						  \ 'j' : ['<C-W>j'     , 'window-below']          	,
						  \ 'l' : ['<C-W>l'     , 'window-right']          	,
						  \ 'k' : ['<C-W>k'     , 'window-up']             	,
						  \ 'H' : ['<C-W>5<'    , 'expand-window-left']    	,
						  \ 'J' : [':resize +5'  , 'expand-window-below']   ,
						  \ 'L' : ['<C-W>5>'    , 'expand-window-right']	,
						  \ 'K' : [':resize -5'  , 'expand-window-up']      ,
						  \ '=' : ['<C-W>='     , 'balance-window']			,
						  \ 's' : ['<C-W>s'     , 'split-window-below']    	,
						  \ 'v' : ['<C-W>v'     , 'split-window-below']    	,
						  \ }

"Mapped behind z for 'folds':
let g:leader_map.z = { 'name' : '+fold',  
						\	'z' : ['zA' , 'toggle-open']					   ,
						\	'f' : ['zf' , 'fold-selection']					   ,
						\	'd' : ['zd' , 'delete-fold']					   ,
						\	'D' : ['zE' , 'delete-all-folds']				   ,
						\	'c' : ['zc' , 'close-fold']						   ,
						\	'C' : ['zC' , 'close-all-folds']				   ,
						\	'o' : ['zo' , 'open-fold']						   ,
						\	'O' : ['zR' , 'open-all-folds']					   ,
						\	'm' : [':set foldmethod=manual'	, 'manual-folds']  ,
						\	's' : [':set foldmethod=syntax','syntactic-folds'] ,
						\	'i' : [':set foldmethod=indent'	, 'indent-folds']  ,
						\	'x' : [':set foldmethod=diff'	, 'diff-folds']	   ,
						\	'M' : [':set foldmethod=marker'	, 'marker-folds']  ,
						\	'0' : [':set foldlevel=0'		, 'level-0']	   ,
						\	'1' : [':set foldlevel=1'		, 'level-1']	   ,
						\	'2' : [':set foldlevel=2'		, 'level-2'] 	   ,
						\	'3' : [':set foldlevel=3'		, 'level-3'] 	   ,
						\	'4' : [':set foldlevel=4'		, 'level-4'] 	   ,
						\	'5' : [':set foldlevel=5'		, 'level-5'] 	   ,
						\	'6' : [':set foldlevel=6'		, 'level-6'] 	   ,
						\	'7' : [':set foldlevel=7'		, 'level-7'] 	   ,
						\	'8' : [':set foldlevel=8'		, 'level-8'] 	   ,
						\	'9' : [':set foldlevel=9'		, 'level-9'] 	   ,
						\	' ' : ['zi'		, 'invert-folds']				   ,
						\	'-' : ['zr'		, '-level']						   ,
						\	'=' : ['zm'		, '+level']						   ,
						\	'[' : ['[z'		, 'go-to-start']				   ,
						\	']' : [']z'		, 'go-to-end']					   ,
						\	'j' : ['zj'		, 'jump-next']					   ,
						\	'k' : ['zk'		, 'jump-prev']					   ,
						\ }

"Mapped behind f for 'Find':
"Mapped behind g for 'Git':
"Mapped behind t for 'text': json prettify, sort, filters
"Mapped behind d for 'Debug':


"_______________________________________________________________________________

"Startify Options
"_______________________________________________________________________________
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" Where session files will live
let g:startify_session_dir="~/.vim/session"
" Items for the startify home page
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

"_______________________________________________________________________________

"Coc Config Settings
"_______________________________________________________________________________
" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get diagnostics of current buffer in location list
nmap <silent> <leader>c[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>c] <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> <leader>cd <Plug>(coc-definition)
nmap <silent> <leader>cy <Plug>(coc-type-definition)
nmap <silent> <leader>ci <Plug>(coc-implementation)
nmap <silent> <leader>cs <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <leader>cK :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>cr <Plug>(coc-rename)

" Formatting selected code
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
