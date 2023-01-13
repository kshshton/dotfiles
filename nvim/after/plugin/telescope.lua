local telescope = require("telescope")
local actions = require("telescope.actions")
local easypick = require("easypick")

easypick.setup({
    pickers = {
        {
            name = "run",
            command = "python main.py",
        },
    }
})

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<space>"] = actions.close,
            },
        },
    },
})
