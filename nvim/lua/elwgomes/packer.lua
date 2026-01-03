-- ============================================================================
-- Default options:
--  Packer bootstrap
-- ============================================================================
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- ============================================================================
--  Plugins
-- ============================================================================
return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- =========================================================================
	--  Core / Utils
	-- =========================================================================
	use("nvim-lua/plenary.nvim")
	use("stevearc/dressing.nvim")
	use("windwp/nvim-autopairs")
	use("tpope/vim-surround")
	use("matze/vim-move")
	use("smjonas/inc-rename.nvim")

	-- =========================================================================
	--  File explorer / Navigation
	-- =========================================================================
	use("stevearc/oil.nvim")

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		},
	})

	use({
		"christoomey/vim-tmux-navigator",
		config = function()
			vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>")
			vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>")
			vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>")
			vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>")
		end,
	})

	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- =========================================================================
	--  UI / Visual
	-- =========================================================================
	use("nvim-tree/nvim-web-devicons")

	use("lukas-reineke/indent-blankline.nvim")

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("barbecue").setup({
				theme = "monokai-pro",
			})
		end,
	})

	use({
		"stevearc/aerial.nvim",
		config = function()
			vim.keymap.set("n", "<C-a>", "<Cmd>AerialToggle float<CR>")
			require("aerial").setup({
				layout = {
					width = 40,
				},
				max_width = 70,
			})
		end,
	})
	-- =========================================================================
	--  Themes
	-- =========================================================================
	use({
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_enable_bold = 1
			vim.g.gruvbox_material_enable_italic = 1
			vim.gruvbox_material_foreground = "original"
		end,
	})
	use("mikesmithgh/gruvsquirrel.nvim")
	use({
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = true,
				invert_tabline = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				transparent_mode = false,
			})
		end,
	})

	use("olimorris/onedarkpro.nvim")
	use("sainnhe/sonokai")
	use("vim-scripts/eclipse.vim")
	use("nickkadutskyi/jb.nvim")
	use("Mofiqul/vscode.nvim")
	use("neanias/everforest-nvim")
	use("catppuccin/nvim")
	use("rose-pine/neovim")
	use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim")
	use("craftzdog/solarized-osaka.nvim")
	use("maxmx03/solarized.nvim")
	use("bluz71/vim-moonfly-colors")
	use("datsfilipe/vesper.nvim")
	use("p00f/alabaster.nvim")

	-- =========================================================================
	--  Git
	-- =========================================================================
	use("lewis6991/gitsigns.nvim")

	-- =========================================================================
	--  LSP / Mason / Treesitter
	-- =========================================================================
	use("neovim/nvim-lspconfig")
	use("mason-org/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"css",
					"diff",
					"gitcommit",
					"html",
					"javascript",
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"query",
					"vim",
					"vimdoc",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	})
	-- =========================================================================
	--  Formatter
	-- =========================================================================
	use("stevearc/conform.nvim")

	-- =========================================================================
	--  Telescope
	-- =========================================================================
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	})

	use({
		"nvim-telescope/telescope-ui-select.nvim",
	})

	-- =========================================================================
	--  Autocomplete
	-- =========================================================================

	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
		},
	})

	-- =========================================================================
	--  Diagnostics
	-- =========================================================================
	use("folke/trouble.nvim")

	-- =========================================================================
	--  Java / Spring
	-- =========================================================================
	use({
		"nvim-java/nvim-java",
		requires = {
			"nvim-java/lua-async-await",
			"nvim-java/nvim-java-core",
			"nvim-java/nvim-java-test",
			"nvim-java/nvim-java-dap",
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("java").setup({
				java_test = { enable = true },
				java_debug_adapter = { enable = true },
				spring_boot_tools = { enable = false },
			})
			vim.lsp.enable("jdtls")
		end,
	})

	-- =========================================================================
	--  Database
	-- =========================================================================
	use("tpope/vim-dadbod")
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = "tpope/vim-dadbod",
	})
	use({
		"kristijanhusak/vim-dadbod-completion",
		requires = "tpope/vim-dadbod",
	})

	-- =========================================================================
	--  Bootstrap
	-- =========================================================================

	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } })
	use({ "akinsho/bufferline.nvim" })
	if packer_bootstrap then
		require("packer").sync()
	end
end)
