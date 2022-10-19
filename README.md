# 🎸 Pop-Punk

![jsx](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/ts.png)

Dark, high-contrast color scheme for vim

## Installation

Use your plugin manager of choice.

```vim
" .vimrc

" example using vim-plug
call plug#begin('~/.vimplugins')

Plug 'bignimbus/pop-punk.vim'
" ...

call plug#end()

colorscheme 'pop-punk'

" pop-punk ANSI colors for vim terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()

" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'pop_punk'

" just for fun
let g:airline_section_c = '🎸 %F'

" for lightline theme - this needs underscore too
let g:lightline.colorscheme = 'pop_punk'
```

## Plugins supported

Some plugins have custom highlight groups.  Pop-punk supports
some highlight groups from the following plugins:

* [vim-airline](https://github.com/vim-airline/vim-airline)
* [lightline.vim](https://github.com/itchyny/lightline.vim)
* [coc.nvim](https://github.com/neoclide/coc.nvim)
* [vim-ale](https://github.com/dense-analysis/ale)
* [you-are-here.vim](https://github.com/bignimbus/you-are-here.vim)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [vim-startify](https://github.com/mhinz/vim-startify)

## Other 🎸 Pop-Punk themes

* [Pop-Punk.muttrc](https://github.com/bignimbus/pop-punk.muttrc) for Mutt / Neomutt

## Notes

Screenshots were taken with the following settings:

* Hack font (Nerd Font patched version) with vim-devicons
* Airline status and tab lines
* iTerm2 v3.3 (24-bit color)

## Screenshots

### Color scheme

![css](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/css.png)
![ruby](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/ruby.png)
![html](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/html.png)
![popup](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/popup.png)
![ts](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/ts.png)
![terminal](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/terminal.png)

### Airline theme

![Airline normal](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-normal.png)
![Airline insert](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-insert.png)
![Airline visual](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-visual.png)
![Airline replace](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-replace.png)
![Airline inactive](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-inactive.png)
![Airline tabline](https://github.com/bignimbus/pop-punk.vim/blob/main/assets/airline-tabline.png)
