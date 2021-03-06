" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'Chiel92/vim-autoformat'
Plug 'Chun-Yang/vim-action-ag'
Plug 'DataWraith/auto_mkdir'
Plug 'SirVer/ultisnips'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'chooh/brightscript.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'gioele/vim-autoswap'
Plug 'godlygeek/tabular'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'joshdick/vim-action-ack'
Plug 'jpalardy/vim-slime'
Plug 'luochen1990/rainbow'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/ctrlp-mark'
Plug 'mattn/webapi-vim'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'huffman/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'sbdchd/neoformat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/l9'
Plug 'w0rp/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
set encoding=utf8
set rnu
set nu
set backspace=indent,eol,start
set background=dark
set backup     " keep a backup file
set history=50 " keep 50 lines of command line history
set ruler      " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch  " do incremental searching
set nohlsearch
set hidden
set laststatus=2
" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype vim setlocal ts=2 sw=2 expandtab
autocmd Filetype go setlocal ts=8 sw=8

" for js/coffee/jade files, 4 spaces
autocmd Filetype brs setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab
set mouse=a
set nowrap
set autoread
set fileformat=unix
set list
set listchars=tab:>·,trail:-
au CursorHold * checktime
" set gfn=Menlo\ Regular\ for\ Powerline:h13
set timeoutlen=1000 ttimeoutlen=0

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

set directory=~/.config/nvim/swapfiles//
set backupdir=~/.config/nvim/backup//
set undodir=~/.config/nvim/undo//

let g:ale_elixir_elixir_ls_release = '/Users/Norm/elixir-language-server/'

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'go': ['tcp://127.0.0.1:4389'],
    \ 'cpp': ['/Users/Norm/cquery/build/release/bin/cquery', 
    \ '--log-file=/tmp/cq.log', 
    \ '--init={"cacheDirectory":"/var/cquery/"}'],                                                                                                                                                                              
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:python_host_prog = '/usr/local/bin/python2'

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_enable_signs = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_haskell_checkers = ['hlint']
" let g:syntastic_javascript_checkers = ['eslint']
" Vim-ruby settings
:let g:ruby_indent_access_modifier_style = 'normal'
:let ruby_fold = 1
:let ruby_operators = 1
:let ruby_space_errors = 1
:let ruby_spellcheck_strings = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='bubblegum'

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Nerdtree

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa


" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

" Auto Ctags
let g:auto_ctags = 1
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips"
nnoremap <C-s> :w<CR>
inoremap <c-s> <esc>:w<CR>
vmap <C-s> <esc>:w<CR>gv
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and somtimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

if executable('brightscript-languageserver')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'brightscript-languageserver',
        \ 'cmd': {server_info->['brightscript-languageserver']},
        \ 'whitelist': ['brs'],
        \ })
endif
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼', 'icon': '/path/to/some/icon'} " icons require GUI
let g:lsp_signs_hint = {'icon': '/path/to/some/other/icon'} " icons require GUI
function! g:Fixfont()
  set guifont=Courier\ 10\ Pitch\ 10
  set lines=44 columns=80
endif
endfunction
let g:airline_powerline_fonts = 1
function! StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and somtimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:ycm_use_ultisnips_completer = 0
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

let g:ruby_debugger_progname = 'mvim'
let g:formatprg_cpp = "astyle"
let g:autoformat_verbosemode = 1
let g:formatprg_args_expr_cpp = '"--unpad-paren --style=whitesmith --pad-paren-in --indent-brackets"'
" Set <leader> to comma

let mapleader=","

let g:elm_setup_keybindings = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
let NERDTreeQuitOnOpen = 1
" Mappings
noremap <leader>gp :Git push origin master<cr>
noremap <leader>qa :wqa!<cr>
noremap <leader>dp :call DebugPrint()<CR>
noremap <leader>nh :noh<CR>
nnoremap <Leader>nn :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

" Hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" Fuzzy finder mappings
map <leader>b :CtrlPBuffer<cr>
map <leader>bt :CtrlPBufTag<cr>
map <leader>f :CtrlP<cr>
map <leader>t :CtrlPTag<cr>
map <leader>d :CtrlPDir<cr>
map <leader>c :CtrlPChange<cr>
map <leader>q :CtrlPQuickfix<cr>
map <leader>l :CtrlPLine<cr>
map <leader>m :CtrlPMRU<cr>
map <leader>M :CtrlPMark<cr>

nnoremap <localleader>et :EnType<CR>

" Normal Mode mappings
noremap <leader>> :bn<CR>
nnoremap <silent> <leader>ts :call StripTrailingWhitespaces()<CR>

noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <F5> :GundoToggle<CR>
" Disable Arrow Keys"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap <silent> <Plug>TransposeCharacters xp :call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

nnoremap <leader>af :Autoformat<cr>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  colorscheme gruvbox
  syntax on
  let os = substitute(system('uname'), "\n", "", "")
  if os == "Linux"
    call g:Fixfont()
  endif
endif
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
  au BufRead,BufNewFile *.rex set filetype=ruby
  au VimLeave * :mksession! ./session.vim
  filetype plugin indent on
  runtime macros/matchit.vim
  autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
  autocmd BufWritePre *.elm :ElmFormat
  autocmd BufWritePre *.brs,*.bs,*.rb,*.erb,*.js :call StripTrailingWhitespaces()
  autocmd BufWritePre *.brs,*.bs :retab
  autocmd BufWritePost *.scala silent :EnTypeCheck
  autocmd BufWinLeave *.brs mkview
  autocmd BufWinEnter *.brs silent! loadview
  autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-mark)
  autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-mark)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-mark)

  autocmd FileType ruby nmap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType ruby xmap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType ruby imap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType brs setlocal commentstring='\ %s
  autocmd FileType javascript setl sw=2 sts=2 et
  autocmd FileType javascript.jsx setl sw=2 sts=2 et
  autocmd FileType jsx setl sw=2 sts=2 et
  autocmd! bufwritepost init.vim source $MYVIMRC
  au BufRead,BufNewFile *.bs setfiletype brs
  autocmd VimResized * :wincmd =
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
else

  set autoindent      " always set autoindenting on

endif " has("autocmd")

highlight Pmenu guibg=brown gui=bold

function! DebugPrint()
    normal yt oprint "pa: ";p
endfunction

" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

" highlight UnwantedTabs ctermbg=darkgreen guibg=lightgreen
" match UnwantedTabs /\t/
" autocmd BufWinEnter * match UnwantedTabs /\t/
" autocmd InsertEnter * match UnwantedTabs /\t\+\%#\@<!$/
" autocmd InsertLeave * match UnwantedTabs /\t/
" autocmd BufWinLeave * call clearmatches()

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
  endif

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:rainbow_conf = {
  \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
  \ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \ 'operators': '_,_',
  \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
  \ 'separately': {
  \   '*': {},
  \   'tex': {
  \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
  \   },
  \   'lisp': {
  \     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
  \   },
  \   'vim': {
  \     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
  \   },
  \   'html': {
  \     'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
  \   },
  \   'css': 0,
  \ }
  \}

