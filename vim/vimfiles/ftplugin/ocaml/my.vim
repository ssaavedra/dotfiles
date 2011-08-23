" Language:    OCaml
" Maintainer:  David Baelde        <firstname.name@ens-lyon.org>
"              Mike Leary          <leary@nwlink.com>
"              Markus Mottl        <markus.mottl@gmail.com>
"              Stefano Zacchiroli  <zack@bononia.it>
" URL:         http://www.ocaml.info/vim/ftplugin/ocaml.vim
" Last Change: 2005 March 25
" Changelog:
"         0.12 - Modeline support
"              - Folding now works also when indent_struct != 2
"              - Changed folding customization variable, default is off
"              - Made folding settings local to the buffer
"              - Included the official ftplugin ocaml.vim, except
"                annotations stuff, and parenthesis around assert false
"                abbreviation
"              - Corrected toplevel let folding
"              - Made the file reloading correctly
"
" omlet.vim plugins -- utilities for working on OCaml files with VIm
" Copyright (C) 2005 D. Baelde, M. Leary, M. Mottl, S. Zacchiroli
"
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program; if not, write to the Free Software
" Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
" Folding is activated if ocaml_folding is set
" Do these settings once per buffer

" if exists("b:did_ftplugin")
"   finish
" endif
let b:did_ftplugin=1

" Error handling -- helps moving where the compiler wants you to go
set cpo-=C

inoremap -: (* - : *)<Esc>hhi
inoremap <F8> <Esc>A;;<CR>

inoremap [ []<Esc>i " useful in lists
iabbr l list
iabbr L List

