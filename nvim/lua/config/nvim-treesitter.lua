local treesitter = require('nvim-treesitter')
treesitter.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}
treesitter.install({ 'rust', 'javascript', 'zig' }):wait(300000) -- wait max. 5 minutes
vim.treesitter.language.register('rust', { 'rs' })
local file_types = { 'rust' }
local i = 1
while i <= #file_types do
	local file_type = file_types[i]
	vim.api.nvim_create_autocmd('FileType', {
	  pattern = { 'rust' },
	  callback = function() 
		  vim.treesitter.start()
	  end,
	})
	i = i + 1
end
