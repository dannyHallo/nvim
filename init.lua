-- for macos, place it in ~/.config/nvim/
-- for windows, place it in %APPDATA%\nvim\
-- disable auto commenting new lines
vim.cmd("autocmd BufEnter * set formatoptions-=cro")

vim.o.ignorecase = true -- ignore case letters when searching
vim.o.smartcase = true -- make searches case-sensitive if there's an uppercase letter - this is only useful when ignorecase is also set

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
require("lazy").setup("plugins")
