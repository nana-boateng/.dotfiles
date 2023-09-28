-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- UTILITY
  -- Harpoon - easily jump between frecent files
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-lua/popup.nvim" },
    },
  },
  -- hop.nvim, easily jump to any character on page
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    config = function()
      require("hop").setup {}
    end,
  },
}
