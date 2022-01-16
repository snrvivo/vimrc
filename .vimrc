set hlsearch "Highlight search terms"
set incsearch "Highlight search as you type"
set ruler "Show the ruler"
set number "Show line numbers
set showcmd "Show incomplete commands"
set wildmenu "Shows tab completion menu for commands"
set termguicolors "Apply terminal GUI colorschemes"
set scrolloff=10 "Leave 10 lines before for zz center command"
set updatetime=100 "Set UI refresh time to 0.1 sec for gitgutter"
set showbreak=↪\ 
set listchars=tab:→-\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'dbeniamine/cheat.sh-vim'
call plug#end()

"Set colorscheme"
let g:impact_transbg=1
let g:gruvbox_italic=1
colorscheme gruvbox
set background=light

"Switch relative and absolute line numbers for modes"
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END        
"REPLACES: set relativenumber Show line nums relative to current line"
