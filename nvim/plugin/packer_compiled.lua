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
local package_path_str = "/home/wertual/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/wertual/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/wertual/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/wertual/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/wertual/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nΩ\1\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\6\0\0&NN   NN VV     VV iii            &NNN  NN VV     VV     mm mm mmmm &NN N NN  VV   VV  iii mmm  mm  mm&NN  NNN   VV VV   iii mmm  mm  mm&NN   NN    VVV    iii mmm  mm  mmÊ\1\0\0\b\0\r\0\0286\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\2'\2\6\0\18\3\0\0'\4\a\0\18\5\1\0&\2\5\0026\3\b\0'\5\t\0B\3\2\0026\4\n\0009\4\v\4\18\6\3\0B\6\1\2'\a\f\0B\4\3\2\18\5\2\0'\6\f\0\18\a\4\0&\5\a\5L\5\2\0\6\n\vconcat\ntable\18alpha.fortune\frequire\18 plugins Ôòö \6\t\26%d-%m-%Y Ôòö %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim∑\4\1\0\v\0\30\1I6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0AÄ6\2\1\0'\4\3\0B\2\2\0023\3\4\0009\4\5\0029\4\6\4\18\5\3\0B\5\1\2=\5\a\0049\4\5\0029\4\b\0044\5\4\0009\6\t\2'\b\n\0'\t\v\0'\n\f\0B\6\4\2>\6\1\0059\6\t\2'\b\r\0'\t\14\0'\n\15\0B\6\4\2>\6\2\0059\6\t\2'\b\16\0'\t\17\0'\n\18\0B\6\4\0?\6\0\0=\5\a\0043\4\19\0009\5\5\0029\5\20\5\18\6\4\0B\6\1\2=\6\a\0059\5\5\0029\5\20\0059\5\21\5'\6\23\0=\6\22\0059\5\5\0029\5\6\0059\5\21\5'\6\24\0=\6\22\0059\5\5\0029\5\b\0059\5\21\5'\6\25\0=\6\22\0059\5\5\0029\5\b\0059\5\21\5'\6\27\0=\6\26\0059\5\21\0029\5\21\5+\6\2\0=\6\28\0059\5\29\0019\a\21\2B\5\2\1K\0\1\0K\0\1\0\nsetup\14noautocmd\tType\16hl_shortcut\rFunction\fInclude\rConstant\ahl\topts\vfooter\0\f:qa<CR>\21Ôôô  Quit Neovim\6q\21:e $MYVIMRC <CR>\23Óòï  Configuration\6c :ene <BAR> startinsert <CR>\18ÔÖõ  New file\6e\vbutton\fbuttons\bval\vheader\fsection\0\27alpha.themes.dashboard\nalpha\frequire\npcall\aÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÍ\5\0\0\b\0&\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\n\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\0\0=\5\t\4=\4\v\0035\4\r\0005\5\f\0=\5\14\0045\5\15\0=\5\16\0044\5\3\0005\6\17\0>\6\1\0055\6\20\0009\a\18\0>\a\1\0069\a\19\0=\a\21\0065\a\22\0=\a\23\6>\6\2\5=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\14\0044\5\0\0=\5\16\0045\5!\0=\5\24\0045\5\"\0=\5\26\0044\5\0\0=\5\28\0044\5\0\0=\5\30\4=\4#\0034\4\0\0=\4$\0034\4\0\0=\4%\3B\1\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\ncolor\1\0\1\afg\f#f3ca28\tcond\1\0\0\17is_available\17get_location\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\3\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\15nvim-navic\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\nd\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\25colorscheme material\bcmd\15deep ocean\19material_style\6g\bvim\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  neogit = {
    config = { "\27LJ\2\nN\0\0\5\0\4\0\v6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0014\4\0\0B\2\2\1K\0\1\0\nsetup\vneogit\frequire\npcall\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nÊ\1\0\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0'\4\4\0X\5\1Ä'\4\5\0=\4\6\3=\3\b\2B\0\2\1K\0\1\0\foptions\1\0\0\20separator_style\17padded_slant\nslant\1\0\5\fnumbers\tnone\20show_close_icon\1\28show_buffer_close_icons\1\24show_tab_indicators\2\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua",
    wants = { "nvim-web-devicons" }
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim”\a\1\0\v\0006\0Å\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t¸ˇB\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\28\0009\n\26\0009\n\27\n=\n\29\tB\a\2\2=\a\30\0069\a\14\0009\a\31\a5\t \0009\n\26\0009\n\27\n=\n\29\tB\a\2\2=\a!\0069\a\14\0009\a\"\a5\t#\0B\a\2\2=\a$\6B\4\2\2=\4\14\0039\4\b\0009\4%\0044\6\3\0005\a&\0>\a\1\0065\a'\0>\a\2\0064\a\3\0005\b(\0>\b\1\aB\4\3\2=\4%\3B\1\2\0019\1\2\0009\1)\1'\3*\0005\4-\0009\5\b\0009\5%\0054\a\3\0005\b+\0>\b\1\a4\b\3\0005\t,\0>\t\1\bB\5\3\2=\5%\4B\1\3\0019\1\2\0009\1.\0015\3/\0005\0040\0009\5\14\0009\5\15\0059\5.\5B\5\1\2=\5\14\0044\5\3\0005\0061\0>\6\1\5=\5%\4B\1\3\0019\1\2\0009\1.\1'\0032\0005\0043\0009\5\14\0009\5\15\0059\5.\5B\5\1\2=\5\14\0049\5\b\0009\5%\0054\a\3\0005\b4\0>\b\1\a4\b\3\0005\t5\0>\t\1\bB\5\3\2=\5%\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\1\fconfirm\n<Tab>\1\0\0\21select_next_item\f<S-Tab>\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_prev_item\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nhover\19dap.ui.widgets\frequire>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fpreview\19dap.ui.widgets\frequireP\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\3\3\0B\1\2\1K\0\1\0\vframes\19centered_float\19dap.ui.widgets\frequireP\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\3\3\0B\1\2\1K\0\1\0\vscopes\19centered_float\19dap.ui.widgets\frequireƒ\14\1\0\t\0Y\1¥\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\4\5\0B\2\2\2\14\0\2\0X\3\6Ä6\2\3\0009\2\4\2'\4\6\0B\2\2\2'\3\a\0&\2\3\0026\3\b\0009\3\t\0039\3\n\3'\5\v\0005\6\f\0B\3\3\0016\3\b\0009\3\t\0039\3\n\3'\5\r\0005\6\14\0B\3\3\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\18\0009\a\19\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\20\0009\a\21\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\22\0009\a\23\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\24\0009\a\25\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\26\0009\a\27\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\28\0009\a\29\0B\3\4\0016\3\b\0009\3\15\0039\3\16\0035\5\30\0'\6\31\0003\a \0B\3\4\0016\3\b\0009\3\15\0039\3\16\0035\5!\0'\6\"\0003\a#\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6$\0003\a%\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6&\0003\a'\0B\3\4\0019\3(\0005\4*\0\18\5\2\0'\6+\0&\5\6\5=\5,\0045\5-\0=\5.\4=\4)\0036\3\0\0'\5/\0B\3\2\0029\0030\3+\5\0\0005\0062\0005\a1\0=\a)\6B\3\3\0019\0033\0015\0055\0005\0064\0=\0066\0055\0068\0005\a7\0=\a9\6=\6:\0054\6\0\0=\6;\0056\6\b\0009\6\t\0069\6<\6'\b=\0B\6\2\2\b\6\0\0X\6\2Ä+\6\1\0X\a\1Ä+\6\2\0=\6>\0054\6\3\0005\a@\0005\b?\0=\bA\a>\a\1\0065\aC\0005\bB\0=\bA\a>\a\2\6=\6D\0055\6E\0005\aF\0=\a6\6=\6G\0055\6H\0005\aJ\0005\bI\0=\bK\a=\a:\6=\6L\0055\6M\0=\6N\0055\6O\0=\6P\5B\3\2\0019\3Q\0009\3R\0039\3S\0039\4U\1=\4T\0039\3Q\0009\3V\0039\3W\0039\4K\1=\4T\0039\3Q\0009\3V\0039\3X\0039\4K\1=\4T\3K\0\1\0\17event_exited\21event_terminated\vbefore\topen\17dapui_config\22event_initialized\nafter\14listeners\vrender\1\0\1\20max_value_lines\3d\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\rcontrols\1\0\b\14terminate\b‚ñ°\rstep_out\bÔöª\tplay\bÔÅã\rrun_last\b‚Üª\14step_into\bÔö∫\14step_back\bÔÅà\14step_over\bÔöº\npause\bÔÅå\1\0\2\felement\trepl\fenabled\2\flayouts\1\0\2\rposition\nright\tsize\4ö≥ÊÃ\tô≥Ê˛\3\1\2\0\0\trepl\relements\1\0\2\rposition\vbottom\tsize\4\0ÄÄ¿˛\3\1\3\0\0\fwatches\vscopes\17expand_lines\rnvim-0.7\bhas\21element_mappings\rmappings\vexpand\1\0\5\vremove\6d\trepl\6r\vtoggle\6t\topen\6o\tedit\6e\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\3\rexpanded\bÔëº\18current_frame\b‚ñ∏\14collapsed\bÔë†\nsetup\1\0\0\1\2\0\0\acs\18load_launchjs\19dap.ext.vscode\targs\1\2\0\0\25--interpreter=vscode\fcommand%/debuggers/netcoredbg/netcoredbg\1\0\1\ttype\15executable\fcoreclr\radapters\0\15<Leader>ds\0\15<Leader>df\0\15<Leader>dp\1\3\0\0\6n\6v\0\15<Leader>dh\1\3\0\0\6n\6v\22toggle_breakpoint\14<leader>b\rstep_out\n<F12>\14step_into\n<F11>\14step_over\n<F10>\14terminate\15<Shift-F5>\rcontinue\t<F5>\6n\bset\vkeymap\1\0\4\vlinehl\5\ttext\v‚ñ∂Ô∏è\nnumhl\5\vtexthl\5\15DapStopped\1\0\4\vlinehl\5\ttext\tüü•\nnumhl\5\vtexthl\5\18DapBreakpoint\16sign_define\afn\bvim\18/.local/share\tHOME\18XDG_DATA_HOME\vgetenv\aos\ndapui\bdap\frequire\2\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint@\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\nasync\2\vformat\bbuf\blsp\bvim•\b\1\2\t\0+\0û\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0003\a%\0\18\b\2\0B\3\5\0019\3&\0009\3'\3\15\0\3\0X\4\aÄ6\3(\0'\5)\0B\3\2\0029\3*\3\18\5\0\0\18\6\1\0B\3\3\1K\0\1\0\vattach\15nvim-navic\frequire\27documentSymbolProvider\24server_capabilities\0\17<space><C-f>\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim“\v\1\0\16\0N\0º\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0006\6\3\0009\6\b\0069\6\v\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\r\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\3\0009\6\b\0069\6\15\6\18\a\1\0B\2\5\0013\2\16\0004\3\5\0005\4\17\0>\4\1\0035\4\18\0>\4\2\0035\4\19\0>\4\3\0035\4\20\0>\4\4\0036\4\21\0\18\6\3\0B\4\2\4X\a\fÄ6\t\3\0009\t\22\t9\t\23\t9\v\24\b5\f\25\0009\r\24\b=\r\26\f9\r\27\b=\r\27\f9\r\24\b=\r\28\fB\t\3\1E\a\3\3R\aÚ\1275\4\29\0006\5\0\0'\a\30\0B\5\2\0029\5\31\5B\5\1\0029\6 \0009\6!\0065\b\"\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6&\0009\6!\0065\b'\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6(\0009\6!\0065\b)\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6*\0009\6!\0065\b+\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6,\0009\6!\0065\b-\0=\2#\b=\4$\b=\5%\b5\t?\0005\n3\0005\v.\0006\f\3\0009\f/\f6\0140\0009\0141\14'\0152\0B\f\3\2=\f1\v=\v4\n5\v6\0005\f5\0=\f7\v=\v8\n5\v<\0004\f\0\b6\r\3\0009\r\22\r9\r9\r'\15:\0B\r\2\2+\14\2\0<\14\r\f6\r\3\0009\r\22\r9\r9\r'\15;\0B\r\2\2+\14\2\0<\14\r\f=\f=\v=\v>\n=\n@\t=\tA\bB\6\2\0019\6B\0009\6!\0065\bC\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6D\0009\6!\0065\bE\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6F\0009\6!\0065\bG\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6H\0009\6!\0065\bI\0=\2#\b=\4$\b=\5%\b5\tJ\0004\n\0\0=\nK\t=\tA\bB\6\2\0019\6L\0009\6!\0065\bM\0=\2#\b=\4$\b=\5%\bB\6\2\1K\0\1\0\1\0\0\27kotlin_language_server\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\14csharp_ls\1\0\0\rtsserver\1\0\0\nvimls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\1\0\0\vlua_ls\1\0\0\fpyright\1\0\0\vjsonls\1\0\0\thtml\17capabilities\nflags\14on_attach\1\0\0\nsetup\ngopls\25default_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3ñ\1\nnumhl\ttext\vtexthl\1\0\0\tname\16sign_define\afn\vipairs\1\0\2\ttext\bÔëâ\tname\23DiagnosticSignInfo\1\0\2\ttext\bÔ†µ\tname\23DiagnosticSignHint\1\0\2\ttext\bÔî©\tname\23DiagnosticSignWarn\1\0\2\ttext\bÔôô\tname\24DiagnosticSignError\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nå\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\2\21ensure_installed\ball\17sync_install\1\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\ne\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0¿\17default_text\1\0\0\f<cword>\vexpand\afn\bvim\14live_grep\2\1\0\a\0\21\0/6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0003\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\0\0'\3\14\0B\1\2\0029\1\15\0015\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\20\3B\1\2\0012\0\0ÄK\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\bbin\bobj\nsetup\14telescope\14help_tags\r<Space>h\fbuffers\r<Space>b\0\r<Space>g\15find_files\r<Space>f\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/wertual/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nhover\19dap.ui.widgets\frequire>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fpreview\19dap.ui.widgets\frequireP\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\3\3\0B\1\2\1K\0\1\0\vframes\19centered_float\19dap.ui.widgets\frequireP\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\3\3\0B\1\2\1K\0\1\0\vscopes\19centered_float\19dap.ui.widgets\frequireƒ\14\1\0\t\0Y\1¥\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\4\5\0B\2\2\2\14\0\2\0X\3\6Ä6\2\3\0009\2\4\2'\4\6\0B\2\2\2'\3\a\0&\2\3\0026\3\b\0009\3\t\0039\3\n\3'\5\v\0005\6\f\0B\3\3\0016\3\b\0009\3\t\0039\3\n\3'\5\r\0005\6\14\0B\3\3\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\18\0009\a\19\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\20\0009\a\21\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\22\0009\a\23\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\24\0009\a\25\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\26\0009\a\27\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6\28\0009\a\29\0B\3\4\0016\3\b\0009\3\15\0039\3\16\0035\5\30\0'\6\31\0003\a \0B\3\4\0016\3\b\0009\3\15\0039\3\16\0035\5!\0'\6\"\0003\a#\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6$\0003\a%\0B\3\4\0016\3\b\0009\3\15\0039\3\16\3'\5\17\0'\6&\0003\a'\0B\3\4\0019\3(\0005\4*\0\18\5\2\0'\6+\0&\5\6\5=\5,\0045\5-\0=\5.\4=\4)\0036\3\0\0'\5/\0B\3\2\0029\0030\3+\5\0\0005\0062\0005\a1\0=\a)\6B\3\3\0019\0033\0015\0055\0005\0064\0=\0066\0055\0068\0005\a7\0=\a9\6=\6:\0054\6\0\0=\6;\0056\6\b\0009\6\t\0069\6<\6'\b=\0B\6\2\2\b\6\0\0X\6\2Ä+\6\1\0X\a\1Ä+\6\2\0=\6>\0054\6\3\0005\a@\0005\b?\0=\bA\a>\a\1\0065\aC\0005\bB\0=\bA\a>\a\2\6=\6D\0055\6E\0005\aF\0=\a6\6=\6G\0055\6H\0005\aJ\0005\bI\0=\bK\a=\a:\6=\6L\0055\6M\0=\6N\0055\6O\0=\6P\5B\3\2\0019\3Q\0009\3R\0039\3S\0039\4U\1=\4T\0039\3Q\0009\3V\0039\3W\0039\4K\1=\4T\0039\3Q\0009\3V\0039\3X\0039\4K\1=\4T\3K\0\1\0\17event_exited\21event_terminated\vbefore\topen\17dapui_config\22event_initialized\nafter\14listeners\vrender\1\0\1\20max_value_lines\3d\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\rcontrols\1\0\b\14terminate\b‚ñ°\rstep_out\bÔöª\tplay\bÔÅã\rrun_last\b‚Üª\14step_into\bÔö∫\14step_back\bÔÅà\14step_over\bÔöº\npause\bÔÅå\1\0\2\felement\trepl\fenabled\2\flayouts\1\0\2\rposition\nright\tsize\4ö≥ÊÃ\tô≥Ê˛\3\1\2\0\0\trepl\relements\1\0\2\rposition\vbottom\tsize\4\0ÄÄ¿˛\3\1\3\0\0\fwatches\vscopes\17expand_lines\rnvim-0.7\bhas\21element_mappings\rmappings\vexpand\1\0\5\vremove\6d\trepl\6r\vtoggle\6t\topen\6o\tedit\6e\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\3\rexpanded\bÔëº\18current_frame\b‚ñ∏\14collapsed\bÔë†\nsetup\1\0\0\1\2\0\0\acs\18load_launchjs\19dap.ext.vscode\targs\1\2\0\0\25--interpreter=vscode\fcommand%/debuggers/netcoredbg/netcoredbg\1\0\1\ttype\15executable\fcoreclr\radapters\0\15<Leader>ds\0\15<Leader>df\0\15<Leader>dp\1\3\0\0\6n\6v\0\15<Leader>dh\1\3\0\0\6n\6v\22toggle_breakpoint\14<leader>b\rstep_out\n<F12>\14step_into\n<F11>\14step_over\n<F10>\14terminate\15<Shift-F5>\rcontinue\t<F5>\6n\bset\vkeymap\1\0\4\vlinehl\5\ttext\v‚ñ∂Ô∏è\nnumhl\5\vtexthl\5\15DapStopped\1\0\4\vlinehl\5\ttext\tüü•\nnumhl\5\vtexthl\5\18DapBreakpoint\16sign_define\afn\bvim\18/.local/share\tHOME\18XDG_DATA_HOME\vgetenv\aos\ndapui\bdap\frequire\2\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0¿\17default_text\1\0\0\f<cword>\vexpand\afn\bvim\14live_grep\2\1\0\a\0\21\0/6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0003\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0009\5\v\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0016\1\0\0'\3\14\0B\1\2\0029\1\15\0015\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\20\3B\1\2\0012\0\0ÄK\0\1\0\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\bbin\bobj\nsetup\14telescope\14help_tags\r<Space>h\fbuffers\r<Space>b\0\r<Space>g\15find_files\r<Space>f\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint@\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\nasync\2\vformat\bbuf\blsp\bvim•\b\1\2\t\0+\0û\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0003\a%\0\18\b\2\0B\3\5\0019\3&\0009\3'\3\15\0\3\0X\4\aÄ6\3(\0'\5)\0B\3\2\0029\3*\3\18\5\0\0\18\6\1\0B\3\3\1K\0\1\0\vattach\15nvim-navic\frequire\27documentSymbolProvider\24server_capabilities\0\17<space><C-f>\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim“\v\1\0\16\0N\0º\0016\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0006\6\3\0009\6\b\0069\6\v\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\r\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\3\0009\6\b\0069\6\15\6\18\a\1\0B\2\5\0013\2\16\0004\3\5\0005\4\17\0>\4\1\0035\4\18\0>\4\2\0035\4\19\0>\4\3\0035\4\20\0>\4\4\0036\4\21\0\18\6\3\0B\4\2\4X\a\fÄ6\t\3\0009\t\22\t9\t\23\t9\v\24\b5\f\25\0009\r\24\b=\r\26\f9\r\27\b=\r\27\f9\r\24\b=\r\28\fB\t\3\1E\a\3\3R\aÚ\1275\4\29\0006\5\0\0'\a\30\0B\5\2\0029\5\31\5B\5\1\0029\6 \0009\6!\0065\b\"\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6&\0009\6!\0065\b'\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6(\0009\6!\0065\b)\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6*\0009\6!\0065\b+\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6,\0009\6!\0065\b-\0=\2#\b=\4$\b=\5%\b5\t?\0005\n3\0005\v.\0006\f\3\0009\f/\f6\0140\0009\0141\14'\0152\0B\f\3\2=\f1\v=\v4\n5\v6\0005\f5\0=\f7\v=\v8\n5\v<\0004\f\0\b6\r\3\0009\r\22\r9\r9\r'\15:\0B\r\2\2+\14\2\0<\14\r\f6\r\3\0009\r\22\r9\r9\r'\15;\0B\r\2\2+\14\2\0<\14\r\f=\f=\v=\v>\n=\n@\t=\tA\bB\6\2\0019\6B\0009\6!\0065\bC\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6D\0009\6!\0065\bE\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6F\0009\6!\0065\bG\0=\2#\b=\4$\b=\5%\bB\6\2\0019\6H\0009\6!\0065\bI\0=\2#\b=\4$\b=\5%\b5\tJ\0004\n\0\0=\nK\t=\tA\bB\6\2\0019\6L\0009\6!\0065\bM\0=\2#\b=\4$\b=\5%\bB\6\2\1K\0\1\0\1\0\0\27kotlin_language_server\18rust-analyzer\1\0\0\1\0\0\18rust_analyzer\1\0\0\14csharp_ls\1\0\0\rtsserver\1\0\0\nvimls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\1\0\0\vlua_ls\1\0\0\fpyright\1\0\0\vjsonls\1\0\0\thtml\17capabilities\nflags\14on_attach\1\0\0\nsetup\ngopls\25default_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3ñ\1\nnumhl\ttext\vtexthl\1\0\0\tname\16sign_define\afn\vipairs\1\0\2\ttext\bÔëâ\tname\23DiagnosticSignInfo\1\0\2\ttext\bÔ†µ\tname\23DiagnosticSignHint\1\0\2\ttext\bÔî©\tname\23DiagnosticSignWarn\1\0\2\ttext\bÔôô\tname\24DiagnosticSignError\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim”\a\1\0\v\0006\0Å\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t¸ˇB\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\28\0009\n\26\0009\n\27\n=\n\29\tB\a\2\2=\a\30\0069\a\14\0009\a\31\a5\t \0009\n\26\0009\n\27\n=\n\29\tB\a\2\2=\a!\0069\a\14\0009\a\"\a5\t#\0B\a\2\2=\a$\6B\4\2\2=\4\14\0039\4\b\0009\4%\0044\6\3\0005\a&\0>\a\1\0065\a'\0>\a\2\0064\a\3\0005\b(\0>\b\1\aB\4\3\2=\4%\3B\1\2\0019\1\2\0009\1)\1'\3*\0005\4-\0009\5\b\0009\5%\0054\a\3\0005\b+\0>\b\1\a4\b\3\0005\t,\0>\t\1\bB\5\3\2=\5%\4B\1\3\0019\1\2\0009\1.\0015\3/\0005\0040\0009\5\14\0009\5\15\0059\5.\5B\5\1\2=\5\14\0044\5\3\0005\0061\0>\6\1\5=\5%\4B\1\3\0019\1\2\0009\1.\1'\0032\0005\0043\0009\5\14\0009\5\15\0059\5.\5B\5\1\2=\5\14\0049\5\b\0009\5%\0054\a\3\0005\b4\0>\b\1\a4\b\3\0005\t5\0>\t\1\bB\5\3\2=\5%\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\1\3\0\0\6/\6?\fcmdline\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fcmp_git\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\1\fconfirm\n<Tab>\1\0\0\21select_next_item\f<S-Tab>\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_prev_item\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nΩ\1\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\6\0\0&NN   NN VV     VV iii            &NNN  NN VV     VV     mm mm mmmm &NN N NN  VV   VV  iii mmm  mm  mm&NN  NNN   VV VV   iii mmm  mm  mm&NN   NN    VVV    iii mmm  mm  mmÊ\1\0\0\b\0\r\0\0286\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\2'\2\6\0\18\3\0\0'\4\a\0\18\5\1\0&\2\5\0026\3\b\0'\5\t\0B\3\2\0026\4\n\0009\4\v\4\18\6\3\0B\6\1\2'\a\f\0B\4\3\2\18\5\2\0'\6\f\0\18\a\4\0&\5\a\5L\5\2\0\6\n\vconcat\ntable\18alpha.fortune\frequire\18 plugins Ôòö \6\t\26%d-%m-%Y Ôòö %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim∑\4\1\0\v\0\30\1I6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0AÄ6\2\1\0'\4\3\0B\2\2\0023\3\4\0009\4\5\0029\4\6\4\18\5\3\0B\5\1\2=\5\a\0049\4\5\0029\4\b\0044\5\4\0009\6\t\2'\b\n\0'\t\v\0'\n\f\0B\6\4\2>\6\1\0059\6\t\2'\b\r\0'\t\14\0'\n\15\0B\6\4\2>\6\2\0059\6\t\2'\b\16\0'\t\17\0'\n\18\0B\6\4\0?\6\0\0=\5\a\0043\4\19\0009\5\5\0029\5\20\5\18\6\4\0B\6\1\2=\6\a\0059\5\5\0029\5\20\0059\5\21\5'\6\23\0=\6\22\0059\5\5\0029\5\6\0059\5\21\5'\6\24\0=\6\22\0059\5\5\0029\5\b\0059\5\21\5'\6\25\0=\6\22\0059\5\5\0029\5\b\0059\5\21\5'\6\27\0=\6\26\0059\5\21\0029\5\21\5+\6\2\0=\6\28\0059\5\29\0019\a\21\2B\5\2\1K\0\1\0K\0\1\0\nsetup\14noautocmd\tType\16hl_shortcut\rFunction\fInclude\rConstant\ahl\topts\vfooter\0\f:qa<CR>\21Ôôô  Quit Neovim\6q\21:e $MYVIMRC <CR>\23Óòï  Configuration\6c :ene <BAR> startinsert <CR>\18ÔÖõ  New file\6e\vbutton\fbuttons\bval\vheader\fsection\0\27alpha.themes.dashboard\nalpha\frequire\npcall\aÄÄ¿ô\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nå\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\2\21ensure_installed\ball\17sync_install\1\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\nN\0\0\5\0\4\0\v6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0014\4\0\0B\2\2\1K\0\1\0\nsetup\vneogit\frequire\npcall\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\nd\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\25colorscheme material\bcmd\15deep ocean\19material_style\6g\bvim\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-bufferline.lua'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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
