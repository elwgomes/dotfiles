local bind = vim.keymap.set

require("inc_rename").setup({
	cmd_name = "IncRename",
	hl_group = "Substitute",
	preview_empty_name = true,
	show_message = true,
	save_in_cmdline_history = true,
	post_hook = nil,
	input_buffer_type = "dressing",
})

bind("n", "rr", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Renomear variável (interativo)" })
