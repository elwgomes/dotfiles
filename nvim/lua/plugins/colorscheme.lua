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

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-frappe",
        },
    },
}
