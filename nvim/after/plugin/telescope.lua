local easypick = require("easypick")

easypick.setup({
    pickers = {
        {
            name = "run",
            command = "python main.py",
        },
    }
})
