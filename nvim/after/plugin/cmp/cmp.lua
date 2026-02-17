-- =========================
-- CMP SETUP
-- =========================
local cmp = require("cmp")
local luasnip = require("luasnip")

-- Carrega snippets do VSCode
require("luasnip.loaders.from_vscode").lazy_load()

-- Função de highlights opcionais
local set_hl = vim.api.nvim_set_hl
set_hl(0, "CmpNormal", { bg = "#0f1117" })
set_hl(0, "CmpBorder", { fg = "#1f2335", bg = "#0f1117" })
set_hl(0, "CmpSelection", { bg = "#1f2335" })
set_hl(0, "CmpItemMenuLSP", { fg = "#7aa2f7" })
set_hl(0, "CmpItemMenuSnippet", { fg = "#ff9e64" })
set_hl(0, "CmpItemMenuBuffer", { fg = "#9ece6a" })
set_hl(0, "CmpItemMenuPath", { fg = "#7dcfff" })
set_hl(0, "CmpDocNormal", { bg = "#0f1117" })
set_hl(0, "CmpDocBorder", { fg = "#1f2335", bg = "#0f1117" })

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
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

			local source_names = {
				nvim_lsp = "[ LSP ]",
				luasnip = "[ Snippet ]",
				buffer = "[ Buffer ]",
				path = "[ Path ]",
				nvim_lua = "[ LUA ]",
				["vim-dadbod-completion"] = "[ DB ]",
			}

			vim_item.abbr = string.format("%s · %s          ", kind_icons[vim_item.kind] or "", vim_item.abbr)
			vim_item.menu = source_names[entry.source.name] or "[ UNK ]"

			-- cor do menu
			if entry.source.name == "nvim_lsp" then
				vim_item.menu_hl_group = "CmpItemMenuLSP"
			elseif entry.source.name == "luasnip" then
				vim_item.menu_hl_group = "CmpItemMenuSnippet"
			elseif entry.source.name == "buffer" then
				vim_item.menu_hl_group = "CmpItemMenuBuffer"
			elseif entry.source.name == "path" then
				vim_item.menu_hl_group = "CmpItemMenuPath"
			else
				vim_item.menu_hl_group = "CmpItemMenu"
			end

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
			elseif luasnip.expand_or_locally_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},

	sources = cmp.config.sources({
		{ name = "vim-dadbod-completion" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),

	window = {
		completion = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			winhighlight = table.concat({
				"Normal:CmpNormal",
				"FloatBorder:CmpBorder",
				"PmenuSel:CmpSelection",
				"Search:None",
			}, ","),
			scrollbar = true,
		},
		documentation = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
			winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpDocBorder",
		},
	},
})
