syntax on

" Plugin Configuration {{{
" Vim-Plug: Plugin installation and management.
source ~/.vim/plugins.gvimrc

" night-and-day: Set colourschemes by time of day.
let nd_themes = [
\ ['sunrise+0', 'vimspectrgrey-light',  'light' ],
\ ['sunset+0',  'vimspectr210-dark',    'dark'  ],
\ ]

" night-and-day: Correct global position for sunrise/sunset times.
let nd_latitude = 45
if strftime("%m") > 3 && strftime("%m") < 11
    let nd_timeshift = 63
else
    let nd_timeshift = 123
endif
" }}}

" vim:foldmethod=marker:foldlevel=0
