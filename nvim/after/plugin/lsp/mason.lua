local mason = require("mason")
local lspconfig = require("mason-lspconfig")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓ ",
			package_pending = "➜ ",
			package_uninstalled = "✗ ",
		},
	},
})

lspconfig.setup({
	automatic_enable = {
		exclude = {
			"jdtls",
		},
	},
})
