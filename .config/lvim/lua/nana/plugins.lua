lvim.plugins = {
  ----------------------------------------------------------------------
  --                            Aesthetics                            --
  ----------------------------------------------------------------------
  -- Main theme
  { "catppuccin/nvim", as = "catppuccin" },
  -- Show Colors from hex numbers
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      vim.opt.termguicolors = true
      require("colorizer").setup()
    end,
    event = "BufRead",
  },
  -- Sidebar
  {
    "sidebar-nvim/sidebar.nvim",
    config = function()
      require("nana.plugins.sidebar")
    end,
    event = "VimEnter",
  },
  ----------------------------------------------------------------------
  --                              Coding                              --
  ----------------------------------------------------------------------
  -- Better resizing on panes
  {
    "beauwilliams/focus.nvim",
    config = function()
      require("nana.plugins.focus")
    end,
    event = "VimEnter",
  },
  -- Rust tools
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
        },
        server = {
          cmd = { vim.fn.stdpath("data") .. "/lsp_servers/rust/rust-analyzer" },
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        },
      })
    end,
    ft = { "rust", "rs" },
  },
  -- Trouble Toggle
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
    config = function()
      require("nana.plugins.trouble")
    end,
  },
  -- { "AndrewRadev/tagalong.vim" },
  ----------------------------------------------------------------------
  --                            Treesitter                            --
  ----------------------------------------------------------------------
  -- Autotag (ex. for html)
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    ft = {
      'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
      'xml',
      'php',
      'markdown',
      'glimmer', 'handlebars', 'hbs',
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- Shows context of current code block
  {
    "romgrk/nvim-treesitter-context",
    event = "BufRead",
    config = function()
      require("treesitter-context").setup({})
    end,
  },
  -- Pretty colours
  {
    "p00f/nvim-ts-rainbow",
    event = "BufRead",
    config = function()
      require("nvim-treesitter.configs").setup {
      }
    end
  },
  ----------------------------------------------------------------------
  --                            Utilities                             --
  ----------------------------------------------------------------------
  {
    "rcarriga/nvim-notify", as = "notify"
  },
  { "ray-x/lsp_signature.nvim" },
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" }
}
