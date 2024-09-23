-- for vim config
vim.cmd([[
  augroup CustomHighlight
    autocmd!
    autocmd ColorScheme * highlight LspReferenceRead guibg=none guifg=none
    autocmd ColorScheme * highlight LspReferenceText guibg=none guifg=none
	autocmd ColorScheme * highlight Pmenu guibg=#2e2e2e

  augroup END
]])

return {
  { "ellisonleao/gruvbox.nvim" },
  { "craftzdog/solarized-osaka.nvim" },
  { "ray-x/aurora" },
  { "Mofiqul/vscode.nvim" },
  { "ramojus/mellifluous.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "catppuccin/nvim" },
  { "0xstepit/flow.nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/sonokai" },
  { "savq/melange-nvim" },
  { "tanvirtin/monokai.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "sainnhe/gruvbox-material" },
  { "fenetikm/falcon" },
  { "akinsho/horizon.nvim" },
  { "Shatur/neovim-ayu" },
  { "folke/tokyonight.nvim" },
  { "chiendo97/intellij.vim" },
  { "kvrohit/substrata.nvim" },
  { "shaunsingh/nord.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  { "Yazeed1s/minimal.nvim" },
  { "slugbyte/lackluster.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "nlknguyen/papercolor-theme" },
  { "thallada/farout.nvim" },
  { "Tsuzat/NeoSolarized.nvim" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "mikesmithgh/gruvsquirrel.nvim" },
  { "cdmill/neomodern.nvim" },
  { "xiantang/darcula-dark.nvim" },
  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "vim",
    },
  },
}
