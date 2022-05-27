" rene's .vimrc

" Lightline plugin
silent !mkdir -p ~/.vim/pack/plugins/start
if !isdirectory($HOME."/.vim/pack/plugins/start/lightline")
  silent !git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline > /dev/null
endif

" LIGHTLINE CONFIG:
	set laststatus=2

" Basic init:
	let mapleader=","
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Add pwd to path to find files:
	set path+=**

" Adds tab menu for file search:
	set wildmode=longest,list,full

" Shows commands when in normal mode:
	set showcmd

" Allows to make tags:
	command! MakeTags !ctags -R .

" Spellcheck to <leader>o:
	nmap <leader>o :setlocal spell! spelllang=en_US<CR>

" Disable autocommenting on new line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split to the right and bottom:
	set splitbelow splitright

" Set ^e to move more lines
  nnoremap <C-e> 5<C-e>
  nnoremap <C-y> 5<C-y>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Insert spaces instead on tabs on c files
	set expandtab
  set autoindent
  set sw=2
	set tabstop=2 softtabstop=2 shiftwidth=2 smarttab
	autocmd FileType c set expandtab
	nmap <leader>t :set expandtab!<CR>

" Colorscheme
  :colorscheme pablo

" jj to exit insert mode
  :imap jj <Esc>
