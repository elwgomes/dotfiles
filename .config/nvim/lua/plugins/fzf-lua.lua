return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      defaults = {
        git_icons = false,
        file_icons = false,
        color_icons = false,
      },

      vim.keymap.set("n", "<leader> ", require("fzf-lua").files, { desc = "Find Files" }),
      vim.keymap.set("n", "<leader>/", require("fzf-lua").live_grep, { desc = "Grep" }),
    })
  end,
}
