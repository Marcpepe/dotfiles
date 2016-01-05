"""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/PLUGINS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"-------Session Mngmt--------"
Plugin 'tpope/vim-obsession'
"-------Color themes--------"
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
"-------File navigation--------"
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
"-------Syntax helpers--------"
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/syntastic'
" Plugin 'joonty/vdebug.git'
"-------Faster editing--------"
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdcommenter'
"-------Syntax highlight-------"
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'StanAngeloff/php.vim'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'plasticboy/vim-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/LOOK & FEEL\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
syntax enable " Enables syntax highlightning
set guifont=Menlo\ for\ Powerline " Sets the font to Menlo

" Color scheme set to Molokai
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

" Color scheme set to Solarized
let g:solarized_termcolors = 256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/UI CONFIGURATION\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set number " Enables lines number
set cursorline " A line indicates where the cursor is
set wildmenu " visual autocomplete for command menu
set showmatch "highlignt matching [{()}]
set scrolloff=3 " Keep 3 lines below and above the cursor

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/SEARCHING\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch " Search as characters are entered
set hlsearch " Highlight matches

" Turn off search highlight
nnoremap <leader><space> :nohl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/FOLDING\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " 10 nested fold max

set foldmethod=syntax " Fold based on indent level

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/SPACES & TABS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable for Symfony 2
" set tabstop=4 " Number of visual spaces by tab
" set shiftwidth=4 " Number of spaces in tab when autoindent
" set softtabstop=4 " Number of spaces in tab when editing
" Enable for Nodejs/Angularjs
set tabstop=2 " Number of visual spaces by tab
set shiftwidth=2 " Number of spaces in tab when autoindent
set softtabstop=2 " Number of spaces in tab when editing

set smarttab " Smart handling of the <TAB> key
set expandtab " Converts tabs to spaces

set scrolloff=25

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/MOVEMENTS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight last inserted text
nnoremap gV `[v`]

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/LEADER SHORTCUTS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="," " Leader is comma

" Edit .vimrc
nnoremap <leader>ev :e ~/.vimrc<CR>
" Open ag.vim (plugin to search code in a project)
nnoremap <leader>a :Ag<space>
" Launch a CtrlP search on files
nnoremap <leader>y :CtrlP<CR>
" Launch a CtrlP search on buffers
nnoremap <leader>p :CtrlPBuffer<CR>
" Launch NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Find current file in NERDTree
nnoremap <leader>N :NERDTreeFind<CR>
" Go to previous buffer
nmap <leader>j :bp<CR>
nmap <C-j> :bp<CR>
" Go to next buffer
nmap <leader>k :bn<CR>
nmap <C-k> :bn<CR>
" Go to previous tab
nmap <leader>d :tabp<CR>
" Go to next tab
nmap <leader>f :tabn<CR>
" Close current buffer and go to previous
nmap <leader>x :bp <BAR> bd #<CR>
" Open new tab
nmap <leader>F :tabnew <CR>
" Open current file in new tab
nmap <leader>S :tab split<CR>
" Close current tab
nmap <leader>D :tabc<CR>
" Split current horizontally/vertically
nmap <leader>sb :sp<CR>
nmap <leader>sv :vs<CR>
" Resize
nmap <leader>+ :vertical resize +5<CR>
nmap <leader>- :vertical resize -5<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/REMAPPINGS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap autocomplete
inoremap <M-n> <C-n>
" Remap autocomplete
inoremap <M-p> <C-r>0
" Remap jj to exit Insert mode
inoremap jj <ESC>
" Brackets behave like in Sublime
inoremap {<CR> {<CR>}<C-o>O
" The sequence parens + brackets behaves nicely
inoremap ({<CR> ({<CR>});<C-o>O
" Remaps K to split a line (opposite of J)
nnoremap K i<CR><Esc>
" Remaps b
" nnoremap <M-z> b

" Adjust to AZERTY
nmap z w
nmap Z W

" nmap az aw
nmap yaz yaw
nmap caz caw
nmap daz daw

" nmap iz iw
nmap yiz yiw
nmap ciz ciw
nmap diz diw

nmap yz yw
nmap yZ yW
nmap cz cw
nmap cZ cW
nmap dz dw
nmap dZ dW

" " Remaps w
" nnoremap <M-e> w
" Remaps B
nnoremap <M-i> B
" Remaps W
nnoremap <M-o> W
" Remaps W
nmap m ;

" Remaps resize +
" nnoremap <M-=> <C-W><
" Remaps resize -
" nnoremap <M-)> <C-W>>
" To recognize Alt key in Gnome terminal
let c='a'
while c <= 'z'
  exec "set <M-".c.">=\e".c
  exec "map \e".c." <M-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50
" Remap page-up and page-down
nnoremap <M-d> <C-d>
nnoremap <M-u> <C-u>
" Remap vim splits switching
" nnoremap <C-h> <C-w><C-h>
" --> see tmux-vim-navigator section

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/FUGITIVE\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>gB :Gblame<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gb :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/TABULAR\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t: :Tabularize /:<CR>
vmap <leader>t: :Tabularize /:<CR>
nmap <leader>T: :Tabularize /:\zs<CR>
vmap <leader>T: :Tabularize /:\zs<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/VIM-MULTICURSOR\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-w>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/INDENT\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" set ts=4 sw=4 et
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/CTRLP\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb' " Order files top to bottom
let g:ctrlp_switch_buffer = 0 " Open files in new buffers
let g:ctrlp_working_path_mode = 0 " Enables the changing of the working dir
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " Use ag.vim
" set your own custom ignore settings
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|vendor$\|bower_components$\|dist$\|node_modules$\|test$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/NERDCommenter\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets an extra space in before comments
let NERDSpaceDelims=1
" Disable auto-comment, i.e. new line does not trigger the comment char sequence
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/TMUX-VIM-NAVIGATOR\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <M-p> :TmuxNavigatePrevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/SYNTASTIC\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" let g:syntastic_javascript_checkers = ['jshint']

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/NERDTREE\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" Show hidden files (.gitignore)
let NERDTreeShowHidden=0

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('coffee', 'red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('json', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('ts', 'blue', 'none', 'blue', '#151515')

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___/MISCELLANEOUS\___
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display file in exact state ==> if file is changed outside Vim, it is displayed correctly
:set autoread

" Remove .swp file creation
set noswapfile

" Shortcut for paste mode
set pastetoggle=<f5>

" Don't underline between <a> tags when in HTML
hi link htmlLink NONE
let g:neocomplcache_enable_at_startup = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnamecollapse = 1
" let g:airline#extensions#bufferline#enabled = 1
let g:tmuxline_preset = 'nightly_fox'
let g:airline_powerline_fonts = 1
" let g:airline_section_z = airline#section#create(["%{ObsessionStatus(''$'','''')}", 'windowswap', '%3p%% ', 'linenr', ':%3v '])

" Fix backspace behavior
set backspace=indent,eol,start

" .md files are recognized as markdown templates
au BufRead,BufNewFile *.md set filetype=markdown
" .html.twig files are recognized as HTML Django templates
au BufRead,BufNewFile *.twig set filetype=htmldjango
" .pp files are recognized as Puppet
au BufRead,BufNewFile *.pp set filetype=puppet
" Vagrantfiles are recognized as Ruby files
au BufRead,BufNewFile Vagrantfile set filetype=ruby
" .jade files are recognized as Jade files
au BufRead,BufNewFile *.jade set filetype=jade
" .coffee files are recognized as coffeescript
au BufRead,BufNewFile *.coffee set filetype=coffee
" .cjsx files are recognized as coffeescript
au BufRead,BufNewFile *.cjsx set filetype=coffee
" .css files are recognized as css
au BufRead,BufNewFile *.css set filetype=css
" .less files are recognized as less
au BufRead,BufNewFile *.less set filetype=less
