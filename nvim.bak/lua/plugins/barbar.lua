return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- opcional: status do git
      "nvim-tree/nvim-web-devicons", -- opcional: ícones
      "nvim-tree/nvim-tree.lua", -- integração com NvimTree
    },
    version = "^1.0.0",

    -- desativa o auto setup padrão
    init = function()
      vim.g.barbar_auto_setup = false
    end,

    opts = {
      animation = true,
      insert_at_end = true,
      insert_at_start = false,
      auto_hide = false,
      highlight_visible = true,
      maximum_padding = 5,
      no_name_title = "no name",
      icons = {
        buffer_index = false,
        buffer_number = false,
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true },
          [vim.diagnostic.severity.WARN] = { enabled = true },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = false },
        },
        filetype = { enabled = true },
        separator = { left = "▎", right = "" },
        modified = { button = "●" },
        pinned = { button = "" },
        inactive = { button = "" },
      },
    },

    config = function(_, opts)
      local barbar = require("barbar")
      barbar.setup(opts)

      ------------------------------------------------------------------
      -- 🧭 Navegação entre buffers
      ------------------------------------------------------------------
      vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { silent = true, noremap = true, desc = "Próxima aba" })
      vim.keymap.set(
        "n",
        "<S-Tab>",
        "<Cmd>BufferPrevious<CR>",
        { silent = true, noremap = true, desc = "Aba anterior" }
      )

      ------------------------------------------------------------------
      -- 🎯 Reordenar buffers
      ------------------------------------------------------------------
      vim.keymap.set(
        "n",
        "<A-,>",
        "<Cmd>BufferMovePrevious<CR>",
        { silent = true, noremap = true, desc = "Mover aba à esquerda" }
      )
      vim.keymap.set(
        "n",
        "<A-.>",
        "<Cmd>BufferMoveNext<CR>",
        { silent = true, noremap = true, desc = "Mover aba à direita" }
      )

      ------------------------------------------------------------------
      -- 🔒 Fixar e fechar buffers
      ------------------------------------------------------------------
      vim.keymap.set(
        "n",
        "<A-p>",
        "<Cmd>BufferPin<CR>",
        { silent = true, noremap = true, desc = "Fixar / desafixar aba" }
      )
      vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { silent = true, noremap = true, desc = "Fechar aba atual" })
      vim.keymap.set(
        "n",
        "<leader>bo",
        "<Cmd>BufferCloseAllButCurrent<CR>",
        { silent = true, noremap = true, desc = "Fechar outras abas" }
      )
      vim.keymap.set(
        "n",
        "<leader>ba",
        "<Cmd>BufferCloseAll<CR>",
        { silent = true, noremap = true, desc = "Fechar todas as abas" }
      )
      vim.keymap.set(
        "n",
        "<leader>br",
        "<Cmd>BufferCloseBuffersRight<CR>",
        { silent = true, noremap = true, desc = "Fechar abas à direita" }
      )
      vim.keymap.set(
        "n",
        "<leader>bl",
        "<Cmd>BufferCloseBuffersLeft<CR>",
        { silent = true, noremap = true, desc = "Fechar abas à esquerda" }
      )

      ------------------------------------------------------------------
      -- 🔢 Organização
      ------------------------------------------------------------------
      vim.keymap.set(
        "n",
        "<A-o>",
        "<Cmd>BufferOrderByBufferNumber<CR>",
        { silent = true, noremap = true, desc = "Organizar abas pelo índice" }
      )

      ------------------------------------------------------------------
      -- 🧱 Integração com Oil.nvim e NvimTree
      ------------------------------------------------------------------
      local barbar_api = require("barbar.api")

      -- Oil.nvim
      vim.api.nvim_create_autocmd("BufWinEnter", {
        callback = function()
          if vim.bo.filetype == "oil" then
            barbar_api.set_offset(36, "File Explorer")
          end
        end,
      })

      vim.api.nvim_create_autocmd("BufWinLeave", {
        callback = function()
          if vim.bo.filetype == "oil" then
            barbar_api.set_offset(0)
          end
        end,
      })

      -- NvimTree
      local ok, nvim_tree_events = pcall(require, "nvim-tree.events")
      if ok then
        nvim_tree_events.subscribe("TreeOpen", function()
          barbar_api.set_offset(36, "File Explorer")
        end)
        nvim_tree_events.subscribe("Resize", function()
          barbar_api.set_offset(36, "File Explorer")
        end)
        nvim_tree_events.subscribe("TreeClose", function()
          barbar_api.set_offset(0)
        end)
      end
    end,
  },
}
