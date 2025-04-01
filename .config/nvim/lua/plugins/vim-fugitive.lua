return {
  "tpope/vim-fugitive",
  config = function()
    -- Configuração de mapeamento para o comando Git
    vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })
    -- Mapeamento para ver diffs de arquivos
    vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true })
    -- Mapeamento para resolver conflitos de merge com o vim-fugitive
    vim.api.nvim_set_keymap("n", "<leader>gc", ":Gcommit<CR>", { noremap = true, silent = true })
  end,
}
