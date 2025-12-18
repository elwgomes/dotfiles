return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({

      winopts = {
        height = 0.85, -- Ajusta a altura da janela
        width = 0.85, -- Ajusta a largura da janela
      },

      defaults = {
        git_icons = true, -- Desabilita ícones de git
        file_icons = true, -- Desabilita ícones de arquivos
        color_icons = true, -- Desabilita ícones coloridos
      },

      vim.keymap.set("n", "<leader> ", function()
        require("fzf-lua").files({
          winopts = {
            height = 0.50, -- Ajusta a altura da janela
            width = 0.65, -- Ajusta a largura da janela
          },
          previewer = false,
          fzf_bin = "fzf-vim",
          fzf_opts = {
            ["--prompt"] = "🔍 ", -- Altera o prompt para a lupa
            ["--pointer"] = "➜", -- Define o ponteiro
            ["--layout"] = "reverse",
            ["--info"] = "inline",
          },
        })
      end, { desc = "Find Files" }),

      vim.keymap.set("n", "<leader>/", function()
        require("fzf-lua").live_grep({
          fzf_opts = {
            ["--layout"] = "reverse",
            ["--info"] = "inline",
            ["--pointer"] = "➜ ",
          },
        })
      end, { desc = "Grep" }),

      vim.keymap.set("n", "<leader>uC", require("fzf-lua").colorschemes, { desc = "Colorschemes" }),

      vim.keymap.set("n", "<leader>fc", function()
        require("fzf-lua").files({
          winopts = {
            height = 0.40, -- Ajusta a altura da janela
            width = 0.65, -- Ajusta a largura da janela
          },

          fzf_opts = {
            ["--layout"] = "reverse",
            ["--info"] = "inline",
          },
          previewer = false,
          fzf_bin = "fzf-vim",
        })
      end, { desc = "Find Config Files" }),
    })
  end,
}
