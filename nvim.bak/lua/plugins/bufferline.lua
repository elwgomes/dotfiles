return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-tree/nvim-tree.lua",
    },
    config = function(_, opts)
      local bufferline = require("bufferline")

      opts.options = vim.tbl_extend("force", opts.options or {}, {
        sort_by = "id", -- novas abas sempre no final

        max_name_length = 999, -- nunca trunca
        max_prefix_length = 999, -- nunca trunca
        truncate_names = false, -- não cortar nomes

        tab_size = 25, -- largura base maior
        minimum_width = 20, -- evita encurtar demais
      })

      bufferline.setup(opts)

      vim.keymap.set("n", "<A-o>", function()
        bufferline.sort_buffers_by(function(a, b)
          return a.id < b.id
        end)
        -- vim.notify("Abas ordenadas da esquerda para a direita!", vim.log.levels.INFO, { title = "Bufferline" })
      end, { desc = "Ordenar abas (Alt+O)" })

      local api = require("bufferline")
      local ok, nvim_tree_events = pcall(require, "nvim-tree.events")

      -- 🌳 Integração com NvimTree
      if ok then
        nvim_tree_events.subscribe("TreeOpen", function()
          api.setup({
            options = vim.tbl_extend("force", opts.options, {
              offsets = {
                { filetype = "NvimTree", text = "NVIM_TREE[1]", separator = true, text_align = "left" },
              },
            }),
          })
        end)

        nvim_tree_events.subscribe("TreeClose", function()
          api.setup({
            options = vim.tbl_extend("force", opts.options, { offsets = {} }),
          })
        end)
      end

      -- 🪶 Integração com Oil.nvim
      vim.api.nvim_create_autocmd("BufWinEnter", {
        callback = function()
          if vim.bo.filetype == "oil" then
            api.setup({
              options = vim.tbl_extend("force", opts.options, {
                offsets = {
                  { filetype = "oil", text = "File Explorer", separator = true, text_align = "left" },
                },
              }),
            })
          end
        end,
      })

      vim.api.nvim_create_autocmd("BufWinLeave", {
        callback = function()
          if vim.bo.filetype == "oil" then
            api.setup({
              options = vim.tbl_extend("force", opts.options, { offsets = {} }),
            })
          end
        end,
      })
    end,
  },
}
