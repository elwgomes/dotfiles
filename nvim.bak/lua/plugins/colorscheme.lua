-- vim.cmd([[
--   augroup ForceBlackBackground
--     autocmd!
--     autocmd ColorScheme * highlight Normal guibg=#000000 ctermbg=0
--     autocmd ColorScheme * highlight NormalNC guibg=#000000 ctermbg=0
--     autocmd ColorScheme * highlight NormalFloat guibg=#000000 ctermbg=0
--     autocmd ColorScheme * highlight FloatBorder guibg=#000000
--     autocmd ColorScheme * highlight NeoTreeNormal guibg=#000000
--     autocmd ColorScheme * highlight NeoTreeNormalNC guibg=#000000
--     autocmd ColorScheme * highlight NvimTreeNormal guibg=#000000
--     autocmd ColorScheme * highlight NvimTreeNormalNC guibg=#000000
--     autocmd ColorScheme * highlight SignColumn guibg=#000000
--     autocmd ColorScheme * highlight LineNr guibg=#000000
--     autocmd ColorScheme * highlight EndOfBuffer guibg=#000000
--   augroup END
-- ]])
--
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
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "craftzdog/solarized-osaka.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "Shatur/neovim-ayu" },
  { "vague-theme/vague.nvim" },
  { "oonamo/ef-themes.nvim" },
  { "ishan9299/modus-theme-vim" },
  { "pineapplegiant/spaceduck" },

  { "NTBBloodbath/doom-one.nvim" },
  {
    "LazyVim/LazyVim",
    lazy = true,
    opts = {
      colorscheme = "spaceduck",
    },
  },
}
