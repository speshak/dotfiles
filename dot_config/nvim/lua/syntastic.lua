local g = vim.g

-- Status line
vim.cmd([[
   set statusline+=%#warningmsg#
   set statusline+=%{SyntasticStatuslineFlag()}
   set statusline+=%*
]])

g.syntastic_always_populate_loc_list = 1
g.syntastic_auto_loc_list = 1
g.syntastic_check_on_open = 0
g.syntastic_check_on_wq = 0
g.syntastic_aggregate_errors = 1

-- Checker configs
g.syntastic_python_checkers = {'flake8', 'mypy'}
g.syntastic_yaml_checkers = {'yamllint'}
g.syntastic_cloudformation_checkers = {'cfn_lint'}
g.syntastic_javascript_checkers = {'eslint'}
