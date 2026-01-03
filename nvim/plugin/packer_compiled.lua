-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/leonardo/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/leonardo/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/leonardo/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/leonardo/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/leonardo/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\5\0\f\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\n\0005\3\t\0=\3\v\2B\0\2\1K\0\1\0\vlayout\1\0\2\vlayout\0\14max_width\3F\1\0\1\nwidth\3(\nsetup\vaerial\frequire <Cmd>AerialToggle float<CR>\n<C-a>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["alabaster.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/alabaster.nvim",
    url = "https://github.com/p00f/alabaster.nvim"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\16monokai-pro\nsetup\rbarbecue\frequire\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["eclipse.vim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/eclipse.vim",
    url = "https://github.com/vim-scripts/eclipse.vim"
  },
  ["everforest-nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/everforest-nvim",
    url = "https://github.com/neanias/everforest-nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    config = { "\27LJ\2\nÏ\1\0\0\2\0\b\0\0166\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0'\1\a\0=\1\6\0K\0\1\0\roriginal gruvbox_material_foreground#gruvbox_material_enable_italic!gruvbox_material_enable_bold\thard gruvbox_material_background\6g\bvim\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\nš\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vitalic\1\0\5\nfolds\2\fstrings\2\rcomments\2\14operators\1\remphasis\2\1\0\f\17invert_signs\2\21invert_selection\1\18strikethrough\2\14underline\2\vitalic\0\21transparent_mode\1\14undercurl\2\20terminal_colors\2\19invert_tabline\1\tbold\2\rcontrast\thard\finverse\2\nsetup\fgruvbox\frequire\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["gruvsquirrel.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/gruvsquirrel.nvim",
    url = "https://github.com/mikesmithgh/gruvsquirrel.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["inc-rename.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jb.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/jb.nvim",
    url = "https://github.com/nickkadutskyi/jb.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lua-async-await"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/lua-async-await",
    url = "https://github.com/nvim-java/lua-async-await"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/mason-org/mason.nvim"
  },
  neovim = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  nvim = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-java"] = {
    config = { "\27LJ\2\nü\1\0\0\4\0\14\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0\njdtls\venable\blsp\bvim\22spring_boot_tools\1\0\1\venable\1\23java_debug_adapter\1\0\1\venable\2\14java_test\1\0\3\23java_debug_adapter\0\22spring_boot_tools\0\14java_test\0\1\0\1\venable\2\nsetup\tjava\frequire\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-java",
    url = "https://github.com/nvim-java/nvim-java"
  },
  ["nvim-java-core"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-java-core",
    url = "https://github.com/nvim-java/nvim-java-core"
  },
  ["nvim-java-dap"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-java-dap",
    url = "https://github.com/nvim-java/nvim-java-dap"
  },
  ["nvim-java-test"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-java-test",
    url = "https://github.com/nvim-java/nvim-java-test"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¤\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\3\14highlight\0\vindent\0\21ensure_installed\0\1\15\0\0\tbash\6c\bcss\tdiff\14gitcommit\thtml\15javascript\blua\vluadoc\rmarkdown\20markdown_inline\nquery\bvim\vvimdoc\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["solarized-osaka.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/solarized-osaka.nvim",
    url = "https://github.com/craftzdog/solarized-osaka.nvim"
  },
  ["solarized.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/solarized.nvim",
    url = "https://github.com/maxmx03/solarized.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vesper.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vesper.nvim",
    url = "https://github.com/datsfilipe/vesper.nvim"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\n‹\2\0\0\5\0\f\0\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0\31<Cmd>TmuxNavigateRight<CR>\n<C-l>\28<Cmd>TmuxNavigateUp<CR>\n<C-k>\30<Cmd>TmuxNavigateDown<CR>\n<C-j>\30<Cmd>TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/leonardo/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-java
time([[Config for nvim-java]], true)
try_loadstring("\27LJ\2\nü\1\0\0\4\0\14\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0B\0\2\1K\0\1\0\njdtls\venable\blsp\bvim\22spring_boot_tools\1\0\1\venable\1\23java_debug_adapter\1\0\1\venable\2\14java_test\1\0\3\23java_debug_adapter\0\22spring_boot_tools\0\14java_test\0\1\0\1\venable\2\nsetup\tjava\frequire\0", "config", "nvim-java")
time([[Config for nvim-java]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\nš\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vitalic\1\0\5\nfolds\2\fstrings\2\rcomments\2\14operators\1\remphasis\2\1\0\f\17invert_signs\2\21invert_selection\1\18strikethrough\2\14underline\2\vitalic\0\21transparent_mode\1\14undercurl\2\20terminal_colors\2\19invert_tabline\1\tbold\2\rcontrast\thard\finverse\2\nsetup\fgruvbox\frequire\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\5\0\f\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\n\0005\3\t\0=\3\v\2B\0\2\1K\0\1\0\vlayout\1\0\2\vlayout\0\14max_width\3F\1\0\1\nwidth\3(\nsetup\vaerial\frequire <Cmd>AerialToggle float<CR>\n<C-a>\6n\bset\vkeymap\bvim\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\n‹\2\0\0\5\0\f\0\0296\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0\31<Cmd>TmuxNavigateRight<CR>\n<C-l>\28<Cmd>TmuxNavigateUp<CR>\n<C-k>\30<Cmd>TmuxNavigateDown<CR>\n<C-j>\30<Cmd>TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: barbecue.nvim
time([[Config for barbecue.nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\16monokai-pro\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")
time([[Config for barbecue.nvim]], false)
-- Config for: gruvbox-material
time([[Config for gruvbox-material]], true)
try_loadstring("\27LJ\2\nÏ\1\0\0\2\0\b\0\0166\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0'\1\a\0=\1\6\0K\0\1\0\roriginal gruvbox_material_foreground#gruvbox_material_enable_italic!gruvbox_material_enable_bold\thard gruvbox_material_background\6g\bvim\0", "config", "gruvbox-material")
time([[Config for gruvbox-material]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¤\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\3\14highlight\0\vindent\0\21ensure_installed\0\1\15\0\0\tbash\6c\bcss\tdiff\14gitcommit\thtml\15javascript\blua\vluadoc\rmarkdown\20markdown_inline\nquery\bvim\vvimdoc\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
