execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set relativenumber
set showcmd
set laststatus=2
set t_Co=256
set noshowmode
set foldmethod=manual
set hlsearch
set tabstop=2 shiftwidth=2 expandtab
hi Search ctermfg=red
hi Search ctermbg=blue
set listchars=tab:\|\
set list
set backspace=2 " set backspace=indent,eol,start
set clipboard=unnamed

" F2 to toggle relative number
" F4 to show list charactors
" F5 to hide list charactors
nnoremap <F2> :set relativenumber!<CR>
nnoremap <F4> :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<<CR>
nnoremap <F5> :set listchars= <CR>

" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
nnoremap x "_x

" WSL yank support
" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
" if executable(s:clip)
"     augroup WSLYank
"         autocmd!
"         autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"     augroup END
" endif


