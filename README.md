# 🎸 Pop-Punk

![jsx](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/jsx.png)

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
let g:airline_theme='pop_punk'

" just for fun
let g:airline_section_c='🎸 %F'
```

## Notes

Screenshots were taken with the following settings:

* Hack font (Nerd Font patched version) with vim-devicons
* Airline status and tab lines
* iTerm2 v3.3 (24-bit color)

## Screenshots

### Color scheme

![css](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/css.png)
![ruby](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/ruby.png)
![html](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/html.png)
![popup](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/popup.png)

### Airline theme

![Airline normal](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-normal.png)
![Airline insert](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-insert.png)
![Airline visual](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-visual.png)
![Airline replace](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-replace.png)
![Airline inactive](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-inactive.png)
![Airline tabline](https://gitcdn.link/repo/bignimbus/pop-punk.vim/d629f6085580165ca3ee148911252223dc0695e4/assets/airline-tabline.png)
