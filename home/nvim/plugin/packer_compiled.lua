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
local package_path_str = "/home/isaaki/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/isaaki/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/isaaki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/isaaki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/isaaki/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
    url = "https://github.com/vim-scripts/ReplaceWithRegister"
  },
  ["arshlib.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/arshlib.nvim",
    url = "https://github.com/arsham/arshlib.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n«\2\0\1\f\0\n\1'\v\0\0\0X\1\2Ä+\0\2\0X\1\0Ä5\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0026\3\4\0\18\5\2\0B\3\2\4H\6\23Ä\15\0\0\0X\b\aÄ6\b\1\0009\b\2\b9\b\5\b\18\n\a\0B\b\2\2\15\0\b\0X\t\14Ä6\b\1\0009\b\2\b9\b\6\b\18\n\a\0'\v\a\0B\b\3\2\6\b\b\0X\t\2Ä\14\0\b\0X\t\1Ä'\b\t\0008\t\b\1\22\t\0\t<\t\b\1F\6\3\3R\6Á\127L\1\2\0\vnormal\5\fbuftype\24nvim_buf_get_option\23nvim_buf_is_loaded\npairs\19nvim_list_bufs\bapi\bvim\1\0\b\rquickfix\3\0\fnowrite\3\0\vnofile\3\0\facwrite\3\0\vnormal\3\0\vprompt\3\0\thelp\3\0\rterminal\3\0\2ó\1\0\0\4\1\b\0\22-\0\0\0B\0\1\0029\1\0\0)\2\1\0\3\1\2\0X\1\bÄ6\1\1\0'\3\2\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\1X\1\aÄ6\1\1\0'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0\0¿\vBufDel\16Buffer quit\6q\bcmd\bvim\16Normal quit\nprint\vnormalô\1\0\0\4\1\b\0\22-\0\0\0B\0\1\0029\1\0\0)\2\1\0\3\1\2\0X\1\bÄ6\1\1\0'\3\2\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\1X\1\aÄ6\1\1\0'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0\0¿\fBufDel!\16Buffer quit\aq!\bcmd\bvim\16Normal quit\nprint\vnormal¡\3\1\0\a\0\25\00076\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\0016\0\3\0'\2\6\0B\0\2\0029\0\5\0005\2\a\0B\0\2\0013\0\b\0006\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\f\0006\5\0\0009\5\r\0059\5\14\0055\6\15\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\16\0006\5\0\0009\5\r\0059\5\17\0055\6\18\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\19\0003\5\20\0005\6\21\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\22\0003\5\23\0005\6\24\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\19Delete! buffer\0\14<leader>Q\1\0\1\tdesc\18Delete buffer\0\14<leader>q\1\0\1\tdesc\16Prev buffer\nbprev\n<A-h>\1\0\1\tdesc\16Next buffer\nbnext\bcmd\n<A-l>\6n\bset\vkeymap\0\1\0\2\tquit\2\tnext\ttabs\vbufdel\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["eyeliner.nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21highlight_on_key\2\nsetup\reyeliner\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/eyeliner.nvim",
    url = "https://github.com/jinh0/eyeliner.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1Ä4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0¿\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1¿\1\0\1\tfull\2\15blame_line(\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\1¿\6~\rdiffthis”\4\1\1\t\0\27\00006\1\0\0009\1\1\0019\1\2\0013\2\3\0\18\3\2\0'\5\4\0'\6\5\0003\a\6\0005\b\a\0B\3\5\1\18\3\2\0'\5\4\0'\6\b\0003\a\t\0005\b\n\0B\3\5\1\18\3\2\0'\5\4\0'\6\v\0003\a\f\0005\b\r\0B\3\5\1\18\3\2\0'\5\4\0'\6\14\0009\a\15\0015\b\16\0B\3\5\1\18\3\2\0'\5\4\0'\6\17\0009\a\18\0015\b\19\0B\3\5\1\18\3\2\0'\5\4\0'\6\20\0003\a\21\0005\b\22\0B\3\5\1\18\3\2\0005\5\23\0'\6\24\0'\a\25\0005\b\26\0B\3\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\31Git select hunk [Gitsigns]#:<C-U>Gitsigns select_hunk<CR>\aih\1\3\0\0\6o\6x\1\0\1\tdesc\26Git diff ~ [Gitsigns]\0\15<leader>gD\1\0\1\tdesc\24Git diff [Gitsigns]\rdiffthis\15<leader>gd\1\0\1\tdesc%Git toggle blame line [Gitsigns]\30toggle_current_line_blame\15<leader>gB\1\0\1\tdesc\30Git blame line [Gitsigns]\0\15<leader>gb\1\0\2\texpr\2\tdesc\25Prev hunk [Gitsigns]\0\a[c\1\0\2\texpr\2\tdesc\25Next hunk [Gitsigns]\0\a]c\6n\0\rgitsigns\vloaded\fpackageP\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\1\0\0\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1¿\rnav_fileê\4\1\0\b\0\25\00086\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0005\a\t\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0009\6\v\0015\a\f\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0005\a\15\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\16\0003\6\17\0005\a\18\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\22\0003\6\23\0005\a\24\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\21Mark 4 [Harpoon]\0\14<leader>4\1\0\1\tdesc\21Mark 3 [Harpoon]\0\14<leader>3\1\0\1\tdesc\21Mark 2 [Harpoon]\0\14<leader>2\1\0\1\tdesc\21Mark 1 [Harpoon]\0\14<leader>1\1\0\1\tdesc\26Toggle menu [Harpoon]\22toggle_quick_menu\14<leader>t\1\0\1\tdesc\23Add mark [Harpoon]\radd_file\14<leader>a\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-tools.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\vconfig\17indent-tools\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/indent-tools.nvim",
    url = "https://github.com/arsham/indent-tools.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\ny\0\4\n\0\6\0\18\n\3\0\0X\4\aÄ6\4\0\0009\4\1\4'\6\2\0\18\a\3\0005\b\3\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\bset\vkeymap\1\0\1\vsilent\1\tkeep\15tbl_extend\bvim0\0\1\2\0\2\0\a9\1\0\0\6\1\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fnull-ls\tnameZ\1\1\5\0\b\0\n6\1\0\0009\1\1\0019\1\2\0019\1\3\0015\3\5\0003\4\4\0=\4\6\3=\0\a\3B\1\2\1K\0\1\0\nbufnr\vfilter\1\0\1\nasync\2\0\vformat\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16declaration\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_next\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_prev\15diagnostic\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim\27\0\0\3\2\0\0\4-\0\0\0-\2\1\0B\0\2\1K\0\1\0\1\0\1¿”\5\1\2\b\2#\0O-\2\0\0'\4\0\0'\5\1\0003\6\2\0005\a\3\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\5\0003\6\6\0005\a\a\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\b\0003\6\t\0005\a\n\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\v\0003\6\f\0005\a\r\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\14\0003\6\15\0005\a\16\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\17\0003\6\18\0005\a\19\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\20\0003\6\21\0005\a\22\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\23\0003\6\24\0005\a\25\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\26\0003\6\27\0005\a\28\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\29\0003\6\30\0005\a\31\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5 \0003\6!\0005\a\"\0=\1\4\aB\2\5\0012\0\0ÄK\0\1\0\0¿\1¿\1\0\1\tdesc\26Format document [LSP]\0\14<leader>f\1\0\1\tdesc\21References [LSP]\0\15<leader>oR\1\0\1\tdesc\22Code action [LSP]\0\15<leader>oc\1\0\1\tdesc\22Code action [LSP]\0\t<F4>\1\0\1\tdesc\17Rename [LSP]\0\t<F2>\1\0\1\tdesc\31Goto prev diagnostic [LSP]\0\a]d\1\0\1\tdesc\31Goto next diagnostic [LSP]\0\a[d\1\0\1\tdesc\16Hover [LSP]\0\6K\1\0\1\tdesc\"Open diagnostics window [LSP]\0\agl\1\0\1\tdesc\26Goto definition [LSP]\0\agd\vbuffer\1\0\1\tdesc\27Goto declaration [LSP]\0\agD\6nÃ\3\1\0\v\0\28\0.6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0003\1\5\0006\2\6\0'\4\a\0B\2\2\0029\3\b\0025\5\17\0004\6\3\0009\a\t\0029\a\n\a9\a\v\a9\a\f\a5\t\14\0005\n\r\0=\n\15\tB\a\2\2>\a\1\0069\a\t\0029\a\n\a9\a\16\a>\a\2\6=\6\18\5B\3\2\0016\3\6\0'\5\19\0B\3\2\0029\4\20\3'\6\21\0B\4\2\0019\4\22\0035\6\23\0B\4\2\0019\4\24\0035\6\25\0B\4\2\0019\4\26\0033\6\27\0B\4\2\0019\4\b\3B\4\1\0012\0\0ÄK\0\1\0\0\14on_attach\1\a\0\0\rtsserver\nvolar\vlua_ls\fpyright\thtml\vjsonls\21ensure_installed\1\0\1\20set_lsp_keymaps\1\20set_preferences\14lsp-compe\vpreset\rlsp-zero\fsources\1\0\0\vstylua\15extra_args\1\0\0\1\2\0\0\19--single-quote\twith\14prettierd\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0\0\byes\15signcolumn\bopt\bvim\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\voption\1\0\0\1\0\1\ntheme\fonedark\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nˇ\1\0\0\b\0\f\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0\15\0\0\0X\1\18Ä6\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\rÄ6\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\vloaded\rnvim-cmp\19packer_plugins\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufdel"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-bufdel",
    url = "https://github.com/ojroques/nvim-bufdel"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expand¨\1\0\1\3\3\4\0\25-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\15Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\bÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜\1276\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsﬂ\b\1\0\f\0@\0ç\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0009\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\r\0009\a\n\0003\t\v\0005\n\f\0B\a\3\2=\a\14\0069\a\n\0003\t\15\0005\n\16\0B\a\3\2=\a\17\0069\a\n\0009\a\18\a)\t¸ˇB\a\2\2=\a\19\0069\a\n\0009\a\18\a)\t\4\0B\a\2\2=\a\20\0069\a\n\0009\a\21\aB\a\1\2=\a\22\0069\a\n\0009\a\23\aB\a\1\2=\a\24\0069\a\n\0009\a\25\a4\t\0\0B\a\2\2=\a\26\0069\a\n\0009\a\27\aB\a\1\2=\a\28\0069\a\n\0009\a\29\a5\t\30\0B\a\2\2=\a\31\0069\a\n\0009\a\21\a5\t\"\0009\n \0009\n!\n=\n#\tB\a\2\2=\a$\0069\a\n\0009\a\23\a5\t%\0009\n \0009\n!\n=\n#\tB\a\2\2=\a&\6=\6\n\0059\6'\0009\6(\0064\b\v\0005\t)\0>\t\1\b5\t*\0>\t\2\b5\t+\0>\t\3\b5\t,\0>\t\4\b5\t-\0>\t\5\b5\t.\0>\t\6\b5\t/\0>\t\a\b5\t0\0>\t\b\b5\t1\0>\t\t\b5\t2\0005\n4\0003\v3\0=\v5\n=\n6\t>\t\n\bB\6\2\2=\6(\5B\3\2\0019\3\4\0009\0037\0035\0058\0005\6:\0009\a\n\0009\a9\a9\a7\aB\a\1\2=\a\n\0069\a'\0009\a(\a4\t\3\0005\n;\0>\n\1\tB\a\2\2=\a(\6B\3\3\0019\3\4\0009\0037\3'\5<\0005\6=\0009\a\n\0009\a9\a9\a7\aB\a\1\2=\a\n\0069\a'\0009\a(\a4\t\3\0005\n>\0>\n\1\t5\n?\0>\n\2\tB\a\2\2=\a(\6B\3\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\bgit\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\forgmode\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\fsources\vconfig\t<up>\1\0\0\v<down>\rbehavior\1\0\0\vSelect\19SelectBehavior\t<cr>\1\0\1\vselect\1\fconfirm\n<m-x>\nabort\14<c-space>\rcomplete\n<c-p>\21select_prev_item\n<c-n>\21select_next_item\n<c-f>\n<c-b>\16scroll_docs\f<s-tab>\1\4\0\0\6i\6s\6x\0\n<tab>\1\0\0\1\4\0\0\6i\6s\6x\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nã\3\0\0\5\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0006\4\6\0009\4\a\0049\4\b\4\19\4\4\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\14\0\0\0X\0\6Ä6\0\0\0'\2\14\0B\0\2\0029\0\2\0005\2\15\0B\0\2\1K\0\1\0\1\0\1\15trim_scope\ninner\23treesitter-context\26context_commentstring\1\0\1\venable\2\14highlight\venable\1\0\1&additional_vim_regex_highlighting\1\vvscode\6g\bvim\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\b\0\0\thelp\15javascript\15typescript\bvue\6c\blua\trust\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\nb\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\1K\0\1\0\tload\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nΩ\1\0\0\3\0\t\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0\15\0\0\0X\1\vÄ6\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\6Ä6\0\0\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\vloaded\19telescope.nvim\19packer_plugins\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\ny\0\4\n\0\6\0\18\n\3\0\0X\4\aÄ6\4\0\0009\4\1\4'\6\2\0\18\a\3\0005\b\3\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\bset\vkeymap\1\0\1\vsilent\1\tkeep\15tbl_extend\bvim7\0\1\4\1\3\0\6-\1\0\0009\1\0\0015\3\1\0=\0\2\3B\1\2\1K\0\1\0\0\0\vsearch\1\0\0\16grep_stringw\1\0\5\1\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\0019\1\5\0015\3\6\0=\0\a\0033\4\b\0B\1\3\1K\0\1\0\1¿\0\fdefault\1\0\1\vprompt\fgrep > \ninput\aui\f<cword>\vexpand\afn\bvim`\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\1¿\vsearch\1\0\0\fgrep > \ninput\afn\bvim\16grep_stringÆ\4\1\0\b\0\25\00003\0\0\0006\1\1\0'\3\2\0B\1\2\2\18\2\0\0'\4\3\0'\5\4\0009\6\5\0015\a\6\0B\2\5\1\18\2\0\0'\4\3\0'\5\a\0009\6\b\0015\a\t\0B\2\5\1\18\2\0\0'\4\n\0'\5\v\0003\6\f\0005\a\r\0B\2\5\1\18\2\0\0'\4\3\0'\5\v\0003\6\14\0005\a\15\0B\2\5\1\18\2\0\0'\4\3\0'\5\16\0009\6\17\0015\a\18\0B\2\5\1\18\2\0\0'\4\3\0'\5\19\0009\6\20\0015\a\21\0B\2\5\1\18\2\0\0'\4\3\0'\5\22\0009\6\23\0015\a\24\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\29Recent files [Telescope]\roldfiles\15<leader>or\1\0\1\tdesc\24Keymaps [Telescope]\fkeymaps\15<leader>ok\1\0\1\tdesc\21Help [Telescope]\14help_tags\14<leader>h\1\0\1\tdesc\29Project grep [Telescope]\0\1\0\1\tdesc\29Project grep [Telescope]\0\15<leader>os\6v\1\0\1\tdesc\26Git files [Telescope]\14git_files\15<leader>og\1\0\1\tdesc\27Find files [Telescope]\15find_files\15<leader>of\6n\22telescope.builtin\frequire\0\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nô\1\0\1\b\0\n\0\0146\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\3\0019\1\4\0019\3\5\0'\4\6\0'\5\a\0'\6\b\0005\a\t\0B\1\6\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\19<cmd>close<CR>\6q\6n\nbufnr\24nvim_buf_set_keymap\bapi\17startinsert!\bcmd\bvim0\0\1\4\0\3\0\0056\1\0\0009\1\1\1'\3\2\0B\1\2\1K\0\1\0\17startinsert!\bcmd\bvim$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\1¿\vtoggleå\1\0\0\3\0\a\1\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\3Ä6\0\4\0B\0\1\1X\0\3Ä6\0\5\0'\2\6\0B\0\2\1K\0\1\0 Lazygit is not installed!!!\nprint\20_lazygit_toggle\flazygit\15executable\afn\bvim\2È\2\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0\18\3\0\0009\1\5\0005\4\6\0005\5\a\0=\5\b\0043\5\t\0=\5\n\0043\5\v\0=\5\f\4B\1\3\0023\2\r\0007\2\14\0006\2\15\0009\2\16\0029\2\17\2'\4\18\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\25Lazygit [Toggleterm]\0\14<leader>l\6n\bset\vkeymap\bvim\20_lazygit_toggle\0\ron_close\0\fon_open\0\15float_opts\1\0\1\vborder\vdouble\1\0\4\bcmd\flazygit\bdir\fgit_dir\vhidden\2\14direction\nfloat\bnew\rTerminal\24toggleterm.terminal\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n¶\1\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\0045\5\n\0B\0\5\1K\0\1\0\1\0\1\tdesc\19Toggle Trouble\18TroubleToggle\bcmd\15<leader>od\6n\bset\vkeymap\bvim\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nÕ\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3B\1\2\0019\1\b\0005\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\bGit\6o\1\0\0\1\0\1\tname\fPlugins\rregister\fplugins\1\0\0\rspelling\1\0\0\1\0\1\fenabled\2\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/isaaki/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n«\2\0\1\f\0\n\1'\v\0\0\0X\1\2Ä+\0\2\0X\1\0Ä5\1\0\0006\2\1\0009\2\2\0029\2\3\2B\2\1\0026\3\4\0\18\5\2\0B\3\2\4H\6\23Ä\15\0\0\0X\b\aÄ6\b\1\0009\b\2\b9\b\5\b\18\n\a\0B\b\2\2\15\0\b\0X\t\14Ä6\b\1\0009\b\2\b9\b\6\b\18\n\a\0'\v\a\0B\b\3\2\6\b\b\0X\t\2Ä\14\0\b\0X\t\1Ä'\b\t\0008\t\b\1\22\t\0\t<\t\b\1F\6\3\3R\6Á\127L\1\2\0\vnormal\5\fbuftype\24nvim_buf_get_option\23nvim_buf_is_loaded\npairs\19nvim_list_bufs\bapi\bvim\1\0\b\rquickfix\3\0\fnowrite\3\0\vnofile\3\0\facwrite\3\0\vnormal\3\0\vprompt\3\0\thelp\3\0\rterminal\3\0\2ó\1\0\0\4\1\b\0\22-\0\0\0B\0\1\0029\1\0\0)\2\1\0\3\1\2\0X\1\bÄ6\1\1\0'\3\2\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\1X\1\aÄ6\1\1\0'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0\0¿\vBufDel\16Buffer quit\6q\bcmd\bvim\16Normal quit\nprint\vnormalô\1\0\0\4\1\b\0\22-\0\0\0B\0\1\0029\1\0\0)\2\1\0\3\1\2\0X\1\bÄ6\1\1\0'\3\2\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\1X\1\aÄ6\1\1\0'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0\0¿\fBufDel!\16Buffer quit\aq!\bcmd\bvim\16Normal quit\nprint\vnormal¡\3\1\0\a\0\25\00076\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0004\2\0\0B\0\2\0016\0\3\0'\2\6\0B\0\2\0029\0\5\0005\2\a\0B\0\2\0013\0\b\0006\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\f\0006\5\0\0009\5\r\0059\5\14\0055\6\15\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\16\0006\5\0\0009\5\r\0059\5\17\0055\6\18\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\19\0003\5\20\0005\6\21\0B\1\5\0016\1\0\0009\1\t\0019\1\n\1'\3\v\0'\4\22\0003\5\23\0005\6\24\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\19Delete! buffer\0\14<leader>Q\1\0\1\tdesc\18Delete buffer\0\14<leader>q\1\0\1\tdesc\16Prev buffer\nbprev\n<A-h>\1\0\1\tdesc\16Next buffer\nbnext\bcmd\n<A-l>\6n\bset\vkeymap\0\1\0\2\tquit\2\tnext\ttabs\vbufdel\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vneodev\frequire\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1Ä4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0¿\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1¿\1\0\1\tfull\2\15blame_line(\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\1¿\6~\rdiffthis”\4\1\1\t\0\27\00006\1\0\0009\1\1\0019\1\2\0013\2\3\0\18\3\2\0'\5\4\0'\6\5\0003\a\6\0005\b\a\0B\3\5\1\18\3\2\0'\5\4\0'\6\b\0003\a\t\0005\b\n\0B\3\5\1\18\3\2\0'\5\4\0'\6\v\0003\a\f\0005\b\r\0B\3\5\1\18\3\2\0'\5\4\0'\6\14\0009\a\15\0015\b\16\0B\3\5\1\18\3\2\0'\5\4\0'\6\17\0009\a\18\0015\b\19\0B\3\5\1\18\3\2\0'\5\4\0'\6\20\0003\a\21\0005\b\22\0B\3\5\1\18\3\2\0005\5\23\0'\6\24\0'\a\25\0005\b\26\0B\3\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\31Git select hunk [Gitsigns]#:<C-U>Gitsigns select_hunk<CR>\aih\1\3\0\0\6o\6x\1\0\1\tdesc\26Git diff ~ [Gitsigns]\0\15<leader>gD\1\0\1\tdesc\24Git diff [Gitsigns]\rdiffthis\15<leader>gd\1\0\1\tdesc%Git toggle blame line [Gitsigns]\30toggle_current_line_blame\15<leader>gB\1\0\1\tdesc\30Git blame line [Gitsigns]\0\15<leader>gb\1\0\2\texpr\2\tdesc\25Prev hunk [Gitsigns]\0\a[c\1\0\2\texpr\2\tdesc\25Next hunk [Gitsigns]\0\a]c\6n\0\rgitsigns\vloaded\fpackageP\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\1\0\0\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nÕ\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3B\1\2\0019\1\b\0005\3\n\0005\4\t\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\6g\1\0\1\tname\bGit\6o\1\0\0\1\0\1\tname\fPlugins\rregister\fplugins\1\0\0\rspelling\1\0\0\1\0\1\fenabled\2\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1¿\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1¿\rnav_fileê\4\1\0\b\0\25\00086\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0005\a\t\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0009\6\v\0015\a\f\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0005\a\15\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\16\0003\6\17\0005\a\18\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\22\0003\6\23\0005\a\24\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\21Mark 4 [Harpoon]\0\14<leader>4\1\0\1\tdesc\21Mark 3 [Harpoon]\0\14<leader>3\1\0\1\tdesc\21Mark 2 [Harpoon]\0\14<leader>2\1\0\1\tdesc\21Mark 1 [Harpoon]\0\14<leader>1\1\0\1\tdesc\26Toggle menu [Harpoon]\22toggle_quick_menu\14<leader>t\1\0\1\tdesc\23Add mark [Harpoon]\radd_file\14<leader>a\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\1K\0\1\0\tload\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: indent-tools.nvim
time([[Config for indent-tools.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\vconfig\17indent-tools\frequire\0", "config", "indent-tools.nvim")
time([[Config for indent-tools.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expand¨\1\0\1\3\3\4\0\25-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\15Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\bÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜\1276\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsﬂ\b\1\0\f\0@\0ç\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0009\3\4\0005\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\r\0009\a\n\0003\t\v\0005\n\f\0B\a\3\2=\a\14\0069\a\n\0003\t\15\0005\n\16\0B\a\3\2=\a\17\0069\a\n\0009\a\18\a)\t¸ˇB\a\2\2=\a\19\0069\a\n\0009\a\18\a)\t\4\0B\a\2\2=\a\20\0069\a\n\0009\a\21\aB\a\1\2=\a\22\0069\a\n\0009\a\23\aB\a\1\2=\a\24\0069\a\n\0009\a\25\a4\t\0\0B\a\2\2=\a\26\0069\a\n\0009\a\27\aB\a\1\2=\a\28\0069\a\n\0009\a\29\a5\t\30\0B\a\2\2=\a\31\0069\a\n\0009\a\21\a5\t\"\0009\n \0009\n!\n=\n#\tB\a\2\2=\a$\0069\a\n\0009\a\23\a5\t%\0009\n \0009\n!\n=\n#\tB\a\2\2=\a&\6=\6\n\0059\6'\0009\6(\0064\b\v\0005\t)\0>\t\1\b5\t*\0>\t\2\b5\t+\0>\t\3\b5\t,\0>\t\4\b5\t-\0>\t\5\b5\t.\0>\t\6\b5\t/\0>\t\a\b5\t0\0>\t\b\b5\t1\0>\t\t\b5\t2\0005\n4\0003\v3\0=\v5\n=\n6\t>\t\n\bB\6\2\2=\6(\5B\3\2\0019\3\4\0009\0037\0035\0058\0005\6:\0009\a\n\0009\a9\a9\a7\aB\a\1\2=\a\n\0069\a'\0009\a(\a4\t\3\0005\n;\0>\n\1\tB\a\2\2=\a(\6B\3\3\0019\3\4\0009\0037\3'\5<\0005\6=\0009\a\n\0009\a9\a9\a7\aB\a\1\2=\a\n\0069\a'\0009\a(\a4\t\3\0005\n>\0>\n\1\t5\n?\0>\n\2\tB\a\2\2=\a(\6B\3\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\1\3\0\0\6/\6?\fcmdline\voption\15get_bufnrs\1\0\0\0\1\0\1\tname\vbuffer\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\bgit\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\forgmode\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\fsources\vconfig\t<up>\1\0\0\v<down>\rbehavior\1\0\0\vSelect\19SelectBehavior\t<cr>\1\0\1\vselect\1\fconfirm\n<m-x>\nabort\14<c-space>\rcomplete\n<c-p>\21select_prev_item\n<c-n>\21select_next_item\n<c-f>\n<c-b>\16scroll_docs\f<s-tab>\1\4\0\0\6i\6s\6x\0\n<tab>\1\0\0\1\4\0\0\6i\6s\6x\0\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\ny\0\4\n\0\6\0\18\n\3\0\0X\4\aÄ6\4\0\0009\4\1\4'\6\2\0\18\a\3\0005\b\3\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\bset\vkeymap\1\0\1\vsilent\1\tkeep\15tbl_extend\bvim0\0\1\2\0\2\0\a9\1\0\0\6\1\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\fnull-ls\tnameZ\1\1\5\0\b\0\n6\1\0\0009\1\1\0019\1\2\0019\1\3\0015\3\5\0003\4\4\0=\4\6\3=\0\a\3B\1\2\1K\0\1\0\nbufnr\vfilter\1\0\1\nasync\2\0\vformat\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16declaration\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim5\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\15open_float\15diagnostic\bvim1\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\nhover\bbuf\blsp\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_next\15diagnostic\bvim4\0\0\2\0\3\0\0056\0\0\0009\0\1\0009\0\2\0B\0\1\1K\0\1\0\14goto_prev\15diagnostic\bvim2\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim7\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim\27\0\0\3\2\0\0\4-\0\0\0-\2\1\0B\0\2\1K\0\1\0\1\0\1¿”\5\1\2\b\2#\0O-\2\0\0'\4\0\0'\5\1\0003\6\2\0005\a\3\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\5\0003\6\6\0005\a\a\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\b\0003\6\t\0005\a\n\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\v\0003\6\f\0005\a\r\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\14\0003\6\15\0005\a\16\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\17\0003\6\18\0005\a\19\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\20\0003\6\21\0005\a\22\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\23\0003\6\24\0005\a\25\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\26\0003\6\27\0005\a\28\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5\29\0003\6\30\0005\a\31\0=\1\4\aB\2\5\1-\2\0\0'\4\0\0'\5 \0003\6!\0005\a\"\0=\1\4\aB\2\5\0012\0\0ÄK\0\1\0\0¿\1¿\1\0\1\tdesc\26Format document [LSP]\0\14<leader>f\1\0\1\tdesc\21References [LSP]\0\15<leader>oR\1\0\1\tdesc\22Code action [LSP]\0\15<leader>oc\1\0\1\tdesc\22Code action [LSP]\0\t<F4>\1\0\1\tdesc\17Rename [LSP]\0\t<F2>\1\0\1\tdesc\31Goto prev diagnostic [LSP]\0\a]d\1\0\1\tdesc\31Goto next diagnostic [LSP]\0\a[d\1\0\1\tdesc\16Hover [LSP]\0\6K\1\0\1\tdesc\"Open diagnostics window [LSP]\0\agl\1\0\1\tdesc\26Goto definition [LSP]\0\agd\vbuffer\1\0\1\tdesc\27Goto declaration [LSP]\0\agD\6nÃ\3\1\0\v\0\28\0.6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0003\1\5\0006\2\6\0'\4\a\0B\2\2\0029\3\b\0025\5\17\0004\6\3\0009\a\t\0029\a\n\a9\a\v\a9\a\f\a5\t\14\0005\n\r\0=\n\15\tB\a\2\2>\a\1\0069\a\t\0029\a\n\a9\a\16\a>\a\2\6=\6\18\5B\3\2\0016\3\6\0'\5\19\0B\3\2\0029\4\20\3'\6\21\0B\4\2\0019\4\22\0035\6\23\0B\4\2\0019\4\24\0035\6\25\0B\4\2\0019\4\26\0033\6\27\0B\4\2\0019\4\b\3B\4\1\0012\0\0ÄK\0\1\0\0\14on_attach\1\a\0\0\rtsserver\nvolar\vlua_ls\fpyright\thtml\vjsonls\21ensure_installed\1\0\1\20set_lsp_keymaps\1\20set_preferences\14lsp-compe\vpreset\rlsp-zero\fsources\1\0\0\vstylua\15extra_args\1\0\0\1\2\0\0\19--single-quote\twith\14prettierd\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0\0\byes\15signcolumn\bopt\bvim\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\ny\0\4\n\0\6\0\18\n\3\0\0X\4\aÄ6\4\0\0009\4\1\4'\6\2\0\18\a\3\0005\b\3\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\bset\vkeymap\1\0\1\vsilent\1\tkeep\15tbl_extend\bvim7\0\1\4\1\3\0\6-\1\0\0009\1\0\0015\3\1\0=\0\2\3B\1\2\1K\0\1\0\0\0\vsearch\1\0\0\16grep_stringw\1\0\5\1\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\4\0019\1\5\0015\3\6\0=\0\a\0033\4\b\0B\1\3\1K\0\1\0\1¿\0\fdefault\1\0\1\vprompt\fgrep > \ninput\aui\f<cword>\vexpand\afn\bvim`\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\1¿\vsearch\1\0\0\fgrep > \ninput\afn\bvim\16grep_stringÆ\4\1\0\b\0\25\00003\0\0\0006\1\1\0'\3\2\0B\1\2\2\18\2\0\0'\4\3\0'\5\4\0009\6\5\0015\a\6\0B\2\5\1\18\2\0\0'\4\3\0'\5\a\0009\6\b\0015\a\t\0B\2\5\1\18\2\0\0'\4\n\0'\5\v\0003\6\f\0005\a\r\0B\2\5\1\18\2\0\0'\4\3\0'\5\v\0003\6\14\0005\a\15\0B\2\5\1\18\2\0\0'\4\3\0'\5\16\0009\6\17\0015\a\18\0B\2\5\1\18\2\0\0'\4\3\0'\5\19\0009\6\20\0015\a\21\0B\2\5\1\18\2\0\0'\4\3\0'\5\22\0009\6\23\0015\a\24\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\29Recent files [Telescope]\roldfiles\15<leader>or\1\0\1\tdesc\24Keymaps [Telescope]\fkeymaps\15<leader>ok\1\0\1\tdesc\21Help [Telescope]\14help_tags\14<leader>h\1\0\1\tdesc\29Project grep [Telescope]\0\1\0\1\tdesc\29Project grep [Telescope]\0\15<leader>os\6v\1\0\1\tdesc\26Git files [Telescope]\14git_files\15<leader>og\1\0\1\tdesc\27Find files [Telescope]\15find_files\15<leader>of\6n\22telescope.builtin\frequire\0\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nΩ\1\0\0\3\0\t\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0\15\0\0\0X\1\vÄ6\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\6Ä6\0\0\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\vloaded\19telescope.nvim\19packer_plugins\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\voption\1\0\0\1\0\1\ntheme\fonedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nô\1\0\1\b\0\n\0\0146\1\0\0009\1\1\1'\3\2\0B\1\2\0016\1\0\0009\1\3\0019\1\4\0019\3\5\0'\4\6\0'\5\a\0'\6\b\0005\a\t\0B\1\6\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\19<cmd>close<CR>\6q\6n\nbufnr\24nvim_buf_set_keymap\bapi\17startinsert!\bcmd\bvim0\0\1\4\0\3\0\0056\1\0\0009\1\1\1'\3\2\0B\1\2\1K\0\1\0\17startinsert!\bcmd\bvim$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\1¿\vtoggleå\1\0\0\3\0\a\1\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\3Ä6\0\4\0B\0\1\1X\0\3Ä6\0\5\0'\2\6\0B\0\2\1K\0\1\0 Lazygit is not installed!!!\nprint\20_lazygit_toggle\flazygit\15executable\afn\bvim\2È\2\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0\18\3\0\0009\1\5\0005\4\6\0005\5\a\0=\5\b\0043\5\t\0=\5\n\0043\5\v\0=\5\f\4B\1\3\0023\2\r\0007\2\14\0006\2\15\0009\2\16\0029\2\17\2'\4\18\0'\5\19\0003\6\20\0005\a\21\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc\25Lazygit [Toggleterm]\0\14<leader>l\6n\bset\vkeymap\bvim\20_lazygit_toggle\0\ron_close\0\fon_open\0\15float_opts\1\0\1\vborder\vdouble\1\0\4\bcmd\flazygit\bdir\fgit_dir\vhidden\2\14direction\nfloat\bnew\rTerminal\24toggleterm.terminal\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nã\3\0\0\5\0\16\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0006\4\6\0009\4\a\0049\4\b\4\19\4\4\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0\14\0\0\0X\0\6Ä6\0\0\0'\2\14\0B\0\2\0029\0\2\0005\2\15\0B\0\2\1K\0\1\0\1\0\1\15trim_scope\ninner\23treesitter-context\26context_commentstring\1\0\1\venable\2\14highlight\venable\1\0\1&additional_vim_regex_highlighting\1\vvscode\6g\bvim\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\b\0\0\thelp\15javascript\15typescript\bvue\6c\blua\trust\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nˇ\1\0\0\b\0\f\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0\15\0\0\0X\1\18Ä6\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\rÄ6\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\a\0B\1\2\0029\2\b\1\18\4\2\0009\2\t\2'\5\n\0009\6\v\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\vloaded\rnvim-cmp\19packer_plugins\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n¶\1\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\0045\5\n\0B\0\5\1K\0\1\0\1\0\1\tdesc\19Toggle Trouble\18TroubleToggle\bcmd\15<leader>od\6n\bset\vkeymap\bvim\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: eyeliner.nvim
time([[Config for eyeliner.nvim]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21highlight_on_key\2\nsetup\reyeliner\frequire\0", "config", "eyeliner.nvim")
time([[Config for eyeliner.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

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
