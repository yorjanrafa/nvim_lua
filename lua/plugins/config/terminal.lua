return {
    {
        'voldikss/vim-floaterm',
        lazy = false,
        init =  function ()
            vim.g.floaterm_keymap_new = '<F7>'
            vim.g.floaterm_keymap_prev = '<F8>'
            vim.g.floaterm_keymap_next = '<F9>'
            vim.g.floaterm_keymap_toggle = '<F12>'

            vim.g.floaterm_width = 0.99
            vim.g.floaterm_height = 0.99  
            vim.api.nvim_command("highlight FloatermBorder guibg=bg guifg=gray")
            vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
        end
    },
}