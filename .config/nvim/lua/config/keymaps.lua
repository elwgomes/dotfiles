-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }
map("n", "<leader>pv", vim.cmd.Ex)

----------------------- PYTHON SHIT -------------------------
-- map("n", "<C-y>", ":!python3 app.py<CR>", { noremap = true, silent = true })

----------------------- PHP SHIT -------------------------
-- map("n", "<C-y>", ":!php artisan serve<CR>", { noremap = true, silent = true })

----------------------- GO SHIT -------------------------
-- map("n", "<C-y>", ":!go run .<CR>", { noremap = true, silent = true })

----------------------- JAVA SHIT -------------------------

local function java_keymaps()
  map("n", "<C-y>", ":JavaRunnerRunMain<CR>", opts)
  map("n", "<C-c>", ":JavaRunnerStopMain<CR>", opts)
  map("n", "<C-b>", ":JavaBuildBuildWorkspace<CR>", opts)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = java_keymaps,
})

----------------------- OTHER KEYMAPS  -------------------------

map("n", "<C-x>", ":q<CR>", opts)

-- move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })

map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Mapeia 'J' para mover o cursor 5 linhas para baixo
map("n", "<C-S-j>", "5j", { noremap = true, silent = true })
map("v", "<C-S-j>", "5j", { noremap = true, silent = true })
-- Mapeia 'K' para mover o cursor 5 linhas para cima
map("n", "<C-S-k>", "5k", { noremap = true, silent = true })
map("v", "<C-S-k>", "5k", { noremap = true, silent = true })

-- mapeia ir para o fim da linha
map("n", "<S-e>", "$", { noremap = true, silent = true })
map("v", "<S-e>", "$", { noremap = true, silent = true })

-- mapeia ir para o começo da linha
map("n", "<S-f>", "^", { noremap = true, silent = true })
map("v", "<S-f>", "^", { noremap = true, silent = true })

-- duplicate lines
map({ "n", "v" }, "ty", "<cmd>t+0<cr>==", { noremap = true, silent = true, desc = "Move Up" })
map({ "n", "v" }, "tr", "<cmd>t-1<cr>==", { noremap = true, silent = true, desc = "Move Down" })
-- map("v", "ty", "<cmd>t+0<cr>==", { desc = "Move Up" })
-- map("v", "tr", "<cmd>t-1<cr>==", { desc = "Move Down" })
