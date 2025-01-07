
local catppuccin = require("catppuccin").setup();

function setTheme(theme)
    vim.cmd.colorscheme(theme);
end

setTheme("catppuccin-mocha")
