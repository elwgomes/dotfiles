return {
  "preservim/nerdtree",
  config = function()
    local map = LazyVim.safe_keymap_set
    map("n", "<leader>E", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

    vim.g.NERDTreeWinSize = 40 -- Define a largura da janela NERDTree
    vim.g.NERDTreeShowRelativeDir = 1 -- Para mostrar diretórios relativos
    vim.g.NERDTreeMinimalUI = 1 -- Para um UI mais limpa
    vim.g.NERDTreeIndentMarker = "     " -- Usando dois espaços para aumentar o espaçamento visual
  end,
}
