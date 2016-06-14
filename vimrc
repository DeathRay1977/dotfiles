" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'DataWraith/auto_mkdir'
Plug 'elixir-lang/vim-elixir'
Plug 'gioele/vim-autoswap'
Plug 'jelera/vim-javascript-syntax'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jpalardy/vim-slime'
Plug 'luochen1990/rainbow'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'morhetz/gruvbox'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
Plug 'thoughtbot/vim-rspec'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'valloric/YouCompleteMe'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/fuzzyfinder'
Plug 'vim-scripts/l9'
Plug 'vim-scripts/taglist.vim'
Plug 'wikitopian/hardmode'
Plug 'chooh/brightscript.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'godlygeek/tabular'
Plug 'roman/golden-ratio'
Plug 'MattesGroeger/vim-bookmarks'

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
set hidden
set laststatus=2
set ts=2
set sts=2
set sw=2
set expandtab
set nowrap
set autoread
set mouse=a
au CursorHold * checktime
set cc=80
set gfn=Menlo\ Regular\ for\ Powerline:h13
set timeoutlen=1000 ttimeoutlen=0
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
" Vim-ruby settings
:let g:ruby_indent_access_modifier_style = 'normal'
:let ruby_fold = 1
:let ruby_operators = 1
:let ruby_space_errors = 1
:let ruby_spellcheck_strings = 1

" Nerdtree

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

" Auto Ctags
let g:auto_ctags = 1
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips"
nnoremap <C-s> :w<CR>
inoremap <c-s> <esc>:w<CR>
vmap <C-s> <esc>:w<CR>gv

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
let g:slime_target = "tmux"
let g:ruby_debugger_progname = 'mvim'
let g:formatprg_cpp = "astyle"
let g:autoformat_verbosemode = 1
let g:formatprg_args_expr_cpp = '"--unpad-paren --style=whitesmith --pad-paren-in --indent-brackets"'
let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \   'operators': '_,_',
      \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \   'separately': {
      \       '*': {},
      \       'rb' : {},
      \       'tex': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \       },
      \       'lisp': {
      \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \       },
      \       'vim': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \       },
      \       'html': {
      \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \       },
      \       'css': 0,
      \   }
      \}
let g:rainbow_active = 1
" Set <leader> to comma

let mapleader=","

" Mappings
noremap <leader>gp :Git push origin master<cr>
noremap <leader>qa :wqa!<cr>

nnoremap <Leader>nn :NERDTreeTabsToggle<CR>
" Rspec  mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!rspec --drb {spec}"
let g:rspec_runner = "os_x_iterm2"
" Hard mode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" Fuzzy finder mappings
map <leader>b :FufBuffer<cr>
map <leader>f :FufFile<cr>
map <leader>T :FufTag<cr>
map <leader>B :FufBufferTag<cr>
map <leader>d :FufDir<cr>
map <leader>j :FufJumpList<cr>
map <leader>c :FufChangeList<cr>
map <leader>q :FufQuickfix<cr>
map <leader>L :FufLine<cr>
" Normal Mode mappings
noremap <leader>> :bn<CR>
nnoremap <silent> <leader>ts :call StripTrailingWhitespaces()<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>
" Disable Arrow Keys"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap <leader>R :RainbowParenthesesToggle<CR>
nnoremap <silent> <Plug>TransposeCharacters xp :call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>
nnoremap <leader>af :Autoformat<cr>
" Since these all have native (Cmd-modified) versions in MacVim, don't bother
" defining them there.
function! Carousel()
  for theme in split(globpath(&runtimepath, 'colors/*.vim'), '\n')
    let t = fnamemodify(theme, ':t:r')
    try
      execute 'colorscheme '.t
      echo t
    catch
    finally
    endtry
    sleep 2
    redraw
  endfor
endfunction

map <silent> <Leader>tc :call Carousel()<cr>
" TODO: We need to configure iTerm2 to be able to send Cmd+Ctrl+arrow keys, so
" we can duplicate the :cnext/:cprevious/:colder/:cnewer bindings to those keys
" in MacVim.
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" colours

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
  filetype plugin indent on
  runtime macros/matchit.vim
  autocmd BufWritePre *.rb,*.erb :call StripTrailingWhitespaces()
  autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-mark)
  autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-mark)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-mark)

  autocmd FileType ruby nmap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType ruby xmap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType ruby imap <buffer> <F6> <Plug>(xmpfilter-run)
  autocmd FileType brs setlocal commentstring='\ %s
  autocmd! bufwritepost .vimrc source $MYVIMRC

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

function! Debugprint()
  normal yt oprint "pa: "; p
endfunction
