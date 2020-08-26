" Pop-Punk Airline theme
" for use with the Pop-Punk color scheme
"
" by Jeff Auriemma
" @bignimbus

let s:colors = pop_punk#GetColors()

" Normal Mode
" ---------- fgcolor               bgcolor               fg                    bg
let s:N1 = [ s:colors.white[0]   , s:colors.magenta[0] , s:colors.white[1]   , s:colors.magenta[1]  ]
let s:N2 = [ s:colors.pink[0]    , s:colors.gray_2[0]  , s:colors.pink[1]    , s:colors.gray_2[1]   ]
let s:N3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]    ]

" Insert Mode
let s:I1 = [ s:colors.white[0]   , s:colors.blue[0]    , s:colors.white[1]   , s:colors.blue[1]     ]
let s:I2 = [ s:colors.mauve[0]   , s:colors.cobalt_2[0], s:colors.mauve[1]   , s:colors.cobalt_2[1] ]
let s:I3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]    ]

" Visual Mode
let s:V1 = [ s:colors.black[0]   , s:colors.orange[0]  , s:colors.black[1]   , s:colors.orange[1]   ]
let s:V2 = [ s:colors.mauve[0]   , s:colors.gray_3[0]  , s:colors.mauve[1]   , s:colors.gray_3[1]   ]
let s:V3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]    ]

" Replace Mode
let s:R1 = [ s:colors.black[0]   , s:colors.yellow[0]  , s:colors.black[1]   , s:colors.yellow[1]   ]
let s:R2 = [ s:colors.eggshell[0], s:colors.gray_3[0]  , s:colors.eggshell[1], s:colors.gray_3[1]   ]
let s:R3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]    ]

" Inactive Mode
let s:IA1 = [ s:colors.black[0]  , s:colors.gray_5[0]   , s:colors.black[1] , s:colors.gray_5[1] , 'italic' ]
let s:IA2 = [ s:colors.gray_7[0], s:colors.gray_2[0]  , s:colors.gray_7[1], s:colors.gray_2[1], 'italic'    ]
let s:IA3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]           ]

" Terminal Mode
let s:T1 = [ s:colors.white[0]   , s:colors.magenta[0] , s:colors.white[1]   , s:colors.magenta[1]  ]
let s:T2 = [ s:colors.pink[0]    , s:colors.gray_2[0]  , s:colors.pink[1]    , s:colors.gray_2[1]   ]
let s:T3 = [ s:colors.gray_7[0]  , s:colors.black[0]   , s:colors.gray_7[1]  , s:colors.black[1]    ]

let g:airline#themes#pop_punk#palette = {}
let g:airline#themes#pop_punk#palette.normal  = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#pop_punk#palette.insert  = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#pop_punk#palette.visual  = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#pop_punk#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#pop_punk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#pop_punk#palette.terminal = airline#themes#generate_color_map(s:T1, s:T2, s:T3)

" Warning Mode
let s:WI = [ s:colors.yellow[0] , s:colors.gray_2[0] , s:colors.yellow[1] , s:colors.gray_2[1] , 'bold' ]
let g:airline#themes#pop_punk#palette.normal.airline_warning = [
        \ s:WI[0], s:WI[1], s:WI[2], s:WI[3], s:WI[4]
        \ ]
let g:airline#themes#pop_punk#palette.insert.airline_warning  = g:airline#themes#pop_punk#palette.normal.airline_warning
let g:airline#themes#pop_punk#palette.visual.airline_warning  = g:airline#themes#pop_punk#palette.normal.airline_warning
let g:airline#themes#pop_punk#palette.replace.airline_warning = g:airline#themes#pop_punk#palette.normal.airline_warning
let g:airline#themes#pop_punk#palette.terminal.airline_warning = g:airline#themes#pop_punk#palette.normal.airline_warning

" Error Mode
let s:ER = [ s:colors.red_2[0] , s:colors.gray_2[0] , s:colors.red_2[1] , s:colors.gray_2[1] , 'bold' ]
let g:airline#themes#pop_punk#palette.normal.airline_error = [
        \ s:ER[0], s:ER[1], s:ER[2], s:ER[3], s:ER[4]
        \ ]
let g:airline#themes#pop_punk#palette.insert.airline_error    = g:airline#themes#pop_punk#palette.normal.airline_error
let g:airline#themes#pop_punk#palette.visual.airline_error    = g:airline#themes#pop_punk#palette.normal.airline_error
let g:airline#themes#pop_punk#palette.replace.airline_error   = g:airline#themes#pop_punk#palette.normal.airline_error
let g:airline#themes#pop_punk#palette.terminal.airline_error   = g:airline#themes#pop_punk#palette.normal.airline_error

" Terminal
let s:TE = [ s:colors.gray_7[0] , s:colors.black[0] , s:colors.gray_7[1] , s:colors.black[1] , '' ]
let g:airline#themes#pop_punk#palette.normal.airline_term = [
        \ s:TE[0], s:TE[1], s:TE[2], s:TE[3], s:TE[4]
        \ ]
let g:airline#themes#pop_punk#palette.insert.airline_term  = g:airline#themes#pop_punk#palette.normal.airline_term
let g:airline#themes#pop_punk#palette.visual.airline_term  = g:airline#themes#pop_punk#palette.normal.airline_term
let g:airline#themes#pop_punk#palette.replace.airline_term = g:airline#themes#pop_punk#palette.normal.airline_term
let g:airline#themes#pop_punk#palette.terminal.airline_term = g:airline#themes#pop_punk#palette.normal.airline_term
