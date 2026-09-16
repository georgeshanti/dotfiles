return {
  { "MunifTanjim/nui.nvim", lazy = false },
  {
    url = "https://github.com/nvim-telescope/telescope.nvim.git",
    lazy = false,
    dependencies ={
		  'nvim-lua/plenary.nvim',
		  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	  }
  },
  {
	  url = "https://github.com/nvim-treesitter/nvim-treesitter.git",
	  lazy = false,
	  build = ":TSUpdate"
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function () vim.cmd("colorscheme kanagawa-wave") end
  },
  -- {
  --   url = "https://github.com/rose-pine/neovim.git",
  --   name = "rose-pine",
  --   lazy = false,
  --   config = function()
  --     vim.cmd("colorscheme rose-pine")
  --   end
  -- },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    url = 'https://github.com/neovim/nvim-lspconfig',
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP source
      "hrsh7th/cmp-buffer",   -- Buffer completions
      "hrsh7th/cmp-path",     -- Path completions
      "L3MON4D3/LuaSnip",     -- Snippet engine
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
  { "petertriho/nvim-scrollbar" },
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      -- Only one of these is needed.
      "sindrets/diffview.nvim",        -- optional
  
      -- For a custom log pager
      "m00qek/baleia.nvim",            -- optional
  
      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
    }
  },
  { "nvim-tree/nvim-tree.lua", lazy = false },
}
