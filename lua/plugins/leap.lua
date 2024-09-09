return {
    "ggandor/leap.nvim",
    enabled = true, -- this extension has collision with flash-nvim (ds), so that it is disabled by defaults
    event = "VeryLazy",
    version = "*", -- Use for stability; omit to use `main` branch for latest features
    keys = {"E", "R", "W", "dE", "dR", "yE", "yR", "cE", "cR"},
    config = function()
        require("leap").add_default_mappings()
    end
}
