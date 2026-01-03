local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

bind("n", "<leader>pv", ":Oil <CR>", opts)

require("oil").setup({
	default_file_explorer = true,
	columns = {
		"permissions",
		"size",
		"mtime",
		-- "icon",
	},
	view_options = {
		show_hidden = true,
	},
	float = {
		padding = 2,
		max_width = 0,
		max_height = 0,
		border = "single",
		win_options = {
			winblend = 0,
		},
		get_win_title = nil,
		preview_split = "auto",
		override = function(conf)
			return conf
		end,
	},
	confirmation = {
		max_width = 0.9,
		min_width = { 40, 0.4 },
		width = nil,
		max_height = 0.9,
		min_height = { 5, 0.1 },
		height = nil,
		border = "single",
		win_options = {
			winblend = 0,
		},
	},
})
