-- install lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end

vim.opt.rtp:prepend(lazypath)

-- load plugins

local plugins = {
    {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
     "nvim-lualine/lualine.nvim",
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {"nvim-treesitter/nvim-treesitter"},
}
local opts = {};
require("lazy").setup(plugins, opts);
