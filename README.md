# 🎸 Pop-Punk

![jsx](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/jsx.png)

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

![css](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/css.png)
![ruby](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/ruby.png)
![html](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/html.png)
![popup](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/popup.png)
![terminal](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/terminal.png)

### Airline theme

![Airline normal](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-normal.png)
![Airline insert](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-insert.png)
![Airline visual](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-visual.png)
![Airline replace](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-replace.png)
![Airline inactive](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-inactive.png)
![Airline tabline](https://gitcdn.link/repo/bignimbus/pop-punk.vim/b7e88151da9cf4c18a6d544a058641c01018c1dc/assets/airline-tabline.png)
