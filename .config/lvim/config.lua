-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Neovim
-- =========================================
lvim.leader = " "
-- lvim.colorscheme = "tokyonight" -- set to a custom theme
lvim.builtin.time_based_themes = true -- set false to use your own configured theme
lvim.transparent_window = true -- enable/disable transparency
lvim.debug = false
vim.lsp.set_log_level "error"
lvim.log.level = "warn"
lvim.lsp.code_lens_refresh = true
lvim.lsp.installer.setup.automatic_installation = true
require("user.neovim").config()

-- Customization
-- =========================================
lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
lvim.builtin.presence = { active = true } -- change to true if you want discord presence
lvim.builtin.orgmode = { active = true } -- change to true if you want orgmode.nvim
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_diff = { active = false } -- enable/disable fancier git diff
lvim.builtin.lua_dev = { active = true } -- change this to enable/disable folke/lua_dev
lvim.builtin.test_runner = { active = true, runner = "ultest" } -- change this to enable/disable ultest or neotest
lvim.builtin.cheat = { active = false } -- enable/disable cheat.sh integration
lvim.builtin.sql_integration = { active = false } -- use sql integration
lvim.builtin.smooth_scroll = "cinnamon" -- for smoth scrolling, can be "cinnamon", "neoscroll" or ""
lvim.builtin.neoclip = { active = true, enable_persistent_history = false }
lvim.builtin.nonumber_unfocus = true -- diffrentiate between focused and non focused windows
lvim.builtin.custom_web_devicons = false -- install https://github.com/Nguyen-Hoang-Nam/mini-file-icons
lvim.builtin.harpoon = { active = true } -- use the harpoon plugin
lvim.builtin.cursorline = { active = true } -- use a bit fancier cursorline
lvim.builtin.motion_provider = "hop" -- change this to use different motion providers ( hop or leap )
lvim.builtin.hlslens = { active = true } -- enable/disable hlslens
lvim.builtin.task_runner = "" -- change this to use different task runners ( "async_tasks" or "overseer" or "")
lvim.builtin.winbar_provider = "treesitter" -- can be "filename" or "treesitter" or "navic" or ""
lvim.builtin.file_browser = { active = true } -- enable/disable telescope file browser
lvim.builtin.sniprun = { active = true } -- enable/disable sniprun
lvim.builtin.tag_provider = "symbols-outline" -- change this to use different tag providers ( symbols-outline or vista )
lvim.builtin.global_statusline = false -- set true to use global statusline
lvim.builtin.dressing = { active = false } -- enable to override vim.ui.input and vim.ui.select with telescope
lvim.builtin.refactoring = { active = true } -- enable to use refactoring.nvim code_actions
lvim.builtin.tmux_lualine = true -- use vim-tpipeline to integrate lualine and tmux
lvim.builtin.legendary = { active = true } -- enable/disable legendary plugin ( ctrl-p command )
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""
lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.indentlines.active = true
lvim.builtin.noice = { active = false } -- enables noice.nvim and inc-rename.nvim
lvim.builtin.go_programming = { active = false } -- gopher.nvim + nvim-dap-go
lvim.builtin.python_programming = { active = false } -- swenv.nvim + nvim-dap-python + requirements.txt.vim
lvim.builtin.web_programming = { active = true } -- typescript.nvim + package-info.nvim
lvim.builtin.rust_programming = { active = false } -- rust_tools.nvim + crates.nvim
lvim.builtin.cpp_programming = { active = false } -- clangd_extensions.nvim + make-tools.nvim
lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.borderless_cmp = false
lvim.builtin.colored_args = true -- if true then sets up hlargs.nvim
lvim.builtin.bigfile.active = true

-- Additional Actions Based on Custom User Config
-- =========================================
if lvim.builtin.winbar_provider == "navic" then
  vim.opt.showtabline = 1
  lvim.keys.normal_mode["<tab>"] =
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
  lvim.builtin.bufferline.active = false
  lvim.builtin.breadcrumbs.active = true
end
if lvim.builtin.breadcrumbs.active and lvim.builtin.noice.active then
  table.insert(lvim.builtin.breadcrumbs.winbar_filetype_exclude, "vim")
end
lvim.builtin.nvimtree.active = lvim.builtin.tree_provider == "nvimtree"
lvim.builtin.latex = {
  view_method = "skim", -- change to zathura if you are on linux
  preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
  rtl_support = true, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
  active = false, -- set to true to enable
}
if lvim.builtin.cursorline.active then
  lvim.lsp.document_highlight = false
end

-- Additional Plugins
-- =========================================
require("user.plugins").config()

