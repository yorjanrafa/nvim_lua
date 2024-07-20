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

    require('lualine').setup {
      -- options = {
      --   theme = theme,
      --   component_separators = '',
      --   section_separators = { left = '', right = '' },
      -- },
      -- sections = process_sections {
      --   lualine_a = { 'fileformat' },
      --   lualine_b = {
      --     'branch',
      --     'diff',
      --     {
      --       'diagnostics',
      --       source = { 'nvim' },
      --       sections = { 'error' },
      --       diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
      --     },
      --     {
      --       'diagnostics',
      --       source = { 'nvim' },
      --       sections = { 'warn' },
      --       diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
      --     },
      --     {
      --       'diagnostics',
      --       source = { 'nvim' },
      --       sections = { 'info' },
      --       diagnostics_color = { info = { bg = colors.orange, fg = colors.white } },
      --     },
      --     {
      --       'diagnostics',
      --       source = { 'nvim' },
      --       sections = { 'hint' },
      --       diagnostics_color = { hint = { bg = colors.blue, fg = colors.white } },
      --     },
      --   },
      --   lualine_c = {},
      --   lualine_x = {},
      --   lualine_y = { 'filetype' },
      --   lualine_z = { 'location' },
      -- },
      -- inactive_sections = {
      --   lualine_c = { '%f' },
      --   lualine_x = {},
      -- },
    }
  end
}
