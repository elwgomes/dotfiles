-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- map("n", "<C-y>", ":!python3 app.py<CR>", { noremap = true, silent = true })

-- local map = vim.api.nvim_set_keymap
local map = LazyVim.safe_keymap_set

map("n", "<C-y>", ":JavaRunnerRunMain<CR>", { noremap = true, silent = true })
map("n", "<C-c>", ":JavaRunnerStopMain<CR>", { noremap = true, silent = true })
map("n", "<C-b>", ":JavaBuildBuildWorkspace<CR>", { noremap = true, silent = true })
map("n", "<C-x>", ":q<CR>", { noremap = true, silent = true })

-- mvn clean intall
-- map("n", "<C-m>", ":!mvn clean install<CR>", { noremap = true, silent = true })

-- move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })

map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })

map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Mapeia 'J' para mover o cursor 5 linhas para baixo
map("n", "<C-S-j>", "5j", { noremap = true, silent = true })
map("v", "<C-S-j>", "5j", { noremap = true, silent = true })
-- Mapeia 'K' para mover o cursor 5 linhas para cima
map("n", "<C-S-k>", "5k", { noremap = true, silent = true })
map("v", "<C-S-k>", "5k", { noremap = true, silent = true })

-- mapeia ir para o fim da linha
map("n", "<S-t>", "$", { noremap = true, silent = true })

-- mapeia ir para o começo da linha
map("n", "<S-f>", "^", { noremap = true, silent = true })
-- duplicate lines
-- map("n", "<C-k>", "<cmd>t+0<cr>==", { desc = "Move Up" })
-- map("n", "<C-j>", "<cmd>t-1<cr>==", { desc = "Move Down" })
--
-- map("v", "<C-k>", "<cmd>t+0<cr>==", { desc = "Move Up in Visual Mode" })
-- map("v", "<C-j>", "<cmd>t-1<cr>==", { desc = "Move Down in Visual Mode" })
