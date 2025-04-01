return {
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },

  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/which-key.nvim", enabled = false },

  { "nvim-neo-tree/neo-tree.nvim", enabled = true },
  { "ryanoasis/vim-devicons", enabled = false },
  { "preservim/nerdtree", enabled = true },
  { "nvim-tree/nvim-tree.lua", enabled = false },

  { "tjdevries/express_line.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = true },
}
