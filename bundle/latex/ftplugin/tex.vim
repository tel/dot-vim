set sw=2
set iskeyword+=:

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_ViewRule_pdf = 'evince '
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
"let g:Tex_ViewRule_pdf = 'open'
let g:TreatMacViewerAsUNIX = 1

let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels;e:entries;p:pageref;c:command;r:ref'
let tlist_make_settings  = 'make;m:makros;t:targets'

call IMAP('DMA', '\datemark{<++>}<++>', 'tex')
call IMAP('MBF', '\mathbf{<++>}<++>', 'tex')
nnoremap <leader>nd i\datemark{<CR><CR><C-c>!kdate +'\%d \%B \%Y'<CR>kJxA}<C-c>
nnoremap <leader>pd mx{o\datemark{<CR><CR><C-c>!kdate +'\%d \%B \%Y'<CR>kJxA}<C-c>Jx'x
