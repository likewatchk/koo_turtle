" syntax Highlighting
if has("syntax")
         syntax on
endif
set autoindent
set cindent
set nu
set nocompatible
set hlsearch
set ts=4
set shiftwidth=4

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nanotech/jellybeans.vim'


call vundle#end()
 
filetype plugin indent on

" Vim syntax file
" " Language: roslaunch XML
" " Maintainer: Jonathan Bohren
" " Latest Revision: 8 July 2013
" "
" " roslaunch xml syntax hilighting with inline yaml support
" "
" " Put this file in ~/.vim/syntax/roslaunch.vim
" " Put the following in your .vimrc:
" "   autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
if exists("b:current_syntax")
   finish
endif

runtime syntax/xml.vim

let s:current_syntax=b:current_syntax
unlet b:current_syntax

syntax include @YAML syntax/yaml.vim
syntax region ymlSnipInline matchgroup=rosparamTag start="\m<.\{-}rosparam.\{-}>" end="\m</.\{-}rosparam.\{-}>" contains=@YAML containedin=xmlEntity
hi link rosparamTag ModeMsg

let b:current_syntax=s:current_syntax
