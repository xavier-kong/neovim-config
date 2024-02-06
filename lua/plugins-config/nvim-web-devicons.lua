require('nvim-web-devicons').setup({
        color_icons = true,
        -- globally enable default icons (default to false) -- will get overriden by `get_icons` option
        default = true,

        strict = true,

        -- same as `override` but specifically for overrides by filename. takes effect when `strict` is true
        override_by_filename = {
                [".gitignore"] = {
                        icon = "",
                        color = "#f1502f",
                        name = "Gitignore"
                },
        },


        -- same as `override` but specifically for overrides by extension, takes effect when `strict` is true
        override_by_extension = {
                ["log"] = {
                        icon = "",
                        color = "#81e043",
                        name = "Log"
                },
                astro = {
                        icon = "",
                        color = "#EF8547",
                        name = "astro",
                },
        },

        -- your personnal icons can go here (to override). you can specify color or cterm_color instead of specifying both of them. DevIcon will be appended to `name`
        override = {
                zsh = {
                        icon = "",
                        color = "#428850",
                        cterm_color = "65",
                        name = "Zsh"
                },
        },

});

