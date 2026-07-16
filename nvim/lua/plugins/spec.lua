return {
  { url = "https://github.com/nvim-telescope/telescope.nvim.git", lazy = false },
  { url = "https://github.com/nvim-treesitter/nvim-treesitter.git", lazy = false, build = ":TSUpdate" },
  {
    url = "https://github.com/rose-pine/neovim.git",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  },
}
