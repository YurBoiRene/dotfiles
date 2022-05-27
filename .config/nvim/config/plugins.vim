" airline
" ==========================================================

let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_symbols.dirty='*'

let g:airline_mode_map = {
    \ 'n'  : 'N',
    \ 'ni' : 'N',
    \ 'no' : 'N'
    \ }

" devicons
" ==========================================================

let g:webdevicons_enable_airline_statusline=0

" indentLine
" ==========================================================

let g:indentLine_showFirstIndentLevel=1

" FZF
" ==========================================================

let $FZF_DEFAULT_OPTS='--height 50% --reverse --prompt=\ ' .
\ ' --bind ctrl-a:select-all --bind ctrl-d:deselect-all'

" gitgutter
" ==========================================================

" Disable by default (ugly)
let g:gitgutter_enabled=0

" Update more quickly
set updatetime=500

" NERDTree
" ==========================================================

" Quit NERDTree after opening file
let NERDTreeQuitOnOpen=1

" Some options: 
let g:NERDTreeDirArrowExpandable=''
let g:NERDTreeDirArrowCollapsible=''

" Minimal UI
let g:NERDTreeMinimalUI=1

" lengthmatters
" ==========================================================

let g:lengthmatters_excluded=[
    \ 'unite',
    \ 'tagbar',
    \ 'startify',
    \ 'gundo',
    \ 'vimshell',
    \ 'w3m',
    \ 'nerdtree',
    \ 'help',
    \ 'qf',
    \ 'dirvish',
    \ 'far_vim',
    \ 'json'
    \ ]

let g:lengthmatters_on_by_default=0

" anzu
" ==========================================================

let g:airline#extensions#anzu#enabled=0

" ALE
" ==========================================================

let g:ale_fixers={}
" let g:ale_hover_cursor=0 " This causes errors for me
let g:ale_fixers['python']=['black']
" let g:ale_fixers['php']=['php_cs_fixer']
let g:ale_fixers['javascript']=['prettier', 'eslint']
let g:ale_fixers['vue']=['prettier', 'eslint']

" let g:ale_rust_cargo_use_clippy=1
" let g:ale_fixers['rust']=['rustfmt']
" let g:ale_c_parse_compile_commands=1

" matchup
" ==========================================================

let g:matchup_matchparen_status_offscreen=0

" ==========================================================
" closetag
" ==========================================================

let g:closetag_filenames='*.html,*.xhtml,*.phtml,*.php'

" markdown
" ==========================================================

let g:vim_markdown_new_list_item_indent=2
let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks=0
let g:vim_markdown_folding_disabled=1

" better-whitespace
" ==========================================================

" Tabs are required for votl. Because for some reason this causes certain
" scenarios in insert mode to leave trailing whitespace, I think it's nicer to
" just disable the ugly red highlights and automatically strip the trailing
" whitespace when the file is saved. The latter is handled with ftplugin
let g:better_whitespace_filetypes_blacklist=['votl']

" incsearch
" ==========================================================

" These highlights disappear when the search query is submitted (i.e. when
" `<CR>` is pressed)
highlight link IncSearchCursor Incsearch
highlight link IncSearchOnCursor Incsearch

" searchhi, anzu, asterisk
" ==========================================================

let g:searchhi_user_autocmds_enabled=1
let g:searchhi_redraw_before_on=1

augroup searchhi
    autocmd!

    " Set blinking guicursor to make it easier to find and print search
    " status with anzu
    autocmd User SearchHiOn
        \ set guicursor=
            \c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,
            \n-v:block-blinkwait20-blinkon20-blinkoff20 |
        \ AnzuUpdateSearchStatusOutput

    " Set default guicursor and clear messages from anzu
    autocmd User SearchHiOff set guicursor& | echo g:anzu_no_match_word
augroup END

highlight AnzuSearch
    \ cterm=bold ctermfg=223 ctermbg=235
    \ gui=bold guifg=fg guibg=bg

let g:anzu_status_format=
    \ '%#GruvboxFg4#Search: %#AnzuSearch#%p %#GruvboxYellowBold#[%i/%l]'

" UltiSnips
" ==========================================================

let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME . "/.config/nvim/UltiSnips"]

" gutentags
" ==========================================================

let g:gutentags_ctags_exclude=["*.min.js", "*.min.css", ".git", "node_modules"]
