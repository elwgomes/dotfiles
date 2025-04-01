local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "preservim/nerdtree",
  config = function()
    bind("n", "<leader>E", ":NERDTreeToggle<CR>", opts)

    vim.g.NERDTreeWinSize = 40
    vim.g.NERDTreeShowRelativeDir = 1
    -- vim.g.NERDTreeMinimalUI = 1
    vim.g.NERDTreeIndentMarker = " "
  end,
}
