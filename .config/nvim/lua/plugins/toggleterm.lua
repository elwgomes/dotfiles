return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shade_terminals = true, -- Habilita cores
      direction = "horizontal",
      size = 15, -- Altura do terminal
      persist_mode = true, -- Permitir navegação no terminal
      float_opts = {
        border = "rounded",
      },
      winbar = {
        enabled = true,
        name_formatter = function(term) --  term: Terminal
          return term.name
        end,
      },
      responsiveness = {
        horizontal_breakpoint = 135,
      },
    })
  end,
}
