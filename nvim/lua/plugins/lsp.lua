return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = {
        on_attach = function(client, bufnr)
          -- Desativa o formatador do tsserver
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end,
      },
    },
  },
}
