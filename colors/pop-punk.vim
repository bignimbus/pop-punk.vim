" Pop-Punk
"
" by Jeff Auriemma
" @bignimbus

scriptencoding utf8

set t_Co=256
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
let g:colors_name = "pop-punk"

" Palette

let s:colors = pop_punk#GetColors()

let s:white = s:colors.white
let s:gray_1 = s:colors.gray_1
let s:gray_2 = s:colors.gray_2
let s:gray_3 = s:colors.gray_3
let s:gray_4 = s:colors.gray_4
let s:gray_5 = s:colors.gray_5
let s:gray_6 = s:colors.gray_6
let s:gray_7 = s:colors.gray_7
let s:black = s:colors.black
let s:eggshell = s:colors.eggshell
let s:mauve = s:colors.mauve
let s:blue = s:colors.blue
let s:teal = s:colors.teal
let s:magenta = s:colors.magenta
let s:burgundy = s:colors.burgundy
let s:red_1 = s:colors.red_1
let s:red_2 = s:colors.red_2
let s:orange = s:colors.orange
let s:sun = s:colors.sun
let s:yellow = s:colors.yellow
let s:pink = s:colors.pink
let s:green = s:colors.green
let s:cobalt_1 = s:colors.cobalt_1
let s:cobalt_2 = s:colors.cobalt_2

let s:none      = ['NONE', 'NONE']

" User Configuration

if !exists('g:pop_punk_bold')
  let g:pop_punk_bold = 1
endif

if !exists('g:pop_punk_italic')
  let g:pop_punk_italic = 1
endif

if !exists('g:pop_punk_underline')
  let g:pop_punk_underline = 1
endif

if !exists('g:pop_punk_undercurl') && g:pop_punk_underline != 0
  let g:pop_punk_undercurl = 1
endif

if !exists('g:pop_punk_inverse')
  let g:pop_punk_inverse = 1
endif

if !exists('g:pop_punk_colorterm')
  let g:pop_punk_colorterm = 1
endif

" Script Helpers

let s:attrs = {
      \ 'bold': g:pop_punk_bold == 1 ? 'bold' : 0,
      \ 'italic': g:pop_punk_italic == 1 ? 'italic' : 0,
      \ 'underline': g:pop_punk_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:pop_punk_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:pop_punk_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  let l:special = get(a:, 3, ['NONE', 'NONE'])
  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  " if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
  "   let l:fg[0] = l:special[0]
  "   let l:fg[1] = l:special[1]
  " endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

" User Interface

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:white, s:black)

call s:h('StatusLine', s:magenta, s:gray_2, [s:attrs.bold])
call s:h('StatusLineNC', s:gray_7, s:gray_2, [s:attrs.italic])
" call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
" call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:none, s:gray_7)
call s:h('Cursor', s:black, s:mauve)
call s:h('CursorLine', s:none, s:gray_1)
call s:h('CursorColumn', s:none, s:gray_1)
call s:h('CursorLineNr', s:yellow, s:none)
call s:h('Debug', s:gray_6, s:none)
call s:h('DiffAdd', s:none, s:gray_3)
call s:h('DiffChange', s:eggshell, s:cobalt_1)
call s:h('DiffDelete', s:red_2, s:none)
" call s:h('DiffRemoved', s:red_2, s:none)
call s:h('DiffText', s:eggshell, s:burgundy)
call s:h('Directory', s:magenta, s:none)
call s:h('ErrorMsg', s:red_2, s:none)
call s:h('FoldColumn', s:gray_1, s:gray_7, [s:attrs.italic])
call s:h('Folded', s:gray_1, s:gray_7, [s:attrs.italic])
call s:h('IncSearch', s:white, s:blue)
call s:h('LineNr', s:gray_7, s:black)
call s:h('MoreMsg', s:pink, s:gray_2)
call s:h('NonText', s:gray_5, s:none)
call s:h('Pmenu', s:white, s:gray_2)
call s:h('PmenuSbar', s:none, s:gray_2)
call s:h('PmenuSel', s:white, s:red_1)
call s:h('PmenuThumb', s:none, s:cobalt_1)
call s:h('Question', s:pink, s:gray_2)
call s:h('Search', s:white, s:blue)
call s:h('SignColumn', s:gray_1, s:black)
call s:h('TabLine', s:magenta, s:gray_2)
call s:h('TabLineFill', s:white, s:black)
call s:h('TabLineSel', s:white, s:magenta, [s:attrs.bold])
call s:h('Title', s:white, s:none)
call s:h('VertSplit', s:magenta, s:black)
call s:h('Visual', s:gray_1, s:mauve)
" call s:h('VisualNOS', s:gray_1, s:mauve)
call s:h('WarningMsg', s:yellow, s:black)

" Syntax

" Required as some plugins will overwrite
call s:h('MatchParen', s:white, s:blue)
" call s:h('Conceal', s:cyan, s:none)

call s:h('SpecialKey', s:gray_5, s:none)

call s:h('Comment', s:blue, s:none, [s:attrs.italic])
call s:h('Underlined', s:blue, s:none, [s:attrs.underline])
call s:h('Todo', s:orange, s:black)

call s:h('Error', s:red_2, s:none)
call s:h('SpellBad', s:none, s:none, [s:attrs.undercurl], s:red_2)
" call s:h('SpellLocal', s:none, s:none, [s:attrs.undercurl], s:red_2)
call s:h('SpellCap', s:none, s:none, [s:attrs.undercurl], s:yellow)
" call s:h('SpellRare', s:none, s:none)

call s:h('Constant', s:red_2, s:none)
call s:h('String', s:green, s:none)
call s:h('Character', s:red_2, s:none)
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

call s:h('Identifier', s:teal, s:none)
call s:h('Function', s:teal, s:none, [s:attrs.bold])

call s:h('Statement', s:orange, s:none, [s:attrs.bold])
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Exception Statement
call s:h('Keyword', s:sun, s:none, [s:attrs.bold])

call s:h('PreProc', s:magenta, s:none)
hi! link Include PreProc
hi! link PreCondit PreProc
call s:h('Define', s:gray_6, s:none)
call s:h('Macro', s:sun, s:none)
call s:h('StorageClass', s:teal, s:none, [s:attrs.bold])
hi! link Typedef StorageClass
call s:h('Structure', s:orange, s:none, [s:attrs.bold])

call s:h('Type', s:teal, s:none, [s:attrs.bold])

call s:h('Delimiter', s:gray_6, s:none)

call s:h('Special', s:magenta, s:none, [s:attrs.bold])
call s:h('SpecialComment', s:blue, s:none, [s:attrs.bold])
call s:h('Tag', s:orange, s:none)

" netrw
call s:h('netrwTreeBar', s:blue, s:none)
call s:h('netrwDir', s:magenta, s:none)
call s:h('netrwClassify', s:orange, s:none)
call s:h('netrwSuffixes', s:sun, s:none)

" vim-ale, coc.nvim
call s:h('ALEErrorSign', s:red_2, s:none)
call s:h('ALEWarningSign', s:yellow, s:none)
hi! link CocErrorSign ALEErrorSign
hi! link CocWarningSign ALEWarningSign
hi! link CocInfoSign ALEWarningSign
call s:h('CocErrorFloat', s:red_2, s:none, [s:attrs.bold])
call s:h('CocWarningFloat', s:orange, s:none, [s:attrs.bold])

" vim-indent-guides
call s:h('IndentGuidesOdd', s:gray_4, s:none)
call s:h('IndentGuidesEven', s:gray_4, s:none)

" you-are-here.vim
call s:h('YouAreHereActiveBorder', s:magenta, s:gray_2)

" vim-startify
call s:h('StartifyHeader', s:magenta, s:none)

hi default CocUnderline cterm=undercurl gui=undercurl

" hi! link helpHyperTextJump PopPunkLink
" hi! link helpCommand PopPunkPurple
" hi! link helpExample PopPunkGreen
" hi! link helpBacktick Special
