vim.g.mapleader = " "
-- open explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- save and ident
vim.keymap.set("n", "<C-s>", function()
    vim.cmd('write')           -- Salva o arquivo
    local pos = vim.fn.getpos('.')  -- Salva a posição atual do cursor
    vim.cmd('normal! gg=G')    -- Identar todo o código
    vim.fn.setpos('.', pos)    -- Restaura a posição do cursor
end, { noremap = true, silent = true })

-- jump cursor 
vim.keymap.set("n", "<C-S-j>", "7j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-k>", "7k", { noremap = true, silent = true })
-- move line visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
-- move line normal mode
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==")
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==")

-- copy and paste like system to system clipboard
vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set({"n", "v"}, "p", [["+p]])

vim.keymap.set("i", "<C-c>", "<Esc>")

-- quit window
vim.keymap.set("n", "<C-x>", vim.cmd.q)

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-j>", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<S-k>", ":BufferLineMovePrev<CR>")

vim.keymap.set("n", "<leader>b", ":bd!<CR>")
vim.keymap.set("n", "<leader>bl", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>br", ":BufferLineCloseRight<CR>")

