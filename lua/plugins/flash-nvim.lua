return {
    "folke/flash.nvim",
    enabled = true,
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for the atest features
    keys = {{
        "<Space>", -- use the enter key to replace the functionality of s, to use surround with this extension
        mode = {"n", "x", "o"},
        function()
            require("flash").jump()
        end,
        desc = "Flash"
    }}
}
