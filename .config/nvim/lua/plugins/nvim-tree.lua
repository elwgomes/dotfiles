local bind = vim.keymap.set
local opts = { noremap = true, silent = true }
return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup()
    bind("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
  end,
}
