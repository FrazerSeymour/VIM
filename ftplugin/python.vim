setlocal colorcolumn=88 " Black's default is 88.
setlocal list
setlocal listchars=tab:>.,trail:.,extends:#,nbsp:.
let b:ale_fixers = ['black']
let b:ale_linters = ['pyls']

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
