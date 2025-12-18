return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,

  opts = {
    ignore_install = { "jsonc" },

    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "bash",
      "typescript",
      "javascript",
      "tsx",
      "html",
      "css",
      "python",
      "java",
      "markdown",
      "markdown_inline",
    },

    highlight = {
      enable = true,
      disable = { "json", "jsonc" },
    },

    indent = {
      enable = true,
      disable = { "json", "jsonc" },
    },
  },

  init = function()
    vim.treesitter.language.register("json", "jsonc")
  end,
}
