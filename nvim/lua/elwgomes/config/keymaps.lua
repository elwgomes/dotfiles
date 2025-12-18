local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

bind("n", "<C-x>", ":q<CR>", opts)

bind("n", "<Tab>", ":bnext<CR>", opts)
bind("n", "<S-Tab>", ":bprevious<CR>", opts)

bind("i", "jk", "<Esc>", opts)
bind("i", "jj", "<Esc>", opts)

bind({ "n", "v" }, "<S-e>", "$", opts)
bind({ "n", "v" }, "<S-f>", "0", opts)

bind({ "v", "n" }, "<C-j>", "5j", opts)
bind({ "v", "n" }, "<C-k>", "5k", opts)

bind("n", "fd", ":bd<CR>", opts)

bind("n", "<leader>wv", ":vsplit<CR>", opts)
bind("n", "<leader>ws", ":split<CR>", opts)

bind("v", "<C-f>", 'y/\\V<C-r>"<CR>', opts)

bind("n", "<C-s>", "<cmd>w<CR>", opts)
bind("i", "<C-s>", "<Esc><cmd>w<CR>a", opts)

-- Db
bind("n", "<leader>db", ":DBUI<CR>", opts)
bind("n", "<leader>r", ":%DB<CR>", opts)

-- resize splits with ctrl + arrow keys
bind("n", "<C-Up>", ":resize +4<CR>", opts)
bind("n", "<C-Down>", ":resize -4<CR>", opts)
bind("n", "<C-Left>", ":vertical resize -4<CR>", opts)
bind("n", "<C-Right>", ":vertical resize +4<CR>", opts)

bind("n", "<leader>ps", ":so <CR> :PackerSync <CR>", opts)

bind("n", "<leader>ub", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
		print("☀️  Light mode")
	else
		vim.o.background = "dark"
		print("🌙 Dark mode")
	end
end, { desc = "Toggle Dark/Light background" })
