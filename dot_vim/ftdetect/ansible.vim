" Detect Ansible YAML type
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
	autocmd BufNewFile,BufRead default.yml  set filetype=ansible
	autocmd BufNewFile,BufRead main.yml     set filetype=ansible
	autocmd BufNewFile,BufRead meta.yml     set filetype=ansible

	autocmd BufNewFile,BufRead *.yml        call s:FTansible()
augroup END


" Function to detect ansible
function! s:FTansible()
	let path=expand('%:p')
  "let ansible_directories = glob("`find . -type d (-name roles -or -name host_vars -or group_vars)`")

	" Ansible if
	" * is in a roles, vars, group_vars directory (or subdir of one)
  " * is default.yml, meta.yml
endfunction
