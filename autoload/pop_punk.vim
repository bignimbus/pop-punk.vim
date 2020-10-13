let s:colors = {}
let s:colors.white = ['#ffffff', 231]
let s:colors.gray_1 = ['#1a1a1a', 234]
let s:colors.gray_2 = ['#2e373e', 237]
let s:colors.gray_3 = ['#3a3a3a', 237]
let s:colors.gray_4 = ['#5a5a5a', 59]
let s:colors.gray_5 = ['#767c88', 60]
let s:colors.gray_6 = ['#8b8a7c', 101]
let s:colors.gray_7 = ['#8787af', 103]
let s:colors.black = ['#000000', 16]
let s:colors.eggshell = ['#ffffcd', 230]
let s:colors.mauve = ['#e4dfff', 189]
let s:colors.blue = ['#0088ff', 33]
let s:colors.teal = ['#40e0d0', 80]
let s:colors.magenta = ['#c526ff', 165]
let s:colors.burgundy = ['#5f2a5f', 53]
let s:colors.red_1 = ['#d70061', 161]
let s:colors.red_2 = ['#ff005f', 197]
let s:colors.orange = ['#ff9d00', 214]
let s:colors.sun = ['#ffdd00', 220]
let s:colors.yellow = ['#ffff00', 226]
let s:colors.pink = ['#f9e0f5', 225]
let s:colors.green = ['#5ff967', 76]
let s:colors.cobalt_1 = ['#306b8f', 24]
let s:colors.cobalt_2 = ['#445291', 60]

function! pop_punk#GetColors()
  return s:colors
endfunction

function! pop_punk#AnsiColors()
  return [
        \s:colors.black[0],
        \s:colors.red_2[0],
        \s:colors.green[0],
        \s:colors.orange[0],
        \s:colors.blue[0],
        \s:colors.magenta[0],
        \s:colors.teal[0],
        \s:colors.white[0],
        \s:colors.gray_7[0],
        \s:colors.red_2[0],
        \s:colors.green[0],
        \s:colors.yellow[0],
        \s:colors.blue[0],
        \s:colors.magenta[0],
        \s:colors.teal[0],
        \s:colors.pink[0]
        \]
endfunction
