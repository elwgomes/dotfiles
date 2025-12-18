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

  { "goolord/alpha-nvim", enabled = false },

  { "folke/flash.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = true },

  { "tjdevries/express_line.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = true },

  { "romgrk/barbar.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = true },

  { "sphamba/smear-cursor.nvim", enabled = false },

  { "nvim-telescope/telescope.nvim", enabled = true },
  { "ibhagwan/fzf-lua", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },

  { "lukas-reineke/indent-blankline.nvim", enabled = false },
}
