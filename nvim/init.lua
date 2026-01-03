vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- config
require("elwgomes")

vim.bo.lisp = true
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = "~" }
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
