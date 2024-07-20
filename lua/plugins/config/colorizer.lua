return {
    {
        'norcalli/nvim-colorizer.lua',
        lazy = false,
        init = function ()
            require'colorizer'.setup()
        end
    },
}