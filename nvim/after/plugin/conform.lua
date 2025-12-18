require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "autopep8" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		sh = { "shfmt" },
		typescript = { "biome" },
		java = { "google_java_format" }, -- novo formatter
	},
	formatters = {
		shfmt = {
			prepend_args = { "-i", "4" },
		},
	},
	default_format_opts = {
		lsp_format = "never",
		async = false, -- não recomendado mudar
		quiet = false, -- não recomendado mudar
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
