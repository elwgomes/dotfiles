local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

bind("n", "<leader>pv", vim.cmd.Ex)

bind("n", "<C-x>", ":q<CR>", opts)

bind("i", "jk", "<Esc>", opts)
bind("i", "jj", "<Esc>", opts)

bind("n", "<Tab>", ":bnext<CR>", opts)
bind("n", "<S-Tab>", ":bprevious<CR>", opts)

bind("n", "fd", "<leader>bd", opts)

bind({ "n", "v" }, "<S-e>", "$", opts)
bind({ "n", "v" }, "<S-f>", "0", opts)

bind({ "v", "n" }, "<C-S-j>", "5j", opts)
bind({ "v", "n" }, "<C-S-k>", "5k", opts)

bind("n", "<leader>rr", ":JavaRunnerRunMain<CR>", opts)
bind("n", "<leader>rs", ":JavaRunnerStopMain<CR>", opts)
bind("n", "<leader>rb", ":JavaBuildBuildWorkspace<CR>", opts)

bind("n", "<leader>wv", ":vsplit<CR>", opts)
bind("n", "<leader>ws", ":split<CR>", opts)

bind("n", "fd", ":bd<CR>", opts)
bind("n", "<leader>o", "li<CR><CR><Esc>ki<Tab>", { silent = true })
