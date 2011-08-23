" Vim filetype plugin file
" Language:	fortran
" Maintainer:	Santiago Saavedra
" Last Changed: 2011 Apr 27

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

let s:extfname = expand("%:e")
if s:extfname ==? "f90"
	let fortran_free_source=1
	unlet! fortran_fixed_source
	let fortran_have_tabs=1
	let fortran_fold=1
	let fortran_fold_conditionals=1
	let fortran_fold_multilinecomments=1
	let fortran_more_precise=1
else
	let fortran_fixed_source=1
	unlet! fortran_free_source
endif


