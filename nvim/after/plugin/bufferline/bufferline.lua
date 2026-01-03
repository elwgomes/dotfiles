vim.opt.termguicolors = true

require("bufferline").setup({
	options = {
		sort_by = "id",
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",

		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d",

		separator_style = "slant",

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

		-- 👇 AQUI
		name_formatter = function(buf)
			local icon, _ =
				require("nvim-web-devicons").get_icon(buf.name, vim.fn.fnamemodify(buf.name, ":e"), { default = true })

			local filename = vim.fn.fnamemodify(buf.name, ":t")

			if icon then
				return " " .. filename
			end

			return filename
		end,
	},
})
