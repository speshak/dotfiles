set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Checker configs
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_cloudformation_checkers = ['cfn_lint']
let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_debug = 33
"let g:syntastic_debug_file = "~/syntastic.log"
