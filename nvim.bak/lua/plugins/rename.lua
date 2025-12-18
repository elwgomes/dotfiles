local bind = vim.keymap.set
return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup()
    bind("n", "rr", function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, { expr = true, desc = "Renomear variável (interativo)" })
  end,
}
