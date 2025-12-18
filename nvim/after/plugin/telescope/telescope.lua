local Path = require("plenary.path")
local telescope = require("telescope")
local utils = require("telescope.utils")

require("telescope").setup({
	defaults = {
		path_display = function(opts, path)
			-- caminho relativo ao cwd
			local rel_path = Path:new(path):make_relative(opts.cwd)
			local filename = utils.path_tail(rel_path)
			local head = string.sub(rel_path, 1, #rel_path - #filename - 1)
			return string.format("%-20s  %s", filename, head) -- arquivo + caminho
		end,

		prompt_prefix = "   ",
		selection_caret = "  ",
		sorting_strategy = "ascending",
		layout_strategy = "flex",
		layout_config = {
			horizontal = {
				prompt_position = "bottom",
				height = 0.8,
				width = 0.70,
				preview_width = 0.45,
			},
		},
		file_ignore_patterns = {
			"^%.git/",
			"^%.git$",
			".DS_Store",
		},
		mappings = {
			n = {
				["<C-c>"] = require("telescope.actions").close,
			},
			i = {
				["<C-s>"] = "select_horizontal",
			},
		},
		winblend = 0,
		border = true,
		borderchars = {
			"─", -- top
			"│", -- right
			"─", -- bottom
			"│", -- left
			"┌", -- top-left
			"┐", -- top-right
			"┘", -- bottom-right
			"└", -- bottom-left
		},
		color_devicons = true,
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			additional_args = { "--hidden" },
		},
		buffers = {
			sort_mru = true,
		},
		oldfiles = {
			cwd_only = true,
		},
		lsp_document_symbols = {
			symbol_width = 40,
		},
	},
	fzf = {
		fuzzy = true, -- false will only do exact matching
		override_generic_sorter = true, -- override the generic sorter
		override_file_sorter = true, -- override the file sorter
		case_mode = "smart_case", -- or "ignore_case" or "respect_case"
	},

	extensions = {
		["ui-select"] = {
			layout_strategy = "flex",
			layout_config = {
				width = 100,
				height = 30,
			},
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
