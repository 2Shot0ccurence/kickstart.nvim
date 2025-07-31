vim.g.vimtex_compiler_latexmk = {
  options = {
    '-pdflatex=lualatex',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-shell-escape',
  },
}
