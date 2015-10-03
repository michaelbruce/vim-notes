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

map <F1> :sp ~/notes/cheatsheet.notes<CR>
map <Leader>io :e ~/notes/origin.notes<CR>
map <Leader>it :e ~/notes/config.notes<CR>
map <Leader>ig :e ~/notes/league.notes<CR>
map <Leader>ih :e ~/notes/log.notes<cr>G
map <Leader>il :e ~/notes/loci.notes<cr>
map <Leader>in :e ~/notes/note.notes<CR>G
