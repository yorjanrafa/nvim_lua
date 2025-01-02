return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local colors = {
      red         = '#ca1243',
      grey        = '#0e0e13',
      black       = '#383a42',
      black_bg    = '#292e42',
      white       = '#f3f3f3',
      light_green = '#83a598',
      orange      = '#fe8019',
      green       = '#8ec07c',
      blue        = '#1291c4',
      cyan        = '#994eee',
      violet      = '#ff5189',
    }

    local theme = {
      normal = {
        a = { fg = colors.white, bg = colors.red },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.black, bg = colors.black_bg },
        z = { fg = colors.white, bg = colors.red },
      },
      insert = { a = { fg = colors.white, bg = colors.blue } },
      visual = { a = { fg = colors.white, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },
    }

    local empty = require('lualine.component'):extend()
    function empty:draw(default_highlight)
      self.status = ''
      self.applied_separator = ''
      self:apply_highlights(default_highlight)
      self:apply_section_separators()
      return self.status
    end

    -- Put proper separators and gaps between components in sections
    local function process_sections(sections)
      for name, section in pairs(sections) do
        local left = name:sub(9, 10) < 'x'
        for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
          table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.black_bg } })
        end
        for id, comp in ipairs(section) do
          if type(comp) ~= 'table' then
            comp = { comp }
            section[id] = comp
          end
          comp.separator = left and { right = '' } or { left = '' }
        end
      end
      return sections
    end

    local function search_result()
      if vim.v.hlsearch == 0 then
        return ''
      end
      local last_search = vim.fn.getreg('/')
      if not last_search or last_search == '' then
        return ''
      end
      local searchcount = vim.fn.searchcount { maxcount = 9999 }
      return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
    end

    local function modified()
      if vim.bo.modified then
        return '+'
      elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return '-'
      end
      return ''
    end

    local colors = {
      blue   = '#6cb7f9',
      cyan   = '#80e6d2',
      black  = '#080808',
      white  = '#c6c6c6',
      red    = '#ff6776',
      violet = '#d183e8',
      grey   = '#303030',
      orange      = '#ff9122',
      green       = '#7adc74',
    }
    
    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
        
      },
    
      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },
    
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }
    
    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        -- sirva para lo que esta en entre componenttes sencillos
        component_separators = { left = '', right = '' }, 
        --  sirva para lo que esta en medio del espaciado
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
        lualine_b = {

          'filetype',
          {
            function()
                local tabstop = vim.api.nvim_buf_get_option(0, 'tabstop')
                local expandtab = vim.api.nvim_buf_get_option(0, 'expandtab')
                return expandtab and ('Spaces: ' .. tabstop) or ('Tabs: ' .. tabstop)
            end,
            icon = '󱁐',
            
        },
        {
          'diagnostics',
         symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        },
        {

          'diagnostics',
          source = { 'nvim' },
          sections = { 'hint' },
          diagnostics_color = { hint = { fg = colors.white } },
        },

      }
        ,
        lualine_c = {

         --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {
         
        },
        lualine_y = { {'branch', icon = ''}, {'diff',
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        -- diff_color = {
        --   added = { fg = colors.green },
        --   modified = { fg = colors.orange },
        --   removed = { fg = colors.red },
        -- },
        -- diff_added = { fg = colors.green },
        -- diff_modified = { fg = colors.orange },
        -- diff_removed = { fg = colors.red },
      }},
        lualine_z = {
          { 'location', separator = { right = '', left = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        
      },
      tabline = {},
      extensions = {},
    }
  end
}
