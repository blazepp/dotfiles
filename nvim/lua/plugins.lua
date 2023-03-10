-- bootstrap lazy
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

-- protected call to not error out during the first launch
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- plugins list
local plugins = {
    'sainnhe/gruvbox-material',
    {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }},
    {'glepnir/dashboard-nvim', event = 'VimEnter', config = function() require('dashboard').setup {} end, dependencies = { 'nvim-tree/nvim-web-devicons' }},
    'wakatime/vim-wakatime'
}

-- options list
local opts = {}

--load plugins
require("lazy").setup(plugins, opts)
