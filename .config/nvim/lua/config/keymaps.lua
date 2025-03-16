local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }
map("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_del_keymap("n", "<S-t>")

map("n", "<leader>o", "i<CR><Esc>O", opts)
----------------------- JAVA SHIT -------------------------
vim.keymap.set("n", "<C-M-o>", function()
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      only = { "source.organizeImports" },
      diagnostics = {},
    },
  })
end, { desc = "Organizar Imports (Java)" })

local function java_keymaps()
  map("n", "<leader>ry", ":JavaRunnerRunMain<CR>", opts)
  map("n", "<C-c>", ":JavaRunnerStopMain<CR>", opts)
  map("n", "<C-b>", ":JavaBuildBuildWorkspace<CR>", opts)
end

vim.keymap.set("n", "<C-y>", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local gradle_run = Terminal:new({
    cmd = "./gradlew bootRun",
    direction = "vertical", -- Garante que abra na vertical (direita)
    close_on_exit = true,
    size = vim.o.columns * 0.9, -- Ocupa 40% da largura da tela
    shade_terminals = false, -- Evita escurecimento do terminal
    env = { TERM = "xterm-256color" }, -- Habilita cores no terminal
  })
  gradle_run:toggle()
end, { desc = "Executar Spring Boot (./gradlew bootRun)" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = java_keymaps,
})

----------------------- OTHER KEYMAPS  -------------------------

map("n", "<C-x>", ":q<CR>", opts)
vim.keymap.set("n", "fd", "<leader>bd", { remap = true, desc = "Close buffer (like <leader>bd)" })
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)

-- move lines
map("n", "<A-j>", "<cmd>m .+1<cr>==")
map("n", "<A-k>", "<cmd>m .-2<cr>==")

map("v", "<A-j>", ":m '>+1<cr>gv=gv")
map("v", "<A-k>", ":m '<-2<cr>gv=gv")

-- Mapeia 'J' para mover o cursor 5 linhas para baixo
map("n", "<C-S-j>", "5j", opts)
map("v", "<C-S-j>", "5j", opts)
-- Mapeia 'K' para mover o cursor 5 linhas para cima
map("n", "<C-S-k>", "5k", opts)
map("v", "<C-S-k>", "5k", opts)

-- mapeia ir para o fim da linha
map("n", "<S-e>", "$", opts)
map("v", "<S-e>", "$", opts)

-- mapeia ir para o começo da linha
map("n", "<S-f>", "^", opts)
map("v", "<S-f>", "^", opts)

-- duplicate lines
map({ "n" }, "ty", "<cmd>t+0<cr>==", { noremap = true, silent = true, desc = "Move Up" })
map({ "n" }, "tr", "<cmd>t-1<cr>==", { noremap = true, silent = true, desc = "Move Down" })
vim.keymap.set("v", "ty", ":'<,'>t '<-1<CR>gv", { noremap = true, silent = true, desc = "Duplicate Up" })
vim.keymap.set("v", "tr", ":'<,'>t '>+1<CR>gv", { noremap = true, silent = true, desc = "Duplicate Down" })
