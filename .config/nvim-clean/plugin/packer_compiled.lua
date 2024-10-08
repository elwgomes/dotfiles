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
local package_path_str = "/home/skxl/.cache/nvim/packer_hererocks/2.1.1723675123/share/lua/5.1/?.lua;/home/skxl/.cache/nvim/packer_hererocks/2.1.1723675123/share/lua/5.1/?/init.lua;/home/skxl/.cache/nvim/packer_hererocks/2.1.1723675123/lib/luarocks/rocks-5.1/?.lua;/home/skxl/.cache/nvim/packer_hererocks/2.1.1723675123/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/skxl/.cache/nvim/packer_hererocks/2.1.1723675123/lib/lua/5.1/?.so"
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
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  chafa = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/chafa",
    url = "https://github.com/hpjansson/chafa"
  },
  delta = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/delta",
    url = "https://github.com/dandavison/delta"
  },
  fd = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  gruvbox = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme gruvbox\bcmd\bvim\0" },
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lua-async-await"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/lua-async-await",
    url = "https://github.com/nvim-java/lua-async-await"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.surround"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/mini.surround",
    url = "https://github.com/echasnovski/mini.surround"
  },
  nerdtree = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-java"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-java",
    url = "https://github.com/nvim-java/nvim-java"
  },
  ["nvim-java-core"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-java-core",
    url = "https://github.com/nvim-java/nvim-java-core"
  },
  ["nvim-java-dap"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-java-dap",
    url = "https://github.com/nvim-java/nvim-java-dap"
  },
  ["nvim-java-refactor"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-java-refactor",
    url = "https://github.com/nvim-java/nvim-java-refactor"
  },
  ["nvim-java-test"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-java-test",
    url = "https://github.com/nvim-java/nvim-java-test"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ripgrep = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["spring-boot.nvim"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/spring-boot.nvim",
    url = "https://github.com/JavaHello/spring-boot.nvim"
  },
  ueberzugpp = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/ueberzugpp",
    url = "https://github.com/jstkdng/ueberzugpp"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  viu = {
    loaded = true,
    path = "/home/skxl/.local/share/nvim/site/pack/packer/start/viu",
    url = "https://github.com/atanunq/viu"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gruvbox
time([[Config for gruvbox]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme gruvbox\bcmd\bvim\0", "config", "gruvbox")
time([[Config for gruvbox]], false)

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
