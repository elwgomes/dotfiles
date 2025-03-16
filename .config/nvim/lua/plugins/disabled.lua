return {
  -- lazy
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- bigfile = { enabled = true },
      dashboard = { enabled = false },
      -- indent = { enabled = false },
      -- input = { enabled = false },
      -- picker = { enabled = false },
      -- notifier = { enabled = false },
      -- quickfile = { enabled = false },
      scroll = { enabled = false },
      statuscolumn = { enabled = false },
      -- words = { enabled = false },
    },
  },
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false }, -- notification snippet
  { "folke/which-key.nvim", enabled = true },

  -- explorers
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "ryanoasis/vim-devicons", enabled = false },
  { "preservim/nerdtree", enabled = true },

  -- bufferlines
  { "nvim-lualine/lualine.nvim", enabled = false }, -- statusline
  { "akinsho/bufferline.nvim", enabled = true },

  -- fuzzy finders
  { "nvim-telescope/telescope.nvim", enabled = false },
  { "ibhagwan/fzf-lua", enabled = true },
}
