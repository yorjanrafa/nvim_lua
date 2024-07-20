return {
    {
        'metakirby5/codi.vim',
        lazy = false,
        init = function()
            vim.g.codi_interpreters = {
                python = {
                    bin = '/bin/python',
                },
            }
        end
    },
}
