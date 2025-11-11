local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

-- bind("n", "<leader>pv", vim.cmd.Ex)

bind("n", "<C-x>", ":q<CR>", opts)

bind("i", "jk", "<Esc>", opts)
bind("i", "jj", "<Esc>", opts)

bind("n", "<Tab>", ":bnext<CR>", opts)
bind("n", "<S-Tab>", ":bprevious<CR>", opts)

bind("n", "<C-y>", function()
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.6)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  vim.fn.termopen("cmake -S . -B build && cmake --build build && ./build/ibot")

  vim.cmd("startinsert")
end, opts)

bind("n", "fd", "<leader>bd", { remap = true })

bind({ "n", "v" }, "<S-e>", "$", opts)
bind({ "n", "v" }, "<S-f>", "0", opts)

bind({ "v", "n" }, "<C-S-j>", "5j", opts)
bind({ "v", "n" }, "<C-S-k>", "5k", opts)

bind("n", "<leader>wv", ":vsplit<CR>", opts)
bind("n", "<leader>ws", ":split<CR>", opts)

bind("n", "<leader>o", "li<CR><CR><Esc>ki<Tab>", opts)
