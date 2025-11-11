return {
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enabled = false },
      dashboard = { enabled = false },
      indent = { enabled = true },
      input = { enabled = false },
      picker = { enabled = false },
      notifier = { enabled = false },
      quickfile = { enabled = false },
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      words = { enabled = false },
    },
  },
  { "rcarriga/nvim-notify", enabled = true },

  { "folke/flash.nvim", enabled = false },
  { "folke/noice.nvim", enabled = true },

  { "tjdevries/express_line.nvim", enabled = true },
  { "nvim-lualine/lualine.nvim", enabled = false },

  { "romgrk/barbar.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = true },

  { "sphamba/smear-cursor.nvim", enabled = true },

  { "nvim-telescope/telescope.nvim", enabled = true },
  { "ibhagwan/fzf-lua", enabled = false },
}
