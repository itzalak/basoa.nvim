local M = {}

function M.get(colors, opts)
    -- https://github.com/nvim-telescope/telescope.nvim
    -- https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua
    return {
        TelescopeNormal = { link = "Normal" },
        TelescopeResultsComment = { link = "Comment" },
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeMatching = { fg = colors.description, italic = opts.bold },
        TelescopeSelection = { fg = colors.info },
        TelescopePromptPrefix = { fg = colors.spotlight },
    }
end

return M
