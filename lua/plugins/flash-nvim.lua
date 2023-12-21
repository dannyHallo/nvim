return {
    "folke/flash.nvim",
    enabled = true,
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for the atest features
    keys = {{
        "<cr>",
        mode = {"n", "x", "o"},
        function()
            require("flash").jump()
        end,
        desc = "Flash"
    }}
}
