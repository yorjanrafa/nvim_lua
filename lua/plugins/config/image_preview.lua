return {
    {
        "vhyrro/luarocks.nvim",
        priority = 1001, -- this plugin needs to run before anything else
        opts = {
            rocks = { "magick" },
        },
    },
    {
        "3rd/image.nvim",
        dependencies = { "luarocks.nvim" },
        config = function()
            require("image").setup({
            backend = "kitty",
            max_height_window_percentage = 100,
            hijack_file_patterns = {"*.png", "*.jpg", "*.gif", "*.svg", "*.jpeg", "*.webp", "*.tiff", "*.bmp", "*.heif"},
            })
        end
    },
}