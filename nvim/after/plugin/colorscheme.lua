local function persist_colors()
	local name = vim.g.colors_name
	local bg = vim.o.background
	if not name or not bg then
		return
	end

	local path = vim.fn.stdpath("config") .. "/lua/persisted_colorscheme.lua"

	local file = io.open(path, "w")
	if not file then
		return
	end

	file:write("return {\n")
	file:write(string.format("  colorscheme = %q,\n", name))
	file:write(string.format("  background = %q,\n", bg))
	file:write("}\n")
	file:close()
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		persist_colors()
	end,
})

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "background",
	callback = persist_colors,
})
local ok, cfg = pcall(require, "persisted_colorscheme")
if ok then
	if cfg.background then
		vim.o.background = cfg.background
	end
	if cfg.colorscheme then
		vim.cmd("colorscheme " .. cfg.colorscheme)
	end
end
