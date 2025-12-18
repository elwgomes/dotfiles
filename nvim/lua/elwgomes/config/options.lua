local opt = vim.opt

-- opt.fillchars:remove("eob")
-- opt.showmode = true

-- opt.guicursor = "n:blinkon1,v:blinkon1,c:blinkon1,i:blinkon1"

opt.clipboard = "unnamedplus"

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4 -- tamanho visual do TAB
opt.shiftwidth = 4 -- indentação automática = 4 espaços
opt.softtabstop = 4 -- TAB vale 4 espaços ao editar
opt.expandtab = true -- TAB vira espaços (igual IntelliJ)
opt.smartindent = true

-- opt.list = true
opt.listchars = {
	tab = "→ ", -- TAB aparece como "→·" (IntelliJ usa uma seta)
	space = "·", -- espaços aparecem como bolinha (igual mostrar whitespace)
	trail = "•", -- trailing spaces com bolinha mais forte
	extends = "⟩",
	precedes = "⟨",
}
--
-- opt.tabstop = 4
-- opt.softtabstop = 4
-- opt.shiftwidth = 4
-- opt.expandtab = true
--
opt.wrap = false
-- opt.swapfile = true
-- opt.backup = false
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- opt.undofile = true
-- opt.hlsearch = true
-- opt.incsearch = true
opt.termguicolors = true
-- opt.scrolloff = 10
opt.signcolumn = "yes"
-- opt.isfname:append("@-@")
-- opt.updatetime = 50
-- opt.colorcolumn = "80"
