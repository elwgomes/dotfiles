vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#0f1117" })
vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#1f2335", bg = "#0f1117" })
vim.api.nvim_set_hl(0, "CmpSelection", {
	bg = "#1f2335",
	fg = "#cdd6f4",
	bold = true,
})

vim.api.nvim_set_hl(0, "CmpDocNormal", { bg = "#0f1117" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#1f2335", bg = "#0f1117" })

local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	completion = {
		completeopt = "menu,menuone,noselect",
	},
	formatting = {
		fields = { "abbr", "menu" },

		format = function(entry, vim_item)
			local kind_icons = {
				Text = "󰉿",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "",
				Field = "󰜢",
				Variable = "󰀫",
				Class = "󰠱",
				Interface = "",
				Module = "",
				Property = "󰜢",
				Unit = "󰑭",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "󰈇",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "󰙅",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "",
			}

			vim_item.abbr = string.format("%s    %s", kind_icons[vim_item.kind] or "", vim_item.abbr)

			-- Fonte da sugestão (lado direito)
			local source_names = {
				nvim_lsp = "LSP",
				luasnip = "Snippet",
				buffer = "Buffer",
				path = "Path",
				nvim_lua = "LUA",
			}

			vim_item.menu = ("            [ %s ]"):format(source_names[entry.source.name] or "UNK")

			-- Remove o texto do kind (Function, Variable, etc)
			vim_item.kind = ""

			return vim_item
		end,
	},
	experimental = {
		ghost_text = true,
	},
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif require("luasnip").expand_or_locally_jumpable() then
				require("luasnip").expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif require("luasnip").jumpable(-1) then
				require("luasnip").jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	window = {
		completion = {
			border = "single",
			winhighlight = table.concat({
				"Normal:CmpNormal",
				"FloatBorder:CmpBorder",
				"PmenuSel:CmpSelection",
				"Search:None",
			}, ","),
			scrollbar = false,
		},
		documentation = {
			border = "single",
			winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpDocBorder",
		},
	},
})
