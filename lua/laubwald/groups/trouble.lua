local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/trouble.nvim
    return {
        TroubleNormal = { fg = colors.border, bg = colors.bg },
    }
end
return M
