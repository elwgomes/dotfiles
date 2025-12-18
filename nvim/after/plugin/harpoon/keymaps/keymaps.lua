local harpoon = require("harpoon")
local bind = vim.keymap.set

-- marcar arquivo
bind("n", "<leader>hx", function()
	harpoon:list():add()
end)

-- abrir menu
bind("n", "<leader>hh", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- selecionar direto
bind("n", "<leader>h1", function()
	harpoon:list():select(1)
end)
bind("n", "<leader>h2", function()
	harpoon:list():select(2)
end)
bind("n", "<leader>h3", function()
	harpoon:list():select(3)
end)
bind("n", "<leader>h4", function()
	harpoon:list():select(4)
end)

-- navegar anterior/próximo
bind("n", "<leader>p", function()
	harpoon:list():prev()
end)
bind("n", "<leader>n", function()
	harpoon:list():next()
end)
