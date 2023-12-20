return {
    "kylechui/nvim-surround",
    enabled = false, -- this extension has collision with flash-nvim (ds), so that it is disabled by defaults
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({})
    end
}
