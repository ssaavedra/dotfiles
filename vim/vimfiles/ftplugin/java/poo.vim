
abbr pu public
abbr pr private
abbr st static

noremap <F9> <Esc> <C-W>}o//TEMP MARKER<Esc>
			\<C-W>P1G/public class<CR><Esc>yy<C-W>pG?import<CR><Esc>p<Esc>
			\<C-W>P1G/package<CR><Esc>yy<C-W>pG?import<CR><Esc>p<Esc>
			\$xa.<Esc>0jwwi<CR><Esc>kdd<Esc>
			\wDx<Esc>kJxx<Esc>$a;<Esc>
			\0cwimport<Esc>
			\:update<CR><Esc>
			\/TEMP MARKER<CR>dd</Esc>


let java_comment_strings=1
let java_highlight_java_lang_ids=1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
set cinoptions+=j1

