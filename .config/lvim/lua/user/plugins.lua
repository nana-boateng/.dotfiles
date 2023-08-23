local M = {}

M.config = function ()
  lvim.plugins = {
    -- THEMES
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("user.theme").catppuccin()
        lvim.colorscheme = "catppuccin-mocha"
      end,
    },
    -- hlargs, highlight arguments
    {
      "m-demare/hlargs.nvim",
      lazy = true,
      event = "VeryLazy",
      config = function()
        require("hlargs").setup {
          excluded_filetype = { "TelescopePrompt", "guihua", "guihua_rust", "clap_input" },
        }
      end,
      dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
    -- tmux lualine, integrate vim with tmux
    {
      "vimpostor/vim-tpipeline",
    },

    -- UTILITY
    -- Harpoon - easily jump between frecent files
    {
      "ThePrimeagen/harpoon",
      dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-lua/popup.nvim" },
      },
    },
    -- nvim-hlslens, better highlighting info, seamless jumping
    {
      "kevinhwang91/nvim-hlslens",
      config = function()
        require("user.plugins.hlslens").config()
      end,
      event = "BufReadPost",
    },
    -- hop.nvim, easily jump to any character on page
    {
      "phaazon/hop.nvim",
      event = "VeryLazy",
      cmd = { "HopChar1CurrentLineAC", "HopChar1CurrentLineBC", "HopChar2MW", "HopWordMW" },
      config = function()
        require("user.plugins.hop").config()
      end,
    },
    -- lsplines.nvim, lsp errors and warnings inline
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user.plugins.lsp_signature").config()
      end,
      event = { "BufRead", "BufNew" },
    },
    -- legendary.nvim, like VS Codes Command Pallette
    {
      "mrjones2014/legendary.nvim",
      config = function()
        require("user.plugins.legendary").config()
      end,
      event = "VimEnter",
    },
    -- neogen, better annotations generator
    {
      "danymat/neogen",
      lazy = true,
      config = function()
        require("neogen").setup {
          enabled = true,
        }
      end,
      dependencies = "nvim-treesitter/nvim-treesitter",
    },
    -- refractoring by primeagen, better refractoring
    {
      "ThePrimeagen/refactoring.nvim",
      lazy = true,
      ft = { "typescript", "javascript", "lua", "c", "cpp", "go", "python", "java", "php" },
      event = "BufReadPost",
      config = function()
        require("refactoring").setup {}
      end,
    },
    -- typescript
    {
      "jose-elias-alvarez/typescript.nvim",
      ft = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },
      lazy = true,
      config = function()
        require("user.plugins.tss").config()
      end,
    },
    -- Extra Package Info in Node
    {
      "vuki656/package-info.nvim",
      config = function()
        require("package-info").setup()
      end,
      lazy = true,
      event = { "BufReadPre", "BufNew" },
    },
    -- colorizer, better colors
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.plugins.colorizer").config()
      end,
      event = "BufReadPre",
    },
    -- diffview, fancier diff for git
    {
      "sindrets/diffview.nvim",
      lazy = true,
      cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
      keys = { "<leader>gd", "<leader>gh" },
      config = function()
        require("user.plugins.diffview").config()
      end,
    },
    -- overseer, task runner
    {
      "stevearc/overseer.nvim",
      config = function()
        require("user.plugins.ovs").config()
      end,
    },
    -- file-browser in nvim
    {
      "nvim-telescope/telescope-file-browser.nvim",
    },
    -- self-explanatory
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    -- self-explanatory
    { "mtdl9/vim-log-highlighting", ft = { "text", "log" } },
    -- cursorline, highlight matching words
    {
      "yamatsum/nvim-cursorline",
      lazy = true,
      event = "BufWinEnter",
    },

    -- EXTRA SHIT
    -- Cheat sheet
    {
      "RishabhRD/nvim-cheat.sh",
      dependencies = "RishabhRD/popfix",
      config = function()
        vim.g.cheat_default_window_layout = "vertical_split"
      end,
      lazy = true,
      cmd = { "Cheat", "CheatWithoutComments", "CheatList", "CheatListWithoutComments" },
      keys = "<leader>?",
    },
    -- Cinnamon, Smooth Scrolling
    {
      "declancm/cinnamon.nvim",
      config = function()
        require("cinnamon").setup {
          default_keymaps = true,
          default_delay = 4,
          extra_keymaps = true,
          extended_keymaps = false,
          centered = true,
          scroll_limit = 100,
        }
      end,
      event = "BufRead",
    },
  }
end

return M
