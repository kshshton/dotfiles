local telescope = require("telescope")
local actions = require("telescope.actions")


telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<space>"] = actions.close,
            },
        }
    }
})
