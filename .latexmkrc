# Compila monografia.tex com pdflatex + bibtex; arquivos auxiliares vão para build/
@default_files = ('monografia.tex');
$pdf_mode = 1;
$aux_dir = 'build';
$out_dir = '.';
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
