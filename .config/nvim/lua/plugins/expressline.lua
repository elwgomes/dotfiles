return {
  "tjdevries/express_line.nvim",
  config = function()
    local el = require("el")
    local builtin = require("el.builtin")
    local extensions = require("el.extensions")
    local sections = require("el.sections")

    el.setup({
      generator = function()
        return {
          sections.split,
          extensions.mode,

          sections.split,

          builtin.file,

          sections.collapse_builtin({ " ", builtin.modified_flag }),

          sections.split,

          extensions.git_branch,

          sections.split,

          builtin.line_with_width(3),
          builtin.column_with_width(2),

          builtin.percentage_through_window,
        }
      end,
    })
  end,
}
