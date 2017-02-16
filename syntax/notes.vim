" vim-notes style highlight file

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords TODO
" this should work on first whitespace rather than first character
"
" syn match notesNode '^\*.*$'
" syn match notesTwoNode '^\*\*.*$'
" syn match notesThreeNode '^\*\*\*.*$'

syn match notesRule '^-----.*$'
syn match notesTable +^\s*|.\+|\s*$+

syn match notesArrowPoint +^\s*>.*$+
" syn match notesBulletPointNode +^\s*o.*$+
syn match notesBulletPointLineNode '^\s*-.*$'
syn match notesBulletPointCrossNode '^\s*+.*$'
syn match notesComplete '^\s*X.*$'
syn match notesBulletPointStarNode '^\s*\*.*$'
syn match notesQuickNote '^\s*Q.*$'
syn match notesCurrentNote '^\s*CURRENT.*$'
syn match notesCriticalNote '^!.*$'
syn match notesWatchingVideo '^W .*$'
syn match url %https\?://\(\w\+\(:\w\+\)\?@\)\?[A-Za-z0-9-_.]*\(:[0-9]\{1,5}\)\?\S*%

syn keyword bool true false
hi link bool Boolean

syn match date @\<[0-9]\{4}[-/][0-9]\{2}[-/][0-9]\{2}@
hi link date Directory
syn match time @\<[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\([,.][0-9]\+\)\?@
hi link time Number

" Highlight * when they are EOL
syn match strongEnd /\*\*$/
syn match strongEnd1 /\*$/
syn match strongEnd2 /\*$/ containedin=strongEnd contained
hi link strongEnd Exception
hi link strongEnd1 Exception
hi link strongEnd2 Question

let s:bullets = notes#_bullets()
execute 'syn region indent0 start=/^'.s:bullets.'/ end=/^\ze\S/ contains=ALL fold'
execute 'syn match  indentBullet0 /^'.s:bullets.'/ containedin=indent0 contained'
hi def link indentBullet0 Label

hi link basicLanguageKeywords TODO
hi link notesCurrentNote Function
" hi link notesNode Function
" hi link notesTwoNode Include
" hi link notesThreeNode PreProc
hi link notesRule Function
hi link notesTable Float
hi link notesComplete Comment
hi link notesArrowPoint Function
" hi link notesBulletPointNode String
hi link notesBulletPointLineNode Comment
" TODO this should be something in wider use rather than a ruby specific var
hi link notesBulletPointCrossNode rubySymbol
hi link notesBulletPointStarNode Comment
hi link notesQuickNote Keyword
hi link notesCriticalNote Number
hi link notesWatchingVideo Label
hi link url Underlined
