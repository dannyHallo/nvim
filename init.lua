-- for macos, place it in ~/.config/nvim/
-- for windows, place it in %APPDATA%\nvim\
vim.cmd("autocmd BufEnter * set formatoptions-=cro")

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
