return {
  "stevearc/aerial.nvim",
  opts = {
    layout = { width = 70 },
  },
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  keymaps = {
    vim.keymap.set("n", "<C-a>", ":AerialToggle float<CR>"),
  },
}
