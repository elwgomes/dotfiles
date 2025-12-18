return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "vertical", -- Usa o layout horizontal
          layout_config = {
            horizontal = {
              preview_width = 0.7, -- Define a largura do preview (50% da janela)
              prompt_position = "bottom",
              width = 0.8, -- Define a largura da janela de resultados
            },
            bottom_pane = {
              height = 0.2, -- Altura da janela (40% da tela)
              prompt_position = "top", -- Coloca o prompt no topo
            },
            vertical = {
              width = 0.6,
              preview_height = 0.6, -- altura do preview (35% da janela)
              prompt_position = "top", -- prompt fica no topo
              mirror = true, -- 👈 inverte a ordem: preview vai pro BOTTOM
            },
          },
          sorting_strategy = "ascending", -- Resultados em ordem crescente
          prompt_prefix = "encibra@skxlz ", -- Define um ícone no prompt
          selection_caret = "➜ ", -- Define o caractere de seleção

          winblend = 0,
          border = true,
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        },
        pickers = {
          find_files = {
            --     theme = "dropdown",
            --     layout_strategy = "vertical", -- 👈 cria a divisão vertical (lista + preview)
            layout_config = {
              --       width = 0.5, -- largura da janela total
              --       height = 0.9, -- altura total (80% da tela)
              prompt_position = "bottom", -- prompt no topo, resultados logo abaixo
              --       preview_height = 0.6, -- 👈 preview ocupa 35% do espaço, abaixo da lista
              --       mirror = true, -- 👈 inverte a posição: preview vai pra baixo!
            },
            previewer = false,
            --     sort_mru = true,
            --     ignore_current_buffer = true,
            --   },
            --   colorscheme = {
            --     theme = "dropdown",
            --     previewer = false,
          },
        },
        -- pickers = {
        --   -- 🔍 Busca de arquivos
        --   find_files = {
        --     theme = "dropdown",
        --     layout_strategy = "vertical", -- 👈 cria a divisão vertical (lista + preview)
        --     layout_config = {
        --       width = 0.6, -- largura da janela total
        --       height = 0.8, -- altura total (80% da tela)
        --       prompt_position = "top", -- prompt no topo, resultados logo abaixo
        --       preview_height = 0.55, -- 👈 preview ocupa 35% do espaço, abaixo da lista
        --       mirror = true, -- 👈 inverte a posição: preview vai pra baixo!
        --     },
        --     previewer = true,
        --     sort_mru = true,
        --     ignore_current_buffer = true,
        --   },
        --
        --   -- 🧠 Busca por texto
        --   live_grep = {
        --     theme = "dropdown",
        --     layout_strategy = "vertical",
        --     layout_config = {
        --       width = 0.8, -- largura da janela total
        --       height = 0.85, -- altura total da janela
        --       prompt_position = "top",
        --       preview_height = 0.4, -- preview ocupa 40% da janela
        --       mirror = true, -- coloca o preview abaixo
        --     },
        --     previewer = true, -- mantém o preview pra contexto
        --     border = true, -- ativa bordas
        --     borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- estilo arredondado clean
        --   },
        --
        --   -- 📁 Buffers abertos
        --   buffers = {
        --     theme = "dropdown", -- compacto e direto
        --     previewer = false,
        --     sort_mru = true, -- mais usados primeiro
        --     ignore_current_buffer = true,
        --   },
        --
        --   -- 🎨 Escolha de tema
        -- },
        extensions = {
          fzf = {
            fuzzy = false, -- 🔥 Desativa fuzzy → busca muito mais precisa
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "respect_case", -- precisa bater maiúsculas/minúsculas
          },
        },
      })

      require("telescope").load_extension("fzf")
    end,
  },
}
