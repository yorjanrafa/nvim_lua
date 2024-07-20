return {
    {
        'stevearc/aerial.nvim',
        opts = function()
            local opts = {
                attach_mode = "global",
                backends = { "lsp", "treesitter", "markdown", "man" },
                layout = { min_width = 28 },
                show_guides = true,
                filter_kind = false,
                guides = {
                    mid_item = "├ ",
                    last_item = "└ ",
                    nested_top = "│ ",
                    whitespace = "  ",
                },
                keymaps = {
                    ["[y"] = "actions.prev",
                    ["]y"] = "actions.next",
                    ["[Y"] = "actions.prev_up",
                    ["]Y"] = "actions.next_up",
                    ["{"] = false,
                    ["}"] = false,
                    ["[["] = false,
                    ["]]"] = false,
                },

            }



            return opts
        end,
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    }
}
