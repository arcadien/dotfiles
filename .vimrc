set nocompatible              " be iMproved, required
set noswapfile
filetype off
set shell=/usr/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'Shougo/vimproc.vim'
Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'

call vundle#end()

filetype plugin indent on
autocmd FileType c ClangFormatAutoEnable
autocmd FileType h ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType hxx ClangFormatAutoEnable

