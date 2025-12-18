local map = vim.keymap.set
local telescope = require("telescope.builtin")

-- 🔍 buscar arquivos
map("n", "<leader> ", telescope.find_files, { desc = "Find Files" })

-- 🔍 buscar texto (live grep)
map("n", "<leader>/", telescope.live_grep, { desc = "Live Grep" })

-- 🔍 buscar no buffer atual
map("n", "<leader>fb", telescope.current_buffer_fuzzy_find, { desc = "Search in Buffer" })

-- 📄 buffers abertos
map("n", "<leader>b", telescope.buffers, { desc = "Buffers" })

-- 🕘 recentes (oldfiles)
map("n", "<leader>fo", telescope.oldfiles, { desc = "Recent Files" })

-- ❓ ajuda (help tags)
map("n", "<leader>fh", telescope.help_tags, { desc = "Help" })

-- 📚 buscar palavras sob o cursor
map("n", "<leader>fw", telescope.grep_string, { desc = "Find Word Under Cursor" })

-- 🔁 reabrir o último picker
map("n", "<leader>fr", telescope.resume, { desc = "Resume Last Search" })

-- ⚙️ configs do lazyvim: keybinds úteis extra
map("n", "<leader>fd", telescope.diagnostics, { desc = "Workspace Diagnostics" })
map("n", "<leader>fC", telescope.command_history, { desc = "Command History" })
map("n", "<leader>fk", telescope.keymaps, { desc = "Keymaps" })
map("n", "<leader>fm", telescope.marks, { desc = "Marks" })
map("n", "<leader>fM", telescope.man_pages, { desc = "Man Pages" })
map("n", "<leader>fj", telescope.jumplist, { desc = "Jumplist" })

map("n", "<leader>fc", function()
	telescope.find_files({
		prompt_title = "Neovim Config",
		cwd = "~/.config/nvim",
		hidden = true,
	})
end, { desc = "Find Neovim Config Files" })

map("n", "<leader>uC", function()
	require("telescope.builtin").colorscheme({
		enable_preview = true,
		attach_mappings = function(prompt_bufnr, map)
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")

			map("i", "<CR>", function()
				local entry = action_state.get_selected_entry()
				local theme = entry.value

				-- salva em arquivo
				local f = io.open(vim.fn.stdpath("config") .. "/lua/persisted_colorscheme.lua", "w")
				f:write('return { colorscheme = "' .. theme .. '" }\n')
				f:close()

				actions.select_default(prompt_bufnr)
			end)

			return true
		end,
	})
end, { desc = "Change Colorscheme (persistent)" })
