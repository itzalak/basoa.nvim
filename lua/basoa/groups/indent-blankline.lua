local M = {}

function M.get(colors, opts)
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    return {
        IblIndent = { fg = colors.faded, nocombine = true },
        IblScope = { fg = colors.description, nocombine = true },
        IblWhitespace = { fg = colors.hyper },
    }
end

return M
