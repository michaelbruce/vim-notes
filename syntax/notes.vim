" vim-notes style highlight file

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords TODO
" this should work on first whitespace rather than first character
"
syn match notesNode '^\*.*$'
syn match notesTwoNode '^\*\*.*$'
syn match notesThreeNode '^\*\*\*.*$'

syn match notesRule '^-----.*$'
syn match notesTable +^\s*|.\+|\s*$+

syn match notesArrowPoint +^\s*>.*$+
syn match notesBulletPointNode +^\s*o.*$+
syn match notesBulletPointLineNode '^\s*-.*$'
syn match notesImportantNote '^X.*$'
syn match notesQuickNote '^\s*Q.*$'
syn match notesCurrentNote '^\s*CURRENT.*$'
syn match notesCriticalNote '^!.*$'
syn match notesWatchingVideo '^W .*$'
syn match notesWebLink '\vhttp.[:a-zA-Z0-9/.\-_=\@#~\?\&+%]+'

hi link basicLanguageKeywords TODO
hi link notesCurrentNote Function
hi link notesNode Function
hi link notesTwoNode Include
hi link notesThreeNode PreProc
hi link notesRule Function
hi link notesTable Float
hi link notesImportantNote String
hi link notesArrowPoint Function
hi link notesBulletPointNode String
hi link notesBulletPointLineNode Keyword
hi link notesQuickNote Keyword
hi link notesCriticalNote Visual
hi link notesWatchingVideo Label
hi link notesWebLink Float
