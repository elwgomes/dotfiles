return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    require("ibl").setup({
      indent = {
        -- ⋮
        char = "∷",
        tab_char = "∷", -- idem para tabs
      },

      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },

      whitespace = {
        remove_blankline_trail = true,
      },
    })
  end,
}
