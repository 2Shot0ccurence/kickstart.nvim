return {
	{
	  "lervag/vimtex",
	  lazy = false,     -- we don't want to lazy load VimTeX
	  -- tag = "v2.15", -- uncomment to pin to a specific release
	  init = function()
	    -- VimTeX configuration goes here, e.g.
	    vim.g.vimtex_view_method = "zathura"
	    vim.g.maplocalleader = ","
	    vim.o.foldmethod = "expr"
		vim.o.foldexpr="vimtex#fold#level(v:lnum)"
		vim.o.foldtext="vimtex#fold#text()"
		-- I like to see at least the content of the sections upon opening
		vim.o.foldlevel=2
	vim.g.vimtex_compiler_latexmk = {
	  options = {
	    '-pdflatex=lualatex',
	    '-file-line-error',
	    '-synctex=1',
	    '-interaction=nonstopmode',
	    '-shell-escape',
	  },
	}
	  end
	}

}
