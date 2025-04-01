vim.cmd([[
  augroup CustomHighlight
    autocmd!
    autocmd ColorScheme * highlight LspReferenceRead guibg=none guifg=none
    autocmd ColorScheme * highlight LspReferenceText guibg=none guifg=none
    autocmd ColorScheme * highlight Pmenu guibg=none guifg=#ffffff
    autocmd ColorScheme * highlight PmenuSel guibg=none guifg=#ffffff
  augroup END
]])

return {
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/sonokai" },
  { "tanvirtin/monokai.nvim" },
  { "sainnhe/gruvbox-material" },
  { "chiendo97/intellij.vim" },
  { "kvrohit/substrata.nvim" },
  { "rose-pine/neovim" },
  { "mikesmithgh/gruvsquirrel.nvim" },
  { "cdmill/neomodern.nvim" },
  { "xiantang/darcula-dark.nvim" },
  { "bluz71/vim-moonfly-colors" },
  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
