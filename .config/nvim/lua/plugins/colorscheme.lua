return {
    -- add gruvbox
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
    { "fenetikm/falcon" },
    { "akinsho/horizon.nvim" },
    { "Shatur/neovim-ayu" },
    { "folke/tokyonight.nvim" },
    { "chiendo97/intellij.vim" },
    { "kvrohit/substrata.nvim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        lazy = true,
        opts = {
            colorscheme = "intellij",
        },
    },
}
