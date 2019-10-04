set nocompatible
set noswapfile

map <C-o> :NERDTreeToggle<CR>
map <C-b> :!(cd build && make -j4 && ctest)
colorscheme anderson

filetype plugin indent on
autocmd FileType c ClangFormatAutoEnable
autocmd FileType h ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType hxx ClangFormatAutoEnable

