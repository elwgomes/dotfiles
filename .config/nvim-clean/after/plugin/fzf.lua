-- find files
vim.keymap.set("n", "<leader> ", require('fzf-lua').files, { desc = "Find Files" })
-- grep files
vim.keymap.set("n", "<leader>/", require('fzf-lua').live_grep, { desc = "Grep" })
