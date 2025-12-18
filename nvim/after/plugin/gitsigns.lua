local ok, gitsigns = pcall(require, "gitsigns")
if not ok then
	return
end

gitsigns.setup({
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 50,
		ignore_whitespace = false,
	},

	-- current_line_blame_formatter = "       <author>, <author_time:%R>",
	current_line_blame_formatter = "       <author>, <author_time:%R>",
	-- current_line_blame_formatter = "       <author>, <author_time:%R>",
})
