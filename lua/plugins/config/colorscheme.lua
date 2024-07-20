return {
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  {
    "ayu-theme/ayu-vim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      --require 'nordic'.load()
    end
  },
  {
    'yorjanrafa/tokyodark',
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd [[colorscheme tokyodark]]
    end
  },
  {
    'themercorp/themer.lua',
    lazy = false,
    priority = 1000,
    config = function()
      require("themer").setup({

        styles = {
          ["function"]    = { style = 'italic' },
          functionbuiltin = { style = 'italic' },
          variable        = { style = 'italic' },
          variableBuiltIn = { style = 'italic' },
          parameter       = { style = 'italic' },
        },
      })
    end
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }

}
