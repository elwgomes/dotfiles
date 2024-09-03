return {
  "preservim/nerdtree",
  config = function()
    local map = LazyVim.safe_keymap_set
    map("n", "<leader>E", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
