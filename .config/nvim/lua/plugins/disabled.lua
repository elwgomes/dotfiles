return {
  -- lazy
  { "nvimdev/dashboard-nvim", enabled = false }, -- lazyvim welcome dashboard
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false }, -- notification snippet
  { "folke/which-key.nvim", enabled = false },

  -- explorers
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "ryanoasis/vim-devicons", enabled = true },
  { "preservim/nerdtree", enabled = true },

  -- bufferlines
  { "nvim-lualine/lualine.nvim", enabled = false }, -- statusline
  { "akinsho/bufferline.nvim", enabled = true },

  -- fuzzy finders
  { "nvim-telescope/telescope.nvim", enabled = true },
  { "ibhagwan/fzf-lua", enabled = false },
}
