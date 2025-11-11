local bind = vim.keymap.set
local opts = { noremap = true, silent = true }
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    bind("n", "<leader>E", ":NvimTreeToggle<CR>", opts)
    bind("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

    require("nvim-tree").setup({
      sort_by = "name",
      view = {
        width = 35,
        side = "left",
        preserve_window_proportions = true,
        number = false,
        relativenumber = false,
        signcolumn = "no",
      },
      renderer = {
        root_folder_label = ":~:s?$?/..?",
        highlight_git = true,
        highlight_opened_files = "all",
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "󰈙",
            symlink = "",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { "^.git$" },
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
        },
      },
    })
  end,
}
