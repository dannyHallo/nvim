return {
    "folke/flash.nvim",
    enabled = false,
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for the atest features
    keys = {{
        "<Space>", -- use space to hop around!
        mode = {"n", "x", "o"},
        function()
            require("flash").jump()
        end,
        desc = "Flash"
    }}
}
