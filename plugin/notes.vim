" vim-notes
" Author:       Michael Bruce <http://focalpointer.org/>
" Version:      0.1

if exists('g:loaded_notes')
  finish
endif

let g:loaded_notes = 1

augroup notetypes
  autocmd BufNewFile,BufReadPost *.notes set filetype=notes
augroup END

if exists('g:notes_default_keybindings')
  " Navigation
  map <F1> :sp ~/notes/cheatsheet.notes<CR>
  nmap go :e ~/notes/origin.notes<CR>
  nmap gc :e ~/notes/config.notes<CR>
  nmap gl :e ~/notes/loci.notes<CR>
  nmap gn :e ~/notes/note.notes<CR>G
  nmap gs :CtrlP ~/.vim/snippets/<CR>

  " Text Manipulation
  nmap c. 0i- <ESC>
endif
