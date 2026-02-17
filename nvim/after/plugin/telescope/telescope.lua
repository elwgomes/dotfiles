local Path = require("plenary.path")
local telescope = require("telescope")
local utils = require("telescope.utils")

require("telescope").setup({
	defaults = {
		path_display = function(opts, path)
			-- caminho relativo ao cwd
			local rel_path = Path:new(path):make_relative(opts.cwd)

			-- filename (telescope.lua)
			local filename = utils.path_tail(rel_path)

			-- diretório (after/plugins/telescope/)
			local dir = Path:new(rel_path):parent():make_relative(opts.cwd)

			if dir == "." then
				dir = ""
			else
				dir = dir .. "/"
			end

			return string.format("%-30s %s", filename, dir)
		end,
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
			"%.class$",
			"^target/",
			"^build/",
			"^out/",
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
			prompt_prefix = "pick file -> ",
			hidden = true,
			theme = "ivy",
			border = true,
			layout_config = {
				height = 0.45,
				prompt_position = "top",
			},
			previewer = true,
		},

		live_grep = {
			prompt_prefix = "pick file -> ",
			additional_args = { "--hidden" },
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "bottom",
				width = 0.9,
				height = 0.85,
				preview_width = 0.55,
			},
			previewer = true,
		},

		colorscheme = {
			prompt_prefix = "choose scheme -> ",
			theme = "dropdown",
			previewer = false,
			layout_config = {
				height = 0.75,
				width = 0.45,
				prompt_position = "top",
			},
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
