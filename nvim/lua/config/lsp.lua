require("mason-lspconfig").setup {
    automatic_enable = false
}

vim.diagnostic.config({
	virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
