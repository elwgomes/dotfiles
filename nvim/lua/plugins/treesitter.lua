return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
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

    ignore_install = { "json", "jsonc" },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = { "json", "jsonc" },
    },

    indent = {
      enable = true,
      disable = { "json", "jsonc" },
    },
  },
}
