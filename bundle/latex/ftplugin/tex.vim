set sw=2
set iskeyword+=:

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_ViewRule_pdf = 'evince '
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
