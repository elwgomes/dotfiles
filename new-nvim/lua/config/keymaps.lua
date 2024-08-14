-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.api.nvim_set_keymap("n", "<C-y>", ":!python3 app.py<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-y>", ":JavaRunnerRunMain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", ":JavaRunnerStopMain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-b>", ":JavaBuildBuildWorkspace<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>", ":q<CR>", { noremap = true, silent = true })

-- mvn clean intall
vim.api.nvim_set_keymap("n", "<C-m>", ":!mvn clean install<CR>", { noremap = true, silent = true })

local map = LazyVim.safe_keymap_set
-- move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })

map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })

map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- duplicate lines
-- map("n", "<C-k>", "<cmd>t+0<cr>==", { desc = "Move Up" })
-- map("n", "<C-j>", "<cmd>t-1<cr>==", { desc = "Move Down" })
--
-- map("v", "<C-k>", "<cmd>t+0<cr>==", { desc = "Move Up in Visual Mode" })
-- map("v", "<C-j>", "<cmd>t-1<cr>==", { desc = "Move Down in Visual Mode" })
