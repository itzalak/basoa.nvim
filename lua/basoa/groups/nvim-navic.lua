local M = {}

function M.get(colors, opts)
    -- https://github.com/SmiteshP/nvim-navic
    return {
        NavicSeparator = { fg = colors.border, bg = colors.none },
        NavicText = { fg = colors.fg, colors.faded },
    }
end

return M
