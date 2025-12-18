return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = true, -- 🔥 coloca borda nas janelas de LSP
    },
    lsp = {
      hover = {
        border = {
          style = "rounded", -- 🔥 borda arredondada
        },
      },
      signature = {
        border = {
          style = "rounded", -- 🔥 borda arredondada aqui!
        },
      },
    },
    views = {
      hover = {
        border = {
          style = "rounded",
        },
      },
      signature = {
        border = {
          style = "rounded",
        },
      },
    },
  },
}
