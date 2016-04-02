set nocompatible
filetype off

set expandtab
set sts=2
set ts=2
set sw=2
set number
set incsearch
set hlsearch
set smartcase
set showcmd
set wildmenu
set ruler
set laststatus=2
set cursorline
set nofoldenable
set showmatch
set wildignore=node_modules,trash,tmp,cache,coverage,vendor
" set backupdir=~/.vim/backups//
" set directory=~/.vim/backups//
set backspace=indent,eol,start
set autoindent
set smarttab
set hidden
set undofile
set noswapfile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

filetype plugin indent on
syntax on

set exrc
set secure

set rtp+=~/.vim/plugged/vim-project/

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'vim-scripts/closetag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'mattn/emmet-vim'
Plug 'rstacruz/sparkup'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree'
Plug 'danro/rename.vim'
Plug 'scrooloose/syntastic'
" Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'jwhitley/vim-matchit'
Plug 'tpope/vim-surround'
Plug 'elixir-lang/vim-elixir'
" Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
if has('lua')
  Plug 'SirVer/ultisnips'
  Plug 'Shougo/neocomplete'
end
" Plug 'iurifq/ctrlp-rails.vim'
Plug 'vim-scripts/dbext.vim'
Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-rails'
Plug 'tommcdo/vim-exchange'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'int3/vim-extradite'
Plug 'vim-scripts/SQLUtilities'
" Plug 'vim-scripts/Align'
Plug 'mustache/vim-mustache-handlebars'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
Plug 'gregsexton/MatchTag'
Plug 'chrisbra/csv.vim'
" Plug 'elzr/vim-json'
" Plug 'jelera/vim-javascript-syntax'
Plug 'tpope/vim-cucumber'
Plug 'fatih/vim-go'
Plug 'kylef/apiblueprint.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-fireplace'
Plug 'majutsushi/tagbar'
" Plug 'coot/CRDispatcher'
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'
Plug 'kshenoy/vim-signature'
" Plug 'neowit/vim-force.com'
Plug 'derekwyatt/vim-scala'
" Plug 'lukaszb/vim-web-indent'
"
Plug 'pangloss/vim-javascript' | Plug 'mxw/vim-jsx'

Plug 'amiorin/vim-project'
Plug 'tpope/vim-eunuch'
Plug 'editorconfig/editorconfig-vim'
Plug 'rking/ag.vim'
Plug 'dsawardekar/portkey'
Plug 'dsawardekar/ember.vim'
Plug 'osyo-manga/vim-over'
" Plug 'tpope/vim-bundler'
" Plug 'junegunn/vim-easy-align'
" Plug 'tpope/vim-sleuth'
" Plug 'int3/vim-extradite'
" Plug 'idanarye/vim-merginal'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes\| ./install' }
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'gregsexton/gitv'
" Plug 'sjl/splice.vim'
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'gregsexton/gitv'
Plug 'junegunn/vim-easy-align'
Plug 'idanarye/vim-merginal'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-bundler'
if has('nvim')
  Plug 'benekastah/neomake'
end
Plug 'exu/pgsql.vim'
Plug 'tpope/vim-tbone'
Plug 'ivalkeen/vim-simpledb'
Plug 'szw/vim-tags'
Plug 'vim-scripts/groovy.vim'
Plug 'marijnh/tern_for_vim'
Plug 'tpope/vim-unimpaired'
" Plug 'tfnico/vim-gradle'
" Plug 'vim-scripts/groovy.vim'

set ts=2

let g:project_use_nerdtree = 1
call project#rc("~/Projects")

Project "shareplan"
Project "console"
Project "core"
Project "edge_case"
Project "unified-login"
Project "legacy-client"
Project "translations"

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:apex_backup_folder = expand("$HOME/Projects/sfdc/backup")
let g:apex_temp_folder = expand("$HOME/Projects/sfdc/temp")
let g:apex_properties_folder = expand("$HOME/Projects/sfdc/properties")
let g:apex_tooling_force_dot_com_path = expand("$HOME/Projects/sfdc/tooling-force.com-0.3.1.4.jar")
let g:apex_server = 1

call plug#end()

let g:ctrlp_max_files = 10000
let g:ctrlp_max_depth = 100

let g:UltiSnipsSnippetsDir = expand("$HOME/.vim/my-snippets/")
let g:UltiSnipsSnippetDirectories = [ expand("$HOME/.vim/my-snippets/") ]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-j>"

let g:sparkupExecuteMapping='<c-y>,'
let g:sparkupNextMapping='<c-y>n'

let g:rails_ctags_arguments="--exclude=tmp --exclude=vendor"

let g:ctrlp_extensions = ['tag']

let g:session_autosave = 'no'

let g:syntastic_javascript_checkers = ['eslint']
let g:ack_default_options = ' -H --nocolor --nogroup --column'

set t_Co=256

let mapleader=","
silent map <C-E> :NERDTreeToggle<CR>
silent map <Leader>, <C-^>
imap <C-L> <SPACE>=><SPACE>
map <C-W>e :copen<CR>
" nmap <CR> :nohl<CR>

nmap <Leader>q :nohlsearch<CR>

nnoremap Y y$
nmap ; :CtrlPBuffer<CR>
nmap Q <Nop>

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>

let Grep_Find_Use_Xargs = 0

" nmap <Leader>a= :Tabularize /=<CR>
" vmap <Leader>a= :Tabularize /=<CR>
" nmap <Leader>a<bar> :Tabularize/<bar><CR>
" vmap <Leader>a<bar> :Tabularize/<bar><CR>
" nmap <Leader>a: :Tabularize /: \zs<CR>
" vmap <Leader>a: :Tabularize /: \zs<CR>

colorscheme Tomorrow-Night
" highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue
" match ExtraWhitespace /\s\+$/

if $TERM == 'xterm-256color' || $TERM == 'screen-256color' || $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:VimuxOrientation = "h"
let g:VimuxHeight = "50"
let g:VimuxUseNearestPane = 1
let g:vroom_use_vimux = 1
let g:vroom_use_zeus = 0
nmap <Leader>gr *N:silent Ggrep <C-r><C-w><CR>:copen<CR>
nmap <Leader>ga :silent Ack <C-r><C-w><CR>:copen<CR>
nmap <Leader>f :%s/<C-r><C-w>//gc<Left><Left><Left>
nmap <Leader>gs :Gstatus<CR>

highlight clear SignColumn

set clipboard=unnamed

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

" align cucumber tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
nmap K :Dash<cr>

let g:dash_map = {
  \ 'ruby': 'ruby_on_rails'
\ }

if has("gui_running")
  let g:airline_powerline_fonts = 1
endif

command! FormatJSON execute "%!python -m json.tool"
command! Welcome call project#config#welcome()

au BufNewFile,BufRead Gemfile set filetype=Gemfile.ruby
au BufNewFile,BufRead [Gg]ulpfile.js set filetype=gulp.javascript
au BufNewFile,BufRead *.ex set filetype=elixir
au BufNewFile,BufRead *.exs set filetype=elixir
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.hbs set filetype=mustache
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.hbs runtime! ftplugin/html.vim
au BufNewFile,BufRead Vagrantfile set filetype=ruby
" automatically delete trailing whitespace on save
" au BufWritePre * :%s/\s\+$//e
au BufWritePost .vimrc source $MYVIMRC

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_fmt_command = "goimports"

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  set clipboard=unnamedplus
  set guifont=Source\ Code\ Pro\ Medium\ 16
else
  set clipboard=unnamed
  set guifont=Sauce\ Code\ Powerline:h18
endif

let g:dbext_default_profile_local_staging='type=PGSQL:host=localhost:user=c42:dbname=staging'
let g:dbext_default_profile_staging = 'type=PGSQL:user=c42:passwd=c422006:driver=Pg:dbname=cp.staging.web:host=dbstg.c42'
let g:dbext_default_profile_data42='type=PGSQL:user=data42ro:passwd=wV6weHwCZ-S_dSQQsttC:driver=Pg:dbname=data42:host=dbdata42.c42:port=5433'
let g:dbext_default_profile_production='type=PGSQL:user=c42ro:driver=Pg:dbname=crashplan:host=dbr.c42'

set exrc
set secure

nnoremap    <F2> :<C-U>setlocal lcs=tab:▶\ ,trail:-,eol:$ list! list? <CR>
set lcs=tab:▶\ ,trail:-,eol:$ 
set list!

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

iunmap \|
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command =
  "   \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif
