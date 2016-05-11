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
syn match notesComplete '^\s*X.*$'
syn match notesQuickNote '^\s*Q.*$'
syn match notesCurrentNote '^\s*CURRENT.*$'
syn match notesCriticalNote '^!.*$'
syn match notesWatchingVideo '^W .*$'
syn match url %https\?://\(\w\+\(:\w\+\)\?@\)\?[A-Za-z0-9-_.]*\(:[0-9]\{1,5}\)\?\S*%

syn keyword bool true false
hi link bool Boolean

syn match date @\<[0-9]\{4}[-/][0-9]\{2}[-/][0-9]\{2}@
hi def link date Directory
syn match time @\<[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\([,.][0-9]\+\)\?@
hi def link time Number

hi link basicLanguageKeywords TODO
hi link notesCurrentNote Function
hi link notesNode Function
hi link notesTwoNode Include
hi link notesThreeNode PreProc
hi link notesRule Function
hi link notesTable Float
hi link notesComplete Comment
hi link notesArrowPoint Function
hi link notesBulletPointNode String
hi link notesBulletPointLineNode Keyword
hi link notesQuickNote Keyword
hi link notesCriticalNote Visual
hi link notesWatchingVideo Label
hi link url Underlined
