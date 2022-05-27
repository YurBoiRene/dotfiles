" Automatically install vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    execute '!sh -c ''curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'''
    autocmd VimEnter * PlugInstall
endif

silent! if plug#begin('~/.local/share/nvim/plugged')
    " Pretty statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Gruvbox colorscheme
    Plug 'morhetz/gruvbox'

    " Icons
    Plug 'ryanoasis/vim-devicons'

    " Extra highlighting on NERDTree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " File tree
    Plug 'scrooloose/nerdtree'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Tag outline viewer; show current tag in status bar
    Plug 'majutsushi/tagbar'

    " Temporarily maximize splits (and restore it)
    Plug 'szw/vim-maximizer'

    " Distraction-free mode
    Plug 'junegunn/goyo.vim'

    " Management of parenthesis, brackets, etc.
    Plug 'tpope/vim-surround'

    " Detect indentation
    Plug 'tpope/vim-sleuth'

    " Show indent guides for files indented with spaces
    Plug 'Yggdroot/indentLine'

    " Simple completion with <TAB>
    Plug 'ajh17/VimCompletesMe'

    " Visualize undo tree
    Plug 'sjl/gundo.vim'

    " Create tables
    Plug 'dhruvasagar/vim-table-mode'

    " Alignment tools
    Plug 'junegunn/vim-easy-align'

    " Highlight characters past column 80
    Plug 'whatyouhide/vim-lengthmatters'

    " Whitespace management
    Plug 'ntpeters/vim-better-whitespace'

    " Asynchronous Lint Engine
    Plug 'dense-analysis/ale'

    " Manage matching components
    Plug 'andymass/vim-matchup'

    " Autoclose quotes, parenthesis, brackets
    Plug 'jiangmiao/auto-pairs'

    " Word case utilities for searching and editing
    Plug 'tpope/vim-abolish'

    " Highlight current search result
    Plug 'qxxxb/vim-searchhi'

    " incsearch (dependency of `incsearch-fuzzy`)
    Plug 'haya14busa/incsearch.vim'

    " Fuzzy incsearch
    Plug 'haya14busa/incsearch-fuzzy.vim'

    " Show search count
    Plug 'osyo-manga/vim-anzu'

    " Improved search with *
    Plug 'haya14busa/vim-asterisk'

    " Comment operator
    Plug 'tpope/vim-commentary'

    " Snippet engine
    Plug 'SirVer/ultisnips'

    " Snippets
    Plug 'honza/vim-snippets'

    " Tag management
    Plug 'ludovicchabant/vim-gutentags'

    " New text object based on indentation
    Plug 'michaeljsmith/vim-indent-object'

    " Useful mappings
    Plug 'tpope/vim-unimpaired'

    " Subword motions
    Plug 'chaoren/vim-wordmotion'

    Plug 'mattn/emmet-vim'

    " Autoclose HTML tags
    Plug 'alvan/vim-closetag'

    Plug 'StanAngeloff/php.vim'
    Plug 'pangloss/vim-javascript'

    " Sagemath
    Plug 'petRUShka/vim-sage'

    Plug 'plasticboy/vim-markdown'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'zah/nim.vim'
    Plug 'digitaltoad/vim-pug'

    " Needs to be before rust.vim
    Plug 'cespare/vim-toml'

    Plug 'rust-lang/rust.vim'

    " Git integration
    Plug 'tpope/vim-fugitive'

    " Show git diff in gutter
    Plug 'airblade/vim-gitgutter'

    " Repeat action from plugin
    Plug 'tpope/vim-repeat'

    " Plug 'edkolev/tmuxline.vim'

    Plug 'qpkorr/vim-bufkill'

    call plug#end()
    " Automatically executes:
    "     filetype plugin indent on
    "     syntax enable
endif
