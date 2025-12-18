return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",

  config = function()
    local lualine = require("lualine")

    -----------------------------------------------------
    -- Escolhe tema conforme background (dark/light)
    -----------------------------------------------------
    local bg = vim.o.background == "light" and "gruvbox_light" or "gruvbox_dark"
    local theme = require("lualine.themes." .. bg)

    -----------------------------------------------------
    -- Remove fundo (bg = none) em todas seções
    -----------------------------------------------------
    for _, section in pairs(theme) do
      if section.a then
        section.a.bg = "none"
      end
      if section.b then
        section.b.bg = "none"
      end
      if section.c then
        section.c.bg = "none"
      end
      if section.x then
        section.x.bg = "none"
      end
      if section.y then
        section.y.bg = "none"
      end
      if section.z then
        section.z.bg = "none"
      end
    end

    -----------------------------------------------------
    -- Configuração do lualine
    -----------------------------------------------------
    lualine.setup({
      options = {
        theme = theme,
        component_separators = "",
        section_separators = "",
        globalstatus = true,
        disabled_filetypes = { "NvimTree", "neo-tree", "alpha" },
      },

      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return str:sub(1, 1)
            end,
          },
        },

        lualine_b = {
          { "branch", icon = "" },
        },

        lualine_c = {
          {
            "filename",
            path = 1,
            symbols = { modified = " ●", readonly = " 󰌾" },
          },
        },

        lualine_x = {
          {
            "diagnostics",
            symbols = { error = " ", warn = " ", info = " " },
          },
        },

        lualine_y = {
          "progress",
        },

        lualine_z = {
          "location",
        },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
