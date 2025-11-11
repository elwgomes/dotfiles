return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-tree/nvim-tree.lua",
    },

    opts = {
      options = {
        mode = "buffers",
        numbers = "none",
        indicator = { style = "icon", icon = "▎" },
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "slant",
        always_show_bufferline = true,
        highlights = {
          buffer_selected = { bold = true, italic = false },
        },

        offsets = {
          {
            filetype = "NvimTree",
            text = "",
            text_align = "left",
            separator = true,
          },
          {
            filetype = "oil",
            text = "File Explorer",
            text_align = "left",
            separator = true,
          },
        },
      },
    },

    config = function(_, opts)
      local bufferline = require("bufferline")
      bufferline.setup(opts)

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
