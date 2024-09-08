-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.smartindent = true

opt.wrap = false
opt.swapfile = true
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.hlsearch = true
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "no"
opt.isfname:append("@-@")
opt.updatetime = 50
opt.colorcolumn = "80"

vim.cmd([[
  colorscheme default
]])

-- Definir cor de fundo do terminal integrado especificamente
vim.api.nvim_set_hl(0, "TermNormal", { bg = "#1e1e1e", fg = "#ffffff" }) -- Fundo escuro e texto claro
vim.api.nvim_set_hl(0, "TermCursor", { bg = "#ffffff", fg = "#000000" }) -- Cursor no terminal
vim.api.nvim_set_hl(0, "TermCursorNC", { bg = "#888888", fg = "#000000" }) -- Cursor inativo

vim.opt.termguicolors = true
