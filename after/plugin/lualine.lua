
local lualine = require("lualine");

lualine.setup {
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = {left = "|", right = "|"},
        globalstatus = true,
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
