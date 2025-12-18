return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- opts.completion = opts.completion or {}
    --
    -- opts.completion.menu = vim.tbl_deep_extend("force", opts.completion.menu or {}, {
    --   border = "rounded",
    --   draw = { gap = 1 },
    --   winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
    -- })
    --
    -- opts.completion.documentation = vim.tbl_deep_extend("force", opts.completion.documentation or {}, {
    --   auto_show = true,
    --   auto_show_delay_ms = 20,
    --   window = {
    --     border = "rounded",
    --     winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
    --   },
    -- })
    --
    -- return opts
  end,
}
