set nocompatible
filetype off

packadd vimball

" set shell=zsh\ -i
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
if (has("nvim"))
  set inccommand=split
end

filetype plugin indent on


set exrc
set secure

set rtp+=~/.vim/plugged/vim-project/

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-rooter'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/Decho'
Plug 'will133/vim-dirdiff'
"+ " Plug 'wincent/ferret'
"+ Plug 'vim-scripts/closetag.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mattn/emmet-vim'
"+ " Plug 'rstacruz/sparkup'
"+ " Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'
"+ Plug 'danro/rename.vim'
Plug 'tpope/vim-vinegar'
"+ " Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
"+ Plug 'bling/vim-airline'
"+ " Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" Plug 'jwhitley/vim-matchit'
Plug 'andymass/vim-matchup'
Plug 'tpope/vim-surround'
" Plug 'Yggdroot/indentLine'
"+ Plug 'jeetsukumaran/vim-buffergator'
"+
"+ " Elixir
Plug 'elixir-lang/vim-elixir'
"+ " Plug 'avdgaag/vim-phoenix'
"+
Plug 'janko-m/vim-test'
"+ " Plug 'benmills/vimux'
"+ Plug 'posva/vim-vue'
"+
"+ " Plug 'tpope/vim-commentary'
"+ " Plug 'scrooloose/nerdcommenter'
"+ Plug 'MarcWeber/vim-addon-mw-utils'
"+ Plug 'tomtom/tlib_vim'
"+ if has('lua')
"+   Plug 'SirVer/ultisnips'
"+   Plug 'Shougo/neocomplete'
"+ end
" Plug 'ycm-core/YouCompleteMe'
"+
"+ " Plug 'iurifq/ctrlp-rails.vim'
"+ " Plug 'vim-scripts/dbext.vim'
"+ Plug 'tpope/vim-dadbod'
"+ Plug 'tpope/vim-rails'
"+ Plug 'tommcdo/vim-exchange'
Plug 'kana/vim-textobj-user'
"+ Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'andyl/vim-textobj-elixir'
"+ " Plug 'vim-scripts/SQLUtilities'
"+ " Plug 'vim-scripts/Align'
"+ " Bundle 'rizzatti/funcoo.vim'
"+ " Bundle 'rizzatti/dash.vim'
"+ Plug 'gregsexton/MatchTag'
Plug 'chrisbra/csv.vim'
"+ Plug 'elzr/vim-json'
"+ " Plug 'jelera/vim-javascript-syntax'
"+ Plug 'tpope/vim-cucumber'
"+ Plug 'fatih/vim-go'
"+ Plug 'ekalinin/Dockerfile.vim'
"+ Plug 'tpope/vim-fireplace'
"+ Plug 'majutsushi/tagbar'
"+ " Plug 'coot/CRDispatcher'
"+ Plug 'wting/rust.vim'
"+ Plug 'cespare/vim-toml'
Plug 'kshenoy/vim-signature'
"+ " Plug 'neowit/vim-force.com'
"+ Plug 'derekwyatt/vim-scala'
"+ " Plug 'lukaszb/vim-web-indent'
"+ "
Plug 'pangloss/vim-javascript' | Plug 'MaxMEllon/vim-jsx-pretty'
"+
Plug 'amiorin/vim-project'
 Plug 'tpope/vim-eunuch'
"+ Plug 'editorconfig/editorconfig-vim'
"+ Plug 'rking/ag.vim'
"+ " Plug 'dsawardekar/portkey'
"+ " Plug 'dsawardekar/ember.vim'
"+ Plug 'osyo-manga/vim-over'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
"+ " Plug 'tpope/vim-bundler'
"+ " Plug 'junegunn/vim-easy-align'
"+ " Plug 'tpope/vim-sleuth'
"+ " Plug 'int3/vim-extradite'
"+ " Plug 'idanarye/vim-merginal'
"+ " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes\| ./install' }
"+ " Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'gregsexton/gitv'
Plug 'junegunn/gv.vim'
Plug 'samoshkin/vim-mergetool'
" Plug 'sjl/splice.vim'
"+ " Plug 'jistr/vim-nerdtree-tabs'
"+ " Plug 'Xuyuanp/nerdtree-git-plugin'
"+ Plug 'junegunn/vim-easy-align'
"+ Plug 'idanarye/vim-merginal'
"+ Plug 'sjl/splice.vim'
"+ Plug 'tpope/vim-bundler'
" Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'AndrewRadev/bufferize.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neomake/neomake'
"+ " Plug 'scrooloose/syntastic'
"+ Plug 'exu/pgsql.vim'
"+ Plug 'tpope/vim-tbone'
"+ " Plug 'ivalkeen/vim-simpledb'
"+ Plug 'szw/vim-tags'
"+ " Plug 'marijnh/tern_for_vim'
"+ Plug 'tpope/vim-unimpaired'
"+ Plug 'jreybert/vimagit'
"+ " Plug 'tfnico/vim-gradle'
"+ " Plug 'vim-scripts/groovy.vim'
Plug 'easymotion/vim-easymotion'
"Plug 'justinmk/vim-sneak'
"+ Plug 'elmcast/elm-vim'
"+ " Plug 'mhinz/vim-grepper'
"+ Plug 'slashmili/alchemist.vim'
Plug 'joshdick/onedark.vim'
"+ Plug 'mhartington/oceanic-next'
"+ " Plug 'roxma/nvim-yarp'
"+ " Plug 'ncm2/ncm2'
Plug 'tpope/vim-projectionist'
"+ Plug 'pbogut/fzf-mru.vim'
"+ Plug 'mhinz/vim-startify'
"+ Plug 'vim-scripts/BufOnly.vim'
"+ Plug 'wesQ3/vim-windowswap'
"+ Plug 'kablamo/vim-git-log'
"+ Plug 'kchmck/vim-coffee-script'
Plug 'sheerun/vim-polyglot'
" Plug 'mhinz/vim-mix-format'
"+ Plug 'spiegela/vimix'
Plug 'mvolkmann/vim-react'
" Plug 'christoomey/vim-conflicted'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'leafgarland/typescript-vim'
" For async completion
" Plug 'Shougo/deoplete.nvim'
" For Denite features
" Plug 'Shougo/denite.nvim'

" let g:deoplete#enable_at_startup = 1
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

Plug 'jreybert/vimagit'
Plug 'direnv/direnv.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'skywind3000/asyncrun.vim'

au FileType c,cpp,objc,objcpp,json call rainbow#load()
let g:rainbow_active = 1

let g:vimix_map_keys = 1

" let g:mix_format_on_save = 1

let g:tern_map_keys = 1

let g:elm_format_autosave = 1

set ts=2

"+ let g:project_use_nerdtree = 1
"+ call project#rc("~/Projects")
"+
"+ Project "shareplan"
"+ Project "~/Projects/core/web/src/console"
"+ Project "~/Projects/core/web/src/legal_hold"
"+ Project "poh-backend"
"+ " Project "core"
"+ Project "edge_case"
"+ Project "unified-login"
"+ Project "legacy-client"
"+ Project "translations"

"+ vmap <Enter> <Plug>(EasyAlign)
"+ nmap ga <Plug>(EasyAlign)
"+
"+ let g:apex_backup_folder = expand("$HOME/Projects/sfdc/backup")
"+ let g:apex_temp_folder = expand("$HOME/Projects/sfdc/temp")
"+ let g:apex_properties_folder = expand("$HOME/Projects/sfdc/properties")
"+ let g:apex_tooling_force_dot_com_path = expand("$HOME/Projects/sfdc/tooling-force.com-0.3.1.4.jar")
"+ let g:apex_server = 1
"+
call plug#end()
"+
"+ let g:UltiSnipsSnippetsDir = expand("$HOME/.vim/my-snippets/")
"+ let g:UltiSnipsSnippetDirectories = [ expand("$HOME/.vim/my-snippets/") ]
"+
"+ let g:UltiSnipsExpandTrigger="<tab>"
"+ let g:UltiSnipsJumpForwardTrigger="<c-b>"
"+ let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"+ let g:UltiSnipsListSnippets="<c-j>"
"+
"+ let g:sparkupExecuteMapping='<c-y>,'
"+ let g:sparkupNextMapping='<c-y>n'
"+
"+ let g:rails_ctags_arguments="--exclude=tmp --exclude=vendor"
"+
"+ let g:session_autosave = 'no'
"+
"+ let g:syntastic_javascript_checkers = ['eslint']
"+ let g:ack_default_options = ' -H --nocolor --nogroup --column'
"+
"+ set t_Co=256
"+
let mapleader=","
let maplocalleader="\<space>"
"+ silent map <C-I> :TagbarToggle<CR>
"+ silent map <Leader>, <C-^>
imap <C-L> <SPACE>=><SPACE>
"+ map <C-W>e :copen<CR>
"+ " nmap <CR> :nohl<CR>
"+
" nmap <Leader>q :nohlsearch<CR>
nmap <Leader><space> :noh<CR>
"+
"+ nnoremap Y y$
nmap ; :Buffers<CR>
nmap Q <Nop>
"+
"+ vnoremap <silent> * :<C-U>
"+   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"+   \gvy/<C-R><C-R>=substitute(
"+   \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"+   \gV:call setreg('"', old_reg, old_regtype)<CR>
"+ vnoremap <silent> # :<C-U>
"+   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"+   \gvy?<C-R><C-R>=substitute(
"+   \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"+   \gV:call setreg('"', old_reg, old_regtype)<CR>
"+
"+ nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>
"+
"+ let Grep_Find_Use_Xargs = 0
"+
"+ " nmap <Leader>a= :Tabularize /=<CR>
"+ " vmap <Leader>a= :Tabularize /=<CR>
"+ " nmap <Leader>a<bar> :Tabularize/<bar><CR>
"+ " vmap <Leader>a<bar> :Tabularize/<bar><CR>
"+ " nmap <Leader>a: :Tabularize /: \zs<CR>
"+ " vmap <Leader>a: :Tabularize /: \zs<CR>
"+
"+ " highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue
"+ " match ExtraWhitespace /\s\+$/
"+
"+ " if $TERM == 'xterm-256color' || $TERM == 'screen-256color' || $COLORTERM == 'gnome-terminal'
"+ "   set t_Co=256
"+ " endif
"+
"+ let g:VimuxOrientation = "h"
"+ let g:VimuxHeight = "50"
"+ let g:VimuxUseNearestPane = 1
"+ let g:vroom_use_vimux = 1
"+ let g:vroom_use_zeus = 0
nmap <Leader>gr *N:silent GGrep <C-r><C-w><CR>
":copen<CR>
nmap <Leader>ga :silent Rg <C-r><C-w><CR>
"+ nmap <Leader>f :%s/<C-r><C-w>//gc<Left><Left><Left>
nmap <Leader>gs :Gstatus<CR>
"+
"+ highlight clear SignColumn
"+
"+
"+ if executable("ag")
"+   set grepprg=ag\ --nogroup\ --nocolor
"+ endif
"+
"+ " align cucumber tables
"+ inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
"+
"+ function! NumberToggle()
"+   if(&relativenumber == 1)
"+     set number
"+   else
"+     set relativenumber
"+   endif
"+ endfunc
"+
"+ nnoremap <C-n> :call NumberToggle()<cr>
"+ " nmap K :Dash<cr>
"+
"+ let g:dash_map = {
"+   \ 'ruby': 'ruby_on_rails'
"+ \ }
"+
"+ if has("gui_running")
"+   let g:airline_powerline_fonts = 1
"+ endif
"+
"+ let g:airline_theme='oceanicnext'
"+
"+ command! FormatJSON execute "%!python -m json.tool"
"+ command! Welcome call project#config#welcome()
"+
"
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
au BufWritePre * :%s/\s\+$//e
" au BufWritePost .vimrc source $MYVIMRC
"+
"+ au FileType go nmap <Leader>s <Plug>(go-implements)
"+ au FileType go nmap <Leader>i <Plug>(go-info)
"+ au FileType go nmap <Leader>gd <Plug>(go-doc)
"+ au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"+ au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"+ au FileType go nmap <leader>r <Plug>(go-run)
"+ au FileType go nmap <leader>b <Plug>(go-build)
"+ au FileType go nmap <leader>t <Plug>(go-test)
"+ au FileType go nmap <leader>c <Plug>(go-coverage)
"+ au FileType go nmap <Leader>ds <Plug>(go-def-split)
"+ au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"+ au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"+ au FileType go nmap <Leader>e <Plug>(go-rename)
"+

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" map <Leader>f <Plug>(easymotion-bd-f)
" map <Leader>s <Plug>(easymotion-bd-f2)
"+
"+ let g:go_fmt_command = "goimports"
"+
"+ let os = substitute(system('uname'), "\n", "", "")
"+ if os == "Linux"
"+   set clipboard=unnamedplus
"+   set guifont=Source\ Code\ Pro\ Medium\ 16
"+ else
"+   set clipboard=unnamed
"+   set guifont=Sauce\ Code\ Powerline:h18
"+ endif
"+
"+ let g:dbext_default_profile_local_staging='type=PGSQL:host=localhost:user=c42:dbname=staging'
"+ let g:dbext_default_profile_staging = 'type=PGSQL:user=c42:passwd=c422006:driver=Pg:dbname=cp.staging.web:host=dbstg.c42'
"+ let g:dbext_default_profile_data42='type=PGSQL:user=data42ro:passwd=wV6weHwCZ-S_dSQQsttC:driver=Pg:dbname=data42:host=dbdata42.c42:port=5433'
"+ let g:dbext_default_profile_production='type=PGSQL:user=c42ro:driver=Pg:dbname=crashplan:host=dbr.c42'
"+
set exrc
set secure
"+
nnoremap    <F2> :<C-U>setlocal lcs=tab:▶\ ,trail:-,eol:$ list! list? <CR>
set lcs=tab:▶\ ,trail:-,eol:$
set list!
"+
"+ vmap <C-c><C-c> <Plug>SendSelectionToTmux
"+ nmap <C-c><C-c> <Plug>NormalModeSendToTmux
"+ nmap <C-c>r <Plug>SetTmuxVars
"+
"+ iunmap \|
"+
"+ map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
"+
"+ command! -bang -nargs=* Rg
"+   \ call fzf#vim#grep(
"+   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"+   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"+   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"+   \   <bang>0)
"+
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case --glob '!dist/*' ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

nnoremap <C-p> :Files<cr>
let $FZF_DEFAULT_COMMAND = 'rg --files --glob "!.git/*" --glob "!dist/*"'
"+
let g:neomake_javascript_enabled_makers = ['eslint']
"+
"+ " autocmd! BufWritePost,BufEnter * Neomake
"+
let g:grepper               = {}
let g:grepper.tools         = ['git', 'ag', 'rg']
"+
"+ nmap gs <plug>(GrepperOperator)
"+
"+ let test#strategy = "vimux"
"+ let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"+ set termguicolors
"+
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"+
"+ let g:tagbar_type_typescript = {
"+   \ 'ctagstype': 'typescript',
"+   \ 'kinds': [
"+     \ 'c:classes',
"+     \ 'n:modules',
"+     \ 'f:functions',
"+     \ 'v:variables',
"+     \ 'v:varlambdas',
"+     \ 'm:members',
"+     \ 'i:interfaces',
"+     \ 'e:enums',
"+   \ ]
"+ \ }
"+
"+ let g:tagbar_type_elixir = {
"+     \ 'ctagstype' : 'elixir',
"+     \ 'kinds' : [
"+         \ 'p:protocols',
"+         \ 'm:modules',
"+         \ 'e:exceptions',
"+         \ 'y:types',
"+         \ 'd:delegates',
"+         \ 'f:functions',
"+         \ 'c:callbacks',
"+         \ 'a:macros',
"+         \ 't:tests',
"+         \ 'i:implementations',
"+         \ 'o:operators',
"+         \ 'r:records'
"+     \ ],
"+     \ 'sro' : '.',
"+     \ 'kind2scope' : {
"+         \ 'p' : 'protocol',
"+         \ 'm' : 'module'
"+     \ },
"+     \ 'scope2kind' : {
"+         \ 'protocol' : 'p',
"+         \ 'module' : 'm'
"+     \ },
"+     \ 'sort' : 0
"+ \ }
"+
"+
syntax on
"+
"+ let g:oceanic_next_terminal_bold = 1
"+ let g:oceanic_next_terminal_italic = 1
"+
"+ let g:indentLine_char = '│'
"+
let g:ale_elixir_elixir_ls_release = '~/code/elixir-ls/rel'
"+
let g:ale_fixers = {'javascript': ['eslint']}
"+ let g:ale_linters = {'javascript': ['']}
let g:ale_fix_on_save = 1
"+
set diffopt+=vertical
"+
colorscheme Tomorrow-Night-Eighties
"+
"+ " bind K to grep word under cursor
"+ nnoremap K :GrepperRg "\b<C-R><C-W>\b"<CR>:cw<CR>
"+
"+ " let g:clipboard = {
"+ "       \   'name': 'xclip-custom',
"+ "       \   'copy': {
"+ "       \      '+': 'xclip -quiet -i -selection clipboard',
"+ "       \      '*': 'xclip -quiet -i -selection primary',
"+ "       \    },
"+ "       \   'paste': {
"+ "       \      '+': 'xclip -o -selection clipboard',
"+ "       \      '*': 'xclip -o -selection primary',
"+ "       \   },
"+ "       \ }
let g:clipboard = {'copy': {'+': 'pbcopy', '*': 'pbcopy'}, 'paste': {'+': 'pbpaste', '*': 'pbpaste'}, 'name': 'pbcopy', 'cache_enabled': 0}
set clipboard+=unnamedplus
"+
"+ " select last paste in visual mode
"+ nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
"+

let g:sneak#label = 1
let g:sneak#s_next = 1

let g:mergetool_layout = 'mr'

let g:projectionist_heuristics = {
      \    "*.js": {
      \      "alternate": "{}.css",
      \      "type": "style"
      \    },
      \    "*.css": {
      \      "alternate": "{}.js",
      \      "type": "source"
      \    }
      \  }


nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" command! -bang -nargs=* GGrep
"   \ call fzf#vim#grep(
"   \   'git grep --line-number '.shellescape(<q-args>), 0,
"   \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

function! GgrepFzf(query, fullscreen)
  let command_fmt = 'git grep --line-number --color=always --column %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--ansi', '--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command], 'dir': systemlist('git rev-parse --show-toplevel')[0]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -bang -nargs=* GGrep call GgrepFzf(<q-args>, <bang>0)

let g:python3_host_prog = '/usr/local/Cellar/python/3.7.7/bin/python3'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)
let g:user_emmet_leader_key='<C-y>'
let g:netrw_keepdir = 0
" let test#strategy = "asyncrun_background"
let test#strategy = "neomake"
