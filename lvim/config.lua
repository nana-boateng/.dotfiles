-- General
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin"

-- Keymappings
lvim.leader = "space"

-- Ctrl-S to save
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Bufferline
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

--
vim.api.nvim_set_keymap("n", "<C-\\>", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", '<C-\\>', "<c-\\><c-n>:ToggleTerm<CR>", { noremap = true, silent = true })

-- External Files
require("nana.plugins")
require("nana.builtin")
require("nana.theme")
require("nana.lsp")
