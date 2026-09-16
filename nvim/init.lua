require("config.lazy")
require("remap")
require("config.nvim-treesitter")
require("config.lsp")
require("scrollbar").setup()
-- require("nvim-tree").setup()
vim.opt.number = true
vim.opt.relativenumber = true
require('neogit').setup {}
require('left_pane')
print("Loaded")
