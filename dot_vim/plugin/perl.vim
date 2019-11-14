" Perl extras
function! <SID>perlCompilerSetup()
	let current_compiler = "perl"
	setlocal makeprg=perl\ -Wc\ %
	setlocal errorformat=%m\ at\ %f\ line\ %l%.%#,\%-G%.%# " ignore any lines that didn't match one of the patterns above
endfunction

au FileType perl :call s:perlCompilerSetup()

" From Perl Hacks (#5) (with some of my own modification)
function! <SID>perlKWCompleteSetup()
	set iskeyword+=:
	set complete+=k~/.vim/extras/perl_installed_modules
endfunction

au FileType perl :call s:perlKWCompleteSetup()

" Perl Hacks #10
au FileType perl map ,t <Esc>:!prove -vl %<CR>

au FileType perl runtime! ftplugin/perl_doc.vim

