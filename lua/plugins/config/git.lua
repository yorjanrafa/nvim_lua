return {
    {
        'lewis6991/gitsigns.nvim',
        lazy = false,
        config = function()
            require('gitsigns').setup()
        end
    },
    {
        'tpope/vim-fugitive',
        lazy = false,
    },
}
