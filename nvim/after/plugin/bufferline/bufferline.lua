vim.opt.termguicolors = true

require("bufferline").setup({
	options = {
		sort_by = "id",
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",

		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d",

		-- separator_style = "thin",

		show_buffer_close_icons = true,
		show_close_icon = false,

		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			},
		},
	},
})
