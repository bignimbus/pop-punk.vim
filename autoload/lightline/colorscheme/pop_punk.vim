" -----------------------------------------------------------------------------
" File: pop_punk.vim
" Description: Pop-Punk colorscheme for Lightline
" Author: mikejzx <skec@protonmail.ch>
" Source: https://github.com/bignimbus/pop-punk.vim
" Last Modified: 23 Aug 2020
" -----------------------------------------------------------------------------

if exists('g:lightline')

	let s:colors = pop_punk#GetColors()

	let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

	" Normal Mode
	let s:p.normal.left   = [ [ s:colors.white , s:colors.magenta ], [ s:colors.pink, s:colors.gray_2 ] ]
	let s:p.normal.middle = [ [ s:colors.gray_7, s:colors.black   ] ]
	let s:p.normal.right  = copy(s:p.normal.left)

	" Insert mode
	let s:p.insert.left   = [ [ s:colors.white,  s:colors.blue  ], [ s:colors.mauve, s:colors.cobalt_2 ] ]
	let s:p.insert.middle = [ [ s:colors.gray_7, s:colors.black ] ]
	let s:p.insert.right  = copy(s:p.insert.left)

	" Visual mode
	let s:p.visual.left   = [ [ s:colors.black,  s:colors.orange ], [ s:colors.orange, s:colors.gray_2 ] ]
	let s:p.visual.middle = [ [ s:colors.gray_7, s:colors.black  ]                                       ]
	let s:p.visual.right  = copy(s:p.visual.left)

	" Replace mode
	let s:p.replace.left   = [ [ s:colors.black,  s:colors.yellow ], [ s:colors.eggshell, s:colors.gray_3 ] ]
	let s:p.replace.middle = [ [ s:colors.gray_7,  s:colors.black ] ]
	let s:p.replace.right  = copy(s:p.replace.left)

	" Inactive windows
	let s:p.inactive.left     = [ [ s:colors.gray_7,   s:colors.gray_2 ], [ s:colors.gray_7, s:colors.gray_2, 'italic' ] ]
	let s:p.inactive.middle   = [ [ s:colors.gray_5,  s:colors.black ] ]
	let s:p.inactive.right    = [ [ s:colors.black,   s:colors.gray_7 ], [ s:colors.gray_7, s:colors.gray_2 ] ]

	" Tab line
	let s:p.tabline.left   = copy(s:p.normal.middle)
	let s:p.tabline.middle = copy(s:p.normal.middle)
	let s:p.tabline.right  = copy(s:p.normal.right)
	let s:p.tabline.tabsel = copy(s:p.normal.left)

	" Errors and warnings (untested)
	let s:p.normal.error    = [ [ s:colors.red_2, s:colors.gray_2 ],  [ s:colors.red_2,  s:colors.gray_2, 'bold' ] ]
	let s:p.insert.error    = copy(s:p.normal.error)
	let s:p.visual.error    = copy(s:p.normal.error)
	let s:p.replace.error   = copy(s:p.normal.error)
	let s:p.normal.warning  = [ [ s:colors.yellow, s:colors.gray_2 ], [ s:colors.yellow, s:colors.gray_2, 'bold' ] ]
	let s:p.insert.warning  = copy(s:p.normal.warning)
	let s:p.visual.warning  = copy(s:p.normal.warning)
	let s:p.replace.warning = copy(s:p.normal.warning)

	let g:lightline#colorscheme#pop_punk#palette = lightline#colorscheme#flatten(s:p)
endif
