return {
    {
        'neoclide/coc.nvim',
        lazy = false,
        branch = "release",
        init = function ()
            vim.api.nvim_set_keymap('n', '<A-b>', ': CocCommand explorer<CR>', { noremap = true, silent = true })
        end
    },
}