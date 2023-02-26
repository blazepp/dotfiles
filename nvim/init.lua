require("plugins")

require("core.options")
require("core.keymaps")
require("core.colorscheme")

require("plugins.lualine")

if vim.g.neovide then
    require("core.neovide")
end
