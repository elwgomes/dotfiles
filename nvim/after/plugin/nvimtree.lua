-- Keymaps
local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

bind("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
bind("n", "<leader>E", ":NvimTreeToggle<CR>", opts)

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
		update_root = true,
	},

	view = {
		width = 45,
	},

	renderer = {
		indent_markers = {
			enable = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
		icons = {
			show = {
				file = false,
				folder = false,
				folder_arrow = false,
				git = false,
			},
		},
	},
})
