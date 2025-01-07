local treesitter = require("nvim-treesitter.configs")

-- a list of parser to be installed
-- {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"} is essential list of parsers
local installedParsers = {
    "c", 
    "javascript",
    "go",
    "python",
    "lua", 
    "vim", 
    "vimdoc", 
    "query", 
    "markdown", 
    "markdown_inline"
};
treesitter.setup {
  ensure_installed = installedParsers,
  sync_install = false, -- install parsers synchronousely when ensure_installed is true
  auto_install = false, -- automatically install parsers
  ignore_install = {}, -- parser don't want to install
  highlight = {
    enable = true,

    disable = {}, -- a list of parsers to be disable
    -- disable slow parser
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
