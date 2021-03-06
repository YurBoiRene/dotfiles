" Providers
" ==========================================================

let g:python3_host_prog='/usr/bin/python3'

" Appearance
" ==========================================================

" Colorscheme
set background=dark

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"
let g:palenight_terminal_italics=1

colorscheme slate
if (has("termguicolors"))
    set termguicolors
endif

" Show line numbers
set number

" Highlight matching [{()}]
set showmatch

" Fill character for vertical split
set fillchars+=vert:\|

" Completion
" ==========================================================

set wildmenu
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Case insensitive command line completion
set wildignorecase

" Command line completion behavior like that of my zsh setup
set wildmode=longest,list:longest,full

" Automatically close preview window
autocmd InsertLeave * silent! pclose!

" Indentation
" ==========================================================

set autoindent
set smartindent
set cinoptions=(0,Ws,m1
set backspace=indent,eol,start
set complete-=i
set smarttab

set tabstop=4
set shiftwidth=4
set expandtab

let g:pyindent_open_paren = 'shiftwidth()'

" " List mode
set listchars=tab:¦\ ,trail:•,extends:›,precedes:‹,nbsp:␣
set list

" Search
" ==========================================================

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Ignorecase if search is all lowercase, case sensitive otherwise
set ignorecase
set smartcase

highlight Incsearch
    \ cterm=reverse ctermfg=214 ctermbg=235
    \ gui=reverse guifg=#fabd2f guibg=#282828

highlight Search
    \ cterm=reverse ctermfg=208 ctermbg=235
    \ gui=reverse guifg=#fe8019 guibg=#282828

" Syntax
" ==========================================================

autocmd FileType cpp,cs,java,php setlocal commentstring=//\ %s

" Other
" ==========================================================

" Clipboard
set clipboard+=unnamedplus

" Switch buffers without saving
set hidden

" Set title
if has("title")
    set title
endif

" Don't increment/decrement numbers in octal
set nrformats-=octal

" Auto reload file if modified
set autoread

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
    set t_Co=16
endif

" Avoid scrolling when switching buffers
set shada=!,'500,<50,s10,h
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" TeX
" ==========================================================

let g:tex_conceal=""
