"-- Main Setting -------------------------------------------------------------------------------
au FocusGained,BufEnter * :checktime "File Update automatically 
"set spell spelllang=en_us
set relativenumber
set number
set encoding=utf-8
set cursorline
set laststatus=1 
set ruler
set wrap
set mouse=a       "enable mouse use
set smartindent
set incsearch     "search as chars are entered
set hlsearch      "highlight matching searches
set path=.,,**
set smarttab
set showtabline=2  " Tabline
set updatetime=50
set timeoutlen=300
set wildmenu      " Tab autocomplete in command mode
set noshowmode    " No insert/normal indicator
set showcmd       " Show size of visual selection
set termguicolors
set t_Co=256

set autoread 
au CursorHold * checktime

" -- Searching -----------------------------------------------
set ignorecase    " Ignore case
set smartcase     " Don't ignore case if uppercase letter present

" -- BetterLineWrapping --------------------------------------
set nowrap
set linebreak
set textwidth=0 
set wrapmargin=0


" -- VimPluginsUsingPlug ---------------------------------------
call plug#begin()

" -- WebDev ------------------
Plug 'gko/vim-coloresque'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

" -- LooksAndFeel ------------
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"-- MarkDown -------------------------------------------------------------------------
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'tpope/vim-markdown'

" -- Coc ---------------------
Plug 'neoclide/coc.nvim',   {'branch':'release'}

" -- Productivity ------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'djoshea/vim-autoread' "Reload File
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'

" -- SyntaxAndColorSchemes ---- 
Plug 'sainnhe/gruvbox-material'
Plug 'rakr/vim-one'
Plug 'folke/tokyonight.nvim'

" -- CustomOperators ------------
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'christoomey/vim-system-copy'

call plug#end()

autocmd VImEnter *
			\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\|endif
let g:autoclose_on=0

" -- ColorScheme -------------------------------------------------
set termguicolors
let g:airline#extensions#tabline#enabled = 1

" Change Background based on System Theme
colorscheme one
function! ChangeBackground()
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark
  else
    set background=light
  endif
endfunction
call ChangeBackground()

if has('termguicolors')
  set termguicolors
endif

" -- GitFugitive -----------------------------
nmap <Space>gh :diffget //3<CR>
nmap <Space>gs :diffget //2<CR>
nmap <Space>gs :G<CR>


" -- KeyBindingsForResizingSplits -----------------------------
nnoremap <C-Up> :resize +2<CR> 
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

" -- BetterTabbing --------------------------------------------
vnoremap < <gv
vnoremap > >gv

" -- KeyMaps --------------------------------------------------
:imap kj <Esc>
noremap ter  :bot terminal<CR>
noremap splr :botright vert split<CR>
noremap spl  :split<CR>

" -- Window Nav -----------------------------------------------
nnoremap <C-H> <C-w>h
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k
nnoremap <C-L> <C-w>l

" -- CPP Snippets ---------------------------------------------


noremap cpp :0r ~/.vim/templates/basic.cpp<CR>
noremap md :0r ~/.vim/templates/md.md<CR>
noremap ccpp :0r ~/.vim/templates/code.cpp <bar> :25 <CR> 
map <C-a> <esc>ggVGcp<CR>

noremap <F4> :
		\!clear; 
		\echo "-------------------------";
		\echo "$(tput bold)Compiling";
		\echo "-------------------------";
		\time g++-11 -Wall -std=c++17 % -o .a.out; 
		\echo -e "\e[1;32m-------------------------";
		\echo -e "$(tput bold)Running";
		\echo -e "-------------------------\e[0m";
		\./.a.out; 
		\echo "\n";
		\echo "-------------------------";
		\echo "Debug:";
		\echo "-------------------------";
		\cat .deb.txt
		\<CR>

noremap <F3> :
		\!clear;
		\ echo "-------------------------";
		\ echo "$(tput bold)Compiling";
		\ echo "-------------------------";
		\
		\time g++-11  -Wall -std=c++17 % -o .Z.out;
		\./.Z.out < .zin.txt > .zot.md;
		\diff .zex.txt .zot.md > .zdf.txt<CR>

" -- IndentLines -------------------------------------------------
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" -- COCConfig -------------------------------------------------------------
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-deno',
\ 'coc-eslint',
\ 'coc-prettier',
\ 'coc-json',
\ 'coc-html',
\ 'coc-java',
\ 'coc-css',
\ 'coc-go',
\ 'coc-clangd',
\ 'coc-explorer',
\ 'coc-flutter',
\ 'coc-emmet'
\ ]

"-- COC Exploerer Settings ------------------------------

let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\}

nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
nmap <silent> gi <Plug>(coc-implementation)

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

autocmd FileType cpp let b:coc_pairs_disabled = ["<"]

au BufNewFile,BufRead *.js,*.css,*.md,*.ts,*.jsx,*.tsx
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2 |
			\ set textwidth=120 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix |

au BufNewFile,BufRead *.cpp,*.py,*.html
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=120 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix |

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

nmap <F2> <Plug>(coc-rename)


" -- CTRLPConfig ----------------------------------------------------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll)$',
			\ 'link': 'some_bad_symbolic_links',
			\ }

" -- NerdTree ----------------------------------------------------------------
let g:nerdtree_tabs_open_on_console_startup = 2
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"map <space>e <plug>NERDTreeTabsToggle<CR>


"-- Save Text Folding --------------------------------------------------------
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" -- FloatTem ----------------------------------------------------------------
let g:floaterm_keymap_toggle = '<F12>'

" -- Mode Settings -----------------------------------------------------------
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" -- MarkDown --------------------------------------------------------------------------------
nnoremap <F9> :MarkdownPreviewToggle<CR>
let g:mkdp_refresh_slow=1

let g:indentLine_setConceal = 0
let g:indentLine_concealcursor = ""
