"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2022 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================



" Note: Skip initialization for vim-tiny or vim-small.
if 1
    let g:_spacevim_if_lua = 0
    if has('lua')
        " add ~/.SpaceVim/lua to lua package path
        if has('win16') || has('win32') || has('win64')
            let s:plugin_dir = fnamemodify(expand('<sfile>'), ':h').'\lua'
            let s:str = s:plugin_dir . '\?.lua;' . s:plugin_dir . '\?\init.lua;'
        else
            let s:plugin_dir = fnamemodify(expand('<sfile>'), ':h').'/lua'
            let s:str = s:plugin_dir . '/?.lua;' . s:plugin_dir . '/?/init.lua;'
        endif
        silent! lua package.path=vim.eval("s:str") .. package.path
        if empty(v:errmsg)
            let g:_spacevim_if_lua = 1
        endif
    endif
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
endif

" clipboard
" install vim-gui-common

" file

set colorcolumn=90

" NERD TREE 
set mouse=a

let g:NERDTreeMouseMode=3
let g:NERDTreeWinPos = "left"


" minimap
call plug#begin()
Plug 'wfxr/minimap.vim'
call plug#end()
"
" installing custom vim plugin:
" $ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" then see:
" https://github.com/wfxr/minimap.vim
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1

" various operations

" ctrl+s:

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" vim:set et sw=2
"

" Default to static completion for SQL
let g:omni_sql_default_compl_type = 'syntax'
let g:ftplugin_sql_omni_key       = ''
