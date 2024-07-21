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
  },
  {
    "AstroNvim/astrotheme",
    lazy = false,
    config = function()
      require("astrotheme").setup({
        palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
        background = {         -- :h background, palettes to use when using the core vim background colors
          light = "astrolight",
          dark = "astrodark",
        },

        style = {
          transparent = false,         -- Bool value, toggles transparency.
          inactive = true,             -- Bool value, toggles inactive window color.
          float = true,                -- Bool value, toggles floating windows background colors.
          neotree = true,              -- Bool value, toggles neo-trees background color.
          border = true,               -- Bool value, toggles borders.
          title_invert = true,         -- Bool value, swaps text and background colors.
          italic_comments = true,      -- Bool value, toggles italic comments.
          simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
        },


        termguicolors = true,    -- Bool value, toggles if termguicolors are set by AstroTheme.

        terminal_color = true,   -- Bool value, toggles if terminal_colors are set by AstroTheme.

        plugin_default = "auto", -- Sets how all plugins will be loaded
        -- "auto": Uses lazy / packer enabled plugins to load highlights.
        -- true: Enables all plugins highlights.
        -- false: Disables all plugins.

        plugins = { -- Allows for individual plugin overrides using plugin name and value from above.
          ["bufferline.nvim"] = false,
        },

        palettes = {
          global = { -- Globally accessible palettes, theme palettes take priority.
            my_grey = "#ebebeb",
            my_color = "#ffffff"
          },
          astrodark = {          -- Extend or modify astrodarks palette colors
            ui = {
              red = "#800010",   -- Overrides astrodarks red UI color
              accent = "#CC83E3" -- Changes the accent color of astrodark.
            },
            syntax = {
              cyan = "#800010",    -- Overrides astrodarks cyan syntax color
              comments = "#CC83E3" -- Overrides astrodarks comment color.
            },
            my_color = "#000000"   -- Overrides global.my_color
          },
        },

        highlights = {
          global = { -- Add or modify hl groups globally, theme specific hl groups take priority.
            modify_hl_groups = function(hl, c)
              hl.PluginColor4 = { fg = c.my_grey, bg = c.none }
            end,
            ["@String"] = { fg = "#ff00ff", bg = "NONE" },
          },
          astrodark = {
            -- first parameter is the highlight table and the second parameter is the color palette table
            modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
              hl.Comment.fg = c.my_color
              hl.Comment.italic = true
            end,
            ["@String"] = { fg = "#ff00ff", bg = "NONE" },
          },
        },
      })
    end

  },


}
