local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/which-key.nvim
    return {
        WhichKey = { fg = colors.spotlight },
        WhichKeyDesc = { fg = colors.description },
        WhichKeyGroup = { fg = colors.description },
        WhichKeySeparator = { fg = colors.border },
        WhichKeyNormal = { link = "NormalFloat" },
        WhichKeyValue = { link = "Comment" },
    }
end

return M
