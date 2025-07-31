vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex", "gitcommit", "txt" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "de_de", "en_gb"}
  end,
})
