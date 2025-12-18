local bind = vim.keymap.set

bind("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })

bind("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run file tests" })

bind("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })

bind("n", "<leader>to", function()
  require("neotest").output.open({ enter = true })
end, { desc = "Show test output" })

bind("n", "<leader>ta", function()
  require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Run all project tests" })

return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-jest",
  },
  opts = function(_, opts)
    opts.adapters = {
      require("neotest-jest")({
        jestCommand = "npm test --",
        env = { CI = true },
        cwd = function(path)
          return vim.fn.getcwd()
        end,
      }),
    }
  end,
}
