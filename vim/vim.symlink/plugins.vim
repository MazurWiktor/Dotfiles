set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged')

Plugin 'VundleVim/Vundle.vim'

"Autocompletion
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
nnoremap <Leader>f :YcmCompleter GoTo<CR>
nnoremap <Leader>d :YcmCompleter GoToDefinition<CR>

Plugin 'jalcine/cmake.vim'
Plugin 'rdnetto/YCM-Generator'

"C/C++
Plugin 'vim-scripts/ctags.vim'
"Rust
Plugin 'rust-lang/rust.vim'
let g:ycm_rust_src_path = '/home/wiktor/bin/rustc-1.12.0/src' "YCM SUPPORT
"Ruby
Plugin 'vim-ruby/vim-ruby'

"Vim management
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
map <C-t> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1 "Put Nerdtree into a window

Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on
