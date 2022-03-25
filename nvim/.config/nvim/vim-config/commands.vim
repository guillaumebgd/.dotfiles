" autocmd StdinReadPre * let s:std_in=1 " dunno
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NvimTreeToggle | endif "open NERDTree if you just type "vim"
"autocmd TextChanged, TextChangedI <buffer> silent write " autosave
"need to find a solution for autosaving, the above solution doesn't work


"" txt

"" make/cmake
augroup vimrc-make-cmake
    autocmd!
    autocmd FileType make setlocal noexpandtab
    autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

" indentation
autocmd FileType c               setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=80
autocmd FileType cpp             setlocal expandtab tabstop=4 shiftwidth=4 colorcolumn=80
autocmd FileType python          setlocal expandtab tabstop=8 shiftwidth=4 colorcolumn=80
autocmd FileType haskell         setlocal expandtab tabstop=8 shiftwidth=4 colorcolumn=80
autocmd FileType typescriptreact setlocal                     shiftwidth=2
autocmd FileType javascriptreact setlocal                     shiftwidth=2

autocmd BufRead,BufNewFile *.asm set filetype=nasm
