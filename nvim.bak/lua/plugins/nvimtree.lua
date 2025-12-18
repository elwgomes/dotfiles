local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    -- Keymaps como seu NvimTree
    bind("n", "<leader>e", ":Neotree toggle left<CR>", opts)
    bind("n", "<leader>E", ":Neotree toggle left<CR>", opts)

    -- Atalho para toggle size+mtime (Shift + Space)
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",

      default_component_configs = {
        indent = {
          padding = 1,
          with_markers = true,
          with_expanders = false, -- sem ícones de abertura
        },

        icon = {
          enabled = true,
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "",
        },
        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "",
            renamed = "",
            untracked = "★",
            ignored = "◌",
            unstaged = "✗",
            staged = "✓",
            conflict = "",
          },
        },

        -- COLUNAS EXTRAS (size + mtime)
        file_size = {
          enabled = false,
          required_width = 4,
        },

        last_modified = {
          enabled = false,
          required_width = 6,
        },
      },

      window = {
        width = 45,
        mappings = {
          ["<space>"] = "none",
        },
      },

      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = { enabled = true },
        group_empty_dirs = true,
      },

      buffers = {
        follow_current_file = { enabled = true },
      },

      git_status = {
        window = { position = "float" },
      },
    })
  end,
}
