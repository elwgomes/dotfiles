vim.opt.termguicolors = true

-- salva a sessão automaticamente ao sair
vim.api.nvim_create_autocmd("VimLeavePre", {
	callback = function()
		vim.cmd("mksession! ~/.local/share/nvim/session.vim")
	end,
})

-- carrega a sessão automaticamente ao abrir o Neovim
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		local session = vim.fn.stdpath("data") .. "/session.vim"
		if vim.fn.filereadable(session) == 1 then
			vim.cmd("source " .. session)
		end
	end,
})
