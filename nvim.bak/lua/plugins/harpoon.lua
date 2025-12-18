local bind = vim.keymap.set

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    harpoon:extend({
      UI_CREATE = function(cx)
        bind("n", "<leader>hv", function()
          harpoon.ui:select_menu_item({ vsplit = true })
        end, { buffer = cx.bufnr })

        bind("n", "<leader>hs", function()
          harpoon.ui:select_menu_item({ split = true })
        end, { buffer = cx.bufnr })

        bind("n", "<leader>hte", function()
          harpoon.ui:select_menu_item({ tabedit = true })
        end, { buffer = cx.bufnr })
      end,
    })

    -- mark a file
    bind("n", "<leader>hx", function()
      harpoon:list():add()
    end)

    bind("n", "<leader>hh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    bind("n", "<leader>h1", function()
      harpoon:list():select(1)
    end)
    bind("n", "<leader>h2", function()
      harpoon:list():select(2)
    end)
    bind("n", "<leader>h3", function()
      harpoon:list():select(3)
    end)
    bind("n", "<leader>h4", function()
      harpoon:list():select(4)
    end)

    bind("n", "<leader>p", function()
      harpoon:list():prev()
    end)
    bind("n", "<leader>n", function()
      harpoon:list():next()
    end)
  end,
}
