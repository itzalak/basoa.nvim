local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/which-key.nvim
    return {
        WhichKey = { fg = colors.color09 },
        WhichKeyDesc = { fg = colors.color12 },
        WhichKeyGroup = { fg = colors.color04 },
        WhichKeySeparator = { fg = colors.color02 },
        WhichKeyNormal = { link = "NormalFloat" },
        WhichKeyValue = { link = "Comment" },
    }
end

return M
