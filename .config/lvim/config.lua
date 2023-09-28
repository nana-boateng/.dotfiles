-- Neovim
-- =========================================
lvim.leader = " "
lvim.colorscheme = "catppuccin" -- set to a custom theme
lvim.transparent_window = true -- enable/disable transparency

-- Additional Settings
-- =========================================
require("user.neovim").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Null-LS
-- =========================================
require("user.null_ls").config()

-- Additional Keybindings
-- =========================================
require("user.keybindings").config()
