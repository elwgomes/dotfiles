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
  { "xiantang/darcula-dark.nvim" },
  { "bluz71/vim-moonfly-colors" },
  { "maxmx03/solarized.nvim" },
  { "Tsuzat/NeoSolarized.nvim" },
  { "navarasu/onedark.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "datsfilipe/vesper.nvim" },
  { "p00f/alabaster.nvim" },
  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "alabaster",
    },
  },
}
