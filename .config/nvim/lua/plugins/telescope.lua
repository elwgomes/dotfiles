return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "horizontal", -- Usa o layout horizontal
          layout_config = {
            horizontal = {
              preview_width = 0.6, -- Define a largura do preview (50% da janela)
              prompt_position = "top",
              width = 0.8, -- Define a largura da janela de resultados
            },
            bottom_pane = {
              height = 0.2, -- Altura da janela (40% da tela)
              prompt_position = "top", -- Coloca o prompt no topo
            },
            vertical = {
              preview_cutoff = 40,
            },
          },
          sorting_strategy = "ascending", -- Resultados em ordem crescente
          prompt_prefix = "skxlz ", -- Define um ícone no prompt
          selection_caret = "* ", -- Define o caractere de seleção
          -- prompt_prefix = "🔍 ", -- Define um ícone no prompt
          -- selection_caret = "➜➤ ", -- Define o caractere de seleção

          winblend = 10, -- Transparência na janela
          border = true, -- Habilita borda
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Borda similar ao fzf
          -- borderchars = { "$", "$", "$", "$", "$", "$", "$", "$" }, -- Borda similar ao fzf
        },
        pickers = {
          find_files = {
            layout_strategy = "bottom_pane",
            theme = "ivy",
            layout_config = {
              preview_width = 0.5,
              width = 0.8,
              height = 0.4,
            },
            previewer = false, -- Habilita o previewer para find_files
          },
          live_grep = {
            layout_strategy = "horizontal",
            layout_config = {
              preview_width = 0.5,
            },
            previewer = true, -- Habilita o previewer para live_grep
          },
          buffers = {
            layout_strategy = "horizontal",
            layout_config = {
              preview_width = 0.5,
            },
            previewer = true, -- Habilita o previewer para buffers
          },
          colorscheme = {
            theme = "dropdown",
            previewer = false,
          },
        },
        extensions = {
          fzf = {
            fuzzy = true, -- Busca fuzzy como o fzf-lua
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case", -- Case-sensitive conforme a entrada
          },
        },
      })

      require("telescope").load_extension("fzf")
    end,
  },
}
