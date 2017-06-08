set fdc=2
set lsp=5
syn keyword k1 以 为
syn keyword k2 荣 glory
syn keyword k3 耻 shame
syn match k4 " \W\{4} "
syn match k5 "'.\{-}'"

syn match zhead "^*.\+"
syn match zhead2 "^\d\(\.\d\)\=\s\+.*"
syn match ztxt1 "`1"
hi zhead guifg=green gui=bold
hi ztxt1 guifg=red guibg=red
hi link zhead2 zhead

hi k1 guifg=lightblue
hi k2 guibg=red gui=bold
hi k3 guifg=yellow 
hi k4 guifg=lightgreen
hi link k5 k4

hi zhead guifg=green gui=bold
hi ztxt1 guifg=red guibg=red
hi link zhead2 zhead

set fdm=expr
set foldexpr=Myindent(v:lnum)
func! Myindent(lnum)
	let s:a=strlen(matchstr(getline(v:lnum), '^\*\+\s\+\|^\d\(\.\d\)\=\s\+'))
	if s:a == 4
	    return '>2'
	elseif s:a == 2
	    return '>1'
	else
	    return '='
	endif
endf
